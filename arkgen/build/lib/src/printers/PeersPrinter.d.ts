import { PeerClass } from '@idlizer/core';
import { PrinterFunction } from "@idlizer/libohos";
export declare function componentToPeerClass(component: string): string;
export declare function componentToStyleClass(component: string): string;
export declare function componentToAttributesInterface(component: string): string;
export declare function createPeersPrinter(dumpSerialized: boolean): PrinterFunction;
export declare function generateStyleParentClass(peer: PeerClass): string | undefined;
//# sourceMappingURL=PeersPrinter.d.ts.map