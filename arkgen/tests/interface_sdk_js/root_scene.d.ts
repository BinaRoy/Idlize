import { CommonMethod} from './common';
interface RootSceneSession {
}
interface RootSceneInterface {
  (session: RootSceneSession): RootSceneAttribute;
}
declare class RootSceneAttribute extends CommonMethod<RootSceneAttribute> {
}
declare const RootScene: RootSceneInterface;
declare const RootSceneInstance: RootSceneAttribute;