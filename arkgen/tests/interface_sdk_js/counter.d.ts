import { CommonMethod } from './common'
import { VoidCallback } from './units'
interface CounterInterface {
  (): CounterAttribute;
}
declare class CounterAttribute extends CommonMethod<CounterAttribute> {
  onInc(event: VoidCallback): CounterAttribute;
  onDec(event: VoidCallback): CounterAttribute;
  enableDec(value: boolean): CounterAttribute;
  enableInc(value: boolean): CounterAttribute;
}
declare const CounterInstance: CounterAttribute;
declare const Counter: CounterInterface;