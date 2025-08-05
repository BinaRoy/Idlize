import { Bindable, CommonMethod } from './common'
interface StepperOptions {
  index?: number;
  index?: number | Bindable<number>;
}
interface StepperInterface {
  (value?: { index?: number }): StepperAttribute;
  (value?: StepperOptions): StepperAttribute;
}
declare class StepperAttribute extends CommonMethod<StepperAttribute> {
  onFinish(callback: () => void): StepperAttribute;
  onSkip(callback: () => void): StepperAttribute;
  onChange(callback: (prevIndex: number, index: number) => void): StepperAttribute;
  onNext(callback: (index: number, pendingIndex: number) => void): StepperAttribute;
  onPrevious(callback: (index: number, pendingIndex: number) => void): StepperAttribute;
}
declare const Stepper: StepperInterface;
declare const StepperInstance: StepperAttribute;