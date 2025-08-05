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
public interface FullScreenEnterEventInterfaces <:  {
    public mut open prop handler: FullScreenExitHandler
    public mut open prop videoWidth: Option<Float64>
    public mut open prop videoHeight: Option<Float64>
}
public open class FullScreenEnterEvent <: FullScreenEnterEventInterfaces {
    private var handler_container: FullScreenExitHandler
    public mut open prop handler: FullScreenExitHandler
    {
        get() {
            return handler_container
        }
        set(handler) {
            handler_container = handler
        }
    }
    private var videoWidth_container: Option<Float64>
    public mut open prop videoWidth: Option<Float64>
    {
        get() {
            return videoWidth_container
        }
        set(videoWidth) {
            videoWidth_container = videoWidth
        }
    }
    private var videoHeight_container: Option<Float64>
    public mut open prop videoHeight: Option<Float64>
    {
        get() {
            return videoHeight_container
        }
        set(videoHeight) {
            videoHeight_container = videoHeight
        }
    }
    FullScreenEnterEvent(handler: FullScreenExitHandler, videoWidth: Option<Float64>, videoHeight: Option<Float64>) {
        this.handler_container = handler
        this.videoWidth_container = videoWidth
        this.videoHeight_container = videoHeight
    }
}
public open class FullScreenEnterEvent_serializer {
    public static func write(buffer: SerializerBase, value: FullScreenEnterEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHandler = value.handler
        FullScreenExitHandler_serializer.write(valueSerializer, valueHolderForHandler);
        let valueHolderForVideoWidth = value.videoWidth
        if (valueHolderForVideoWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForVideoWidthTmpValue = valueHolderForVideoWidth
            valueSerializer.writeNumber(valueHolderForVideoWidthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForVideoHeight = value.videoHeight
        if (valueHolderForVideoHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForVideoHeightTmpValue = valueHolderForVideoHeight
            valueSerializer.writeNumber(valueHolderForVideoHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FullScreenEnterEvent {
        var valueDeserializer: DeserializerBase = buffer
        let handlerTmpResult: FullScreenExitHandler = match (FullScreenExitHandler_serializer.read(valueDeserializer) as FullScreenExitHandler) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let videoWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var videoWidthTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(videoWidthTmpBuf_runtimeType))) {
            videoWidthTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let videoWidthTmpResult: Option<Float64> = videoWidthTmpBuf
        let videoHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var videoHeightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(videoHeightTmpBuf_runtimeType))) {
            videoHeightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let videoHeightTmpResult: Option<Float64> = videoHeightTmpBuf
        var value: FullScreenEnterEvent = FullScreenEnterEvent(handlerTmpResult, videoWidthTmpResult, videoHeightTmpResult)
        return value
    }
}
