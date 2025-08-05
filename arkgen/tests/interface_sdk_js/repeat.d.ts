interface RepeatItem<T> {
  item: T,
  index: number
}
interface VirtualScrollOptions {
  totalCount?: number;
  reusable?: boolean;
  onLazyLoading?(index: number): void;
  onTotalCount?(): number;
}
interface TemplateOptions {
  cachedCount?: number
}
declare type TemplateTypedFunc<T> = (item: T, index: number) => string;
declare type RepeatItemBuilder<T> = (repeatItem: RepeatItem<T>) => void;
declare class RepeatAttribute<T> extends DynamicNode<RepeatAttribute<T>> {
  each(itemGenerator: (repeatItem: RepeatItem<T>) => void): RepeatAttribute<T>;
  key(keyGenerator: (item: T, index: number) => string): RepeatAttribute<T>;
  virtualScroll(virtualScrollOptions?: VirtualScrollOptions): RepeatAttribute<T>;
  template(type: string, itemBuilder: RepeatItemBuilder<T>, templateOptions?: TemplateOptions): RepeatAttribute<T>;
  templateId(typedFunc: TemplateTypedFunc<T>): RepeatAttribute<T>;
}
declare type RepeatArray<T> = Array<T> | ReadonlyArray<T> | Readonly<Array<T>>;
declare type RepeatInterface = <T>(arr: RepeatArray<T>) => RepeatAttribute<T>;
declare const Repeat: RepeatInterface;