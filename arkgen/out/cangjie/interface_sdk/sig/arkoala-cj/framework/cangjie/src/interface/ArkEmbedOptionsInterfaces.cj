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
public interface EmbedOptionsInterfaces <:  {
    public mut open prop supportDefaultIntrinsicSize: Option<Bool>
    public mut open prop supportCssDisplayChange: Option<Bool>
}
public open class EmbedOptions <: EmbedOptionsInterfaces {
    private var supportDefaultIntrinsicSize_container: Option<Bool>
    public mut open prop supportDefaultIntrinsicSize: Option<Bool>
    {
        get() {
            return supportDefaultIntrinsicSize_container
        }
        set(supportDefaultIntrinsicSize) {
            supportDefaultIntrinsicSize_container = supportDefaultIntrinsicSize
        }
    }
    private var supportCssDisplayChange_container: Option<Bool>
    public mut open prop supportCssDisplayChange: Option<Bool>
    {
        get() {
            return supportCssDisplayChange_container
        }
        set(supportCssDisplayChange) {
            supportCssDisplayChange_container = supportCssDisplayChange
        }
    }
    EmbedOptions(supportDefaultIntrinsicSize: Option<Bool>, supportCssDisplayChange: Option<Bool>) {
        this.supportDefaultIntrinsicSize_container = supportDefaultIntrinsicSize
        this.supportCssDisplayChange_container = supportCssDisplayChange
    }
}
public open class EmbedOptions_serializer {
    public static func write(buffer: SerializerBase, value: EmbedOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSupportDefaultIntrinsicSize = value.supportDefaultIntrinsicSize
        if (valueHolderForSupportDefaultIntrinsicSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSupportDefaultIntrinsicSizeTmpValue = valueHolderForSupportDefaultIntrinsicSize
            valueSerializer.writeBoolean(valueHolderForSupportDefaultIntrinsicSizeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSupportCssDisplayChange = value.supportCssDisplayChange
        if (valueHolderForSupportCssDisplayChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSupportCssDisplayChangeTmpValue = valueHolderForSupportCssDisplayChange
            valueSerializer.writeBoolean(valueHolderForSupportCssDisplayChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): EmbedOptions {
        var valueDeserializer: DeserializerBase = buffer
        let supportDefaultIntrinsicSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var supportDefaultIntrinsicSizeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(supportDefaultIntrinsicSizeTmpBuf_runtimeType))) {
            supportDefaultIntrinsicSizeTmpBuf = valueDeserializer.readBoolean()
        }
        let supportDefaultIntrinsicSizeTmpResult: Option<Bool> = supportDefaultIntrinsicSizeTmpBuf
        let supportCssDisplayChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var supportCssDisplayChangeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(supportCssDisplayChangeTmpBuf_runtimeType))) {
            supportCssDisplayChangeTmpBuf = valueDeserializer.readBoolean()
        }
        let supportCssDisplayChangeTmpResult: Option<Bool> = supportCssDisplayChangeTmpBuf
        var value: EmbedOptions = EmbedOptions(supportDefaultIntrinsicSizeTmpResult, supportCssDisplayChangeTmpResult)
        return value
    }
}
