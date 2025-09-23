import { LanguageExpression, LanguageWriter, InterfaceConvertor, ImportTypeConvertor, MaterializedClassConvertor } from "@idlizer/core";
export declare class ArkoalaInterfaceConvertor extends InterfaceConvertor {
    unionDiscriminator(value: string, index: number, writer: LanguageWriter, duplicates: Set<string>): LanguageExpression | undefined;
}
export declare class ArkoalaImportTypeConvertor extends ImportTypeConvertor {
    private static knownTypes;
    constructor(param: string, importedName: string);
    unionDiscriminator(value: string, index: number, writer: LanguageWriter, duplicates: Set<string>): LanguageExpression | undefined;
}
export declare class ArkoalaMaterializedClassConvertor extends MaterializedClassConvertor {
    unionDiscriminator(value: string, index: number, writer: LanguageWriter, duplicates: Set<string>): LanguageExpression | undefined;
}
//# sourceMappingURL=ArkoalaArgConvertors.d.ts.map