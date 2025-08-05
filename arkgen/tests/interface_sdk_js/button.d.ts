declare enum ButtonType {
    Capsule,
    Circle,
    Normal,
    ROUNDED_RECTANGLE = 3
}
declare enum ButtonStyleMode {
    NORMAL = 0,
    EMPHASIZED = 1,
    TEXTUAL = 2
}
declare enum ButtonRole {
    NORMAL = 0,
    ERROR = 1
}
declare type ButtonTriggerClickCallback = (xPos: number, yPos: number) => void;
declare interface ButtonConfiguration extends CommonConfiguration<ButtonConfiguration> {
    label: string;
    pressed: boolean;
    triggerClick: ButtonTriggerClickCallback;
}
declare enum ControlSize {
    SMALL = 'small',
    NORMAL = 'normal'
}
declare interface ButtonOptions {
    type?: ButtonType;
    stateEffect?: boolean;
    buttonStyle?: ButtonStyleMode;
    controlSize?: ControlSize;
    role?: ButtonRole;
}
interface ButtonInterface {
    (): ButtonAttribute;
    (options: ButtonOptions): ButtonAttribute;
    (label: ResourceStr, options?: ButtonOptions): ButtonAttribute;
}
declare interface LabelStyle {
    overflow?: TextOverflow;
    maxLines?: number;
    minFontSize?: number | ResourceStr;
    maxFontSize?: number | ResourceStr;
    heightAdaptivePolicy?: TextHeightAdaptivePolicy;
    font?: Font;
}
declare class ButtonAttribute extends CommonMethod<ButtonAttribute> {
  type(value: ButtonType): ButtonAttribute;
  stateEffect(value: boolean): ButtonAttribute;
  buttonStyle(value: ButtonStyleMode): ButtonAttribute;
  controlSize(value: ControlSize): ButtonAttribute;
  role(value: ButtonRole): ButtonAttribute;
  fontColor(value: ResourceColor): ButtonAttribute;
  fontSize(value: Length): ButtonAttribute;
  fontWeight(value: number | FontWeight | string): ButtonAttribute;
  fontStyle(value: FontStyle): ButtonAttribute;
  fontFamily(value: string | Resource): ButtonAttribute;
  contentModifier(modifier: ContentModifier<ButtonConfiguration>): ButtonAttribute;
  labelStyle(value: LabelStyle): ButtonAttribute;
  minFontScale(scale: number | Resource): ButtonAttribute;
  maxFontScale(scale: number | Resource): ButtonAttribute;
}
declare const Button: ButtonInterface;
declare const ButtonInstance: ButtonAttribute;