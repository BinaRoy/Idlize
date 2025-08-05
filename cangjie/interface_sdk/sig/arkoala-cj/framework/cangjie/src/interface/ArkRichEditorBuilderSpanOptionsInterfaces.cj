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
public interface RichEditorBuilderSpanOptionsInterfaces <:  {
    public mut open prop offset: Option<Float64>
    public mut open prop dragBackgroundColor: Option<ColorMetrics>
    public mut open prop isDragShadowNeeded: Option<Bool>
}
public open class RichEditorBuilderSpanOptions <: RichEditorBuilderSpanOptionsInterfaces {
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
    private var dragBackgroundColor_container: Option<ColorMetrics>
    public mut open prop dragBackgroundColor: Option<ColorMetrics>
    {
        get() {
            return dragBackgroundColor_container
        }
        set(dragBackgroundColor) {
            dragBackgroundColor_container = dragBackgroundColor
        }
    }
    private var isDragShadowNeeded_container: Option<Bool>
    public mut open prop isDragShadowNeeded: Option<Bool>
    {
        get() {
            return isDragShadowNeeded_container
        }
        set(isDragShadowNeeded) {
            isDragShadowNeeded_container = isDragShadowNeeded
        }
    }
    RichEditorBuilderSpanOptions(offset: Option<Float64>, dragBackgroundColor: Option<ColorMetrics>, isDragShadowNeeded: Option<Bool>) {
        this.offset_container = offset
        this.dragBackgroundColor_container = dragBackgroundColor
        this.isDragShadowNeeded_container = isDragShadowNeeded
    }
}
public open class RichEditorBuilderSpanOptions_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorBuilderSpanOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            valueSerializer.writeNumber(valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDragBackgroundColor = value.dragBackgroundColor
        if (valueHolderForDragBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDragBackgroundColorTmpValue = valueHolderForDragBackgroundColor
            valueSerializer.writeCustomObject("Any", valueHolderForDragBackgroundColorTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIsDragShadowNeeded = value.isDragShadowNeeded
        if (valueHolderForIsDragShadowNeeded.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsDragShadowNeededTmpValue = valueHolderForIsDragShadowNeeded
            valueSerializer.writeBoolean(valueHolderForIsDragShadowNeededTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorBuilderSpanOptions {
        var valueDeserializer: DeserializerBase = buffer
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetTmpResult: Option<Float64> = offsetTmpBuf
        let dragBackgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dragBackgroundColorTmpBuf: Option<ColorMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dragBackgroundColorTmpBuf_runtimeType))) {
            dragBackgroundColorTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let dragBackgroundColorTmpResult: Option<ColorMetrics> = dragBackgroundColorTmpBuf
        let isDragShadowNeededTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isDragShadowNeededTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isDragShadowNeededTmpBuf_runtimeType))) {
            isDragShadowNeededTmpBuf = valueDeserializer.readBoolean()
        }
        let isDragShadowNeededTmpResult: Option<Bool> = isDragShadowNeededTmpBuf
        var value: RichEditorBuilderSpanOptions = RichEditorBuilderSpanOptions(offsetTmpResult, dragBackgroundColorTmpResult, isDragShadowNeededTmpResult)
        return value
    }
}
