import { NodeController } from '../../@ohos.arkui.node';
import { CommonMethod } from './common';
interface NodeContainerInterface {
  (controller: import('../api/@ohos.arkui.node').NodeController): NodeContainerAttribute;
  (controller: NodeController): NodeContainerAttribute;
}
declare class NodeContainerAttribute extends CommonMethod<NodeContainerAttribute> {}
declare const NodeContainer: NodeContainerInterface;
declare const NodeContainerInstance: NodeContainerAttribute;