declare type RestrictedWorker = import('../api/@ohos.worker').default.RestrictedWorker;
declare type ErrorCallback = import('../api/@ohos.base').ErrorCallback;
declare type Want = import('../api/@ohos.app.ability.Want').default;
declare interface IsolatedOptions {
  want: Want;
  worker: RestrictedWorker;
}
declare type IsolatedComponentInterface = (options: IsolatedOptions) => IsolatedComponentAttribute;
declare class IsolatedComponentAttribute extends CommonMethod<IsolatedComponentAttribute> {
  onError(
    callback: ErrorCallback
  ): IsolatedComponentAttribute;
}
declare const IsolatedComponent: IsolatedComponentInterface;
declare const IsolatedComponentInstance: IsolatedComponentAttribute;