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
public interface WebMediaOptionsInterfaces <:  {
    public mut open prop resumeInterval: Option<Int32>
    public mut open prop audioExclusive: Option<Bool>
    public mut open prop audioSessionType: Option<AudioSessionType>
}
public open class WebMediaOptions <: WebMediaOptionsInterfaces {
    private var resumeInterval_container: Option<Int32>
    public mut open prop resumeInterval: Option<Int32>
    {
        get() {
            return resumeInterval_container
        }
        set(resumeInterval) {
            resumeInterval_container = resumeInterval
        }
    }
    private var audioExclusive_container: Option<Bool>
    public mut open prop audioExclusive: Option<Bool>
    {
        get() {
            return audioExclusive_container
        }
        set(audioExclusive) {
            audioExclusive_container = audioExclusive
        }
    }
    private var audioSessionType_container: Option<AudioSessionType>
    public mut open prop audioSessionType: Option<AudioSessionType>
    {
        get() {
            return audioSessionType_container
        }
        set(audioSessionType) {
            audioSessionType_container = audioSessionType
        }
    }
    WebMediaOptions(resumeInterval: Option<Int32>, audioExclusive: Option<Bool>, audioSessionType: Option<AudioSessionType>) {
        this.resumeInterval_container = resumeInterval
        this.audioExclusive_container = audioExclusive
        this.audioSessionType_container = audioSessionType
    }
}
public open class WebMediaOptions_serializer {
    public static func write(buffer: SerializerBase, value: WebMediaOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForResumeInterval = value.resumeInterval
        if (valueHolderForResumeInterval.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForResumeIntervalTmpValue = valueHolderForResumeInterval
            valueSerializer.writeInt32(valueHolderForResumeIntervalTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAudioExclusive = value.audioExclusive
        if (valueHolderForAudioExclusive.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAudioExclusiveTmpValue = valueHolderForAudioExclusive
            valueSerializer.writeBoolean(valueHolderForAudioExclusiveTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAudioSessionType = value.audioSessionType
        if (valueHolderForAudioSessionType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAudioSessionTypeTmpValue = valueHolderForAudioSessionType
            valueSerializer.writeInt32(valueHolderForAudioSessionTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): WebMediaOptions {
        var valueDeserializer: DeserializerBase = buffer
        let resumeIntervalTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var resumeIntervalTmpBuf: Option<Int32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(resumeIntervalTmpBuf_runtimeType))) {
            resumeIntervalTmpBuf = valueDeserializer.readInt32()
        }
        let resumeIntervalTmpResult: Option<Int32> = resumeIntervalTmpBuf
        let audioExclusiveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var audioExclusiveTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(audioExclusiveTmpBuf_runtimeType))) {
            audioExclusiveTmpBuf = valueDeserializer.readBoolean()
        }
        let audioExclusiveTmpResult: Option<Bool> = audioExclusiveTmpBuf
        let audioSessionTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var audioSessionTypeTmpBuf: Option<AudioSessionType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(audioSessionTypeTmpBuf_runtimeType))) {
            audioSessionTypeTmpBuf = AudioSessionType(valueDeserializer.readInt32())
        }
        let audioSessionTypeTmpResult: Option<AudioSessionType> = audioSessionTypeTmpBuf
        var value: WebMediaOptions = WebMediaOptions(resumeIntervalTmpResult, audioExclusiveTmpResult, audioSessionTypeTmpResult)
        return value
    }
}
