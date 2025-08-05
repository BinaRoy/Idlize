import { CommonConfiguration, Callback, CommonMethod, ContentModifier, Optional, Bindable } from './common';
import { CustomBuilder } from './builder';
import { ResourceColor, MarkStyle } from './units';
import { CheckBoxShape } from './enums';
declare interface CheckboxOptions {
  name?: string;
  group?: string;
  indicatorBuilder?: CustomBuilder;
}
declare interface CheckBoxConfiguration extends CommonConfiguration<CheckBoxConfiguration> {
  name: string;
  selected: boolean;
  triggerChange: Callback<boolean>;
}
interface CheckboxInterface {
  (options?: CheckboxOptions): CheckboxAttribute;
}
declare type OnCheckboxChangeCallback = (value: boolean) => void;
declare class CheckboxAttribute extends CommonMethod<CheckboxAttribute> {
  select(value: boolean): CheckboxAttribute;
  select(isSelected: Optional<boolean>): CheckboxAttribute;
  select(isSelected: boolean | undefined | Bindable<boolean>): CheckboxAttribute;
  selectedColor(value: ResourceColor): CheckboxAttribute;
  selectedColor(resColor: Optional<ResourceColor>): CheckboxAttribute;
  shape(value: CheckBoxShape): CheckboxAttribute;
  shape(shape: Optional<CheckBoxShape>): CheckboxAttribute;
  unselectedColor(value: ResourceColor): CheckboxAttribute;
  unselectedColor(resColor: Optional<ResourceColor>): CheckboxAttribute;
  mark(value: MarkStyle): CheckboxAttribute;
  mark(style: Optional<MarkStyle>): CheckboxAttribute;
  onChange(callback: OnCheckboxChangeCallback): CheckboxAttribute;
  onChange(callback: Optional<OnCheckboxChangeCallback>): CheckboxAttribute;
  contentModifier(modifier: ContentModifier<CheckBoxConfiguration>): CheckboxAttribute;
  contentModifier(modifier: Optional<ContentModifier<CheckBoxConfiguration>>): CheckboxAttribute;
}
declare const Checkbox: CheckboxInterface;
declare const CheckboxInstance: CheckboxAttribute;