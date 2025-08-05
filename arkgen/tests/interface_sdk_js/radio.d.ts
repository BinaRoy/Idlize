import { CommonMethod, ContentModifier, CommonConfiguration, Callback, Bindable } from './common';
import { CustomBuilder } from './builder';
import { ResourceColor } from './units';
declare enum RadioIndicatorType {
  TICK = 0,
  DOT = 1,
  CUSTOM = 2,
}
declare interface RadioOptions {
  group: string;
  value: string;
  indicatorType?: RadioIndicatorType;
  indicatorBuilder?: CustomBuilder;
}
declare interface RadioStyle {
  checkedBackgroundColor?: ResourceColor;
  uncheckedBorderColor?: ResourceColor;
  indicatorColor?: ResourceColor;
}
interface RadioInterface {
  (options: RadioOptions): RadioAttribute;
}
declare type OnRadioChangeCallback = (isChecked: boolean) => void;
declare class RadioAttribute extends CommonMethod<RadioAttribute> {
  checked(value: boolean): RadioAttribute;
  checked(isChecked: Optional<boolean>): RadioAttribute;
  checked(isChecked: boolean | undefined | Bindable<boolean>): RadioAttribute;
  onChange(callback: (isChecked: boolean) => void): RadioAttribute;
  onChange(callback: Optional<OnRadioChangeCallback>): RadioAttribute;
  radioStyle(value?: RadioStyle): RadioAttribute;
  contentModifier(modifier: ContentModifier<RadioConfiguration>): RadioAttribute;
  contentModifier(modifier: Optional<ContentModifier<RadioConfiguration>>): RadioAttribute;
}
declare interface RadioConfiguration extends CommonConfiguration<RadioConfiguration> {
  value: string;
  checked: boolean;
  triggerChange: Callback<boolean>;
}
declare const Radio: RadioInterface;
declare const RadioInstance: RadioAttribute;