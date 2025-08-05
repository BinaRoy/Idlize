declare enum SizeType {
  Auto,
  XS,
  SM,
  MD,
  LG,
}
declare interface GridContainerOptions {
  columns?: number | "auto";
  sizeType?: SizeType;
  gutter?: number | string;
  margin?: number | string;
}
interface GridContainerInterface {
  (value?: GridContainerOptions): GridContainerAttribute;
}
declare class GridContainerAttribute extends ColumnAttribute {}
declare const GridContainer: GridContainerInterface
declare const GridContainerInstance: GridContainerAttribute;