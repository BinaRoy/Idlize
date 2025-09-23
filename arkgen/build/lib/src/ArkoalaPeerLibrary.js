"use strict";
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
Object.defineProperty(exports, "__esModule", { value: true });
exports.ArkoalaPeerLibrary = void 0;
const idl = require("@idlizer/core/idl");
const core_1 = require("@idlizer/core");
const ArkoalaArgConvertors_1 = require("./ArkoalaArgConvertors");
const ArkoalaTypeNameConvertors_1 = require("./ArkoalaTypeNameConvertors");
const ArkPrimitiveType_1 = require("./ArkPrimitiveType");
class ArkoalaPeerLibrary extends core_1.PeerLibrary {
    createLanguageWriter(language) {
        language !== null && language !== void 0 ? language : (language = this.language);
        const printer = new core_1.IndentedPrinter();
        switch (language) {
            case core_1.Language.TS: return new core_1.TSLanguageWriter(printer, this, new core_1.TSTypeNameConvertor(this));
            case core_1.Language.ARKTS: return new core_1.ETSLanguageWriter(printer, this, new core_1.ETSTypeNameConvertor(this), new core_1.CppConvertor(this));
            case core_1.Language.JAVA: return new core_1.JavaLanguageWriter(printer, this, new ArkoalaTypeNameConvertors_1.ArkoalaJavaTypeNameConvertor(this));
            case core_1.Language.CPP: return new core_1.CppLanguageWriter(printer, this, new core_1.CppConvertor(this), ArkPrimitiveType_1.ArkPrimitiveTypesInstance);
            case core_1.Language.CJ: return new core_1.CJLanguageWriter(printer, this, new ArkoalaTypeNameConvertors_1.ArkoalaCJTypeNameConvertor(this), new core_1.CJIDLTypeToForeignStringConvertor(this));
            default: return super.createLanguageWriter(language);
        }
    }
    createTypeNameConvertor(language) {
        switch (language) {
            case core_1.Language.TS: return new core_1.TSTypeNameConvertor(this);
            case core_1.Language.ARKTS: return new core_1.ETSTypeNameConvertor(this);
            case core_1.Language.JAVA: return new ArkoalaTypeNameConvertors_1.ArkoalaJavaTypeNameConvertor(this);
            case core_1.Language.CJ: return new ArkoalaTypeNameConvertors_1.ArkoalaCJTypeNameConvertor(this);
        }
        return super.createTypeNameConvertor(language);
    }
    typeConvertor(param, type, isOptionalParam = false) {
        return super.typeConvertor(param, type, isOptionalParam);
    }
    declarationConvertor(param, type, declaration) {
        switch (type.name) {
            case `AnimationRange`:
                return new core_1.CustomTypeConvertor(param, "AnimationRange", false, "AnimationRange<number>");
        }
        if (declaration) {
            if ((0, core_1.isImportAttr)(declaration))
                return new ArkoalaArgConvertors_1.ArkoalaImportTypeConvertor(param, this.targetNameConvertorInstance.convert(type));
            if (idl.isInterface(declaration)) {
                if ((0, core_1.isMaterialized)(declaration, this)) {
                    return new ArkoalaArgConvertors_1.ArkoalaMaterializedClassConvertor(this, param, declaration);
                }
                if (!(0, core_1.isBuilderClass)(declaration) &&
                    declaration.subkind === idl.IDLInterfaceSubkind.Interface) {
                    return new ArkoalaArgConvertors_1.ArkoalaInterfaceConvertor(this, (declaration.name), param, declaration);
                }
            }
        }
        return super.declarationConvertor(param, type, declaration);
    }
}
exports.ArkoalaPeerLibrary = ArkoalaPeerLibrary;
//# sourceMappingURL=ArkoalaPeerLibrary.js.map