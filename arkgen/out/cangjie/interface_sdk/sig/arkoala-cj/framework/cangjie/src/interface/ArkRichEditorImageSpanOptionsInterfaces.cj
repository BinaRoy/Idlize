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
public interface RichEditorImageSpanOptionsInterfaces <:  {
    public mut open prop offset: Option<Float64>
    public mut open prop imageStyle: Option<RichEditorImageSpanStyle>
    public mut open prop gesture: Option<RichEditorGesture>
    public mut open prop onHover: Option<OnHoverCallback>
}
public open class RichEditorImageSpanOptions <: RichEditorImageSpanOptionsInterfaces {
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
    private var imageStyle_container: Option<RichEditorImageSpanStyle>
    public mut open prop imageStyle: Option<RichEditorImageSpanStyle>
    {
        get() {
            return imageStyle_container
        }
        set(imageStyle) {
            imageStyle_container = imageStyle
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
    private var onHover_container: Option<OnHoverCallback>
    public mut open prop onHover: Option<OnHoverCallback>
    {
        get() {
            return onHover_container
        }
        set(onHover) {
            onHover_container = onHover
        }
    }
    RichEditorImageSpanOptions(offset: Option<Float64>, imageStyle: Option<RichEditorImageSpanStyle>, gesture: Option<RichEditorGesture>, onHover: Option<OnHoverCallback>) {
        this.offset_container = offset
        this.imageStyle_container = imageStyle
        this.gesture_container = gesture
        this.onHover_container = onHover
    }
}
public open class RichEditorImageSpanOptions_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorImageSpanOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            valueSerializer.writeNumber(valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForImageStyle = value.imageStyle
        if (valueHolderForImageStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForImageStyleTmpValue = valueHolderForImageStyle
            RichEditorImageSpanStyle_serializer.write(valueSerializer, valueHolderForImageStyleTmpValue);
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
        let valueHolderForOnHover = value.onHover
        if (valueHolderForOnHover.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnHoverTmpValue = valueHolderForOnHover
            valueSerializer.holdAndWriteCallback(valueHolderForOnHoverTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorImageSpanOptions {
        var valueDeserializer: DeserializerBase = buffer
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetTmpResult: Option<Float64> = offsetTmpBuf
        let imageStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var imageStyleTmpBuf: Option<RichEditorImageSpanStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(imageStyleTmpBuf_runtimeType))) {
            imageStyleTmpBuf = RichEditorImageSpanStyle_serializer.read(valueDeserializer)
        }
        let imageStyleTmpResult: Option<RichEditorImageSpanStyle> = imageStyleTmpBuf
        let gestureTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var gestureTmpBuf: Option<RichEditorGesture> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(gestureTmpBuf_runtimeType))) {
            gestureTmpBuf = RichEditorGesture_serializer.read(valueDeserializer)
        }
        let gestureTmpResult: Option<RichEditorGesture> = gestureTmpBuf
        let onHoverTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onHoverTmpBuf: Option<OnHoverCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onHoverTmpBuf_runtimeType))) {
            let onHoverTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onHoverTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onHoverTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onHoverTmpBuf = {status: Bool, event: HoverEvent => let onHoverTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onHoverTmpBuf_BufArgsSerializer.writeInt32(onHoverTmpBuf_BufResource.resourceId);
onHoverTmpBuf_BufArgsSerializer.writePointer(onHoverTmpBuf_BufCall);
onHoverTmpBuf_BufArgsSerializer.writePointer(onHoverTmpBuf_BufCallSync);
onHoverTmpBuf_BufArgsSerializer.writeBoolean(status);
HoverEvent_serializer.write(onHoverTmpBuf_BufArgsSerializer, event);
InteropNativeModule._CallCallback(-2025767812, onHoverTmpBuf_BufArgsSerializer.asBuffer(), onHoverTmpBuf_BufArgsSerializer.length());
onHoverTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onHoverTmpResult: Option<OnHoverCallback> = onHoverTmpBuf
        var value: RichEditorImageSpanOptions = RichEditorImageSpanOptions(offsetTmpResult, imageStyleTmpResult, gestureTmpResult, onHoverTmpResult)
        return value
    }
}
