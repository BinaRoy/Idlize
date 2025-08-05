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
public interface ScrollOptionsInterfaces <:  {
    public mut open prop xOffset: Union_Number_String
    public mut open prop yOffset: Union_Number_String
    public mut open prop animation: Option<Union_ScrollAnimationOptions_Boolean>
    public mut open prop canOverScroll: Option<Bool>
}
public open class ScrollOptions <: ScrollOptionsInterfaces {
    private var xOffset_container: Union_Number_String
    public mut open prop xOffset: Union_Number_String
    {
        get() {
            return xOffset_container
        }
        set(xOffset) {
            xOffset_container = xOffset
        }
    }
    private var yOffset_container: Union_Number_String
    public mut open prop yOffset: Union_Number_String
    {
        get() {
            return yOffset_container
        }
        set(yOffset) {
            yOffset_container = yOffset
        }
    }
    private var animation_container: Option<Union_ScrollAnimationOptions_Boolean>
    public mut open prop animation: Option<Union_ScrollAnimationOptions_Boolean>
    {
        get() {
            return animation_container
        }
        set(animation) {
            animation_container = animation
        }
    }
    private var canOverScroll_container: Option<Bool>
    public mut open prop canOverScroll: Option<Bool>
    {
        get() {
            return canOverScroll_container
        }
        set(canOverScroll) {
            canOverScroll_container = canOverScroll
        }
    }
    ScrollOptions(xOffset: Union_Number_String, yOffset: Union_Number_String, animation: Option<Union_ScrollAnimationOptions_Boolean>, canOverScroll: Option<Bool>) {
        this.xOffset_container = xOffset
        this.yOffset_container = yOffset
        this.animation_container = animation
        this.canOverScroll_container = canOverScroll
    }
}
public open class ScrollOptions_serializer {
    public static func write(buffer: SerializerBase, value: ScrollOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForXOffset = value.xOffset
        if (valueHolderForXOffset.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForXOffsetForIdx0 = valueHolderForXOffset.getValue0()
            valueSerializer.writeNumber(valueHolderForXOffsetForIdx0);
        } else if (valueHolderForXOffset.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForXOffsetForIdx1 = valueHolderForXOffset.getValue1()
            valueSerializer.writeString(valueHolderForXOffsetForIdx1);
        }
        let valueHolderForYOffset = value.yOffset
        if (valueHolderForYOffset.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForYOffsetForIdx0 = valueHolderForYOffset.getValue0()
            valueSerializer.writeNumber(valueHolderForYOffsetForIdx0);
        } else if (valueHolderForYOffset.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForYOffsetForIdx1 = valueHolderForYOffset.getValue1()
            valueSerializer.writeString(valueHolderForYOffsetForIdx1);
        }
        let valueHolderForAnimation = value.animation
        if (valueHolderForAnimation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAnimationTmpValue = valueHolderForAnimation
            if (valueHolderForAnimationTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForAnimationTmpValueForIdx0 = valueHolderForAnimationTmpValue.getValue0()
                ScrollAnimationOptions_serializer.write(valueSerializer, valueHolderForAnimationTmpValueForIdx0);
            } else if (valueHolderForAnimationTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForAnimationTmpValueForIdx1 = valueHolderForAnimationTmpValue.getValue1()
                valueSerializer.writeBoolean(valueHolderForAnimationTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCanOverScroll = value.canOverScroll
        if (valueHolderForCanOverScroll.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCanOverScrollTmpValue = valueHolderForCanOverScroll
            valueSerializer.writeBoolean(valueHolderForCanOverScrollTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ScrollOptions {
        var valueDeserializer: DeserializerBase = buffer
        let xOffsetTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var xOffsetTmpBuf: Union_Number_String 
        if (xOffsetTmpBufUnionSelector == Int8(0)) {
            xOffsetTmpBuf = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (xOffsetTmpBufUnionSelector == Int8(1)) {
            xOffsetTmpBuf = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for xOffsetTmpBuf has to be chosen through deserialisation.")
        }
        let xOffsetTmpResult: Union_Number_String = match (xOffsetTmpBuf as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yOffsetTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var yOffsetTmpBuf: Union_Number_String 
        if (yOffsetTmpBufUnionSelector == Int8(0)) {
            yOffsetTmpBuf = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (yOffsetTmpBufUnionSelector == Int8(1)) {
            yOffsetTmpBuf = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for yOffsetTmpBuf has to be chosen through deserialisation.")
        }
        let yOffsetTmpResult: Union_Number_String = match (yOffsetTmpBuf as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let animationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var animationTmpBuf: Option<Union_ScrollAnimationOptions_Boolean> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(animationTmpBuf_runtimeType))) {
            let animationTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var animationTmpBuf_: Union_ScrollAnimationOptions_Boolean 
            if (animationTmpBuf_UnionSelector == Int8(0)) {
                animationTmpBuf_ = Union_ScrollAnimationOptions_Boolean(ScrollAnimationOptions_serializer.read(valueDeserializer))
            } else if (animationTmpBuf_UnionSelector == Int8(1)) {
                animationTmpBuf_ = Union_ScrollAnimationOptions_Boolean(valueDeserializer.readBoolean())
            } else {
                throw Exception("One of the branches for animationTmpBuf_ has to be chosen through deserialisation.")
            }
            animationTmpBuf = match (animationTmpBuf_ as Union_ScrollAnimationOptions_Boolean) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let animationTmpResult: Option<Union_ScrollAnimationOptions_Boolean> = animationTmpBuf
        let canOverScrollTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var canOverScrollTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(canOverScrollTmpBuf_runtimeType))) {
            canOverScrollTmpBuf = valueDeserializer.readBoolean()
        }
        let canOverScrollTmpResult: Option<Bool> = canOverScrollTmpBuf
        var value: ScrollOptions = ScrollOptions(xOffsetTmpResult, yOffsetTmpResult, animationTmpResult, canOverScrollTmpResult)
        return value
    }
}
