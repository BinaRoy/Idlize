import { Scene } from './../../../api/@ohos.graphics.scene';
import { ResourceStr, Dimension } from './units';
import { CommonMethod } from './common';
declare type Scene = import('../api/@ohos.graphics.scene').Scene;
declare enum ModelType {
  TEXTURE = 0,
  SURFACE = 1,
}
declare interface SceneOptions {
  scene?: ResourceStr | Scene;
  modelType?: ModelType; 
}
interface Component3DInterface {
  (sceneOptions?: SceneOptions): Component3DAttribute;
}
declare class Component3DAttribute extends CommonMethod<Component3DAttribute> {
  environment(uri: ResourceStr): Component3DAttribute;
  customRender(uri: ResourceStr, selfRenderUpdate: boolean): Component3DAttribute;
  shader(uri: ResourceStr): Component3DAttribute;
  shaderImageTexture(uri: ResourceStr): Component3DAttribute;
  shaderInputBuffer(buffer: Array<number>): Component3DAttribute;
  renderWidth(value: Dimension): Component3DAttribute;
  renderHeight(value: Dimension): Component3DAttribute;
}
declare const Component3D: Component3DInterface;
declare const Component3DInstance: Component3DAttribute;