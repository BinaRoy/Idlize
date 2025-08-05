declare enum ColorMode {
  LIGHT = 0,
  DARK,
}
declare enum LayoutDirection {
  LTR,
  RTL,
  Auto,
}
declare class Storage {
  constructor(needCrossThread?: boolean, file?: string);
  get(key: string): string | undefined;
  set(key: string, val: any): void;
  set(key: string, val: Object | undefined | null): void;
  clear(): void;
  delete(key: string): void;
}