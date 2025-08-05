import { CommonMethod } from './common'
interface FlowItemInterface {
  (): FlowItemAttribute;
}
declare class FlowItemAttribute extends CommonMethod<FlowItemAttribute> {}
declare const FlowItem: FlowItemInterface
declare const FlowItemInstance: FlowItemAttribute;