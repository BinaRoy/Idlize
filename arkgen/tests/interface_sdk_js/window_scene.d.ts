import { Position } from './units'
import { CommonMethod } from './common'
interface WindowSceneInterface {
  (persistentId: number): WindowSceneAttribute;
}
declare class WindowSceneAttribute extends CommonMethod<WindowSceneAttribute> {
  attractionEffect(destination: Position, fraction: number): WindowSceneAttribute;
}
declare const WindowScene: WindowSceneInterface;
declare const WindowSceneInstance: WindowSceneAttribute;