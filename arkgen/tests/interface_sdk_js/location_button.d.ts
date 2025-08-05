declare enum LocationIconStyle {
  FULL_FILLED = 0,
  LINES = 1
}
declare enum LocationDescription {
  CURRENT_LOCATION = 0,
  ADD_LOCATION = 1,
  SELECT_LOCATION = 2,
  SHARE_LOCATION = 3,
  SEND_LOCATION = 4,
  LOCATING = 5,
  LOCATION = 6,
  SEND_CURRENT_LOCATION = 7,
  RELOCATION = 8,
  PUNCH_IN = 9,
  CURRENT_POSITION = 10
}
declare interface LocationButtonOptions {
  icon?: LocationIconStyle;
  text?: LocationDescription;
  buttonType?: ButtonType;
}
declare enum LocationButtonOnClickResult {
  SUCCESS = 0,
  TEMPORARY_AUTHORIZATION_FAILED = 1
}
interface LocationButtonInterface {
  (): LocationButtonAttribute;
  (options: LocationButtonOptions): LocationButtonAttribute;
}
type LocationButtonCallback = (event: ClickEvent, result: LocationButtonOnClickResult, error?: BusinessError<void>) => void;
declare class LocationButtonAttribute extends SecurityComponentMethod<LocationButtonAttribute> {
  onClick(event: LocationButtonCallback): LocationButtonAttribute;
}
declare const LocationButton: LocationButtonInterface;
declare const LocationButtonInstance: LocationButtonAttribute;