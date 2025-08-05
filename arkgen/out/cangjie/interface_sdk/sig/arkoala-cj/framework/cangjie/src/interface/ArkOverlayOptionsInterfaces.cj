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
public interface OverlayOptionsInterfaces <:  {
    public mut open prop align: Option<Alignment>
    public mut open prop offset: Option<OverlayOffset>
}
public open class OverlayOptions <: OverlayOptionsInterfaces {
    private var align_container: Option<Alignment>
    public mut open prop align: Option<Alignment>
    {
        get() {
            return align_container
        }
        set(align) {
            align_container = align
        }
    }
    private var offset_container: Option<OverlayOffset>
    public mut open prop offset: Option<OverlayOffset>
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    OverlayOptions(align: Option<Alignment>, offset: Option<OverlayOffset>) {
        this.align_container = align
        this.offset_container = offset
    }
}
public open class OverlayOptions_serializer {
    public static func write(buffer: SerializerBase, value: OverlayOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAlign = value.align
        if (valueHolderForAlign.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAlignTmpValue = valueHolderForAlign
            valueSerializer.writeInt32(valueHolderForAlignTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            OverlayOffset_serializer.write(valueSerializer, valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): OverlayOptions {
        var valueDeserializer: DeserializerBase = buffer
        let alignTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var alignTmpBuf: Option<Alignment> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(alignTmpBuf_runtimeType))) {
            alignTmpBuf = Alignment(valueDeserializer.readInt32())
        }
        let alignTmpResult: Option<Alignment> = alignTmpBuf
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<OverlayOffset> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = OverlayOffset_serializer.read(valueDeserializer)
        }
        let offsetTmpResult: Option<OverlayOffset> = offsetTmpBuf
        var value: OverlayOptions = OverlayOptions(alignTmpResult, offsetTmpResult)
        return value
    }
}
