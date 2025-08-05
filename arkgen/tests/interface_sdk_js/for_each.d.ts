declare class ForEachAttribute extends DynamicNode<ForEachAttribute> {
}
interface ForEachInterface {
  (
    arr: Array<any>,
    itemGenerator: (item: any, index: number) => void,
    keyGenerator?: (item: any, index: number) => string,
  ): ForEachAttribute;
}
declare const ForEach: ForEachInterface;