import { CustomTheme } from '../../@ohos.arkui.theme';
import { ThemeColorMode } from './common';
declare type CustomTheme = import('../api/@ohos.arkui.theme').CustomTheme;
declare interface WithThemeOptions {
    theme?: CustomTheme;
    colorMode?: ThemeColorMode;
}
declare type WithThemeInterface = (options: WithThemeOptions) => WithThemeAttribute;
interface WithThemeInterface {
    (options: WithThemeOptions): WithThemeAttribute;
}
declare class WithThemeAttribute {
}
declare const WithTheme: WithThemeInterface;
declare const WithThemeInstance: WithThemeAttribute;