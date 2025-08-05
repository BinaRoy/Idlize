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
public interface BackgroundImageOptionsInterfaces <:  {
    public mut open prop syncLoad: Option<Bool>
    public mut open prop repeat: Option<ImageRepeat>
}
public open class BackgroundImageOptions <: BackgroundImageOptionsInterfaces {
    private var syncLoad_container: Option<Bool>
    public mut open prop syncLoad: Option<Bool>
    {
        get() {
            return syncLoad_container
        }
        set(syncLoad) {
            syncLoad_container = syncLoad
        }
    }
    private var repeat_container: Option<ImageRepeat>
    public mut open prop repeat: Option<ImageRepeat>
    {
        get() {
            return repeat_container
        }
        set(repeat) {
            repeat_container = repeat
        }
    }
    BackgroundImageOptions(syncLoad: Option<Bool>, repeat: Option<ImageRepeat>) {
        this.syncLoad_container = syncLoad
        this.repeat_container = repeat
    }
}
public open class BackgroundImageOptions_serializer {
    public static func write(buffer: SerializerBase, value: BackgroundImageOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSyncLoad = value.syncLoad
        if (valueHolderForSyncLoad.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSyncLoadTmpValue = valueHolderForSyncLoad
            valueSerializer.writeBoolean(valueHolderForSyncLoadTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRepeat = value.repeat
        if (valueHolderForRepeat.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRepeatTmpValue = valueHolderForRepeat
            valueSerializer.writeInt32(valueHolderForRepeatTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BackgroundImageOptions {
        var valueDeserializer: DeserializerBase = buffer
        let syncLoadTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var syncLoadTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(syncLoadTmpBuf_runtimeType))) {
            syncLoadTmpBuf = valueDeserializer.readBoolean()
        }
        let syncLoadTmpResult: Option<Bool> = syncLoadTmpBuf
        let repeatTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var repeatTmpBuf: Option<ImageRepeat> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(repeatTmpBuf_runtimeType))) {
            repeatTmpBuf = ImageRepeat(valueDeserializer.readInt32())
        }
        let repeatTmpResult: Option<ImageRepeat> = repeatTmpBuf
        var value: BackgroundImageOptions = BackgroundImageOptions(syncLoadTmpResult, repeatTmpResult)
        return value
    }
}
