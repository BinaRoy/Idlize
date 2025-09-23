"use strict";
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
Object.defineProperty(exports, "__esModule", { value: true });
exports.ArkoalaCJTypeNameConvertor = exports.ArkoalaJavaTypeNameConvertor = void 0;
const idl = require("@idlizer/core/idl");
const core_1 = require("@idlizer/core");
const libohos_1 = require("@idlizer/libohos");
const CJCallbackTypeManager_1 = require("./declaration/CJCallbackTypeManager");
class ArkoalaJavaTypeNameConvertor extends core_1.JavaTypeNameConvertor {
    convertTypeReference(type) {
        switch (type.name) {
            case "ContentModifier": return libohos_1.ARK_CUSTOM_OBJECT;
            case "Dimension": return "Ark_Dimension"; // 保留Dimension映射
            // 移除Length映射，让CJTypeMapper统一处理，避免层次冲突
            default: return super.convertTypeReference(type);
        }
    }
    convertPrimitiveType(type) {
        switch (type) {
            case idl.IDLAnyType: return libohos_1.ARK_CUSTOM_OBJECT;
            default: return super.convertPrimitiveType(type);
        }
    }
}
exports.ArkoalaJavaTypeNameConvertor = ArkoalaJavaTypeNameConvertor;
class ArkoalaCJTypeNameConvertor extends core_1.CJTypeNameConvertor {
    constructor() {
        super(...arguments);
        this.callbackManager = new CJCallbackTypeManager_1.CJCallbackTypeManager();
    }
    convertTypeReference(type) {
        switch (type.name) {
            case 'Date': return libohos_1.ARK_CUSTOM_OBJECT;
            default: return super.convertTypeReference(type);
        }
    }
    convert(type) {
        // 检查是否是我们标记的元组引用类型
        if (type.__isTupleReference && idl.isReferenceType(type)) {
            // 直接返回元组语法，不进行进一步转换
            return type.name;
        }
        return super.convert(type);
    }
    /**
     * 获取回调类型管理器实例
     */
    getCallbackManager() {
        return this.callbackManager;
    }
}
exports.ArkoalaCJTypeNameConvertor = ArkoalaCJTypeNameConvertor;
//# sourceMappingURL=ArkoalaTypeNameConvertors.js.map