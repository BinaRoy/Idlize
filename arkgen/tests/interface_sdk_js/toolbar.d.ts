declare enum ToolBarItemPlacement {
  TOP_BAR_LEADING = 0,
  TOP_BAR_TRAILING = 1,
}
interface ToolBarItemOptions {
  placement?: ToolBarItemPlacement;
}
interface ToolBarItemInterface {
  (options?: ToolBarItemOptions): ToolBarItemAttribute;
}
declare class ToolBarItemAttribute { }
declare const ToolBarItem: ToolBarItemInterface;
declare const ToolBarItemInstance: ToolBarItemAttribute;