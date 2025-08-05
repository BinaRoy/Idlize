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
public interface RichEditorTextSpanOptionsInterfaces <:  {
    public mut open prop offset: Option<Float64>
    public mut open prop style: Option<RichEditorTextStyle>
    public mut open prop paragraphStyle: Option<RichEditorParagraphStyle>
    public mut open prop gesture: Option<RichEditorGesture>
    public mut open prop urlStyle: Option<RichEditorUrlStyle>
}
public open class RichEditorTextSpanOptions <: RichEditorTextSpanOptionsInterfaces {
    private var offset_container: Option<Float64>
    public mut open prop offset: Option<Float64>
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    private var style_container: Option<RichEditorTextStyle>
    public mut open prop style: Option<RichEditorTextStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    private var paragraphStyle_container: Option<RichEditorParagraphStyle>
    public mut open prop paragraphStyle: Option<RichEditorParagraphStyle>
    {
        get() {
            return paragraphStyle_container
        }
        set(paragraphStyle) {
            paragraphStyle_container = paragraphStyle
        }
    }
    private var gesture_container: Option<RichEditorGesture>
    public mut open prop gesture: Option<RichEditorGesture>
    {
        get() {
            return gesture_container
        }
        set(gesture) {
            gesture_container = gesture
        }
    }
    private var urlStyle_container: Option<RichEditorUrlStyle>
    public mut open prop urlStyle: Option<RichEditorUrlStyle>
    {
        get() {
            return urlStyle_container
        }
        set(urlStyle) {
            urlStyle_container = urlStyle
        }
    }
    RichEditorTextSpanOptions(offset: Option<Float64>, style: Option<RichEditorTextStyle>, paragraphStyle: Option<RichEditorParagraphStyle>, gesture: Option<RichEditorGesture>, urlStyle: Option<RichEditorUrlStyle>) {
        this.offset_container = offset
        this.style_container = style
        this.paragraphStyle_container = paragraphStyle
        this.gesture_container = gesture
        this.urlStyle_container = urlStyle
    }
}
public open class RichEditorTextSpanOptions_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorTextSpanOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            valueSerializer.writeNumber(valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            RichEditorTextStyle_serializer.write(valueSerializer, valueHolderForStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForParagraphStyle = value.paragraphStyle
        if (valueHolderForParagraphStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParagraphStyleTmpValue = valueHolderForParagraphStyle
            RichEditorParagraphStyle_serializer.write(valueSerializer, valueHolderForParagraphStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForGesture = value.gesture
        if (valueHolderForGesture.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGestureTmpValue = valueHolderForGesture
            RichEditorGesture_serializer.write(valueSerializer, valueHolderForGestureTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUrlStyle = value.urlStyle
        if (valueHolderForUrlStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUrlStyleTmpValue = valueHolderForUrlStyle
            RichEditorUrlStyle_serializer.write(valueSerializer, valueHolderForUrlStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorTextSpanOptions {
        var valueDeserializer: DeserializerBase = buffer
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetTmpResult: Option<Float64> = offsetTmpBuf
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<RichEditorTextStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = RichEditorTextStyle_serializer.read(valueDeserializer)
        }
        let styleTmpResult: Option<RichEditorTextStyle> = styleTmpBuf
        let paragraphStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paragraphStyleTmpBuf: Option<RichEditorParagraphStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paragraphStyleTmpBuf_runtimeType))) {
            paragraphStyleTmpBuf = RichEditorParagraphStyle_serializer.read(valueDeserializer)
        }
        let paragraphStyleTmpResult: Option<RichEditorParagraphStyle> = paragraphStyleTmpBuf
        let gestureTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var gestureTmpBuf: Option<RichEditorGesture> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(gestureTmpBuf_runtimeType))) {
            gestureTmpBuf = RichEditorGesture_serializer.read(valueDeserializer)
        }
        let gestureTmpResult: Option<RichEditorGesture> = gestureTmpBuf
        let urlStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var urlStyleTmpBuf: Option<RichEditorUrlStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(urlStyleTmpBuf_runtimeType))) {
            urlStyleTmpBuf = RichEditorUrlStyle_serializer.read(valueDeserializer)
        }
        let urlStyleTmpResult: Option<RichEditorUrlStyle> = urlStyleTmpBuf
        var value: RichEditorTextSpanOptions = RichEditorTextSpanOptions(offsetTmpResult, styleTmpResult, paragraphStyleTmpResult, gestureTmpResult, urlStyleTmpResult)
        return value
    }
}
