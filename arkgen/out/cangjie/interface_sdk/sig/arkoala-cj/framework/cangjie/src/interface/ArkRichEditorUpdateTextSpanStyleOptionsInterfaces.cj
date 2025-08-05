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
public interface RichEditorUpdateTextSpanStyleOptionsInterfaces <: RichEditorSpanStyleOptionsInterfaces {
    public mut open prop textStyle: RichEditorTextStyle
    public mut open prop urlStyle: Option<RichEditorUrlStyle>
}
public open class RichEditorUpdateTextSpanStyleOptions <: RichEditorUpdateTextSpanStyleOptionsInterfaces {
    private var textStyle_container: RichEditorTextStyle
    public mut open prop textStyle: RichEditorTextStyle
    {
        get() {
            return textStyle_container
        }
        set(textStyle) {
            textStyle_container = textStyle
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
    private var start_container: Option<Float64>
    public mut open prop start: Option<Float64>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Option<Float64>
    public mut open prop end: Option<Float64>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    RichEditorUpdateTextSpanStyleOptions(textStyle: RichEditorTextStyle, urlStyle: Option<RichEditorUrlStyle>, start: Option<Float64>, end: Option<Float64>) {
        this.textStyle_container = textStyle
        this.urlStyle_container = urlStyle
        this.start_container = start
        this.end_container = end
    }
}
public open class RichEditorUpdateTextSpanStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorUpdateTextSpanStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            valueSerializer.writeNumber(valueHolderForStartTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            valueSerializer.writeNumber(valueHolderForEndTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTextStyle = value.textStyle
        RichEditorTextStyle_serializer.write(valueSerializer, valueHolderForTextStyle);
        let valueHolderForUrlStyle = value.urlStyle
        if (valueHolderForUrlStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUrlStyleTmpValue = valueHolderForUrlStyle
            RichEditorUrlStyle_serializer.write(valueSerializer, valueHolderForUrlStyleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorUpdateTextSpanStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startTmpResult: Option<Float64> = startTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            endTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endTmpResult: Option<Float64> = endTmpBuf
        let textStyleTmpResult: RichEditorTextStyle = RichEditorTextStyle_serializer.read(valueDeserializer)
        let urlStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var urlStyleTmpBuf: Option<RichEditorUrlStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(urlStyleTmpBuf_runtimeType))) {
            urlStyleTmpBuf = RichEditorUrlStyle_serializer.read(valueDeserializer)
        }
        let urlStyleTmpResult: Option<RichEditorUrlStyle> = urlStyleTmpBuf
        var value: RichEditorUpdateTextSpanStyleOptions = RichEditorUpdateTextSpanStyleOptions(textStyleTmpResult, urlStyleTmpResult, startTmpResult, endTmpResult)
        return value
    }
}
