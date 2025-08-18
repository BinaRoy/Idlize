/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * CJNumberConversion.ts
 * 
 * TypeScript number 类型到 Cangjie 类型的智能转换器
 * 仅在组件层 (ComponentsPrinter) 的 Cangjie 输出路径生效
 * 不影响 Peer 层、IDL 层及其他语言输出路径
 */

export type NumberSemanticHint =
  | 'size' | 'optionalSize' | 'position' | 'count' | 'ratio' | 'angle' | 'timestamp';

export interface NumberMappingContext {
  propertyName: string;
  semanticHint: NumberSemanticHint;
  range?: { min?: number; max?: number };
  unit?: string;
}

export interface NumberConversionInput {
  propertyName: string;
  isOptional?: boolean;
  semanticHint?: NumberSemanticHint;
  jsDocTags?: { tag: string; comment?: string }[];
}

export interface NumberConversionResult {
  cjType: 'Length' | 'Float64' | 'Int32' | 'Int64';
  defaultValue: string;
  unit?: 'vp' | 'px' | 'fp' | 'percent' | 'lpx';
}

/**
 * 智能映射 TypeScript number 类型到 Cangjie 类型
 * 基于仓颉语言实际使用模式进行精确映射
 * @param context 映射上下文信息
 * @returns 对应的 Cangjie 类型名称
 */
export function mapNumberType(context: NumberMappingContext): 'Length' | 'Float64' | 'Int32' | 'Int64' {
  // 场景1: 可选尺寸场景 - 使用 Length 默认值（基于仓颉语言实际使用）
  if (context.semanticHint === 'optionalSize' ||
      (context.propertyName === 'width' || context.propertyName === 'height')) {
    return 'Length';
  }
  
  // 场景2: 比例和角度场景 - 使用 Float64 类型（优先级高于尺寸场景）
  if (context.semanticHint === 'ratio' ||
      context.semanticHint === 'angle' ||
      includesAny(context.propertyName, [
        'opacity', 'scale', 'rotation', 'progress', 'ratio', 'factor', 'percent',
        'alpha', 'beta', 'gamma', 'skew', 'transform', 'animation', 'transition',
        'blur', 'brightness', 'contrast', 'saturate', 'sepia', 'hueRotate',
        'invert', 'grayscale', 'dropShadow', 'perspective', 'zoom'
      ])) {
    return 'Float64';
  }
  
  // 场景3: 尺寸相关场景 - 使用 Length 类型（仅限 number 类型）
  if (context.semanticHint === 'size' ||
      includesAny(context.propertyName, [
        'width', 'height', 'size', 'margin', 'padding', 'border', 'radius', 
        'gap', 'offset', 'fontSize', 'lineHeight', 'letterSpacing'
      ])) {
    // 注意：只有 number 类型才能映射为 Length，string 类型不能转换
    return 'Length';
  }
  
  // 场景4: 计数和索引场景 - 使用 Int32 类型（优先级高于尺寸场景）
  if (context.semanticHint === 'count' ||
      includesAny(context.propertyName, [
        'count', 'total', 'num', 'quantity', 'maxLines', 'itemCount', 
        'selectedIndex', 'duration', 'step', 'loop', 'iterations', 'repeat',
        'lines', 'selection', 'selectionStart', 'selectionEnd'
      ])) {
    return 'Int32';
  }
  
  // 场景5: 时间戳和ID场景 - 使用 Int64 类型
  if (context.semanticHint === 'timestamp' ||
      includesAny(context.propertyName, ['timestamp', 'id', 'zIndex']) ||
      endsWithAny(context.propertyName, ['Id', 'Code']) || 
      context.semanticHint === 'position' ||
      includesAny(context.propertyName, [
        'index', 'position', 'top', 'left', 'right', 'bottom', 'x', 'y', 'z'
      ])) {
    return 'Int64';
  }
  
  // 默认场景: 使用 Int64 类型
  return 'Int64';
}

/**
 * 为 Length 类型选择合适的默认单位
 * 基于 Cangjie 实际使用模式进行单位选择
 * @param propertyName 属性名称
 * @returns 合适的单位字符串
 */
export function selectLengthUnit(propertyName: string): 'vp' | 'px' | 'fp' | 'percent' | 'lpx' {
  const name = propertyName || '';
  
  // 字体相关属性使用 fp（字体像素）
  if (includesAny(name, ['font', 'text', 'lineHeight', 'letterSpacing'])) {
    return 'fp';
  }
  
  // 边框相关属性使用 px（物理像素）
  if (includesAny(name, ['border', 'stroke', 'outline'])) {
    return 'px';
  }
  
  // 百分比相关属性使用 percent（注意：percent 会自动除以100）
  if (includesAny(name, ['percent', 'ratio', 'scale'])) {
    return 'percent';
  }
  
  // 绝对定位相关属性使用 lpx（逻辑像素）
  if (includesAny(name, ['position', 'absolute', 'fixed'])) {
    return 'lpx';
  }
  
  // 默认使用 vp（视口像素）
  return 'vp';
}

/**
 * 生成 Length 类型的默认值
 * @param propertyName 属性名称
 * @param unit 单位
 * @returns 格式化的默认值
 */
export function generateLengthDefault(propertyName: string, unit: string): string {
  const name = propertyName || '';
  
  // 根据属性类型选择合适的默认值
  if (name.includes('fontSize') || name.includes('fontsize')) {
    return `16.${unit}`;  // 默认字体大小
  }
  if (name.includes('lineHeight') || name.includes('lineheight')) {
    return `20.${unit}`;  // 默认行高
  }
  if (name.includes('borderRadius') || name.includes('radius')) {
    return `8.${unit}`;   // 默认圆角
  }
  if (name.includes('margin') || name.includes('padding')) {
    return `0.${unit}`;   // 默认边距
  }
  if (name.includes('width') || name.includes('height')) {
    return `0.${unit}`;   // 默认尺寸
  }
  if (name.includes('maxLines') || name.includes('maxlines')) {
    return `1`;   // 针对maxLines特殊处理，应该是Int32类型
  }
  
  return `0.${unit}`;     // 默认值
}

/**
 * 组合转换函数：类型 + 默认值
 * @param input 转换输入参数
 * @returns 转换结果，包含类型、默认值和单位信息
 */
export function convertNumberProperty(input: NumberConversionInput): NumberConversionResult {
  const semantic = input.semanticHint ?? inferSemanticHint(input.propertyName);
  const cjType = mapNumberType({ 
    propertyName: input.propertyName, 
    semanticHint: semantic 
  });
  
  // 调试日志：帮助排查类型映射问题
  console.log(`[CJNumberConversion] Property: ${input.propertyName}, Semantic: ${semantic}, Type: ${cjType}`);
  
  if (cjType === 'Length') {
    const unit = selectLengthUnit(input.propertyName);
    const defaultValue = generateLengthDefault(input.propertyName, unit);
    return { cjType, defaultValue, unit };
  }
  
  if (cjType === 'Float64') {
    // 特殊的 Float64 默认值处理
    if (includesAny(input.propertyName, ['opacity', 'scale', 'ratio', 'factor', 'brightness', 'contrast', 'saturate'])) {
      return { cjType, defaultValue: '1.0' };
    }
    if (includesAny(input.propertyName, ['rotation', 'progress', 'alpha', 'beta', 'gamma', 'skew', 'blur', 'sepia', 'invert', 'grayscale'])) {
      return { cjType, defaultValue: '0.0' };
    }
    if (includesAny(input.propertyName, ['percent'])) {
      return { cjType, defaultValue: '100.0' };
    }
    if (includesAny(input.propertyName, ['zoom', 'perspective'])) {
      return { cjType, defaultValue: '1.0' };
    }
    return { cjType, defaultValue: '0.0' };
  }
  
  // Int32 和 Int64 的默认值
  return { cjType, defaultValue: cjType === 'Int32' ? '0' : '0' };
}

/**
 * 从属性名推断语义提示
 * @param propertyName 属性名称
 * @returns 语义提示
 */
function inferSemanticHint(propertyName: string): NumberSemanticHint {
  const name = (propertyName || '').toLowerCase();
  
  // 优先检查可选尺寸属性（基于仓颉语言实际使用，使用默认值处理）
  if (name === 'width' || name === 'height') {
    return 'optionalSize';
  }
  
  // 尺寸相关属性
  if (includesAny(name, [
    'width', 'height', 'size', 'margin', 'padding', 'border', 'radius', 
    'gap', 'offset', 'fontsize', 'lineheight', 'letterspacing'
  ])) {
    return 'size';
  }
  
  // 比例相关属性
  if (includesAny(name, [
    'opacity', 'scale', 'rotation', 'progress', 'ratio', 'factor', 'percent',
    'alpha', 'beta', 'gamma', 'skew', 'transform', 'animation', 'transition',
    'blur', 'brightness', 'contrast', 'saturate', 'sepia', 'huerotate',
    'invert', 'grayscale', 'dropshadow', 'perspective', 'zoom'
  ])) {
    return 'ratio';
  }
  
  // 计数/索引相关属性（包含通用 index）
  if (includesAny(name, [
    'count', 'total', 'num', 'quantity', 'maxlines', 'itemcount', 
    'selectedindex', 'index', 'duration', 'step', 'loop', 'iterations', 'repeat',
    'lines', 'selection', 'selectionstart', 'selectionend'
  ])) {
    return 'count';
  }
  
  // 时间戳相关属性
  if (includesAny(name, ['timestamp', 'id', 'zindex']) || 
      endsWithAny(name, ['id', 'code'])) {
    return 'timestamp';
  }
  
  // 位置相关属性（不包含通用 index，避免与索引混淆）
  if (includesAny(name, [
    'position', 'top', 'left', 'right', 'bottom', 'x', 'y', 'z'
  ])) {
    return 'position';
  }
  
  // 默认返回 size（会映射为 Length）
  return 'size';
}

/**
 * 检查字符串是否包含数组中的任意一个子字符串
 * @param haystack 被检查的字符串
 * @param needles 子字符串数组
 * @returns 是否包含
 */
function includesAny(haystack: string, needles: string[]): boolean {
  const str = haystack ?? '';
  return needles.some(needle => str.includes(needle));
}

/**
 * 检查字符串是否以数组中的任意一个子字符串结尾
 * @param haystack 被检查的字符串
 * @param needles 子字符串数组
 * @returns 是否以任意子字符串结尾
 */
function endsWithAny(haystack: string, needles: string[]): boolean {
  const str = haystack ?? '';
  return needles.some(needle => str.endsWith(needle));
}