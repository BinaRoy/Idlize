import { CommonMethod, BlurStyle, Bindable } from './common'
import { ResourceColor, Length, Position } from './units'
import { Font } from './units'
declare enum IndexerAlign {
  Left,
  Right,
  START,
  END,
}
interface AlphabetIndexerOptions {
  arrayValue: Array<string>;
  selected: number;
  selected: number | Bindable<number>;
}
interface AlphabetIndexerInterface {
  (options: AlphabetIndexerOptions): AlphabetIndexerAttribute;
}
declare type OnAlphabetIndexerSelectCallback = (index: number) => void;
declare type OnAlphabetIndexerPopupSelectCallback = (index: number) => void;
declare type OnAlphabetIndexerRequestPopupDataCallback = (index: number) => Array<string>;
declare class AlphabetIndexerAttribute extends CommonMethod<AlphabetIndexerAttribute> {
  onSelected(callback: (index: number) => void): AlphabetIndexerAttribute;
  color(value: ResourceColor): AlphabetIndexerAttribute;
  selectedColor(value: ResourceColor): AlphabetIndexerAttribute;
  popupColor(value: ResourceColor): AlphabetIndexerAttribute;
  selectedBackgroundColor(value: ResourceColor): AlphabetIndexerAttribute;
  popupBackground(value: ResourceColor): AlphabetIndexerAttribute;
  popupSelectedColor(value: ResourceColor): AlphabetIndexerAttribute;
  popupUnselectedColor(value: ResourceColor): AlphabetIndexerAttribute;
  popupItemBackgroundColor(value: ResourceColor): AlphabetIndexerAttribute;
  usingPopup(value: boolean): AlphabetIndexerAttribute;
  selectedFont(value: Font): AlphabetIndexerAttribute;
  popupFont(value: Font): AlphabetIndexerAttribute;
  popupItemFont(value: Font): AlphabetIndexerAttribute;
  itemSize(value: string | number): AlphabetIndexerAttribute;
  font(value: Font): AlphabetIndexerAttribute;
  alignStyle(value: IndexerAlign, offset?: Length): AlphabetIndexerAttribute;
  onSelect(callback: OnAlphabetIndexerSelectCallback): AlphabetIndexerAttribute;
  onRequestPopupData(callback: OnAlphabetIndexerRequestPopupDataCallback): AlphabetIndexerAttribute;
  onPopupSelect(callback: OnAlphabetIndexerPopupSelectCallback): AlphabetIndexerAttribute;
  selected(index: number): AlphabetIndexerAttribute;
  selected(index: number | Bindable<number>): AlphabetIndexerAttribute;
  popupPosition(value: Position): AlphabetIndexerAttribute;
  autoCollapse(value: boolean): AlphabetIndexerAttribute;
  popupItemBorderRadius(value: number): AlphabetIndexerAttribute;
  itemBorderRadius(value: number): AlphabetIndexerAttribute;
  popupBackgroundBlurStyle(value: BlurStyle): AlphabetIndexerAttribute;
  popupTitleBackground(value: ResourceColor): AlphabetIndexerAttribute;
  enableHapticFeedback(value: boolean): AlphabetIndexerAttribute;
}
declare const AlphabetIndexer: AlphabetIndexerInterface;
declare const AlphabetIndexerInstance: AlphabetIndexerAttribute;