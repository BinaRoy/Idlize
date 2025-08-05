import { CommonMethod,Callback } from './common';
import Want from '../../@ohos.app.ability.Want';
import { Visibility } from './enums'
import { VoidCallback } from './units';
declare enum FormDimension {
  Dimension_1_2 = 0,
  Dimension_2_2 = 1,
  Dimension_2_4 = 2,
  Dimension_4_4 = 3,
  Dimension_2_1 = 4,
  DIMENSION_1_1 = 6,
  DIMENSION_6_4 = 7,
  DIMENSION_2_3 = 8,
  DIMENSION_3_3 = 9
}
declare enum FormRenderingMode {
  FULL_COLOR,
  SINGLE_COLOR,
}
declare enum FormShape {
    RECT = 1,
    CIRCLE,
}
declare interface FormInfo {
  id: long | string;
  name: string;
  bundle: string;
  ability: string;
  module: string;
  dimension?: FormDimension;
  temporary?: boolean;
  want?: import('../api/@ohos.app.ability.Want').default;
  want?: Want;
  renderingMode?: FormRenderingMode;
  shape?: FormShape;
}
interface FormComponentInterface {
  (value: FormInfo): FormComponentAttribute;
}
interface FormCallbackInfo {
  id: long;
  idString: string;
}
interface FormSize {
  width: double;
  height: double;
}
interface ErrorInformation {
  errcode: int;
  msg: string;
}
declare class FormComponentAttribute extends CommonMethod<FormComponentAttribute> {
  size(formSize: FormSize): FormComponentAttribute;
  moduleName(value: string): FormComponentAttribute;
  dimension(value: FormDimension): FormComponentAttribute;
  allowUpdate(value: boolean): FormComponentAttribute;
  visibility(value: Visibility): FormComponentAttribute;
  onAcquired(callback: Callback<FormCallbackInfo>): FormComponentAttribute;
  onError(callback: Callback<ErrorInformation>): FormComponentAttribute;
  onRouter(callback: Callback<object>): FormComponentAttribute;
  onUninstall(callback: Callback<FormCallbackInfo>): FormComponentAttribute;
  onLoad(callback: VoidCallback): FormComponentAttribute;
  onUpdate(callback: Callback<FormCallbackInfo>): FormComponentAttribute;
}
declare const FormComponent: FormComponentInterface;
declare const FormComponentInstance: FormComponentAttribute;