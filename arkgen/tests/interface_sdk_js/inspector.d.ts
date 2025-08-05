declare function getInspectorNodes(): object;
declare function getInspectorNodeById(id: number): object;
declare namespace Profiler {
  function registerVsyncCallback(callback: (info: string) => void): void;
  function unregisterVsyncCallback(): void;
}
declare function setAppBgColor(value: string): void;