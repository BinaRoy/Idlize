import { CommonMethod } from './common';
declare interface GridColColumnOption {
  xs?: number,
  sm?: number,
  md?: number,
  lg?: number,
  xl?: number,
  xxl?: number,
}
declare interface GridColOptions {
  span?: number | GridColColumnOption;
  offset?: number | GridColColumnOption;
  order?: number | GridColColumnOption;
}
interface GridColInterface {
  (option?: GridColOptions): GridColAttribute;
}
declare class GridColAttribute extends CommonMethod<GridColAttribute> {
  span(value: number | GridColColumnOption): GridColAttribute;
  gridColOffset(value: number | GridColColumnOption): GridColAttribute;
  order(value: number | GridColColumnOption): GridColAttribute;
}
declare const GridCol: GridColInterface
declare const GridColInstance: GridColAttribute;