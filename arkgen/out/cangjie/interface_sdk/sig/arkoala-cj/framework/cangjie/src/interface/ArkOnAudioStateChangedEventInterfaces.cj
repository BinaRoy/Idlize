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
public interface OnAudioStateChangedEventInterfaces <:  {
    public mut open prop playing: Bool
}
public open class OnAudioStateChangedEvent <: OnAudioStateChangedEventInterfaces {
    private var playing_container: Bool
    public mut open prop playing: Bool
    {
        get() {
            return playing_container
        }
        set(playing) {
            playing_container = playing
        }
    }
    OnAudioStateChangedEvent(playing: Bool) {
        this.playing_container = playing
    }
}
public open class OnAudioStateChangedEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnAudioStateChangedEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPlaying = value.playing
        valueSerializer.writeBoolean(valueHolderForPlaying);
    }
    public static func read(buffer: DeserializerBase): OnAudioStateChangedEvent {
        var valueDeserializer: DeserializerBase = buffer
        let playingTmpResult: Bool = valueDeserializer.readBoolean()
        var value: OnAudioStateChangedEvent = OnAudioStateChangedEvent(playingTmpResult)
        return value
    }
}
