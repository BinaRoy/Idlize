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
public interface ButtonStyleInterfaces <:  {
    public mut open prop left: Option<Float64>
    public mut open prop top: Option<Float64>
    public mut open prop width: Option<Float64>
    public mut open prop height: Option<Float64>
    public mut open prop icons: Option<ButtonIconOptions>
}
public open class ButtonStyle <: ButtonStyleInterfaces {
    private var left_container: Option<Float64>
    public mut open prop left: Option<Float64>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    private var top_container: Option<Float64>
    public mut open prop top: Option<Float64>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var width_container: Option<Float64>
    public mut open prop width: Option<Float64>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Float64>
    public mut open prop height: Option<Float64>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var icons_container: Option<ButtonIconOptions>
    public mut open prop icons: Option<ButtonIconOptions>
    {
        get() {
            return icons_container
        }
        set(icons) {
            icons_container = icons
        }
    }
    ButtonStyle(left: Option<Float64>, top: Option<Float64>, width: Option<Float64>, height: Option<Float64>, icons: Option<ButtonIconOptions>) {
        this.left_container = left
        this.top_container = top
        this.width_container = width
        this.height_container = height
        this.icons_container = icons
    }
}
public open class ButtonStyle_serializer {
    public static func write(buffer: SerializerBase, value: ButtonStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForLeft = value.left
        if (valueHolderForLeft.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLeftTmpValue = valueHolderForLeft
            valueSerializer.writeNumber(valueHolderForLeftTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            valueSerializer.writeNumber(valueHolderForTopTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            valueSerializer.writeNumber(valueHolderForWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            valueSerializer.writeNumber(valueHolderForHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIcons = value.icons
        if (valueHolderForIcons.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIconsTmpValue = valueHolderForIcons
            ButtonIconOptions_serializer.write(valueSerializer, valueHolderForIconsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ButtonStyle {
        var valueDeserializer: DeserializerBase = buffer
        let leftTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var leftTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(leftTmpBuf_runtimeType))) {
            leftTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let leftTmpResult: Option<Float64> = leftTmpBuf
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            topTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topTmpResult: Option<Float64> = topTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            widthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Float64> = widthTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            heightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Float64> = heightTmpBuf
        let iconsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconsTmpBuf: Option<ButtonIconOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconsTmpBuf_runtimeType))) {
            iconsTmpBuf = ButtonIconOptions_serializer.read(valueDeserializer)
        }
        let iconsTmpResult: Option<ButtonIconOptions> = iconsTmpBuf
        var value: ButtonStyle = ButtonStyle(leftTmpResult, topTmpResult, widthTmpResult, heightTmpResult, iconsTmpResult)
        return value
    }
}
