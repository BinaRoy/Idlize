/*
 * Copyright (c) 2024-2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


// WARNING! THIS FILE IS AUTO-GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!

package idlize
import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime
public interface SliderOptionsInterfaces <:  {
    public mut open prop value: Option<Union_Number_Bindable>
    public mut open prop min: Option<Float64>
    public mut open prop max: Option<Float64>
    public mut open prop step: Option<Float64>
    public mut open prop style: Option<SliderStyle>
    public mut open prop direction: Option<Axis>
    public mut open prop reverse: Option<Bool>
}
public open class SliderOptions <: SliderOptionsInterfaces {
    private var value_container: Option<Union_Number_Bindable>
    public mut open prop value: Option<Union_Number_Bindable>
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var min_container: Option<Float64>
    public mut open prop min: Option<Float64>
    {
        get() {
            return min_container
        }
        set(min) {
            min_container = min
        }
    }
    private var max_container: Option<Float64>
    public mut open prop max: Option<Float64>
    {
        get() {
            return max_container
        }
        set(max) {
            max_container = max
        }
    }
    private var step_container: Option<Float64>
    public mut open prop step: Option<Float64>
    {
        get() {
            return step_container
        }
        set(step) {
            step_container = step
        }
    }
    private var style_container: Option<SliderStyle>
    public mut open prop style: Option<SliderStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var direction_container: Option<Axis>
    public mut open prop direction: Option<Axis>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var reverse_container: Option<Bool>
    public mut open prop reverse: Option<Bool>
    {
        get() {
            return reverse_container
        }
        set(reverse) {
            reverse_container = reverse
        }
    }
    SliderOptions(value: Option<Union_Number_Bindable>, min: Option<Float64>, max: Option<Float64>, step: Option<Float64>, style: Option<SliderStyle>, direction: Option<Axis>, reverse: Option<Bool>) {
        this.value_container = value
        this.min_container = min
        this.max_container = max
        this.step_container = step
        this.style_container = style
        this.direction_container = direction
        this.reverse_container = reverse
    }
}
public open class SliderOptions_serializer {
    public static func write(buffer: SerializerBase, value: SliderOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValue = value.value
        if (valueHolderForValue.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValueTmpValue = valueHolderForValue
            if (valueHolderForValueTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForValueTmpValueForIdx0 = valueHolderForValueTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForValueTmpValueForIdx0);
            } else if (valueHolderForValueTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForValueTmpValueForIdx1 = valueHolderForValueTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMin = value.min
        if (valueHolderForMin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMinTmpValue = valueHolderForMin
            valueSerializer.writeNumber(valueHolderForMinTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMax = value.max
        if (valueHolderForMax.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxTmpValue = valueHolderForMax
            valueSerializer.writeNumber(valueHolderForMaxTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStep = value.step
        if (valueHolderForStep.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStepTmpValue = valueHolderForStep
            valueSerializer.writeNumber(valueHolderForStepTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDirection = value.direction
        if (valueHolderForDirection.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDirectionTmpValue = valueHolderForDirection
            valueSerializer.writeInt32(valueHolderForDirectionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForReverse = value.reverse
        if (valueHolderForReverse.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForReverseTmpValue = valueHolderForReverse
            valueSerializer.writeBoolean(valueHolderForReverseTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SliderOptions {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueTmpBuf: Option<Union_Number_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueTmpBuf_runtimeType))) {
            let valueTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var valueTmpBuf_: Union_Number_Bindable 
            if (valueTmpBuf_UnionSelector == Int8(0)) {
                valueTmpBuf_ = Union_Number_Bindable(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (valueTmpBuf_UnionSelector == Int8(1)) {
                valueTmpBuf_ = Union_Number_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for valueTmpBuf_ has to be chosen through deserialisation.")
            }
            valueTmpBuf = match (valueTmpBuf_ as Union_Number_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueTmpResult: Option<Union_Number_Bindable> = valueTmpBuf
        let minTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var minTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(minTmpBuf_runtimeType))) {
            minTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let minTmpResult: Option<Float64> = minTmpBuf
        let maxTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxTmpBuf_runtimeType))) {
            maxTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxTmpResult: Option<Float64> = maxTmpBuf
        let stepTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var stepTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(stepTmpBuf_runtimeType))) {
            stepTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let stepTmpResult: Option<Float64> = stepTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<SliderStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = SliderStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<SliderStyle> = styleTmpBuf
        let directionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var directionTmpBuf: Option<Axis> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(directionTmpBuf_runtimeType))) {
            directionTmpBuf = Axis(valueDeserializer.readInt32())
        }
        let directionTmpResult: Option<Axis> = directionTmpBuf
        let reverseTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var reverseTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(reverseTmpBuf_runtimeType))) {
            reverseTmpBuf = valueDeserializer.readBoolean()
        }
        let reverseTmpResult: Option<Bool> = reverseTmpBuf
        var value: SliderOptions = SliderOptions(valueTmpResult, minTmpResult, maxTmpResult, stepTmpResult, styleTmpResult, directionTmpResult, reverseTmpResult)
        return value
    }
}
