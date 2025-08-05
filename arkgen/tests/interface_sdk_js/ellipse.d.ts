import { CommonShapeMethod } from './common';
interface EllipseOptions {
  width?: Length;
  height?: Length;
}
interface EllipseInterface {
  new (options?: EllipseOptions): EllipseAttribute;
  (options?: EllipseOptions): EllipseAttribute;
}
declare class EllipseAttribute extends CommonShapeMethod<EllipseAttribute> {}
declare const Ellipse: EllipseInterface;
declare const EllipseInstance: EllipseAttribute;
interface EllipseInterface {
  (options?: EllipseOptions): EllipseAttribute;
}