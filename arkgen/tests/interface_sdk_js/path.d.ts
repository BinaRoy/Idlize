import { CommonShapeMethod } from './common';
declare interface PathOptions {
  width?: Length;
  height?: Length;
  commands?: ResourceStr;
}
interface PathInterface {
  new (options?: PathOptions): PathAttribute;
  (options?: PathOptions): PathAttribute;
}
declare class PathAttribute extends CommonShapeMethod<PathAttribute> {
  commands(value: ResourceStr): PathAttribute;
}
declare const Path: PathInterface;
declare const PathInstance: PathAttribute;
interface PathInterface {
  (options?: PathOptions): PathAttribute;
}