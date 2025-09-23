import * as idl from '@idlizer/core/idl';
import { JavaTypeNameConvertor, CJTypeNameConvertor } from '@idlizer/core';
import { CJCallbackTypeManager } from './declaration/CJCallbackTypeManager';
export declare class ArkoalaJavaTypeNameConvertor extends JavaTypeNameConvertor {
    convertTypeReference(type: idl.IDLReferenceType): string;
    convertPrimitiveType(type: idl.IDLPrimitiveType): string;
}
export declare class ArkoalaCJTypeNameConvertor extends CJTypeNameConvertor {
    private callbackManager;
    convertTypeReference(type: idl.IDLReferenceType): string;
    convert(type: idl.IDLType): string;
    /**
     * 获取回调类型管理器实例
     */
    getCallbackManager(): CJCallbackTypeManager;
}
//# sourceMappingURL=ArkoalaTypeNameConvertors.d.ts.map