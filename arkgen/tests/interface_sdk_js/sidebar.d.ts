import { Resource } from '../../global/resource'
import { Length, ResourceColor, Dimension } from './units'
import { CommonMethod, PixelMap, Bindable } from './common'
declare enum SideBarContainerType {
  Embed,
  Overlay,
  AUTO,
}
declare enum SideBarPosition {
  Start,
  End,
}
declare interface ButtonIconOptions {
  shown: string | PixelMap | Resource;
  hidden: string | PixelMap | Resource;
  switching?: string | PixelMap | Resource;
}
declare interface ButtonStyle {
  left?: number;
  top?: number;
  width?: number;
  height?: number;
  icons?: ButtonIconOptions;
}
interface SideBarContainerInterface {
  (type?: SideBarContainerType): SideBarContainerAttribute;
}
interface DividerStyle {
  strokeWidth: Length;
  color?: ResourceColor;
  startMargin?: Length;
  endMargin?: Length;
}
declare class SideBarContainerAttribute extends CommonMethod<SideBarContainerAttribute> {
  showSideBar(value: boolean): SideBarContainerAttribute;
  showSideBar(value: boolean | Bindable<boolean>): SideBarContainerAttribute;
  controlButton(value: ButtonStyle): SideBarContainerAttribute;
  showControlButton(value: boolean): SideBarContainerAttribute;
  onChange(callback: (value: boolean) => void): SideBarContainerAttribute;
  sideBarWidth(value: number): SideBarContainerAttribute;
  sideBarWidth(value: number | Bindable<number>): SideBarContainerAttribute;
  minSideBarWidth(value: number): SideBarContainerAttribute;
  maxSideBarWidth(value: number): SideBarContainerAttribute;
  sideBarWidth(value: Length): SideBarContainerAttribute;
  minSideBarWidth(value: Length): SideBarContainerAttribute;
  maxSideBarWidth(value: Length): SideBarContainerAttribute;
  autoHide(value: boolean): SideBarContainerAttribute;
  sideBarPosition(value: SideBarPosition): SideBarContainerAttribute;
  divider(value: DividerStyle | null): SideBarContainerAttribute;
  minContentWidth(value: Dimension): SideBarContainerAttribute;
}
declare const SideBarContainer: SideBarContainerInterface;
declare const SideBarContainerInstance: SideBarContainerAttribute;