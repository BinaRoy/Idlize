/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import * as idl from '@idlizer/core/idl'
import {
    Language, isCommonMethod,
    LanguageWriter, PeerClass, PeerLibrary,
    createReferenceType, IDLVoidType,
    Method,
    MethodSignature,
    MethodModifier,
    NamedMethodSignature,
    LayoutNodeRole,
    getSuper,
    unionTypeProcessor
} from '@idlizer/core'
import {
    ARKOALA_PACKAGE,
    ARKOALA_PACKAGE_PATH,
    allowsOverloads,
    collapseSameNamedMethods,
    collectComponents,
    collectDeclDependencies,
    collectJavaImports,
    collectPeersForFile,
    COMPONENT_BASE,
    componentToPeerClass,
    findComponentByName,
    findComponentByType,
    groupOverloads,
    IdlComponentDeclaration,
    ImportsCollector,
    OverloadsPrinter,
    PrinterResult,
    printJavaImports,
    readLangTemplate,
    TargetFile,
    collectDeclItself,
    findComponentByDeclaration,
    componentToStyleClass,
} from '@idlizer/libohos'
import { getReferenceTo } from '../knownReferences'
import { componentToAttributesInterface } from './PeersPrinter'
import { HandwrittenModule } from '../ArkoalaLayout'
import { convertNumberProperty } from '../declaration/CJNumberConversion'
import { CJTypeMapper, TypeConversionResult, DEFAULT_VALUES } from '../declaration/CJTypeMapper'
import { CJCallbackTypeManager } from '../declaration/CJCallbackTypeManager'
// ---------- JSDoc meta model & helpers ----------
import * as fs from 'fs'
import * as ts from 'typescript'
import * as path from 'path'

type Meta = { level: number; flags: Record<string, true>; values: Record<string, string> }

const BOOLEAN_TAGS = new Set(['form','crossplatform','atomicservice','systemapi','noninterop'])
const VALUE_TAGS   = new Set(['syscap','kit','version','deprecated'])

const jsdocTypes   = new Map<string, Meta>()          // "TypeName" -> meta
const jsdocMembers = new Map<string, Meta>()          // "TypeName.member" or "TypeName#member"

const num = (s?: string) => (s?.match(/(\d+)/)?.[1] ? Number(RegExp.$1) : undefined)
const tagVal = (j: ts.JSDoc, n: string) => j.tags?.find(t => t.tagName.text === n)?.comment?.toString().trim()

function metaFromJSDoc(j: ts.JSDoc): Meta | undefined {
  const level = num(tagVal(j, 'since'))
  if (level == null) return
  const flags: Record<string, true> = {}
  const values: Record<string, string> = {}
  for (const t of j.tags ?? []) {
    const n = t.tagName.text
    const v = t.comment?.toString().trim()
    if (BOOLEAN_TAGS.has(n)) flags[n] = true
    else if (VALUE_TAGS.has(n) && v) values[n] = v
  }
  return { level, flags, values }
}

function mergeMetas(ms: (Meta | undefined)[]): Meta | undefined {
  const list = ms.filter(Boolean) as Meta[]
  if (!list.length) return undefined
  const out: Meta = { level: list[0].level, flags: {}, values: {} }
  for (const m of list) {
    out.level = Math.max(out.level, m.level)
    Object.assign(out.values, m.values) // last-wins
    for (const k of Object.keys(m.flags)) out.flags[k] = true // union
  }
  return out
}

function renderDirective(meta: Meta): string {
  const { level, flags, values } = meta
  const parts: string[] = [String(level)]
  if (values.syscap)     parts.push(`syscap: "${values.syscap}"`)
  if (values.kit)        parts.push(`kit: ${values.kit}`)
  if (values.version)    parts.push(`version: ${values.version}`)
  if (values.deprecated) parts.push(`deprecated: ${values.deprecated}`)
  for (const k of Object.keys(values)) {
    if (['syscap','kit','version','deprecated'].includes(k)) continue
    parts.push(`${k}: ${values[k]}`)
  }
  for (const k of Object.keys(flags)) parts.push(`${k}: true`)
  return `// @!APILevel[${parts.join(', ')}]`
}

// Index .d.ts files for @since + tags
function indexDtsText(text: string, fileName = 'virtual.d.ts') {
  const sf = ts.createSourceFile(fileName, text, ts.ScriptTarget.Latest, true, ts.ScriptKind.TS)
  const visit = (node: ts.Node) => {
    const docs = (node as any).jsDoc as ts.JSDoc[] | undefined
    if (docs?.length) {
      const m = mergeMetas(docs.map(metaFromJSDoc))
      if (m) {
        if (ts.isInterfaceDeclaration(node) || ts.isClassDeclaration(node) || ts.isTypeAliasDeclaration(node)) {
          const name = node.name?.text?.trim()
          if (name) {
            const prev = jsdocTypes.get(name)
            jsdocTypes.set(name, prev ? mergeMetas([prev, m])! : m)
            }
        } else if (ts.isMethodSignature(node) || ts.isMethodDeclaration(node)) {
          const method = ts.isIdentifier(node.name) ? node.name.text : undefined
          const host = (node.parent as any)?.name?.text as string | undefined
          if (method && host) {
            const k1 = `${host}.${method}`, k2 = `${host}#${method}`
            const p1 = jsdocMembers.get(k1), p2 = jsdocMembers.get(k2)
            jsdocMembers.set(k1, p1 ? mergeMetas([p1, m])! : m)
            jsdocMembers.set(k2, p2 ? mergeMetas([p2, m])! : m)
          }
        } else if (ts.isPropertySignature(node) || ts.isPropertyDeclaration(node)) {
          const prop = ts.isIdentifier(node.name) ? node.name.text : undefined
          const host = (node.parent as any)?.name?.text as string | undefined
          if (prop && host) {
            const k1 = `${host}.${prop}`, k2 = `${host}#${prop}`
            const p1 = jsdocMembers.get(k1), p2 = jsdocMembers.get(k2)
            jsdocMembers.set(k1, p1 ? mergeMetas([p1, m])! : m)
            jsdocMembers.set(k2, p2 ? mergeMetas([p2, m])! : m)
          }
        } else if (ts.isVariableStatement(node)) {
          for (const d of node.declarationList.declarations) {
            const id = ts.isIdentifier(d.name) ? d.name.text : undefined
            if (id && d.type && ts.isTypeReferenceNode(d.type) && ts.isIdentifier(d.type.typeName)) {
              const host = d.type.typeName.text
              const k1 = `${host}.${id}`, k2 = `${host}#${id}`
              const p1 = jsdocMembers.get(k1), p2 = jsdocMembers.get(k2), pt = jsdocTypes.get(id)
              jsdocMembers.set(k1, p1 ? mergeMetas([p1, m])! : m)
              jsdocMembers.set(k2, p2 ? mergeMetas([p2, m])! : m)
              jsdocTypes.set(id, pt ? mergeMetas([pt, m])! : m)
            }
          }
        }
      }
    }
    // interface call-signatures: host.(call)
    if (ts.isInterfaceDeclaration(node)) {
      const host = node.name?.text?.trim()
      if (host) {
        for (const mem of node.members) {
          const docs2 = (mem as any).jsDoc as ts.JSDoc[] | undefined
          if (docs2?.length && ts.isCallSignatureDeclaration(mem)) {
            const mm = mergeMetas(docs2.map(metaFromJSDoc))
            if (mm) {
              const k1 = `${host}.(call)`, k2 = `${host}#(call)`
              const p1 = jsdocMembers.get(k1), p2 = jsdocMembers.get(k2)
              jsdocMembers.set(k1, p1 ? mergeMetas([p1, mm])! : mm)
              jsdocMembers.set(k2, p2 ? mergeMetas([p2, mm])! : mm)
            }
          }
        }
      }
    }
    ts.forEachChild(node, visit)
  }
  visit(sf)
}

function listAllDtsFiles(root: string, out: string[]) {
  try {
    const st = fs.statSync(root)
    if (st.isFile()) {
        if (/\.(d\.ts|ts)$/.test(root)) out.push(root)
            return
        }

    if (!st.isDirectory()) return
    for (const name of fs.readdirSync(root)) {
      if (name === 'node_modules' || name.startsWith('.')) continue
      listAllDtsFiles(path.join(root, name), out)
    }
  } catch {}
}

let jsdocBootstrapped = false
function bootstrapJSDocIndexOnce() {
  if (jsdocBootstrapped) return
  const cwd = process.cwd()
    const roots = [
    path.resolve(__dirname, '../external-subset'),
    path.resolve(__dirname, '../../external'),
    path.resolve(cwd, 'external-subset'),
    path.resolve(cwd, 'external'),
    path.resolve(cwd, 'api'),
    cwd
    ]
  const files: string[] = []
  for (const r of roots) if (fs.existsSync(r)) listAllDtsFiles(r, files)
  for (const f of files) {
    try { indexDtsText(fs.readFileSync(f, 'utf8'), f) } catch {}
  }
  jsdocBootstrapped = true
}

function getCallMeta(ifaceName?: string): Meta | undefined {
  if (!ifaceName) return
  return jsdocMembers.get(`${ifaceName}.(call)`)
      ?? jsdocMembers.get(`${ifaceName}#(call)`)
      ?? jsdocTypes.get(ifaceName)
}

function resolveMethodMeta(
  hostTypeName: string,   // e.g. "ColumnAttribute"
  componentName: string,  // e.g. "Column"
  methodName: string,     // e.g. "alignItems"
  ifaceName?: string,     // e.g. "ColumnInterface"
): Meta | undefined {
  let meta =
    jsdocMembers.get(`${hostTypeName}.${methodName}`) ||
    jsdocMembers.get(`${hostTypeName}#${methodName}`)
  if (!meta) {
    meta =
      jsdocMembers.get(`${componentName}.${methodName}`) ||
      jsdocMembers.get(`${componentName}#${methodName}`)
  }
  if (!meta && methodName.startsWith('set') && ifaceName) {
    meta = getCallMeta(ifaceName)
  }
  return meta
}

function getTypeMeta(typeOrName?: string): Meta | undefined {
  if (!typeOrName) return
  return jsdocTypes.get(typeOrName)
}


// ---------------------------------------------------------------

/**
 * 参数处理结果
 */
interface ParameterProcessResult {
    formatted: string;
    needsValidation: boolean;
    isCallback: boolean;
}

/**
 * 构建函数参数配置
 */
interface BuildFunctionParamConfig {
    name: string;
    type: string;
    isOptional: boolean;
}

export function generateArkComponentName(component: string) {
    return `Ark${component}Component`
}

function expandComponentWithSupers(library: PeerLibrary, decl: idl.IDLInterface): idl.IDLInterface[] {
    const result: idl.IDLInterface[] = []
    while (decl) {
        const superResolved = getSuper(decl, library)
        result.push(decl)
        decl = superResolved as idl.IDLInterface
    }
    return result
}

export function generateAttributeModifierSignature(library: PeerLibrary, component: IdlComponentDeclaration): MethodSignature {
    const modifiers = expandComponentWithSupers(library, component.attributeDeclaration).map(it =>
        idl.createReferenceType(getReferenceTo('AttributeModifier'),
            [idl.createReferenceType(componentToAttributesInterface(it.name))],
        )
    )
    return new NamedMethodSignature(
        idl.IDLThisType,
        [idl.createUnionType([...modifiers, idl.IDLUndefinedType])],
        // [idl.createOptionalType(modifiers.length > 1 ? idl.createUnionType(modifiers) : modifiers[0])],
        ['value']
    )
}

class ComponentPrintResult {
    constructor(public targetFile: TargetFile, public writer: LanguageWriter) { }
}

interface ComponentFileVisitor {
    visit(): PrinterResult[]
}

class TSComponentFileVisitor implements ComponentFileVisitor {

    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        protected readonly options: {
            isDeclared: boolean,
        }
    ) { }

    private overloadsPrinter(printer:LanguageWriter) {
        return new OverloadsPrinter(this.library, printer, this.library.language, true, this.library.useMemoM3)
    }

    visit(): PrinterResult[] {
        const result: PrinterResult[] = []
        collectPeersForFile(this.library, this.file).forEach(peer => {
            if (!this.options.isDeclared)
                result.push(...this.printComponent(peer))
            result.push(...this.printComponentFunctions(peer))
        })
        return result
    }

    private printImports(peer: PeerClass, component:IdlComponentDeclaration): ImportsCollector {
        const imports = new ImportsCollector()
        imports.addFeatures(['int32', 'float32'], '@koalaui/common')
        imports.addFeatures(["KStringPtr", "KBoolean"], "@koalaui/interop")
        collectDeclItself(this.library, idl.createReferenceType(getReferenceTo('AttributeModifier')), imports)
        collectDeclItself(this.library, idl.createReferenceType(getReferenceTo('AttributeUpdater')), imports)
        if (!this.options.isDeclared) {
            imports.addFeatures(["RuntimeType", "runtimeType"], "@koalaui/interop")
            imports.addFeatures(["NodeAttach", "remember"], "@koalaui/runtime")
            imports.addFeature('ComponentBase', './ComponentBase')
            if (this.library.language === Language.TS) {
                imports.addFeature("isInstanceOf", "@koalaui/interop")
            }
            imports.addFeature(componentToPeerClass(peer.componentName), this.library.layout.resolve({node: component.attributeDeclaration, role: LayoutNodeRole.PEER}))
        }
        if (peer.originalParentFilename) {
            let [parentRef] = component.attributeDeclaration.inheritance
            let parentDecl = this.library.resolveTypeReference(parentRef)
            while (parentDecl) {
                const parentComponent = findComponentByDeclaration(this.library, parentDecl as idl.IDLInterface)!
                const parentGeneratedPath = this.library.layout.resolve({
                    node: parentDecl,
                    role: LayoutNodeRole.COMPONENT
                })
                if (!this.options.isDeclared)
                    imports.addFeature(generateArkComponentName(parentComponent.name), `./${parentGeneratedPath}`)

                imports.addFeatures([
                    componentToStyleClass(parentComponent.attributeDeclaration.name),
                    componentToAttributesInterface(parentComponent.attributeDeclaration.name),
                ], `./${parentGeneratedPath}`)
                if (parentComponent.attributeDeclaration.inheritance.length) {
                    let [parentRef] = parentComponent.attributeDeclaration.inheritance
                    parentDecl = this.library.resolveTypeReference(parentRef)
                } else {
                    parentDecl = undefined
                }
            }
        }
        this.populateImports(imports)

        collectDeclDependencies(this.library, component.attributeDeclaration, imports)
        if (component.interfaceDeclaration)
            collectDeclDependencies(this.library, component.interfaceDeclaration, imports)
        return imports
    }

    protected populateImports(imports: ImportsCollector) {
        if (!this.options.isDeclared)
            imports.addFeature('unsafeCast', '@koalaui/common')
    }

    private printComponent(peer: PeerClass): PrinterResult[] {

        const component = findComponentByType(this.library, idl.createReferenceType(peer.originalClassName!))!

        const imports = this.printImports(peer, component)
        const printer = this.library.createLanguageWriter()

        const componentClassName = generateArkComponentName(peer.componentName)
        const parentComponentClassName = peer.parentComponentName ? generateArkComponentName(peer.parentComponentName!) : `ComponentBase`
        const peerClassName = componentToPeerClass(peer.componentName)

        printer.writeClass(componentClassName, (writer) => {
            writer.writeMethodImplementation(
                new Method('getPeer',
                    new MethodSignature(createReferenceType(peerClassName), []
                    ), [MethodModifier.PROTECTED], []),
                writer => writer.writeStatement(
                    writer.makeReturn(
                        writer.makeCast(
                            writer.makeFieldAccess("this", "peer"),
                            createReferenceType(peerClassName),
                            { optional: true }
                        )
                    )
                )
            )
            for (const grouped of groupOverloads(peer.methods, this.library.language))
                this.overloadsPrinter(printer).printGroupedComponentOverloads(peer.originalClassName!, grouped)
            // todo stub until we can process AttributeModifier
            writer.writeMethodImplementation(new Method('attributeModifier', generateAttributeModifierSignature(this.library, component), [MethodModifier.PUBLIC]), writer => {
                writer.writeStatement(writer.makeReturn(writer.makeThis()))
            })

            const attributesFinishSignature = new MethodSignature(IDLVoidType, [])
            const applyAttributesFinish = 'applyAttributesFinish'
            writer.writeMethodImplementation(new Method(applyAttributesFinish, attributesFinishSignature, [MethodModifier.PROTECTED]), (writer) => {
                writer.print('// we call this function outside of class, so need to make it protected')
                writer.writeMethodCall('super', applyAttributesFinish, [])
            })
        }, parentComponentClassName, [componentToAttributesInterface(peer.originalClassName!)])

        return [{
            collector: imports,
            content: printer,
            over: {
                node: component.attributeDeclaration,
                role: LayoutNodeRole.COMPONENT,
                hint: 'component.implementation'
            }
        }]
    }

    protected printComponentFunctions(peer: PeerClass): PrinterResult[] {
        const printer = this.library.createLanguageWriter()
        const component = findComponentByName(this.library, peer.componentName)!
        const componentInterfaceName = componentToAttributesInterface(peer.originalClassName!)
        const componentClassImplName = generateArkComponentName(peer.componentName)
        const callableMethods = peer.methods.filter(it => it.isCallSignature).map(it => it.method)
        const collapsedCallables = allowsOverloads(this.library.language)
            ? callableMethods
            : callableMethods.length > 0
                ? [collapseSameNamedMethods(callableMethods)]
                : []
        collapsedCallables.forEach(callableMethod => {
            const mappedCallableParams = callableMethod?.signature.args.map((it, index) => `${callableMethod.signature.argName(index)}${callableMethod.signature.isArgOptional(index) ? "?" : ""}: ${printer.getNodeName(it)}`)
            const mappedCallableParamsValues = callableMethod?.signature.args.map((_, index) => callableMethod.signature.argName(index))
            const callableInvocation = callableMethod?.name ? `receiver.${callableMethod?.name}(${mappedCallableParamsValues})` : ""
            const peerClassName = componentToPeerClass(peer.componentName)
            if (!collectComponents(this.library).find(it => it.name === component.name)?.interfaceDeclaration)
                return [{
                    collector: this.printImports(peer, component),
                    content: printer,
                    over: {
                        node: component.attributeDeclaration,
                        role: LayoutNodeRole.COMPONENT,
                        hint: 'component.function'
                    }
                }]
            const declaredPostrix = this.options.isDeclared ? "decl_" : ""
            const stagePostfix = this.library.useMemoM3 ? "m3" : "m1"
            let paramsList = mappedCallableParams?.join(", ")
            if (paramsList) paramsList += ","
            printer.writeLines(readLangTemplate(`component_builder_${declaredPostrix}${stagePostfix}`, this.library.language)
                .replaceAll("%COMPONENT_NAME%", component.name)
                .replaceAll("%COMPONENT_ATTRIBUTE_NAME%", componentInterfaceName)
                .replaceAll("%FUNCTION_PARAMETERS%", paramsList ?? "")
                .replaceAll("%COMPONENT_CLASS_NAME%", componentClassImplName)
                .replaceAll("%PEER_CLASS_NAME%", peerClassName)
                .replaceAll("%PEER_CALLABLE_INVOKE%", callableInvocation))
        })
        return [{
            collector: this.printImports(peer, component),
            content: printer,
            over: {
                node: component.attributeDeclaration,
                role: LayoutNodeRole.COMPONENT,
                hint: 'component.function'
            }
        }]
    }
}

class ArkTsComponentFileVisitor extends TSComponentFileVisitor {
    protected populateImports(imports: ImportsCollector) {
        if (!this.options.isDeclared)
            imports.addFeature('TypeChecker', '#components')
        if (this.library.useMemoM3) {
            imports.addFeatures(['memo', 'memo_stable'], '@koalaui/runtime/annotations')
            imports.addFeatures(['ComponentBuilder'], '@koalaui/builderLambda')
        }
    }
}

class JavaComponentFileVisitor implements ComponentFileVisitor {
    private readonly results: ComponentPrintResult[] = []

    constructor(
        private readonly library: PeerLibrary,
        private readonly file: idl.IDLFile,
    ) { }

    visit(): PrinterResult[] {
        collectPeersForFile(this.library, this.file).forEach(peer => this.printComponent(peer))
        return []
    }
    getComponentResults(): ComponentPrintResult[] {
        return []
    }

    private printComponent(peer: PeerClass) {
        const componentClassName = generateArkComponentName(peer.componentName)
        const componentType = createReferenceType(componentClassName)
        const parentComponentClassName = peer.parentComponentName ? generateArkComponentName(peer.parentComponentName!) : COMPONENT_BASE
        const peerClassName = componentToPeerClass(peer.componentName)

        const result = this.library.createLanguageWriter(Language.JAVA)
        result.print(`package ${ARKOALA_PACKAGE};\n`)
        const imports = collectJavaImports(peer.methods.flatMap(method => method.method.signature.args))
        printJavaImports(result, imports)

        result.writeClass(componentClassName, (writer) => {
            peer.methods.forEach(peerMethod => {
                const originalSignature = peerMethod.method.signature as NamedMethodSignature
                const signature = new NamedMethodSignature(componentType, originalSignature.args, originalSignature.argsNames, originalSignature.defaults)
                const method = new Method(peerMethod.method.name, signature, [MethodModifier.PUBLIC])
                writer.writeMethodImplementation(method, writer => {
                    const thiz = writer.makeThis()
                    writer.writeStatement(writer.makeCondition(
                        writer.makeString(`checkPriority("${method.name}")`),
                        writer.makeBlock([
                            writer.makeStatement(writer.makeMethodCall(`((${peerClassName})peer)`, `${peerMethod.sig.name}Attribute`, signature.argsNames.map(it => writer.makeString(it)))),
                            writer.makeReturn(thiz),
                        ])))
                    writer.writeStatement(writer.makeReturn(thiz))
                }
                )
            })

            const attributesFinishSignature = new MethodSignature(IDLVoidType, [])
            const applyAttributesFinish = 'applyAttributesFinish'
            writer.writeMethodImplementation(new Method(applyAttributesFinish, attributesFinishSignature, [MethodModifier.PROTECTED]), (writer) => {
                writer.writeMethodCall('super', applyAttributesFinish, [])
            })

            const applyAttributesSignature = new MethodSignature(IDLVoidType, [])
            const applyAttributes = 'applyAttributes'
            writer.writeMethodImplementation(new Method(applyAttributes, applyAttributesSignature, [MethodModifier.PROTECTED]), (writer) => {
                writer.writeMethodCall('super', applyAttributes, [])
                writer.writeStatement(writer.makeStatement(writer.makeString(`throw new RuntimeException("not implemented")`)))
            })
        }, parentComponentClassName)

        this.results.push(new ComponentPrintResult(new TargetFile(componentClassName + Language.JAVA.extension, ARKOALA_PACKAGE_PATH), result))
    }
}

class CJComponentFileVisitor implements ComponentFileVisitor {
    // 常量定义：避免重复编译正则表达式
    private static readonly OPTION_TYPE_PATTERN = /^Option<\s*.+\s*>$/
    private static readonly VALID_DEFAULT_VALUES = new Set(['true', 'false', '0', '1', 'Option.None'])
    
    private readonly typeMapper: CJTypeMapper
    private readonly callbackManager: CJCallbackTypeManager

    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        protected readonly options: {
            isDeclared: boolean,
        }
    ) {
        this.typeMapper = new CJTypeMapper()
        this.callbackManager = new CJCallbackTypeManager()
    }

    private overloadsPrinter(printer:LanguageWriter) {
        return new OverloadsPrinter(this.library, printer, this.library.language, true, this.library.useMemoM3)
    }

    /**
     * CJ 专用的组件方法重载打印器
     * 应用类型映射规则到方法参数
     */
    private printCjComponentOverloads(className: string, methods: any[], writer: LanguageWriter, componentName: string) {
        // 按方法名分组去重，优先保留命名回调版本
        const methodsByName = this.groupAndDeduplicateMethods(methods, writer, componentName)
        
        // 特殊过滤：对于checkbox组件，过滤掉不应该存在的onSelect方法
        const filteredMethods = methodsByName.filter(methodGroup => {
            const method = methodGroup.method
            if (!method) return true
            
            const methodName = method.name as string
            if (componentName === 'Checkbox' && methodName === 'onSelect') {
                console.log(`[ComponentsPrinter] Filtering out unauthorized method: ${methodName} for ${componentName}`)
                return false
            }
            
            return true
        })
        
        filteredMethods.forEach(methodGroup => {
            const method = methodGroup.method
            if (!method) return    
            const methodName = method?.name as string | undefined
            if (methodName) {
                // Prefer host attribute method JSDoc; if none and method starts with "set",
                const meta = resolveMethodMeta(
                    className,            // e.g. "ColumnAttribute"
                    componentName,        // e.g. "Column"
                    methodName,
                    className.endsWith('Attribute') ? className.replace(/Attribute$/, 'Interface') : undefined
                )
                if (meta) writer.print(renderDirective(meta))
            }
            // 先尝试收集每个参数的转换结果，若任一参数给出 overloads，则需要生成多个重载
            const perParamConversions: Array<TypeConversionResult> = method.signature.args.map((paramType: idl.IDLType, index: number) => {
                const paramName = method.signature.argName(index)
                const isOptional = method.signature.isArgOptional(index)
                return this.convertCjParameterType(paramType, paramName, isOptional)
            })

            const hasOverloads = perParamConversions.some(c => c.overloads && c.overloads.length > 0)
            
            // 调试日志：输出参数转换与重载信息
            try {
                const rawTypes = method.signature.args.map((t: idl.IDLType) => {
                    try { return writer.getNodeName(t) } catch { return '<unknown>' }
                })
                const convSummaries = perParamConversions.map((c, idx) => {
                    const cjType = c?.cjType
                    const cjName = typeof cjType === 'string' ? cjType : (cjType ? writer.getNodeName(cjType as idl.IDLType) : 'None')
                    const ov = c?.overloads?.map(alt => {
                        const altType = alt?.cjType
                        return typeof altType === 'string' ? altType : (altType ? writer.getNodeName(altType as idl.IDLType) : 'None')
                    }) || []
                    return `#${idx} raw=${rawTypes[idx]} -> cjType=${cjName} overloads=[${ov.join('|')}]`
                })
                console.log(`[ComponentsPrinter] perParamConversions for ${method.name}: ${convSummaries.join('; ')}`)
            } catch {}
            if (hasOverloads) {
                console.log(`[ComponentsPrinter] Method ${method.name} has overloads`);
            }

            const peerClassName = this.getPeerClassName(className)
            const argNames = method.signature.args.map((_: idl.IDLType, index: number) => method.signature.argName(index))
            const returnTypeName = writer.getNodeName(method.signature.returnType)

            if (hasOverloads) {
                // 处理重载：优先选择语义类型，避免生成内联函数版本
                const overloadParam = perParamConversions.find(c => c.overloads && c.overloads.length > 0)
                const overloadIndex = perParamConversions.findIndex(c => c.overloads && c.overloads.length > 0)
                
                if (overloadParam && overloadParam.overloads) {
                    // 过滤重载：优先使用命名回调，避免内联函数
                    const filteredOverloads = this.filterOverloadsForCallback(overloadParam.overloads, method.signature.argName(overloadIndex), writer)
                    
                    for (const alt of filteredOverloads) {
                        this.printSingleMethod(method, perParamConversions, overloadIndex, alt, className, writer, componentName)
                    }
                }
            } else {
                const params = this.buildParameterList(perParamConversions, method, writer, componentName);
                this.printSingleMethodImplementation(method, params, argNames, peerClassName, returnTypeName, writer, perParamConversions);
            }
        })
    }

    visit(): PrinterResult[] {
        const result: PrinterResult[] = []
        collectPeersForFile(this.library, this.file).forEach(peer => {
            if (!this.options.isDeclared)
                result.push(...this.printComponent(peer))
            result.push(...this.printComponentFunction(peer))
        })
        return result
    }

    private printImports(peer: PeerClass, component:IdlComponentDeclaration): ImportsCollector {
        const imports = new ImportsCollector()
        // 合并后统一导入 commonPara
        imports.addFeatures(['*'], 'idlize.commonPara')
        
        // 为CJ组件添加必要的导入
        if (!this.options.isDeclared) {
            // 导入ComponentBase：组件需要继承ComponentBase
            console.log(`[CJ ComponentsPrinter] Adding imports for component: ${peer.componentName}`)
            imports.addFeature('ComponentBase', 'idlize.peers.ComponentBase')
            // 导入Peer类
            const peerClassName = componentToPeerClass(peer.componentName)
            imports.addFeature(peerClassName, `idlize.peers.${peerClassName}`)
            console.log(`[CJ ComponentsPrinter] Added ComponentBase and ${peerClassName} imports`)
        } else {
            console.log(`[CJ ComponentsPrinter] Skipping imports for declared component: ${peer.componentName}`)
        }
        
        // 处理组件继承链的导入
        if (peer.originalParentFilename) {
            let [parentRef] = component.attributeDeclaration.inheritance
            let parentDecl = this.library.resolveTypeReference(parentRef)
            while (parentDecl) {
                const parentComponent = findComponentByDeclaration(this.library, parentDecl as idl.IDLInterface)!
                const parentGeneratedPath = this.library.layout.resolve({
                    node: parentDecl,
                    role: LayoutNodeRole.COMPONENT
                })
                if (!this.options.isDeclared) {
                    imports.addFeature(generateArkComponentName(parentComponent.name), `./${parentGeneratedPath}`)
                }

                imports.addFeatures([
                    componentToStyleClass(parentComponent.attributeDeclaration.name),
                    componentToAttributesInterface(parentComponent.attributeDeclaration.name),
                ], `./${parentGeneratedPath}`)
                
                if (parentComponent.attributeDeclaration.inheritance.length) {
                    let [parentRef] = parentComponent.attributeDeclaration.inheritance
                    parentDecl = this.library.resolveTypeReference(parentRef)
                } else {
                    parentDecl = undefined
                }
            }
        }
        
        // 收集组件自身的类型依赖
        collectDeclDependencies(this.library, component.attributeDeclaration, imports)
        if (component.interfaceDeclaration) {
            collectDeclDependencies(this.library, component.interfaceDeclaration, imports)
        }
        
        return imports
    }

    /**
     * 打印单个方法重载版本
     */
    /**
     * 过滤重载选项，避免同时生成内联函数和命名回调版本
     */
    private filterOverloadsForCallback(overloads: any[], paramName: string, writer: LanguageWriter): any[] {
        // 检查是否存在内联函数类型
        const hasInlineFunction = overloads.some(alt => {
            const typeName = typeof alt.cjType === 'string' ? alt.cjType : writer.getNodeName(alt.cjType as idl.IDLType)
            return CJCallbackTypeManager.isFunctionType(typeName)
        })

        if (hasInlineFunction) {
            // 如果存在内联函数，优先保留命名回调版本，过滤掉内联函数版本
            const filteredOverloads = overloads.filter(alt => {
                const typeName = typeof alt.cjType === 'string' ? alt.cjType : writer.getNodeName(alt.cjType as idl.IDLType)
                
                // 保留命名回调类型：XxxCallback 或 Option<XxxCallback>
                if (/\w+Callback\b/.test(typeName) || /^Option<\s*\w+Callback\s*>$/.test(typeName)) {
                    return true
                }
                
                // 过滤掉内联函数类型：(args) -> Ret
                if (CJCallbackTypeManager.isFunctionType(typeName)) {
                    console.log(`[ComponentsPrinter] Filtering out inline function type for ${paramName}: ${typeName}`)
                    return false
                }
                
                // 保留其他类型
                return true
            })
            
            return filteredOverloads.length > 0 ? filteredOverloads : overloads
        }
        
        // 如果没有内联函数，返回所有重载
        return overloads
    }

    /**
     * 打印单个方法重载版本
     * 符合《基础类型映射与联合类型优化规则》的重载生成策略
     */
    private printSingleMethod(
        method: any, 
        allConversions: TypeConversionResult[], 
        overloadIndex: number, 
        overloadAlt: { cjType: idl.IDLType | string; defaultValue?: string; useOption?: boolean }, 
        className: string, 
        writer: LanguageWriter,
        componentName: string
    ): void {
        const peerClassName = this.getPeerClassName(className);
        const argNames = method.signature.args.map((_: idl.IDLType, index: number) => method.signature.argName(index));
        const returnTypeName = writer.getNodeName(method.signature.returnType);
        
        const params = this.buildOverloadParameterList(allConversions, method, overloadIndex, overloadAlt, writer, componentName);
        this.printSingleMethodImplementation(method, params, argNames, peerClassName, returnTypeName, writer, allConversions);
    }
    
    /**
     * 构建重载方法的参数列表
     */
    private buildOverloadParameterList(
        allConversions: TypeConversionResult[], 
        method: any,
        overloadIndex: number,
        overloadAlt: { cjType: idl.IDLType | string; defaultValue?: string; useOption?: boolean },
        writer: LanguageWriter,
        componentName: string
    ): string[] {
        const params: string[] = [];
        
        allConversions.forEach((pc: TypeConversionResult, idx: number) => {
            if (idx === overloadIndex) {
                // 使用重载的替代类型
                params.push(this.processAndFormatParameter(
                    method.signature.args[idx],
                    idx,
                    method,
                    componentName,
                    writer,
                    overloadAlt, // 重载类型
                    undefined
                ))
            } else {
                // 使用原有转换结果
                params.push(this.processAndFormatParameter(
                    method.signature.args[idx],
                    idx,
                    method,
                    componentName,
                    writer,
                    undefined, // 无重载类型
                    pc // 使用已有转换结果
                ))
            }
        });
        
        return params;
    }
    
    /**
     * 构建标准方法的参数列表
     */
    private buildParameterList(
        perParamConversions: TypeConversionResult[], 
        method: any, 
        writer: LanguageWriter,
        componentName: string
    ): string[] {
        const params: string[] = [];
        
        perParamConversions.forEach((pc: TypeConversionResult, idx: number) => {
            params.push(this.processAndFormatParameter(
                method.signature.args[idx],
                idx,
                method,
                componentName,
                writer,
                undefined, // 无重载类型
                pc // 使用已有转换结果
            ))
        });
        
        return params;
    }
    
    /**
     * 格式化单个参数，符合《基础类型映射与联合类型优化规则》
     * 优先使用默认值，基础类型避免使用 ? 语法
     */
    /**
     * 格式化单个参数，符合《基础类型映射与联合类型优化规则》
     * 优先使用默认值，基础类型避免使用 ? 语法
     */
    private formatParameter(name: string, typeName: string, defaultValue: string | undefined, isOptional: boolean): string {
        // 回调参数：统一使用 CJCallbackTypeManager 处理
        if (CJCallbackTypeManager.isCallbackType(typeName)) {
            return CJCallbackTypeManager.formatCallbackParameter(name, typeName, isOptional);
        }

        // 非回调参数：统一可选参数表达，避免双重可选 "?: Option<T>"
        return this.formatNonCallbackParameter(name, typeName, defaultValue, isOptional);
    }

    /**
     * 格式化非回调参数：统一可选表达规则
     */
    private formatNonCallbackParameter(name: string, typeName: string, defaultValue: string | undefined, isOptional: boolean): string {
        if (!isOptional) {
            return `${name}: ${typeName}`;
        }

        // 可选参数：优先使用有效默认值
        const validDefault = this.getValidDefaultValue(typeName, defaultValue);
        if (validDefault) {
            // 🔧 修复：CJ语言中为有默认值的参数添加!后缀并保留默认值
            return `${name}!: ${typeName} = ${validDefault}`;
        }

        // Option<T> 类型：统一默认为 Option.None
        if (this.isOptionType(typeName)) {
            return `${name}!: ${typeName} = Option.None`;
        }

        // 其他类型：输出为必选形式，避免 "?:" 双可选
        return `${name}: ${typeName}`;
    }

    /**
     * 检测是否为 Option<T> 类型
     */
    private isOptionType(typeName: string): boolean {
        return CJComponentFileVisitor.OPTION_TYPE_PATTERN.test(typeName);
    }

    /**
     * 获取有效的默认值
     */
    private getValidDefaultValue(typeName: string, defaultValue: string | undefined): string | null {
        if (!defaultValue || defaultValue === 'None') {
            return null;
        }
        
        // 检查是否为常用的有效默认值
        if (CJComponentFileVisitor.VALID_DEFAULT_VALUES.has(defaultValue)) {
            return defaultValue;
        }

        // 检查是否为数字类型的默认值
        if (/^-?\d+(\.\d+)?$/.test(defaultValue)) {
            return defaultValue;
        }

        // 检查是否为字符串字面量
        if (/^["'].*["']$/.test(defaultValue)) {
            return defaultValue;
        }

        return null;
    }
    /**
     * 统一参数处理入口
     */
    private processParameter(
        name: string, 
        typeName: string, 
        defaultValue: string | undefined, 
        isOptional: boolean
    ): ParameterProcessResult {
        const isCallback = CJCallbackTypeManager.isCallbackType(typeName);
        const formatted = this.formatParameter(name, typeName, defaultValue, isOptional);
        
        return {
            formatted,
            needsValidation: isOptional && isCallback, // 可选回调需要验证
            isCallback
        };
    }

    /**
     * 统一处理类型名：高频收敛 + 回调命名化
     * 优先使用预扫描阶段收集的回调类型，确保类型定义与使用一致，避免数字后缀问题
     */
    private processTypeName(typeName: string, paramName: string, methodName: string, componentName: string): string {
        // 步骤1：应用高频联合类型收敛
        const originalType = typeName
        let processedType = this.rewriteTypeName(typeName)
        
        // 调试信息已移除，类型重写过程正常工作
        
        // 步骤2：回调命名化 - 优先查找预扫描阶段已注册的类型
        if (CJCallbackTypeManager.isFunctionType(processedType)) {
            // 尝试查找预扫描阶段已经注册的回调类型
            const existingCallbackType = this.callbackManager.findExistingCallbackType(paramName, processedType, methodName, componentName)
            if (existingCallbackType) {
                console.log(`[ComponentsPrinter] Reusing existing callback type: ${existingCallbackType} for ${componentName}.${methodName}`)
                return existingCallbackType
            } else {
                // 如果找不到已存在的类型，这可能表示预扫描阶段遗漏或类型签名不匹配
                // 为了避免生成数字后缀，我们先打印调试信息
                console.log(`[ComponentsPrinter] Warning: No existing callback type found for ${componentName}.${methodName}`)
                console.log(`[ComponentsPrinter] Searched signature: ${processedType}`)
                
                // 仍然尝试注册，但这可能会导致数字后缀
                processedType = this.callbackManager.processCallbackType(paramName, processedType, methodName, componentName)
                console.log(`[ComponentsPrinter] Created new callback type: ${processedType}`)
            }
        }
        
        return processedType
    }

    /**
     * 事件方法命名规范化：
     * 将内部事件前缀 `_onChangeEvent_foo` 统一重命名为 `onFoo`
     * 仅影响对外暴露的方法名；peer 调用仍使用原始方法名。
     * @returns 重命名后的方法名，或null表示应该过滤掉该方法
     */
    private normalizeEventMethodName(originalName: string): string | null {
        const m = originalName.match(/^_onChangeEvent_(.+)$/)
        if (!m) return originalName
        const tail = m[1]
        
        // 特殊过滤：某些内部事件方法不应该暴露为公共API
        // 例如：_onChangeEvent_select 不应该转换为 onSelect（checkbox组件没有这个API）
        const internalOnlyEvents = ['select'] // 添加需要过滤的事件
        if (internalOnlyEvents.includes(tail)) {
            console.log(`[ComponentsPrinter] Filtering out internal event method: ${originalName}`)
            return null // 返回null表示应该过滤掉这个方法
        }
        
        // foo -> onFoo
        return 'on' + tail.replace(/^(.)/, (c) => c.toUpperCase())
    }

    /**
     * Setter 命名收敛：对 CJ 输出移除 set 前缀，以与 Peer 层保持一致
     * 例如：setBlankOptions → blankOptions
     */
    private normalizeSetterName(name: string): string {
        // 仅处理以 set 后跟大写字母开头的典型 setter，如 setFontSize → fontSize
        return name.replace(/^set([A-Z])(.*)$/, (_all, first: string, rest: string) => first.toLowerCase() + rest)
    }

    /**
     * 判断类型是否为基础类型，需要在Component→Peer调用时进行Some()包装
     * 基础类型：String/Int32/Float64/Bool/枚举
     */
    private isBasicTypeForOptionWrapping(type: idl.IDLType): boolean {
        try {
            // 使用已有的CJTypeMapper基础类型判断逻辑
            return this.typeMapper.isBasicType(type) || idl.isEnum(type);
        } catch (error) {
            // 兜底：检查常见的基础类型名称
            const typeName = this.getTypeDisplayName(type);
            return ['String', 'Int32', 'Int64', 'Float64', 'Bool', 'Boolean'].includes(typeName);
        }
    }

    /**
     * 统一的参数转换和格式化逻辑，用于属性方法、重载方法和构建函数
     */
    private processAndFormatParameter(
        paramType: any,
        index: number,
        method: any,
        componentName: string,
        writer: LanguageWriter,
        overrideType?: { cjType: any; defaultValue?: string },
        baseConversion?: TypeConversionResult
    ): string {
        try {
            const paramName = method.signature.argName(index) || `param${index}`
            const isOptional = method.signature.isArgOptional(index)
            
            // 使用重载类型或基础转换结果
            let tName: string
            let defaultValue: string | undefined
            
            if (overrideType) {
                tName = typeof overrideType.cjType === 'string' ? overrideType.cjType : writer.getNodeName(overrideType.cjType)
                defaultValue = overrideType.defaultValue
            } else {
                const converted = baseConversion ?? this.convertCjParameterType(paramType, paramName, isOptional)
                
                // 容错处理：优先使用重载的第一个分支，避免回退到 Union_ 原始类型
                if (converted && !converted.cjType && converted.overloads && converted.overloads.length > 0) {
                    const first = converted.overloads[0]
                    const chosen = first?.cjType ?? 'Any'
                    tName = typeof chosen === 'string' ? chosen : writer.getNodeName(chosen)
                    defaultValue = first?.defaultValue
                } else if (!converted || !converted.cjType) {
                    console.warn(`[ComponentsPrinter] No cjType for parameter ${paramName} in method ${method.name}, falling back to paramType`)
                    // 兜底：使用原始 paramType 的 nodeName
                    try {
                        tName = writer.getNodeName(paramType) || 'Any'
                    } catch (error) {
                        console.warn(`[ComponentsPrinter] Failed to get nodeName for paramType, using 'Any'`)
                        tName = 'Any'
                    }
                    defaultValue = undefined
                } else {
                    const chosenType = converted.cjType ?? converted.overloads?.[0]?.cjType ?? 'Any'
                    tName = typeof chosenType === 'string' ? chosenType : writer.getNodeName(chosenType)
                    defaultValue = converted.defaultValue ?? converted.overloads?.[0]?.defaultValue
                }
            }
            
            // 若原始 IDL 参数为函数签名，而映射后类型未被识别为回调，则回退使用原始函数签名，保证后续命名回调生成
            try {
                const originalTypeName = writer.getNodeName(paramType)
                if (!CJCallbackTypeManager.isCallbackType(tName) && CJCallbackTypeManager.isFunctionType(originalTypeName)) {
                    tName = originalTypeName
                }
            } catch { /* ignore */ }

            // 统一处理类型名：高频收敛 + 回调命名化
            const processedTypeName = this.processTypeName(tName, paramName, method.name, componentName)
            
            // 使用统一的参数格式化逻辑
            return this.formatParameter(paramName, processedTypeName, defaultValue, isOptional)
            
        } catch (error) {
            console.warn(`[ComponentsPrinter] Error processing parameter ${index} in method ${method.name}:`, error)
            // 最终兜底：返回基本参数格式
            const paramName = `param${index}`
            return `${paramName}: Any`
        }
    }
    
    /**
     * 打印方法实现体
     */
    private printSingleMethodImplementation(
        method: any, 
        params: string[], 
        argNames: string[], 
        peerClassName: string, 
        returnTypeName: string, 
        writer: LanguageWriter,
        perParamConversions?: TypeConversionResult[]
    ): void {
        const paramsStr = params.join(', ');
        // 统一组件方法返回类型为 This，避免出现声明为 Unit 却返回 this 的不一致
        const effectiveReturnTypeName = 'This';
        // 对外暴露的方法名（事件重命名）
        const originalMethodName = method.name as string
        const exposedMethodName = this.normalizeEventMethodName(originalMethodName)
        
        // 如果方法被过滤掉（返回null），跳过生成
        if (exposedMethodName === null) {
            console.log(`[ComponentsPrinter] Skipping filtered method: ${originalMethodName}`)
            return
        }
        
        // Peer层方法名（应用setter规范化，与Peer层保持一致）
        const peerMethodName = this.normalizeSetterName(exposedMethodName)
        
        writer.print(`public func ${writer.escapeKeyword(exposedMethodName)}(${paramsStr}): ${effectiveReturnTypeName} {`);
        writer.pushIndent();
        
        // 根据IDL类型决定是否添加Some()包装
        const wrappedArgs = argNames.map((argName, index) => {
            const paramType = method.signature?.args?.[index];
            if (paramType) {
                // 检查IDL中是否标记为可选参数
                const isOptional = method.signature?.isArgOptional?.(index) || false;
                
                // 检查是否是联合类型包含undefined
                let isUnionWithUndefined = false;
                if (idl.isUnionType(paramType)) {
                    const unionTypes = (paramType as any).types;
                    
                    isUnionWithUndefined = unionTypes.some((t: any) => 
                        t.kind === 'undefined' || t.name === 'undefined' || t.toString?.().includes('undefined')
                    );
                }
                
                // 检查类型名称是否包含undefined或OptionalType
                const typeName = this.getTypeDisplayName(paramType);
                const hasUndefinedInName = typeName.includes('undefined') || typeName.includes('Undefined');
                const isOptionalType = typeName === 'OptionalType' || typeName.includes('OptionalType');
                
                // ✅ 使用perParamConversions的结果来检测Component层参数类型
                const componentConversion = perParamConversions?.[index];
                const componentCjType = componentConversion?.cjType;
                const componentTypeDisplayName = componentCjType ? 
                    (typeof componentCjType === 'string' ? componentCjType : this.getTypeDisplayName(componentCjType as idl.IDLType)) : 
                    'undefined';
                
                // 更全面的Option<T>检测
                const componentIsOptionType = componentCjType && (
                    componentTypeDisplayName.includes('Option<') ||
                    componentTypeDisplayName === 'OptionalType' ||
                    (componentCjType as any).kind === 'OptionalType'
                );
                
                // 获取Peer层期望的参数类型
                const peerParamType = this.getPeerParameterType(method, index);
                const peerExpectsOption = peerParamType && (
                    peerParamType.includes('Option<') || 
                    peerParamType === 'OptionalType'
                );
                
                
                // 如果Component层参数已经是Option<T>格式，直接传递，不添加Some()包装
                if (componentIsOptionType) {
                    return argName;
                }
                
                // 如果Peer层期望Option<T>类型，但Component层不是Option<T>，需要添加Some()包装
                if (peerExpectsOption && !componentIsOptionType) {
                    return `Some(${argName})`;
                }
                
                // 如果IDL中标记为可选参数、联合类型包含undefined、类型名称包含undefined、或是OptionalType，且Peer层不期望Option<T>，添加Some()包装
                if ((isOptional || isUnionWithUndefined || hasUndefinedInName || isOptionalType) && !peerExpectsOption) {
                    return `Some(${argName})`;
                }
                
                
                // 其他情况直接传递
                return argName;
            }
            return argName;
        });
        const argList = wrappedArgs.join(', ');
        writer.print(`this.getPeer().${peerMethodName}Attribute(${argList})`);
        writer.print('return this');
        
        writer.popIndent();
        writer.print('}');
    }

    /**
     * 转换 Cangjie 参数类型，委托给 CJTypeMapper 处理
     * 符合《基础类型映射与联合类型优化规则》
     */
    private convertCjParameterType(paramType: idl.IDLType, paramName: string, isOptional: boolean): TypeConversionResult {
        return this.typeMapper.convertParameterType(paramType, paramName, isOptional);
    }

    /**
     * 在最终打印前，对类型名进行高频联合类型收敛改写，确保组件层不暴露 Union_*。
     * 基于《基础类型映射与联合类型优化规则》的 P0-P2 收敛策略：
     * P0: FontWeight|number|string → FontWeight, string|Resource → ResourceStr
     * P1: Date|Bindable → Date
     * P2: String|Array<String> → Array<ResourceStr>, Number|Array<Number> → Array<Int64>
     * 其他: string|number|Color → ResourceColor
     */
    public rewriteTypeName(typeName: string): string {
        // 新策略：仅在上游（UnionTypeProcessor/CJTypeMapper）决定是否重载或收敛。
        // 组件层不再做除空白规范化之外的类型改写，避免误收敛多分支联合。
        if (!typeName) return typeName;
        return typeName.replace(/\s+/g, ' ');
    }
    
    /**
     * P0 高优先级收敛规则
     */
    private applyP0Convergence(s: string): string {
        // FontWeight | number | string → FontWeight
        s = s.replace(/Union_FontWeight_Number_String/g, 'FontWeight');
        s = s.replace(/FontWeight\s*\|\s*[Nn]umber\s*\|\s*[Ss]tring/g, 'FontWeight');
        s = s.replace(/[Ss]tring\s*\|\s*[Nn]umber\s*\|\s*FontWeight/g, 'FontWeight');
        
        // string | Resource → ResourceStr
        s = s.replace(/Union_String_Resource/g, 'ResourceStr');
        s = s.replace(/[Ss]tring\s*\|\s*Resource/g, 'ResourceStr');
        s = s.replace(/Resource\s*\|\s*[Ss]tring/g, 'ResourceStr');
        
        return s;
    }
    
    /**
     * P1 特殊类型收敛规则
     */
    private applyP1Convergence(s: string): string {
        // Date | Bindable → Date
        s = s.replace(/Union_Date_Bindable/g, 'Date');
        s = s.replace(/Date\s*\|\s*Bindable(?:<[^>]*>)?/g, 'Date');
        s = s.replace(/Bindable(?:<\s*Date\s*>)?\s*\|\s*Date/g, 'Date');
        
        return s;
    }
    
    /**
     * P2 数组类型收敛规则
     */
    private applyP2Convergence(s: string): string {
        // String | Array<String> → Array<String>（根据需求修改）
        s = s.replace(/Union_String_Array_String/g, 'Array<String>');
        s = s.replace(/[Ss]tring\s*\|\s*Array<\s*[Ss]tring\s*>/g, 'Array<String>');
        s = s.replace(/Array<\s*[Ss]tring\s*>\s*\|\s*[Ss]tring/g, 'Array<String>');
        
        // Number | Array<Number> → Array<Int32>（索引/计数优先整型）
        s = s.replace(/Union_Number_Array_Number/g, 'Array<Int32>');
        s = s.replace(/[Nn]umber\s*\|\s*Array<\s*[Nn]umber\s*>/g, 'Array<Int32>');
        s = s.replace(/Array<\s*[Nn]umber\s*>\s*\|\s*[Nn]umber/g, 'Array<Int32>');
        
        return s;
    }
    
    /**
     * 其他高频模式收敛
     */
    private applyOtherConvergence(s: string): string {
        // string | number | Color → ResourceColor
        s = s.replace(/Union_String_Number_Color/g, 'ResourceColor');
        s = s.replace(/[Ss]tring\s*\|\s*[Nn]umber\s*\|\s*Color/g, 'ResourceColor');
        s = s.replace(/Color\s*\|\s*[Nn]umber\s*\|\s*[Ss]tring/g, 'ResourceColor');
        
        // 回调类型命名约定修正
        s = s.replace(/TextPickerScrollStopCallback/g, 'OnTextPickerScrollStopCallback');
        
        return s;
    }

    /**
     * 基础类型映射：Float64→Float32, Any→CustomObject
     */
    private applyBasicTypeMapping(s: string): string {
        // 基础类型不再后置改写，直接返回
        return s;
    }

    /**
     * 修复构建函数模板中的内联回调，替换为命名回调类型
     */
    private fixInlineCallbacksInTemplate(templateContent: string, componentName: string): string {
        let content = templateContent
        
        // 修复构建函数参数中的内联回调
        content = this.fixBuildFunctionParameters(content, componentName)
        
        // 修复 Holder 类中的内联回调
        content = this.fixHolderClassCallbacks(content, componentName)
        
        console.log(`[ComponentsPrinter] Fixed inline callbacks in template for ${componentName}`)
        return content
    }

    /**
     * 修复构建函数参数中的内联回调
     */
    /**
     * 生成构建函数参数列表（避免后期字符串替换）
     */
    private generateBuildFunctionParams(componentName: string): BuildFunctionParamConfig[] {
        return [
            {
                name: 'style',
                type: `On${componentName}StyleCallback`,
                isOptional: true
            },
            {
                name: 'content_',
                type: `On${componentName}ContentCallback`,
                isOptional: true
            }
        ];
    }

    /**
     * 格式化构建函数参数
     */
    private formatBuildFunctionParams(componentName: string): string {
        const params = this.generateBuildFunctionParams(componentName);
        return params.map(param => {
            const wrappedType = CJCallbackTypeManager.wrapCallbackType(param.type, param.isOptional);
            // 构建函数入参：根据类型智能设置默认值
            const defaultValue = this.getSmartDefaultForBuildParam(wrappedType, param.name);
            return `${param.name}: ${wrappedType} = ${defaultValue}`;
        }).join(',\n    ');
    }

    /**
     * 为构建函数参数获取智能默认值
     */
    private getSmartDefaultForBuildParam(typeName: string, paramName: string): string {
        // Option 类型统一为 Option.None
        if (this.isOptionType(typeName)) {
            return 'Option.None';
        }

        // 根据参数名推断特殊默认值
        if (paramName.includes('visible') || paramName.includes('enabled')) {
            return 'true';
        }
        
        if (paramName.includes('count') || paramName.includes('index')) {
            return '0';
        }

        // 回调类型
        if (CJCallbackTypeManager.isCallbackType(typeName)) {
            return 'Option.None';
        }

        // 默认为 Option.None（最安全的选择）
        return 'Option.None';
    }

    private fixBuildFunctionParameters(content: string, componentName: string): string {
        // 使用新的结构化生成后，大部分修复已不需要
        // 只处理遗留的边缘情况
        content = content.replace(
            /style:\s*\?\(\(attributes:\s*(\w+)\s*\)\s*->\s*Unit\)/g,
            'style: Option<On' + componentName + 'StyleCallback>'
        )
        content = content.replace(
            /style:\s*\(\(attributes:\s*(\w+)\s*\)\s*->\s*Unit\)/g,
            'style: Option<On' + componentName + 'StyleCallback>'
        )
        
        content = content.replace(
            /content_:\s*\?\(\(\)\s*->\s*Unit\)/g,
            'content_: Option<On' + componentName + 'ContentCallback>'
        )
        content = content.replace(
            /content_:\s*\(\(\)\s*->\s*Unit\)/g,
            'content_: Option<On' + componentName + 'ContentCallback>'
        )
        
        return content
    }

    /**
     * 修复 Holder 类中的内联回调
     */
    private fixHolderClassCallbacks(content: string, componentName: string): string {
        // 修复 StyleHolder 类字段
        content = content.replace(
            /var\s+value:\s*\?\(\(attributes:\s*(\w+)\s*\)\s*->\s*Unit\)/g,
            'var value: Option<On' + componentName + 'StyleCallback>'
        )
        content = content.replace(
            /var\s+value:\s*\(\(attributes:\s*(\w+)\s*\)\s*->\s*Unit\)/g,
            'var value: Option<On' + componentName + 'StyleCallback>'
        )
        
        // 修复 ContentHolder 类字段
        content = content.replace(
            /var\s+value:\s*\?\(\(\)\s*->\s*Unit\)/g,
            'var value: Option<On' + componentName + 'ContentCallback>'
        )
        content = content.replace(
            /var\s+value:\s*\(\(\)\s*->\s*Unit\)/g,
            'var value: Option<On' + componentName + 'ContentCallback>'
        )
        
        // 修复 StyleHolder 构造函数
        content = content.replace(
            /init\s*\(value:\s*\?\(\(attributes:\s*(\w+)\s*\)\s*->\s*Unit\)\)/g,
            'init (value: Option<On' + componentName + 'StyleCallback>)'
        )
        content = content.replace(
            /init\s*\(value:\s*\(\(attributes:\s*(\w+)\s*\)\s*->\s*Unit\)\)/g,
            'init (value: Option<On' + componentName + 'StyleCallback>)'
        )
        
        // 修复 ContentHolder 构造函数
        content = content.replace(
            /init\s*\(value:\s*\?\(\(\)\s*->\s*Unit\)\)/g,
            'init (value: Option<On' + componentName + 'ContentCallback>)'
        )
        content = content.replace(
            /init\s*\(value:\s*\(\(\)\s*->\s*Unit\)\)/g,
            'init (value: Option<On' + componentName + 'ContentCallback>)'
        )
        
        return content
    }

    /**
     * 按方法名分组并去重，优先保留命名回调版本
     */
    private groupAndDeduplicateMethods(methods: any[], writer: LanguageWriter, componentName: string): any[] {
        const methodsByName = new Map<string, any[]>()
        
        // 按方法名分组
        methods.forEach(methodGroup => {
            const method = methodGroup.method
            if (!method) return
            
            const methodName = method.name
            if (!methodsByName.has(methodName)) {
                methodsByName.set(methodName, [])
            }
            methodsByName.get(methodName)!.push(methodGroup)
        })
        
        // 对每个同名方法组进行去重
        const deduplicatedMethods: any[] = []
        methodsByName.forEach((methodGroupList, methodName) => {
            if (methodGroupList.length === 1) {
                deduplicatedMethods.push(methodGroupList[0])
                return
            }

            // 多个版本：保留全部变体，但按偏好排序，并按参数签名去重
            // 1) 计算偏好分数（命名回调优先）
            const scored = methodGroupList.map(mg => ({ mg, score: this.scoreMethodForCallbackPreference(mg, writer, componentName) }))
            scored.sort((a, b) => b.score - a.score)

            // 2) 基于参数类型签名去重
            const seen = new Set<string>()
            for (const { mg } of scored) {
                try {
                    const sig = (mg.method?.signature?.args || []).map((t: idl.IDLType) => {
                        try { return writer.getNodeName(t) } catch { return '<unknown>' }
                    }).join(',')
                    const key = `${mg.method?.name}(${sig})`
                    if (seen.has(key)) continue
                    seen.add(key)
                    deduplicatedMethods.push(mg)
                } catch {
                    deduplicatedMethods.push(mg)
                }
            }
        })
        
        return deduplicatedMethods
    }

    /**
     * 从同名方法的多个版本中选择优先版本
     * 优先规则：命名回调版本 > 内联函数版本
     */
    private selectPreferredMethodVersion(methodGroupList: any[], writer: LanguageWriter, componentName: string): any {
        let bestMethod = methodGroupList[0]
        let bestScore = this.scoreMethodForCallbackPreference(bestMethod, writer, componentName)
        
        for (let i = 1; i < methodGroupList.length; i++) {
            const currentMethod = methodGroupList[i]
            const currentScore = this.scoreMethodForCallbackPreference(currentMethod, writer, componentName)
            
            if (currentScore > bestScore) {
                bestMethod = currentMethod
                bestScore = currentScore
            }
        }
        
        return bestMethod
    }

    /**
     * 对方法版本进行评分，命名回调版本得分更高
     */
    private scoreMethodForCallbackPreference(methodGroup: any, writer: LanguageWriter, componentName: string): number {
        const method = methodGroup.method
        if (!method) return 0
        
        let score = 0
        let callbackCount = 0
        let inlineFunctionCount = 0
        
        // 检查每个参数，命名回调参数增加得分
        method.signature.args.forEach((paramType: idl.IDLType, index: number) => {
            try {
                const paramName = method.signature.argName(index) || `param${index}`
                const isOptional = method.signature.isArgOptional(index)
                const converted = this.convertCjParameterType(paramType, paramName, isOptional)
                
                let typeName: string
                
                // 容错处理：确保能获取到类型名
                if (!converted || !converted.cjType) {
                    try {
                        typeName = writer.getNodeName(paramType) || 'Any'
                    } catch (error) {
                        typeName = 'Any'
                    }
                } else {
                    if (typeof converted.cjType === 'string') {
                        typeName = converted.cjType
                    } else {
                        typeName = writer.getNodeName(converted.cjType as idl.IDLType)
                    }
                }
                
                // 应用类型处理链（高频收敛 + 回调命名化）
                typeName = this.processTypeName(typeName, paramName, method.name, componentName)
                
                // 精确检测命名回调类型
                if (/\w+Callback\b/.test(typeName) || /^Option<\s*\w+Callback\s*>$/.test(typeName)) {
                    score += 10
                    callbackCount++
                }
                // 检测内联函数类型（归一化后检测）
                else if (CJCallbackTypeManager.isFunctionType(typeName)) {
                    score -= 5
                    inlineFunctionCount++
                }
                
            } catch (error) {
                console.warn(`[ComponentsPrinter] Error processing parameter ${index} in method ${method.name}:`, error)
            }
        })
        
        // 额外评分规则：命名回调数量越多越好，内联函数越少越好
        score += callbackCount * 5  // 每个命名回调额外加分
        score -= inlineFunctionCount * 3  // 每个内联函数额外减分
        
        console.log(`[ComponentsPrinter] Method ${method.name} score: ${score} (callbacks: ${callbackCount}, inline: ${inlineFunctionCount})`)
        return score
    }

    /**
     * 判断是否应该为组件生成构建函数
     */
    private shouldGenerateBuildFunction(peer: PeerClass): boolean {
        // 检查组件名称，IDL 组件通常有特定的命名模式
        const componentName = peer.componentName;
        
        // CustomLayoutRoot 等是 IDL 组件，不需要构建函数
        const idlComponents = ['CustomLayoutRoot'];
        if (idlComponents.includes(componentName)) {
            return false;
        }
        
        // 检查方法列表，如果没有常见的属性设置方法，可能是 IDL 组件
        const hasAttributeMethods = peer.methods.some((method: any) => 
            method && method.name && (method.name.endsWith('Attribute') || method.name.startsWith('set'))
        );
        
        // 如果只有很少的方法且都是特殊方法（如 subscribeOn*），可能是 IDL 组件
        const specialMethods = peer.methods.filter((method: any) => 
            method && method.name && (method.name.startsWith('subscribeOn') || method.name === 'getPeer')
        );
        
        return !(specialMethods.length > 0 && peer.methods.length <= specialMethods.length + 2);
    }

    /**
     * 生成构建函数专用的回调类型定义
     */
    private generateBuildFunctionCallbackDefinitions(componentName: string): string[] {
        const definitions: string[] = []
        
        // 使用与回调类型管理器相同的组件名清理逻辑
        const sanitizedComponentName = componentName.replace(/(Attribute|Component)$/,'')
        
        // Style 回调类型定义 - 修复：使用实际的组件类型而不是不存在的接口
        const styleCallbackName = `On${sanitizedComponentName}StyleCallback`
        const styleCallbackDef = `public type ${styleCallbackName} = (attributes: Ark${sanitizedComponentName}Component) -> Unit`
        definitions.push(styleCallbackDef)
        
        // Content 回调类型定义保持不变
        const contentCallbackName = `On${sanitizedComponentName}ContentCallback`
        const contentCallbackDef = `public type ${contentCallbackName} = () -> Unit`
        definitions.push(contentCallbackDef)
        
        return definitions
    }

    /**
     * 清理剩余的Union_类型
     */
    private applyUnionTypeCleanup(s: string): string {
        // 通用Union_类型替换策略
        
        // 四元及以上 Union_X_Y_Z_W... → 选择语义化类型
        s = s.replace(/Union_(\w+)_(\w+)_(\w+)_(\w+)/g, (match, type1, type2, type3, type4) => {
            const types = [type1, type2, type3, type4];
            return this.selectBestTypeFromUnion(types);
        });
        
        // 三元 Union_X_Y_Z → 选择语义化类型
        s = s.replace(/Union_(\w+)_(\w+)_(\w+)/g, (match, type1, type2, type3) => {
            const types = [type1, type2, type3];
            return this.selectBestTypeFromUnion(types);
        });
        
        // 二元 Union_X_Y → 选择更语义化的类型
        s = s.replace(/Union_(\w+)_(\w+)/g, (match, type1, type2) => {
            const types = [type1, type2];
            return this.selectBestTypeFromUnion(types);
        });
        
        // 处理剩余的复杂 Union 模式
        s = s.replace(/Union_[\w_]+/g, (match) => {
            console.log(`[ComponentsPrinter] Converting complex Union to CustomObject: ${match}`);
            return 'CustomObject';
        });
        
        return s;
    }

    /**
     * 从 Union 类型数组中选择最佳类型
     */
    private selectBestTypeFromUnion(types: string[]): string {
        // 优先级1：已知的高频语义类型
        const highPriorityTypes = ['ResourceStr', 'ResourceColor', 'Length', 'Date', 'FontWeight'];
        for (const priority of highPriorityTypes) {
            if (types.includes(priority)) {
                console.log(`[ComponentsPrinter] Union converged to high-priority type: ${priority}`);
                return priority;
            }
        }
        
        // 优先级2：常用基础类型
        const mediumPriorityTypes = ['String', 'Int32', 'Int64', 'Float32', 'Bool'];
        for (const priority of mediumPriorityTypes) {
            if (types.includes(priority)) {
                console.log(`[ComponentsPrinter] Union converged to medium-priority type: ${priority}`);
                return priority;
            }
        }
        
        // 优先级3：避免选择过于通用的类型
        const lowPriorityTypes = ['Any', 'Object', 'Number'];
        const filteredTypes = types.filter(t => !lowPriorityTypes.includes(t));
        
        if (filteredTypes.length > 0) {
            const selected = filteredTypes[0];
            console.log(`[ComponentsPrinter] Union converged to filtered type: ${selected}`);
            return selected;
        }
        
        // 兜底：选择第一个类型
        const fallback = types[0] || 'CustomObject';
        console.log(`[ComponentsPrinter] Union converged to fallback type: ${fallback}`);
        return fallback;
    }

    /**
     * 获取类型显示名称，委托给 CJTypeMapper 处理
     */
    private getTypeDisplayName(type: idl.IDLType): string {
        return this.typeMapper.getTypeDisplayName(type);
    }

    /**
     * 生成 Peer 类名称
     */
    private getPeerClassName(componentClassName: string): string {
        if (componentClassName.endsWith('Component')) {
            return componentClassName.slice(0, -9) + 'Peer';
        }
        return componentClassName + 'Peer';
    }

    /**
     * 获取Peer层期望的参数类型
     */
    private getPeerParameterType(method: any, paramIndex: number): string | null {
        try {
            const paramType = method.signature?.args?.[paramIndex];
            if (!paramType) return null;
            
            const paramName = method.signature?.argName?.(paramIndex) || `param${paramIndex}`;
            const isOptional = method.signature?.isArgOptional?.(paramIndex) || false;
            
            
            // 使用CJTypeMapper转换参数类型
            const conversion = this.typeMapper.convertParameterType(paramType, paramName, isOptional);
            
            
            // 如果有重载，选择第一个重载的类型
            if (conversion.overloads && conversion.overloads.length > 0) {
                const firstOverload = conversion.overloads[0];
                const result = typeof firstOverload.cjType === 'string' ? firstOverload.cjType : this.getTypeDisplayName(firstOverload.cjType as idl.IDLType);
                return result;
            }
            
            // 返回转换后的类型
            if (conversion.cjType) {
                const result = typeof conversion.cjType === 'string' ? conversion.cjType : this.getTypeDisplayName(conversion.cjType as idl.IDLType);
                return result;
            }
            
            return null;
        } catch (error) {
            return null;
        }
    }



    private printComponent(peer: PeerClass): PrinterResult[] {

        const component = findComponentByType(this.library, idl.createReferenceType(peer.originalClassName!))!

        const imports = this.printImports(peer, component)
        const printer = this.library.createLanguageWriter()

        const componentClassName = generateArkComponentName(peer.componentName)
        const parentComponentClassName = peer.parentComponentName ? generateArkComponentName(peer.parentComponentName!) : `ComponentBase`
        const peerClassName = componentToPeerClass(peer.componentName)

        // 清理组件回调缓存并预扫描
        const componentName = peer.componentName
        this.callbackManager.clearComponentCallbacks(componentName)
        // 预扫描所有方法以收集回调类型（传入typeRewriter确保类型一致性，避免预扫描和实际处理阶段类型差异）
        this.callbackManager.prescanMethods(peer.methods, componentName, this.typeMapper, this)
        // Gather and MERGE possible sources for class-level directive
        const ifaceName = component.interfaceDeclaration?.name
        const classMeta = mergeMetas([
            getTypeMeta(peer.originalClassName!),   // ColumnAttribute
            getTypeMeta(peer.componentName),        // Column (const)
            getTypeMeta(ifaceName)                  // ColumnInterface
        ])

        // Emit directive only if the input provided any tags
        if (classMeta) {
            printer.print(renderDirective(classMeta))
        }

        printer.writeClass(componentClassName, (writer) => {
            // 判断是否为父类组件，需要添加open关键字
            const isParentComponent = isCommonMethod(peer.originalClassName!) || 
                                    peer.originalClassName === "ScrollableCommonMethod" ||
                                    peer.originalClassName === "ContainerSpanAttribute"
            
            // 父类使用 protected open，子类使用 protected
            const modifiers = isParentComponent ? 
                [MethodModifier.PROTECTED, MethodModifier.OPEN] : 
                [MethodModifier.PROTECTED]
            
            writer.writeMethodImplementation(
                new Method('getPeer',
                    new MethodSignature(createReferenceType(peerClassName), []
                    ), modifiers, []),
                writer => {
                    writer.print('if (let Some(peer) <- this.peer) {')
                    writer.pushIndent()
                    writer.writeStatement(
                        writer.makeReturn(
                            writer.makeCast(
                                writer.makeString("peer"),
                                createReferenceType(peerClassName),
                                { optional: true }
                            )
                        )
                    )
                    writer.popIndent()
                    writer.print('} else { throw Exception()}')
                }
            )
            // 使用 CJ 专用的类型映射处理方法参数
            this.printCjComponentOverloads(peer.originalClassName!, peer.methods, writer, componentName)
            // todo stub until we can process AttributeModifier
            if (isCommonMethod(peer.originalClassName!) || peer.originalClassName == "ContainerSpanAttribute")
                writer.print(`public func attributeModifier(modifier: AttributeModifier<Object>) { throw Exception("not implemented") }`)

            const attributesFinishSignature = new MethodSignature(IDLVoidType, [])
            const applyAttributesFinish = 'applyAttributesFinish'
            // Generate protected open func for ArkCommonMethodComponent to allow subclass override
            writer.print('protected open func applyAttributesFinish(): Unit {')
            writer.pushIndent()
            writer.print('// we call this function outside of class, so need to make it protected')
            writer.print('super.applyAttributesFinish()')
            writer.popIndent()
            writer.print('}')
        }, parentComponentClassName, undefined)

        // 延迟写入回调定义：在所有方法处理完成后再获取并写入
        // 这确保了在实际方法处理阶段生成的带后缀1的回调类型定义也会被写入
        const callbackDefinitions = this.callbackManager.getCallbackDefinitions(componentName)
        
        // 调试信息：显示获取到的回调类型定义
        console.log(`[ComponentsPrinter] Delayed callback definitions for ${componentName}:`, callbackDefinitions)
        
        // 添加构建函数专用的回调类型定义（仅当组件有构建函数时）
        const buildFunctionCallbacks = this.shouldGenerateBuildFunction(peer) ? 
            this.generateBuildFunctionCallbackDefinitions(componentName) : []
        
        // 合并并去重回调定义
        const allCallbackDefinitions = [...callbackDefinitions, ...buildFunctionCallbacks]
        const uniqueDefinitions = [...new Set(allCallbackDefinitions)]
        
        // 调试信息：显示合并后的类型定义数量
        console.log(`[ComponentsPrinter] Total callback definitions (${componentName}): ${callbackDefinitions.length} + ${buildFunctionCallbacks.length} = ${allCallbackDefinitions.length}`)
        console.log(`[ComponentsPrinter] After deduplication: ${uniqueDefinitions.length}`)
        console.log(`[ComponentsPrinter] Unique definitions:`, uniqueDefinitions)
        
        // 现在写入所有回调定义（包括实际方法处理阶段新生成的）
        for (const def of uniqueDefinitions) {
            console.log(`[ComponentsPrinter] Writing definition: ${def}`)
            printer.print(def)
        }

        return [{
            collector: imports,
            content: printer,
            over: {
                node: component.attributeDeclaration,
                role: LayoutNodeRole.COMPONENT,
                hint: 'component.implementation'
            }
        }]
    }

    protected printComponentFunction(peer: PeerClass): PrinterResult[] {
        const printer = this.library.createLanguageWriter()
        const component = findComponentByName(this.library, peer.componentName)!
        const componentInterfaceName = componentToAttributesInterface(peer.originalClassName!)
        const componentClassImplName = generateArkComponentName(peer.componentName)
        const callableMethods = peer.methods.filter(it => it.isCallSignature).map(it => it.method)
        const callableMethod = callableMethods.length ? collapseSameNamedMethods(callableMethods) : undefined
        
        // 应用 CJ 类型映射到构建函数参数（同属性方法一致：高频收敛 + 回调命名 + Option 默认值）
        const mappedCallableParams = callableMethod?.signature.args.map((paramType, index) => {
            return this.processAndFormatParameter(
                paramType,
                index,
                callableMethod,
                peer.originalClassName!,
                printer
            )
        })
        
        const mappedCallableParamsValues = callableMethod?.signature.args.map((_, index) => callableMethod.signature.argName(index))
        const callableInvocation = callableMethod?.name ? `receiver.${callableMethod?.name}(${mappedCallableParamsValues})` : ""
        const peerClassName = componentToPeerClass(peer.componentName)
        if (!collectComponents(this.library).find(it => it.name === component.name)?.interfaceDeclaration)
            return []
        const declaredPostrix = this.options.isDeclared ? "decl_" : ""
        const stagePostfix = this.library.useMemoM3 ? "m3" : "m1"
        let paramsList = mappedCallableParams?.join(", ")
        let templateContent = readLangTemplate(`component_builder_${declaredPostrix}${stagePostfix}`, this.library.language)
            .replaceAll("%COMPONENT_NAME%", component.name)
            .replaceAll("%COMPONENT_ATTRIBUTE_NAME%", componentInterfaceName)
            .replaceAll("%FUNCTION_PARAMETERS%", paramsList ? `,\n${paramsList}`: "")
            .replaceAll("%COMPONENT_CLASS_NAME%", componentClassImplName)
            .replaceAll("%PEER_CLASS_NAME%", peerClassName)
            .replaceAll("%PEER_CALLABLE_INVOKE%", callableInvocation)
        
        // 修复构建函数模板中的内联回调：替换为命名回调类型
        templateContent = this.fixInlineCallbacksInTemplate(templateContent, component.name)
        
        printer.writeLines(templateContent)
        return [{
            collector: this.printImports(peer, component),
            content: printer,
            over: {
                node: component.attributeDeclaration,
                role: LayoutNodeRole.COMPONENT,
                hint: 'component.function'
            }
        }]
    }
}

class KotlinComponentFileVisitor implements ComponentFileVisitor {

    constructor(
        protected readonly library: PeerLibrary,
        protected readonly file: idl.IDLFile,
        protected readonly options: {
            isDeclared: boolean,
        }
    ) { }

    private overloadsPrinter(printer:LanguageWriter) {
        return new OverloadsPrinter(this.library, printer, this.library.language, true, this.library.useMemoM3)
    }

    visit(): PrinterResult[] {
        const result: PrinterResult[] = []
        collectPeersForFile(this.library, this.file).forEach(peer => {
            // if (!this.options.isDeclared)
            //     result.push(...this.printComponent(peer))
            // result.push(...this.printComponentFunction(peer))
        })
        return result
    }
}
class ComponentsVisitor {
    readonly components: Map<TargetFile, LanguageWriter> = new Map()
    private readonly language = this.peerLibrary.language

    constructor(
        private readonly peerLibrary: PeerLibrary,
        private options: {
            isDeclared: boolean
        }
    ) { }

    printComponents(): PrinterResult[] {
        const result: PrinterResult[] = []
        bootstrapJSDocIndexOnce()
        for (const file of this.peerLibrary.files.values()) {
            if (!collectPeersForFile(this.peerLibrary, file).length)
                continue
            let visitor: ComponentFileVisitor
            if (this.language == Language.TS) {
                visitor = new TSComponentFileVisitor(this.peerLibrary, file, this.options)
            }
            else if (this.language == Language.ARKTS) {
                visitor = new ArkTsComponentFileVisitor(this.peerLibrary, file, this.options)
            }
            else if (this.language == Language.JAVA) {
                visitor = new JavaComponentFileVisitor(this.peerLibrary, file)
            }
            else if (this.language == Language.CJ) {
                visitor = new CJComponentFileVisitor(this.peerLibrary, file, this.options)
            }
            else if (this.language == Language.KOTLIN) {
                visitor = new KotlinComponentFileVisitor(this.peerLibrary, file, this.options)
            }
            else {
                throw new Error(`ComponentsVisitor not implemented for ${this.language.toString()}`)
            }
            result.push(...visitor.visit())
        }
        return result
    }
}

export function printComponents(peerLibrary: PeerLibrary): PrinterResult[] {
    return new ComponentsVisitor(peerLibrary, { isDeclared: false }).printComponents()
}

export function printComponentsDeclarations(peerLibrary: PeerLibrary): PrinterResult[] {
    // TODO: support other output languages
    if (![Language.TS, Language.ARKTS, Language.JAVA].includes(peerLibrary.language))
        return []

    return new ComponentsVisitor(peerLibrary, { isDeclared: true }).printComponents()
}
