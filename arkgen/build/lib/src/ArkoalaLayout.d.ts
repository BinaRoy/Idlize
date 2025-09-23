import { Language, LayoutManagerStrategy, PeerLibrary } from '@idlizer/core';
import * as idl from '@idlizer/core';
export declare const SyntheticModule = "./SyntheticDeclarations";
export declare function HandwrittenModule(language: Language, isSdk?: boolean): "./handwritten" | "#handwritten";
declare abstract class CommonLayoutBase implements LayoutManagerStrategy {
    protected library: PeerLibrary;
    protected prefix: string;
    constructor(library: PeerLibrary, prefix?: string);
    abstract resolve(target: idl.LayoutTargetDescription): string;
    handwrittenPackage(): string;
}
export declare class TsLayout extends CommonLayoutBase {
    private tsInternalPaths;
    resolve(target: idl.LayoutTargetDescription): string;
}
export declare class ArkTsLayout extends CommonLayoutBase {
    private isSdk;
    protected arkTSInternalPaths: Map<string, string>;
    constructor(library: PeerLibrary, prefix?: string, isSdk?: boolean);
    handwrittenPackage(): string;
    readonly replacePattern: RegExp;
    resolve(target: idl.LayoutTargetDescription): string;
}
export declare class ArkTSComponentsLayout extends ArkTsLayout {
    protected arkTSInternalPaths: Map<string, string>;
    resolve(target: idl.LayoutTargetDescription): string;
}
export declare class JavaLayout extends CommonLayoutBase {
    private packagePath;
    constructor(library: PeerLibrary, prefix: string, packagePath: string);
    private getPath;
    resolve({ node, role }: idl.LayoutTargetDescription): string;
}
export declare class CJLayout extends CommonLayoutBase {
    private getPath;
    resolve({ node, role }: idl.LayoutTargetDescription): string;
}
export declare class KotlinLayout extends CommonLayoutBase {
    protected KotlinInternalPaths: Map<string, string>;
    resolve(target: idl.LayoutTargetDescription): string;
}
export declare function arkoalaLayout(library: PeerLibrary, prefix?: string, packagePath?: string): LayoutManagerStrategy;
export {};
//# sourceMappingURL=ArkoalaLayout.d.ts.map