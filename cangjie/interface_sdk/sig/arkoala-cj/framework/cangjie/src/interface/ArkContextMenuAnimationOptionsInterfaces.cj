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
public interface ContextMenuAnimationOptionsInterfaces <:  {
    public mut open prop scale: Option<AnimationRange_Number>
    public mut open prop transition: Option<TransitionEffect>
    public mut open prop hoverScale: Option<AnimationRange_Number>
    public mut open prop hoverScaleInterruption: Option<Bool>
}
public open class ContextMenuAnimationOptions <: ContextMenuAnimationOptionsInterfaces {
    private var scale_container: Option<AnimationRange_Number>
    public mut open prop scale: Option<AnimationRange_Number>
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var transition_container: Option<TransitionEffect>
    public mut open prop transition: Option<TransitionEffect>
    {
        get() {
            return transition_container
        }
        set(transition) {
            transition_container = transition
        }
    }
    private var hoverScale_container: Option<AnimationRange_Number>
    public mut open prop hoverScale: Option<AnimationRange_Number>
    {
        get() {
            return hoverScale_container
        }
        set(hoverScale) {
            hoverScale_container = hoverScale
        }
    }
    private var hoverScaleInterruption_container: Option<Bool>
    public mut open prop hoverScaleInterruption: Option<Bool>
    {
        get() {
            return hoverScaleInterruption_container
        }
        set(hoverScaleInterruption) {
            hoverScaleInterruption_container = hoverScaleInterruption
        }
    }
    ContextMenuAnimationOptions(scale: Option<AnimationRange_Number>, transition: Option<TransitionEffect>, hoverScale: Option<AnimationRange_Number>, hoverScaleInterruption: Option<Bool>) {
        this.scale_container = scale
        this.transition_container = transition
        this.hoverScale_container = hoverScale
        this.hoverScaleInterruption_container = hoverScaleInterruption
    }
}
public open class ContextMenuAnimationOptions_serializer {
    public static func write(buffer: SerializerBase, value: ContextMenuAnimationOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForScale = value.scale
        if (valueHolderForScale.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScaleTmpValue = valueHolderForScale
            let valueHolderForScaleTmpValue_0 = valueHolderForScaleTmpValue.value0
            valueSerializer.writeNumber(valueHolderForScaleTmpValue_0);
            let valueHolderForScaleTmpValue_1 = valueHolderForScaleTmpValue.value1
            valueSerializer.writeNumber(valueHolderForScaleTmpValue_1);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTransition = value.transition
        if (valueHolderForTransition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTransitionTmpValue = valueHolderForTransition
            TransitionEffect_serializer.write(valueSerializer, valueHolderForTransitionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHoverScale = value.hoverScale
        if (valueHolderForHoverScale.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHoverScaleTmpValue = valueHolderForHoverScale
            let valueHolderForHoverScaleTmpValue_0 = valueHolderForHoverScaleTmpValue.value0
            valueSerializer.writeNumber(valueHolderForHoverScaleTmpValue_0);
            let valueHolderForHoverScaleTmpValue_1 = valueHolderForHoverScaleTmpValue.value1
            valueSerializer.writeNumber(valueHolderForHoverScaleTmpValue_1);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHoverScaleInterruption = value.hoverScaleInterruption
        if (valueHolderForHoverScaleInterruption.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHoverScaleInterruptionTmpValue = valueHolderForHoverScaleInterruption
            valueSerializer.writeBoolean(valueHolderForHoverScaleInterruptionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ContextMenuAnimationOptions {
        var valueDeserializer: DeserializerBase = buffer
        let scaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleTmpBuf: Option<AnimationRange_Number> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleTmpBuf_runtimeType))) {
            let scaleTmpBuf_Value0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let scaleTmpBuf_Value1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            scaleTmpBuf = AnimationRange_Number(scaleTmpBuf__value0, scaleTmpBuf__value1)
        }
        let scaleTmpResult: Option<AnimationRange_Number> = scaleTmpBuf
        let transitionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var transitionTmpBuf: Option<TransitionEffect> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(transitionTmpBuf_runtimeType))) {
            transitionTmpBuf = match (TransitionEffect_serializer.read(valueDeserializer) as TransitionEffect) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let transitionTmpResult: Option<TransitionEffect> = transitionTmpBuf
        let hoverScaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hoverScaleTmpBuf: Option<AnimationRange_Number> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hoverScaleTmpBuf_runtimeType))) {
            let hoverScaleTmpBuf_Value0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let hoverScaleTmpBuf_Value1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            hoverScaleTmpBuf = AnimationRange_Number(hoverScaleTmpBuf__value0, hoverScaleTmpBuf__value1)
        }
        let hoverScaleTmpResult: Option<AnimationRange_Number> = hoverScaleTmpBuf
        let hoverScaleInterruptionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hoverScaleInterruptionTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hoverScaleInterruptionTmpBuf_runtimeType))) {
            hoverScaleInterruptionTmpBuf = valueDeserializer.readBoolean()
        }
        let hoverScaleInterruptionTmpResult: Option<Bool> = hoverScaleInterruptionTmpBuf
        var value: ContextMenuAnimationOptions = ContextMenuAnimationOptions(scaleTmpResult, transitionTmpResult, hoverScaleTmpResult, hoverScaleInterruptionTmpResult)
        return value
    }
}
