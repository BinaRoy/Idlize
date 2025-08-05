import { CommonMethod } from './common'
declare enum ItemState {
  Normal,
  Disabled,
  Waiting,
  Skip,
}
interface StepperItemInterface {
  (): StepperItemAttribute;
}
declare class StepperItemAttribute extends CommonMethod<StepperItemAttribute> {
  prevLabel(value: string): StepperItemAttribute;
  nextLabel(value: string): StepperItemAttribute;
  status(value?: ItemState): StepperItemAttribute;
}
declare const StepperItemInstance: StepperItemAttribute;
declare const StepperItem: StepperItemInterface;