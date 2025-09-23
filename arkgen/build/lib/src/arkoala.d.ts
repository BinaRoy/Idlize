import { Language, PeerLibrary } from '@idlizer/core';
export declare function generateLibaceFromIdl(config: {
    libaceDestination: string | undefined;
    apiVersion: number;
    commentedCode: boolean;
    outDir: string;
}, peerLibrary: PeerLibrary): void;
export declare function generateArkoalaFromIdl(config: {
    outDir: string;
    arkoalaDestination: string | undefined;
    nativeBridgeFile: string | undefined;
    lang: Language;
    apiVersion: number;
    onlyIntegrated: boolean;
    dumpSerialized: boolean;
    callLog: boolean;
    verbose: boolean;
    useTypeChecker: boolean;
}, peerLibrary: PeerLibrary): void;
//# sourceMappingURL=arkoala.d.ts.map