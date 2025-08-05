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
public interface OnScrollFrameBeginHandlerResultInterfaces <:  {
    public mut open prop offsetRemain: Float64
}
public open class OnScrollFrameBeginHandlerResult <: OnScrollFrameBeginHandlerResultInterfaces {
    private var offsetRemain_container: Float64
    public mut open prop offsetRemain: Float64
    {
        get() {
            return offsetRemain_container
        }
        set(offsetRemain) {
            offsetRemain_container = offsetRemain
        }
    }
    OnScrollFrameBeginHandlerResult(offsetRemain: Float64) {
        this.offsetRemain_container = offsetRemain
    }
}
public open class OnScrollFrameBeginHandlerResult_serializer {
    public static func write(buffer: SerializerBase, value: OnScrollFrameBeginHandlerResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOffsetRemain = value.offsetRemain
        valueSerializer.writeNumber(valueHolderForOffsetRemain);
    }
    public static func read(buffer: DeserializerBase): OnScrollFrameBeginHandlerResult {
        var valueDeserializer: DeserializerBase = buffer
        let offsetRemainTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnScrollFrameBeginHandlerResult = OnScrollFrameBeginHandlerResult(offsetRemainTmpResult)
        return value
    }
}
