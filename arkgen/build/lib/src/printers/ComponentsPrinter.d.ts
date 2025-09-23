import { PeerLibrary, MethodSignature } from '@idlizer/core';
import { IdlComponentDeclaration, PrinterResult } from '@idlizer/libohos';
export declare function generateArkComponentName(component: string): string;
export declare function generateAttributeModifierSignature(library: PeerLibrary, component: IdlComponentDeclaration): MethodSignature;
export declare function printComponents(peerLibrary: PeerLibrary): PrinterResult[];
export declare function printComponentsDeclarations(peerLibrary: PeerLibrary): PrinterResult[];
//# sourceMappingURL=ComponentsPrinter.d.ts.map