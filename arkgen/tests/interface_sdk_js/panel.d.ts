declare enum PanelMode {
  Mini,
  Half,
  Full,
}
declare enum PanelType {
  Minibar = 0,
  Foldable = 1,
  Temporary = 2,
  CUSTOM = 3,
}
declare enum PanelHeight {
  WRAP_CONTENT = 'wrapContent',
}
interface PanelInterface {
  (show: boolean): PanelAttribute;
}
declare class PanelAttribute extends CommonMethod<PanelAttribute> {
  mode(value: PanelMode): PanelAttribute;
  type(value: PanelType): PanelAttribute;
  dragBar(value: boolean): PanelAttribute;
  customHeight(value: Dimension | PanelHeight): PanelAttribute;
  fullHeight(value: number | string): PanelAttribute;
  halfHeight(value: number | string): PanelAttribute;
  miniHeight(value: number | string): PanelAttribute;
  show(value: boolean): PanelAttribute;
  backgroundMask(color: ResourceColor): PanelAttribute;
  showCloseIcon(value: boolean): PanelAttribute;
  onChange(
    event: (
      width: number,
      height: number,
      mode: PanelMode,
    ) => void,
  ): PanelAttribute;
  onHeightChange(callback: (value: number) => void): PanelAttribute;
}
declare const Panel: PanelInterface;
declare const PanelInstance: PanelAttribute;