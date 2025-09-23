import { Language } from '@idlizer/core';
import { Install } from '@idlizer/libohos';
export interface ArkoalaInstall {
    get root(): string;
    get managedDir(): string;
    get managedSdkDir(): string;
    get nativeDir(): string;
    get tsTypesDir(): string;
    get tsArkoalaDir(): string;
}
export declare function createArkoalaInstall(options: {
    outDir: string;
    lang: Language;
    test: boolean;
    useMemoM3: boolean;
}): ArkoalaInstall;
export declare class LibaceInstall extends Install {
    private outDir;
    private test;
    constructor(outDir: string, test: boolean);
    libace: string;
    implementationDir: string;
    generatedInterface: string;
    generatedUtility: string;
    userConverterHeader: string;
    mesonBuild: string;
    arkoalaMacros: string;
    generatedArkoalaApi: string;
    gniComponents: string;
    allModifiers: string;
    interface(name: string): string;
    implementation(name: string): string;
    modifierHeader(component: string): string;
    modifierCpp(component: string): string;
    accessorCpp(component: string): string;
    delegateHeader(component: string): string;
    delegateCpp(component: string): string;
}
//# sourceMappingURL=ArkoalaInstall.d.ts.map