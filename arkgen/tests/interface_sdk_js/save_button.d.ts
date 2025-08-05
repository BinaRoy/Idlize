declare enum SaveIconStyle {
  FULL_FILLED = 0,
  LINES = 1,
  PICTURE = 2
}
declare enum SaveDescription {
  DOWNLOAD = 0,
  DOWNLOAD_FILE = 1,
  SAVE = 2,
  SAVE_IMAGE = 3,
  SAVE_FILE = 4,
  DOWNLOAD_AND_SHARE = 5,
  RECEIVE = 6,
  CONTINUE_TO_RECEIVE = 7,
  SAVE_TO_GALLERY = 8,
  EXPORT_TO_GALLERY = 9,
  QUICK_SAVE_TO_GALLERY = 10,
  RESAVE_TO_GALLERY = 11,
  SAVE_ALL = 12
}
declare interface SaveButtonOptions {
  icon?: SaveIconStyle;
  text?: SaveDescription;
  buttonType?: ButtonType;
}
declare enum SaveButtonOnClickResult {
  SUCCESS = 0,
  TEMPORARY_AUTHORIZATION_FAILED = 1
}
interface SaveButtonInterface {
  (): SaveButtonAttribute;
  (options: SaveButtonOptions): SaveButtonAttribute;
}
type SaveButtonCallback = (event: ClickEvent, result: SaveButtonOnClickResult, error?: BusinessError<void>) => void;
declare class SaveButtonAttribute extends SecurityComponentMethod<SaveButtonAttribute> {
  onClick(event: SaveButtonCallback): SaveButtonAttribute;
  setIcon(icon: Resource): SaveButtonAttribute;
  setText(text: string | Resource): SaveButtonAttribute;
  iconSize(size: Dimension | SizeOptions): SaveButtonAttribute;
  iconBorderRadius(radius: Dimension | BorderRadiuses): SaveButtonAttribute;
  stateEffect(enabled: boolean): SaveButtonAttribute;
  tipPosition(position: SaveButtonTipPosition): SaveButtonAttribute;
}
declare const SaveButton: SaveButtonInterface;
declare const SaveButtonInstance: SaveButtonAttribute;
declare enum SaveButtonTipPosition {
  ABOVE_BOTTOM = 0,
  BELOW_TOP = 1
}