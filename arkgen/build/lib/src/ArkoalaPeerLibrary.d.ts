import * as idl from '@idlizer/core/idl';
import { ArgConvertor, IdlNameConvertor, Language, PeerLibrary, LanguageWriter } from "@idlizer/core";
export declare class ArkoalaPeerLibrary extends PeerLibrary {
    createLanguageWriter(language?: Language): LanguageWriter;
    createTypeNameConvertor(language: Language): IdlNameConvertor;
    typeConvertor(param: string, type: idl.IDLType, isOptionalParam?: boolean): ArgConvertor;
    declarationConvertor(param: string, type: idl.IDLReferenceType, declaration: idl.IDLEntry | undefined): ArgConvertor;
}
//# sourceMappingURL=ArkoalaPeerLibrary.d.ts.map