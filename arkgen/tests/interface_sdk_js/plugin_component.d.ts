import { CommonMethod } from './common'
import { VoidCallback } from './units'
interface PluginComponentTemplate {
  source: string;
  bundleName: string;
}
declare interface PluginComponentOptions {
  template: PluginComponentTemplate;
  data: any;
  data: Object|undefined|null;
}
declare interface PluginErrorData {
  errcode: number;
  msg: string;
}
declare type PluginErrorCallback = (info: PluginErrorData) => void;
interface PluginComponentInterface {
  (options: PluginComponentOptions): PluginComponentAttribute;
}
declare class PluginComponentAttribute extends CommonMethod<PluginComponentAttribute> {
  onComplete(callback: VoidCallback): PluginComponentAttribute;
  onError(callback: PluginErrorCallback): PluginComponentAttribute;
}
declare const PluginComponent: PluginComponentInterface;
declare const PluginComponentInstance: PluginComponentAttribute;