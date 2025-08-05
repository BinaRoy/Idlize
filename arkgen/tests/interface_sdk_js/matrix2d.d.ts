import { LengthMetricsUnit } from '../Graphics';
declare class Matrix2D {
  scaleX?: number;
  rotateY?: number;
  rotateX?: number;
  scaleY?: number;
  translateX?: number;
  translateY?: number;
  identity(): Matrix2D;
  invert(): Matrix2D;
  multiply(other?: Matrix2D): Matrix2D;
  rotate(rx?: number, ry?: number): Matrix2D;
  rotate(degree: number, rx?: number, ry?: number): Matrix2D;
  translate(tx?: number, ty?: number): Matrix2D;
  scale(sx?: number, sy?: number): Matrix2D;
  constructor();
  constructor(unit: LengthMetricsUnit);
}