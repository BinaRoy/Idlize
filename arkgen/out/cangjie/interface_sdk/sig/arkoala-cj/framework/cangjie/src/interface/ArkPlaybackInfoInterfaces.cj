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
public interface PlaybackInfoInterfaces <:  {
    public mut open prop time: Float64
}
public open class PlaybackInfo <: PlaybackInfoInterfaces {
    private var time_container: Float64
    public mut open prop time: Float64
    {
        get() {
            return time_container
        }
        set(time) {
            time_container = time
        }
    }
    PlaybackInfo(time: Float64) {
        this.time_container = time
    }
}
public open class PlaybackInfo_serializer {
    public static func write(buffer: SerializerBase, value: PlaybackInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTime = value.time
        valueSerializer.writeNumber(valueHolderForTime);
    }
    public static func read(buffer: DeserializerBase): PlaybackInfo {
        var valueDeserializer: DeserializerBase = buffer
        let timeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: PlaybackInfo = PlaybackInfo(timeTmpResult)
        return value
    }
}
