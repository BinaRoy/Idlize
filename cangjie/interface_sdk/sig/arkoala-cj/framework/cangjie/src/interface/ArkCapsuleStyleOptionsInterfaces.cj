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
public interface CapsuleStyleOptionsInterfaces <: ScanEffectOptionsInterfaces & CommonProgressStyleOptionsInterfaces {
    public mut open prop borderColor: Option<ResourceColor>
    public mut open prop borderWidth: Option<Length>
    public mut open prop content: Option<ResourceStr>
    public mut open prop font: Option<Font>
    public mut open prop fontColor: Option<ResourceColor>
    public mut open prop showDefaultPercentage: Option<Bool>
    public mut open prop borderRadius: Option<LengthMetrics>
}
public open class CapsuleStyleOptions <: CapsuleStyleOptionsInterfaces {
    private var borderColor_container: Option<ResourceColor>
    public mut open prop borderColor: Option<ResourceColor>
    {
        get() {
            return borderColor_container
        }
        set(borderColor) {
            borderColor_container = borderColor
        }
    }
    private var borderWidth_container: Option<Length>
    public mut open prop borderWidth: Option<Length>
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var content_container: Option<ResourceStr>
    public mut open prop content: Option<ResourceStr>
    {
        get() {
            return content_container
        }
        set(content) {
            content_container = content
        }
    }
    private var font_container: Option<Font>
    public mut open prop font: Option<Font>
    {
        get() {
            return font_container
        }
        set(font) {
            font_container = font
        }
    }
    private var fontColor_container: Option<ResourceColor>
    public mut open prop fontColor: Option<ResourceColor>
    {
        get() {
            return fontColor_container
        }
        set(fontColor) {
            fontColor_container = fontColor
        }
    }
    private var showDefaultPercentage_container: Option<Bool>
    public mut open prop showDefaultPercentage: Option<Bool>
    {
        get() {
            return showDefaultPercentage_container
        }
        set(showDefaultPercentage) {
            showDefaultPercentage_container = showDefaultPercentage
        }
    }
    private var borderRadius_container: Option<LengthMetrics>
    public mut open prop borderRadius: Option<LengthMetrics>
    {
        get() {
            return borderRadius_container
        }
        set(borderRadius) {
            borderRadius_container = borderRadius
        }
    }
    private var enableScanEffect_container: Option<Bool>
    public mut open prop enableScanEffect: Option<Bool>
    {
        get() {
            return enableScanEffect_container
        }
        set(enableScanEffect) {
            enableScanEffect_container = enableScanEffect
        }
    }
    private var enableSmoothEffect_container: Option<Bool>
    public mut open prop enableSmoothEffect: Option<Bool>
    {
        get() {
            return enableSmoothEffect_container
        }
        set(enableSmoothEffect) {
            enableSmoothEffect_container = enableSmoothEffect
        }
    }
    CapsuleStyleOptions(borderColor: Option<ResourceColor>, borderWidth: Option<Length>, content: Option<ResourceStr>, font: Option<Font>, fontColor: Option<ResourceColor>, showDefaultPercentage: Option<Bool>, borderRadius: Option<LengthMetrics>, enableScanEffect: Option<Bool>, enableSmoothEffect: Option<Bool>) {
        this.borderColor_container = borderColor
        this.borderWidth_container = borderWidth
        this.content_container = content
        this.font_container = font
        this.fontColor_container = fontColor
        this.showDefaultPercentage_container = showDefaultPercentage
        this.borderRadius_container = borderRadius
        this.enableScanEffect_container = enableScanEffect
        this.enableSmoothEffect_container = enableSmoothEffect
    }
}
public open class CapsuleStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: CapsuleStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnableScanEffect = value.enableScanEffect
        if (valueHolderForEnableScanEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableScanEffectTmpValue = valueHolderForEnableScanEffect
            valueSerializer.writeBoolean(valueHolderForEnableScanEffectTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderColor = value.borderColor
        if (valueHolderForBorderColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderColorTmpValue = valueHolderForBorderColor
            if (valueHolderForBorderColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderColorTmpValueForIdx0 = valueHolderForBorderColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBorderColorTmpValueForIdx0.value);
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderColorTmpValueForIdx1 = valueHolderForBorderColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderColorTmpValueForIdx1);
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderColorTmpValueForIdx2 = valueHolderForBorderColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBorderColorTmpValueForIdx2);
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBorderColorTmpValueForIdx3 = valueHolderForBorderColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBorderColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderWidth = value.borderWidth
        if (valueHolderForBorderWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderWidthTmpValue = valueHolderForBorderWidth
            if (valueHolderForBorderWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderWidthTmpValueForIdx0 = valueHolderForBorderWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx0);
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthTmpValueForIdx1 = valueHolderForBorderWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx1);
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthTmpValueForIdx2 = valueHolderForBorderWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBorderWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForContent = value.content
        if (valueHolderForContent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForContentTmpValue = valueHolderForContent
            if (valueHolderForContentTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForContentTmpValueForIdx0 = valueHolderForContentTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForContentTmpValueForIdx0);
            } else if (valueHolderForContentTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForContentTmpValueForIdx1 = valueHolderForContentTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForContentTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFont = value.font
        if (valueHolderForFont.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontTmpValue = valueHolderForFont
            Font_serializer.write(valueSerializer, valueHolderForFontTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFontColor = value.fontColor
        if (valueHolderForFontColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFontColorTmpValue = valueHolderForFontColor
            if (valueHolderForFontColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFontColorTmpValueForIdx0 = valueHolderForFontColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForFontColorTmpValueForIdx0.value);
            } else if (valueHolderForFontColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFontColorTmpValueForIdx1 = valueHolderForFontColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForFontColorTmpValueForIdx1);
            } else if (valueHolderForFontColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForFontColorTmpValueForIdx2 = valueHolderForFontColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForFontColorTmpValueForIdx2);
            } else if (valueHolderForFontColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForFontColorTmpValueForIdx3 = valueHolderForFontColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForFontColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShowDefaultPercentage = value.showDefaultPercentage
        if (valueHolderForShowDefaultPercentage.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowDefaultPercentageTmpValue = valueHolderForShowDefaultPercentage
            valueSerializer.writeBoolean(valueHolderForShowDefaultPercentageTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderRadius = value.borderRadius
        if (valueHolderForBorderRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderRadiusTmpValue = valueHolderForBorderRadius
            valueSerializer.writeCustomObject("Any", valueHolderForBorderRadiusTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CapsuleStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let enableScanEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableScanEffectTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableScanEffectTmpBuf_runtimeType))) {
            enableScanEffectTmpBuf = valueDeserializer.readBoolean()
        }
        let enableScanEffectTmpResult: Option<Bool> = enableScanEffectTmpBuf
        let borderColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBuf_runtimeType))) {
            let borderColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderColorTmpBuf_: ResourceColor 
            if (borderColorTmpBuf_UnionSelector == Int8(0)) {
                borderColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (borderColorTmpBuf_UnionSelector == Int8(1)) {
                borderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderColorTmpBuf_UnionSelector == Int8(2)) {
                borderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderColorTmpBuf_UnionSelector == Int8(3)) {
                borderColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for borderColorTmpBuf_ has to be chosen through deserialisation.")
            }
            borderColorTmpBuf = match (borderColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderColorTmpResult: Option<ResourceColor> = borderColorTmpBuf
        let borderWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBuf_runtimeType))) {
            let borderWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBuf_: Length 
            if (borderWidthTmpBuf_UnionSelector == Int8(0)) {
                borderWidthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBuf_UnionSelector == Int8(1)) {
                borderWidthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBuf_UnionSelector == Int8(2)) {
                borderWidthTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for borderWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            borderWidthTmpBuf = match (borderWidthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpResult: Option<Length> = borderWidthTmpBuf
        let contentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var contentTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(contentTmpBuf_runtimeType))) {
            let contentTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var contentTmpBuf_: ResourceStr 
            if (contentTmpBuf_UnionSelector == Int8(0)) {
                contentTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (contentTmpBuf_UnionSelector == Int8(1)) {
                contentTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for contentTmpBuf_ has to be chosen through deserialisation.")
            }
            contentTmpBuf = match (contentTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let contentTmpResult: Option<ResourceStr> = contentTmpBuf
        let fontTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontTmpBuf: Option<Font> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontTmpBuf_runtimeType))) {
            fontTmpBuf = Font_serializer.read(valueDeserializer)
        }
        let fontTmpResult: Option<Font> = fontTmpBuf
        let fontColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fontColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fontColorTmpBuf_runtimeType))) {
            let fontColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var fontColorTmpBuf_: ResourceColor 
            if (fontColorTmpBuf_UnionSelector == Int8(0)) {
                fontColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (fontColorTmpBuf_UnionSelector == Int8(1)) {
                fontColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontColorTmpBuf_UnionSelector == Int8(2)) {
                fontColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (fontColorTmpBuf_UnionSelector == Int8(3)) {
                fontColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for fontColorTmpBuf_ has to be chosen through deserialisation.")
            }
            fontColorTmpBuf = match (fontColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fontColorTmpResult: Option<ResourceColor> = fontColorTmpBuf
        let showDefaultPercentageTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showDefaultPercentageTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showDefaultPercentageTmpBuf_runtimeType))) {
            showDefaultPercentageTmpBuf = valueDeserializer.readBoolean()
        }
        let showDefaultPercentageTmpResult: Option<Bool> = showDefaultPercentageTmpBuf
        let borderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderRadiusTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderRadiusTmpBuf_runtimeType))) {
            borderRadiusTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderRadiusTmpResult: Option<LengthMetrics> = borderRadiusTmpBuf
        var value: CapsuleStyleOptions = CapsuleStyleOptions(borderColorTmpResult, borderWidthTmpResult, contentTmpResult, fontTmpResult, fontColorTmpResult, showDefaultPercentageTmpResult, borderRadiusTmpResult, enableScanEffectTmpResult, enableSmoothEffectTmpResult)
        return value
    }
}
