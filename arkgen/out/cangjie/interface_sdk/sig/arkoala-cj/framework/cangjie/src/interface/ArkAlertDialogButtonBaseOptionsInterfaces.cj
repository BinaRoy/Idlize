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
public interface AlertDialogButtonBaseOptionsInterfaces <:  {
    public mut open prop enabled: Option<Bool>
    public mut open prop defaultFocus: Option<Bool>
    public mut open prop style: Option<DialogButtonStyle>
    public mut open prop value: ResourceStr
    public mut open prop fontColor: Option<ResourceColor>
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop action: VoidCallback
}
public open class AlertDialogButtonBaseOptions <: AlertDialogButtonBaseOptionsInterfaces {
    private var enabled_container: Option<Bool>
    public mut open prop enabled: Option<Bool>
    {
        get() {
            return enabled_container
        }
        set(enabled) {
            enabled_container = enabled
        }
    }
    private var defaultFocus_container: Option<Bool>
    public mut open prop defaultFocus: Option<Bool>
    {
        get() {
            return defaultFocus_container
        }
        set(defaultFocus) {
            defaultFocus_container = defaultFocus
        }
    }
    private var style_container: Option<DialogButtonStyle>
    public mut open prop style: Option<DialogButtonStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var value_container: ResourceStr
    public mut open prop value: ResourceStr
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
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
    private var action_container: VoidCallback
    public mut open prop action: VoidCallback
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    AlertDialogButtonBaseOptions(enabled: Option<Bool>, defaultFocus: Option<Bool>, style: Option<DialogButtonStyle>, value: ResourceStr, fontColor: Option<ResourceColor>, backgroundColor: Option<ResourceColor>, action: VoidCallback) {
        this.enabled_container = enabled
        this.defaultFocus_container = defaultFocus
        this.style_container = style
        this.value_container = value
        this.fontColor_container = fontColor
        this.backgroundColor_container = backgroundColor
        this.action_container = action
    }
}
public open class AlertDialogButtonBaseOptions_serializer {
    public static func write(buffer: SerializerBase, value: AlertDialogButtonBaseOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        if (valueHolderForEnabled.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnabledTmpValue = valueHolderForEnabled
            valueSerializer.writeBoolean(valueHolderForEnabledTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDefaultFocus = value.defaultFocus
        if (valueHolderForDefaultFocus.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDefaultFocusTmpValue = valueHolderForDefaultFocus
            valueSerializer.writeBoolean(valueHolderForDefaultFocusTmpValue);
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
        let valueHolderForValue = value.value
        if (valueHolderForValue.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForValueForIdx0 = valueHolderForValue.getValue0()
            valueSerializer.writeString(valueHolderForValueForIdx0);
        } else if (valueHolderForValue.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForValueForIdx1 = valueHolderForValue.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForValueForIdx1);
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
        let valueHolderForAction = value.action
        valueSerializer.holdAndWriteCallback(valueHolderForAction);
    }
    public static func read(buffer: DeserializerBase): AlertDialogButtonBaseOptions {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enabledTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enabledTmpBuf_runtimeType))) {
            enabledTmpBuf = valueDeserializer.readBoolean()
        }
        let enabledTmpResult: Option<Bool> = enabledTmpBuf
        let defaultFocusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var defaultFocusTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(defaultFocusTmpBuf_runtimeType))) {
            defaultFocusTmpBuf = valueDeserializer.readBoolean()
        }
        let defaultFocusTmpResult: Option<Bool> = defaultFocusTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<DialogButtonStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = DialogButtonStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<DialogButtonStyle> = styleTmpBuf
        let valueTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var valueTmpBuf: ResourceStr 
        if (valueTmpBufUnionSelector == Int8(0)) {
            valueTmpBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (valueTmpBufUnionSelector == Int8(1)) {
            valueTmpBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
        }
        let valueTmpResult: ResourceStr = match (valueTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
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
        let actionTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let actionTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let actionTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let actionTmpResult: VoidCallback = { => let actionTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
actionTmpBufBufArgsSerializer.writeInt32(actionTmpBufBufResource.resourceId);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCall);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCallSync);
InteropNativeModule._CallCallback(-2038961969, actionTmpBufBufArgsSerializer.asBuffer(), actionTmpBufBufArgsSerializer.length());
actionTmpBufBufArgsSerializer.release();
return; }
        var value: AlertDialogButtonBaseOptions = AlertDialogButtonBaseOptions(enabledTmpResult, defaultFocusTmpResult, styleTmpResult, valueTmpResult, fontColorTmpResult, backgroundColorTmpResult, actionTmpResult)
        return value
    }
}
