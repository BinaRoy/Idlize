import { CommonMethod} from './common';
declare interface FormLinkOptions {
  action: string;
  moduleName?: string;
  bundleName?: string;
  abilityName?: string;
  uri?: string;
  params?: Object;
}
interface FormLinkInterface {
  (options: FormLinkOptions): FormLinkAttribute;
}
declare class FormLinkAttribute extends CommonMethod<FormLinkAttribute> {}
declare const FormLink: FormLinkInterface;
declare const FormLinkInstance: FormLinkAttribute;