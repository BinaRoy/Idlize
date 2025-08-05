import { Resource } from '../../global/resource';
import { ResourceColor } from './units';
import { CommonConfiguration, Callback, CommonMethod, ContentModifier, Bindable } from './common';
declare enum ToggleType {
  Checkbox,
  Switch,
  Button,
}
declare interface SwitchStyle {
  pointRadius?: number | Resource;
  unselectedColor?: ResourceColor;
  pointColor?: ResourceColor;
  trackBorderRadius?: number | Resource;
}
declare interface ToggleConfiguration extends CommonConfiguration<ToggleConfiguration> {
  isOn: boolean;
  enabled: boolean;
  triggerChange: Callback<boolean>;
}
declare interface ToggleOptions {
  type: ToggleType;
  isOn?: boolean
  isOn?: boolean | undefined | Bindable<boolean>
}
interface ToggleInterface {
  (options: ToggleOptions): ToggleAttribute;
}
declare class ToggleAttribute extends CommonMethod<ToggleAttribute> {
  onChange(callback: (isOn: boolean) => void): ToggleAttribute;
  contentModifier(modifier: ContentModifier<ToggleConfiguration>): ToggleAttribute;
  selectedColor(value: ResourceColor): ToggleAttribute;
  switchPointColor(color: ResourceColor): ToggleAttribute;
  switchStyle(value: SwitchStyle): ToggleAttribute;
}
declare const Toggle: ToggleInterface;
declare const ToggleInstance: ToggleAttribute;