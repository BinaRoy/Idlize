declare enum PasteIconStyle {
  LINES = 0
}
declare enum PasteDescription {
  PASTE = 0
}
declare interface PasteButtonOptions {
  icon?: PasteIconStyle;
  text?: PasteDescription;
  buttonType?: ButtonType;
}
declare enum PasteButtonOnClickResult {
  SUCCESS = 0,
  TEMPORARY_AUTHORIZATION_FAILED = 1
}
interface PasteButtonInterface {
  (): PasteButtonAttribute;
  (options: PasteButtonOptions): PasteButtonAttribute;
}
type PasteButtonCallback = (event: ClickEvent, result: PasteButtonOnClickResult, error?: BusinessError<void>) => void;
declare class PasteButtonAttribute extends SecurityComponentMethod<PasteButtonAttribute> {
  onClick(event: PasteButtonCallback): PasteButtonAttribute;
}
declare const PasteButton: PasteButtonInterface;
declare const PasteButtonInstance: PasteButtonAttribute;