declare enum ButtonType {

    Capsule,
    Circle,
}

declare interface LabelStyle {

    overflow?: TextOverflow;
    maxLines?: number;
    minFontSize?: number | ResourceStr;
    maxFontSize?: number | ResourceStr;
    heightAdaptivePolicy?: TextHeightAdaptivePolicy;
    font?: Font;

}

declare interface ButtonOptions {

    type?: ButtonType;
}

interface ButtonInterface {

    (): ButtonAttribute;
}
declare class ButtonAttribute extends CommonMethod<ButtonAttribute> {

    type(value: ButtonType): ButtonAttribute;

    fontColor(value: ResourceColor): ButtonAttribute;

    labelStyle(value: LabelStyle): ButtonAttribute;
}


declare const Button: ButtonInterface;

declare const ButtonInstance: ButtonAttribute;
