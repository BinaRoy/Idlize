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
public interface NativeEmbedMouseInfoInterfaces <:  {
    public mut open prop embedId: Option<String>
    public mut open prop mouseEvent: Option<MouseEvent>
    public mut open prop result: Option<EventResult>
}
public open class NativeEmbedMouseInfo <: NativeEmbedMouseInfoInterfaces {
    private var embedId_container: Option<String>
    public mut open prop embedId: Option<String>
    {
        get() {
            return embedId_container
        }
        set(embedId) {
            embedId_container = embedId
        }
    }
    private var mouseEvent_container: Option<MouseEvent>
    public mut open prop mouseEvent: Option<MouseEvent>
    {
        get() {
            return mouseEvent_container
        }
        set(mouseEvent) {
            mouseEvent_container = mouseEvent
        }
    }
    private var result_container: Option<EventResult>
    public mut open prop result: Option<EventResult>
    {
        get() {
            return result_container
        }
        set(result) {
            result_container = result
        }
    }
    NativeEmbedMouseInfo(embedId: Option<String>, mouseEvent: Option<MouseEvent>, result: Option<EventResult>) {
        this.embedId_container = embedId
        this.mouseEvent_container = mouseEvent
        this.result_container = result
    }
}
public open class NativeEmbedMouseInfo_serializer {
    public static func write(buffer: SerializerBase, value: NativeEmbedMouseInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEmbedId = value.embedId
        if (valueHolderForEmbedId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEmbedIdTmpValue = valueHolderForEmbedId
            valueSerializer.writeString(valueHolderForEmbedIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMouseEvent = value.mouseEvent
        if (valueHolderForMouseEvent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMouseEventTmpValue = valueHolderForMouseEvent
            MouseEvent_serializer.write(valueSerializer, valueHolderForMouseEventTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForResult = value.result
        if (valueHolderForResult.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForResultTmpValue = valueHolderForResult
            EventResult_serializer.write(valueSerializer, valueHolderForResultTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NativeEmbedMouseInfo {
        var valueDeserializer: DeserializerBase = buffer
        let embedIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var embedIdTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(embedIdTmpBuf_runtimeType))) {
            embedIdTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let embedIdTmpResult: Option<String> = embedIdTmpBuf
        let mouseEventTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var mouseEventTmpBuf: Option<MouseEvent> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(mouseEventTmpBuf_runtimeType))) {
            mouseEventTmpBuf = match (MouseEvent_serializer.read(valueDeserializer) as MouseEvent) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let mouseEventTmpResult: Option<MouseEvent> = mouseEventTmpBuf
        let resultTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var resultTmpBuf: Option<EventResult> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(resultTmpBuf_runtimeType))) {
            resultTmpBuf = match (EventResult_serializer.read(valueDeserializer) as EventResult) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let resultTmpResult: Option<EventResult> = resultTmpBuf
        var value: NativeEmbedMouseInfo = NativeEmbedMouseInfo(embedIdTmpResult, mouseEventTmpResult, resultTmpResult)
        return value
    }
}
