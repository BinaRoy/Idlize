declare class AppStorage {
  static ref<T>(propName: string): AbstractProperty<T> | undefined;
  static setAndRef<T>(propName: string, defaultValue: T): AbstractProperty<T>;
  static Link(propName: string): any;
  static link<T>(propName: string): SubscribedAbstractProperty<T>;
  static SetAndLink<T>(propName: string, defaultValue: T): SubscribedAbstractProperty<T>;
  static setAndLink<T>(propName: string, defaultValue: T): SubscribedAbstractProperty<T>;
  static Prop(propName: string): any;
  static prop<T>(propName: string): SubscribedAbstractProperty<T>;
  static SetAndProp<S>(propName: string, defaultValue: S): SubscribedAbstractProperty<S>;
  static setAndProp<T>(propName: string, defaultValue: T): SubscribedAbstractProperty<T>;
  static Has(propName: string): boolean;
  static has(propName: string): boolean;
  static Get<T>(propName: string): T | undefined;
  static get<T>(propName: string): T | undefined;
  static Set<T>(propName: string, newValue: T): boolean;
  static set<T>(propName: string, newValue: T): boolean;
  static SetOrCreate<T>(propName: string, newValue: T): void;
  static setOrCreate<T>(propName: string, newValue: T): void;
  static Delete(propName: string): boolean;
  static delete(propName: string): boolean;
  static Keys(): IterableIterator<string>;
  static keys(): IterableIterator<string>;
  static staticClear(): boolean;
  static Clear(): boolean;
  static clear(): boolean;
  static IsMutable(propName: string): boolean;
  static Size(): number;
  static size(): number;
}
declare interface AbstractProperty<T> {
  get(): T;
  set(newValue: T): void;
  info(): string;
}
declare abstract class SubscribedAbstractProperty<T> {
  protected subscribers_: Set<number>;
  private id_;
  private info_?;
  constructor(
    subscribeMe?: IPropertySubscriber,
    info?: string,
  );
  id(): number;
  info(): string;
  abstract get(): T;
  abstract set(newValue: T): void;
  createTwoWaySync(subscribeMe?: IPropertySubscriber, info?: string): SyncedPropertyTwoWay<T>;
  createOneWaySync(subscribeMe?: IPropertySubscriber, info?: string): SyncedPropertyOneWay<T>;
  unlinkSuscriber(subscriberId: number): void;
  protected notifyHasChanged(newValue: T): void;
  protected notifyPropertyRead(): void;
  numberOfSubscrbers(): number;
  abstract aboutToBeDeleted(): void;
}
interface IPropertySubscriber {
  id(): number;
  aboutToBeDeleted(owningView?: IPropertySubscriber): void;
}
declare class SyncedPropertyTwoWay<T>
  extends SubscribedAbstractProperty<T>
  implements ISinglePropertyChangeSubscriber<T>
{
  private source_;
  constructor(source: SubscribedAbstractProperty<T>, subscribeMe?: IPropertySubscriber, info?: string);
  aboutToBeDeleted(unsubscribeMe?: IPropertySubscriber): void;
  hasChanged(newValue: T): void;
  get(): T;
  set(newValue: T): void;
}
declare class SyncedPropertyOneWay<T>
  extends SubscribedAbstractProperty<T>
  implements ISinglePropertyChangeSubscriber<T>
{
  private wrappedValue_;
  private source_;
  constructor(source: SubscribedAbstractProperty<T>, subscribeMe?: IPropertySubscriber, info?: string);
  aboutToBeDeleted(unsubscribeMe?: IPropertySubscriber): void;
  hasChanged(newValue: T): void;
  get(): T;
  set(newValue: T): void;
}
interface ISinglePropertyChangeSubscriber<T> extends IPropertySubscriber {
  hasChanged(newValue: T): void;
}
declare abstract class SubscribaleAbstract {
  private owningProperties_: Set<number>;
  constructor();
  protected notifyPropertyHasChanged(propName: string, newValue: any): void;
  public addOwningProperty(subscriber: IPropertySubscriber): void;
  public removeOwningProperty(property: IPropertySubscriber): void;
  public removeOwningPropertyById(subscriberId: number): void;
}
declare interface EnvPropsOptions {
  key: string;
  defaultValue: number | string | boolean;
}
declare class Environment {
  constructor();
  static EnvProp<S>(key: string, value: S): boolean;
  static envProp<S>(key: string, value: S): boolean;
  static EnvProps(
    props: {
      key: string;
      defaultValue: any;
    }[],
  ): void;
  static envProps(props: EnvPropsOptions[]): void;
  static Keys(): Array<string>;
  static keys(): Array<string>;
}
declare interface PersistPropsOptions {
  key: string;
  defaultValue: number | string | boolean | Object;
}
declare class PersistentStorage {
  constructor(appStorage: AppStorage, storage: Storage);
  static PersistProp<T>(key: string, defaultValue: T): void;
  static persistProp<T>(key: string, defaultValue: T): void;
  static DeleteProp(key: string): void;
  static deleteProp(key: string): void;
  static PersistProps(
    properties: {
      key: string;
      defaultValue: any;
    }[],
  ): void;
  static persistProps(props: PersistPropsOptions[]): void;
  static Keys(): Array<string>;
  static keys(): Array<string>;
}
declare const appStorage: AppStorage;
declare class LocalStorage {
  constructor(initializingProperties?: Object);
  static GetShared(): LocalStorage;
  static getShared(): LocalStorage;
   public ref<T>(propName: string): AbstractProperty<T> | undefined;
   public setAndRef<T>(propName: string, defaultValue: T): AbstractProperty<T>;
  has(propName: string): boolean;
  keys(): IterableIterator<string>;
  size(): number;
  get<T>(propName: string): T | undefined;
  set<T>(propName: string, newValue: T): boolean;
  setOrCreate<T>(propName: string, newValue: T): boolean;
  link<T>(propName: string): SubscribedAbstractProperty<T>;
  setAndLink<T>(propName: string, defaultValue: T): SubscribedAbstractProperty<T>;
  prop<S>(propName: string): SubscribedAbstractProperty<S>;
  setAndProp<S>(propName: string, defaultValue: S): SubscribedAbstractProperty<S>;
  delete(propName: string): boolean;
  clear(): boolean;
}