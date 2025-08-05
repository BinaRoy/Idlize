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
public interface NavigationToolbarOptionsInterfaces <:  {
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    public mut open prop backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>
    public mut open prop backgroundEffect: Option<BackgroundEffectOptions>
    public mut open prop moreButtonOptions: Option<MoreButtonOptions>
    public mut open prop barStyle: Option<BarStyle>
    public mut open prop hideItemValue: Option<Bool>
}
public open class NavigationToolbarOptions <: NavigationToolbarOptionsInterfaces {
    private var backgroundColor_container: Option<ResourceColor>
    public mut open prop backgroundColor: Option<ResourceColor>
    {
        get() {
            return backgroundColor_container
        }
        set(backgroundColor) {
            backgroundColor_container = backgroundColor
        }
    }
    private var backgroundBlurStyle_container: Option<BlurStyle>
    public mut open prop backgroundBlurStyle: Option<BlurStyle>
    {
        get() {
            return backgroundBlurStyle_container
        }
        set(backgroundBlurStyle) {
            backgroundBlurStyle_container = backgroundBlurStyle
        }
    }
    private var backgroundBlurStyleOptions_container: Option<BackgroundBlurStyleOptions>
    public mut open prop backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>
    {
        get() {
            return backgroundBlurStyleOptions_container
        }
        set(backgroundBlurStyleOptions) {
            backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        }
    }
    private var backgroundEffect_container: Option<BackgroundEffectOptions>
    public mut open prop backgroundEffect: Option<BackgroundEffectOptions>
    {
        get() {
            return backgroundEffect_container
        }
        set(backgroundEffect) {
            backgroundEffect_container = backgroundEffect
        }
    }
    private var moreButtonOptions_container: Option<MoreButtonOptions>
    public mut open prop moreButtonOptions: Option<MoreButtonOptions>
    {
        get() {
            return moreButtonOptions_container
        }
        set(moreButtonOptions) {
            moreButtonOptions_container = moreButtonOptions
        }
    }
    private var barStyle_container: Option<BarStyle>
    public mut open prop barStyle: Option<BarStyle>
    {
        get() {
            return barStyle_container
        }
        set(barStyle) {
            barStyle_container = barStyle
        }
    }
    private var hideItemValue_container: Option<Bool>
    public mut open prop hideItemValue: Option<Bool>
    {
        get() {
            return hideItemValue_container
        }
        set(hideItemValue) {
            hideItemValue_container = hideItemValue
        }
    }
    NavigationToolbarOptions(backgroundColor: Option<ResourceColor>, backgroundBlurStyle: Option<BlurStyle>, backgroundBlurStyleOptions: Option<BackgroundBlurStyleOptions>, backgroundEffect: Option<BackgroundEffectOptions>, moreButtonOptions: Option<MoreButtonOptions>, barStyle: Option<BarStyle>, hideItemValue: Option<Bool>) {
        this.backgroundColor_container = backgroundColor
        this.backgroundBlurStyle_container = backgroundBlurStyle
        this.backgroundBlurStyleOptions_container = backgroundBlurStyleOptions
        this.backgroundEffect_container = backgroundEffect
        this.moreButtonOptions_container = moreButtonOptions
        this.barStyle_container = barStyle
        this.hideItemValue_container = hideItemValue
    }
}
public open class NavigationToolbarOptions_serializer {
    public static func write(buffer: SerializerBase, value: NavigationToolbarOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBackgroundColor = value.backgroundColor
        if (valueHolderForBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor
            if (valueHolderForBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBackgroundColorTmpValueForIdx0.value);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBackgroundColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackgroundBlurStyle = value.backgroundBlurStyle
        if (valueHolderForBackgroundBlurStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundBlurStyleTmpValue = valueHolderForBackgroundBlurStyle
            valueSerializer.writeInt32(valueHolderForBackgroundBlurStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackgroundBlurStyleOptions = value.backgroundBlurStyleOptions
        if (valueHolderForBackgroundBlurStyleOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundBlurStyleOptionsTmpValue = valueHolderForBackgroundBlurStyleOptions
            BackgroundBlurStyleOptions_serializer.write(valueSerializer, valueHolderForBackgroundBlurStyleOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackgroundEffect = value.backgroundEffect
        if (valueHolderForBackgroundEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundEffectTmpValue = valueHolderForBackgroundEffect
            BackgroundEffectOptions_serializer.write(valueSerializer, valueHolderForBackgroundEffectTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMoreButtonOptions = value.moreButtonOptions
        if (valueHolderForMoreButtonOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMoreButtonOptionsTmpValue = valueHolderForMoreButtonOptions
            MoreButtonOptions_serializer.write(valueSerializer, valueHolderForMoreButtonOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBarStyle = value.barStyle
        if (valueHolderForBarStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBarStyleTmpValue = valueHolderForBarStyle
            valueSerializer.writeInt32(valueHolderForBarStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHideItemValue = value.hideItemValue
        if (valueHolderForHideItemValue.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHideItemValueTmpValue = valueHolderForHideItemValue
            valueSerializer.writeBoolean(valueHolderForHideItemValueTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NavigationToolbarOptions {
        var valueDeserializer: DeserializerBase = buffer
        let backgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundColorTmpBuf_runtimeType))) {
            let backgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundColorTmpBuf_: ResourceColor 
            if (backgroundColorTmpBuf_UnionSelector == Int8(0)) {
                backgroundColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(1)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(2)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(3)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            backgroundColorTmpBuf = match (backgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundColorTmpResult: Option<ResourceColor> = backgroundColorTmpBuf
        let backgroundBlurStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundBlurStyleTmpBuf: Option<BlurStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundBlurStyleTmpBuf_runtimeType))) {
            backgroundBlurStyleTmpBuf = BlurStyle(valueDeserializer.readInt32())
        }
        let backgroundBlurStyleTmpResult: Option<BlurStyle> = backgroundBlurStyleTmpBuf
        let backgroundBlurStyleOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundBlurStyleOptionsTmpBuf: Option<BackgroundBlurStyleOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundBlurStyleOptionsTmpBuf_runtimeType))) {
            backgroundBlurStyleOptionsTmpBuf = BackgroundBlurStyleOptions_serializer.read(valueDeserializer)
        }
        let backgroundBlurStyleOptionsTmpResult: Option<BackgroundBlurStyleOptions> = backgroundBlurStyleOptionsTmpBuf
        let backgroundEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundEffectTmpBuf: Option<BackgroundEffectOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundEffectTmpBuf_runtimeType))) {
            backgroundEffectTmpBuf = BackgroundEffectOptions_serializer.read(valueDeserializer)
        }
        let backgroundEffectTmpResult: Option<BackgroundEffectOptions> = backgroundEffectTmpBuf
        let moreButtonOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var moreButtonOptionsTmpBuf: Option<MoreButtonOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(moreButtonOptionsTmpBuf_runtimeType))) {
            moreButtonOptionsTmpBuf = MoreButtonOptions_serializer.read(valueDeserializer)
        }
        let moreButtonOptionsTmpResult: Option<MoreButtonOptions> = moreButtonOptionsTmpBuf
        let barStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var barStyleTmpBuf: Option<BarStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(barStyleTmpBuf_runtimeType))) {
            barStyleTmpBuf = BarStyle(valueDeserializer.readInt32())
        }
        let barStyleTmpResult: Option<BarStyle> = barStyleTmpBuf
        let hideItemValueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hideItemValueTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hideItemValueTmpBuf_runtimeType))) {
            hideItemValueTmpBuf = valueDeserializer.readBoolean()
        }
        let hideItemValueTmpResult: Option<Bool> = hideItemValueTmpBuf
        var value: NavigationToolbarOptions = NavigationToolbarOptions(backgroundColorTmpResult, backgroundBlurStyleTmpResult, backgroundBlurStyleOptionsTmpResult, backgroundEffectTmpResult, moreButtonOptionsTmpResult, barStyleTmpResult, hideItemValueTmpResult)
        return value
    }
}
