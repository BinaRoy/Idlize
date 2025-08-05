import { ChildrenMainSize, CommonMethod } from './common';
import { CustomBuilder } from './builder'
import { ComponentContent } from '../ComponentContent'
import { ListDividerOptions  } from './list';
declare enum ListItemGroupStyle {
  NONE = 0,
  CARD = 1,
}
declare interface ListItemGroupOptions {
  header?: CustomBuilder;
  headerComponent?: ComponentContent;
  footer?: CustomBuilder;
  footerComponent?: ComponentContent;
  space?: number | string;
  style?: ListItemGroupStyle;
}
interface ListItemGroupInterface {
  (options?: ListItemGroupOptions): ListItemGroupAttribute;
}
declare class ListItemGroupAttribute extends CommonMethod<ListItemGroupAttribute> {
  divider(
    value: ListDividerOptions | null,
  ): ListItemGroupAttribute;
  childrenMainSize(value: ChildrenMainSize): ListItemGroupAttribute;
}
declare const ListItemGroupInstance: ListItemGroupAttribute;
declare const ListItemGroup: ListItemGroupInterface;