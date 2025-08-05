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
public interface SnapshotOptionsInterfaces <:  {
    public mut open prop scale: Option<Float64>
    public mut open prop waitUntilRenderFinished: Option<Bool>
}
public open class SnapshotOptions <: SnapshotOptionsInterfaces {
    private var scale_container: Option<Float64>
    public mut open prop scale: Option<Float64>
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var waitUntilRenderFinished_container: Option<Bool>
    public mut open prop waitUntilRenderFinished: Option<Bool>
    {
        get() {
            return waitUntilRenderFinished_container
        }
        set(waitUntilRenderFinished) {
            waitUntilRenderFinished_container = waitUntilRenderFinished
        }
    }
    SnapshotOptions(scale: Option<Float64>, waitUntilRenderFinished: Option<Bool>) {
        this.scale_container = scale
        this.waitUntilRenderFinished_container = waitUntilRenderFinished
    }
}
public open class SnapshotOptions_serializer {
    public static func write(buffer: SerializerBase, value: SnapshotOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForScale = value.scale
        if (valueHolderForScale.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScaleTmpValue = valueHolderForScale
            valueSerializer.writeNumber(valueHolderForScaleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWaitUntilRenderFinished = value.waitUntilRenderFinished
        if (valueHolderForWaitUntilRenderFinished.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWaitUntilRenderFinishedTmpValue = valueHolderForWaitUntilRenderFinished
            valueSerializer.writeBoolean(valueHolderForWaitUntilRenderFinishedTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SnapshotOptions {
        var valueDeserializer: DeserializerBase = buffer
        let scaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleTmpBuf_runtimeType))) {
            scaleTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scaleTmpResult: Option<Float64> = scaleTmpBuf
        let waitUntilRenderFinishedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var waitUntilRenderFinishedTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(waitUntilRenderFinishedTmpBuf_runtimeType))) {
            waitUntilRenderFinishedTmpBuf = valueDeserializer.readBoolean()
        }
        let waitUntilRenderFinishedTmpResult: Option<Bool> = waitUntilRenderFinishedTmpBuf
        var value: SnapshotOptions = SnapshotOptions(scaleTmpResult, waitUntilRenderFinishedTmpResult)
        return value
    }
}
