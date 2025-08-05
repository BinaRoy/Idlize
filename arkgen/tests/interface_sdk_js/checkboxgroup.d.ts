import { CommonMethod, Optional, Bindable } from './common';
import { ResourceColor, MarkStyle } from './units';
import { CheckBoxShape } from './enums';
declare enum SelectStatus {
  All,
  Part,
  None,
}
declare interface CheckboxGroupOptions {
  group?: string;
}
declare interface CheckboxGroupResult {
  name: Array<string>;
  status: SelectStatus;
}
interface CheckboxGroupInterface {
  (options?: CheckboxGroupOptions): CheckboxGroupAttribute;
}
declare type OnCheckboxGroupChangeCallback = (value: CheckboxGroupResult) => void;
declare class CheckboxGroupAttribute extends CommonMethod<CheckboxGroupAttribute> {
  selectAll(value: boolean): CheckboxGroupAttribute;
  selectAll(isAllSelected: Optional<boolean>): CheckboxGroupAttribute;
  selectAll(isAllSelected: boolean | undefined | Bindable<boolean>): CheckboxGroupAttribute;
  selectedColor(value: ResourceColor): CheckboxGroupAttribute;
  selectedColor(resColor: Optional<ResourceColor>): CheckboxGroupAttribute;
  unselectedColor(value: ResourceColor): CheckboxGroupAttribute;
  unselectedColor(resColor: Optional<ResourceColor>): CheckboxGroupAttribute;
  mark(value: MarkStyle): CheckboxGroupAttribute;
  mark(style: Optional<MarkStyle>): CheckboxGroupAttribute;
  onChange(callback: OnCheckboxGroupChangeCallback): CheckboxGroupAttribute;
  onChange(callback: Optional<OnCheckboxGroupChangeCallback>): CheckboxGroupAttribute;
  checkboxShape(value: CheckBoxShape): CheckboxGroupAttribute;
  checkboxShape(shape: Optional<CheckBoxShape>): CheckboxGroupAttribute;
}
declare const CheckboxGroup: CheckboxGroupInterface;
declare const CheckboxGroupInstance: CheckboxGroupAttribute;