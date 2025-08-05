import { LengthMetrics , ColorMetrics } from '../Graphics';
declare interface FocusBoxStyle {
  margin?: LengthMetrics;
  strokeColor?: ColorMetrics;
  strokeWidth?: LengthMetrics;
}
declare enum FocusPriority {
  AUTO = 0,
  PRIOR = 2000,
  PREVIOUS = 3000,
}
declare enum KeyProcessingMode {
  FOCUS_NAVIGATION = 0,
  ANCESTOR_EVENT = 1,
}