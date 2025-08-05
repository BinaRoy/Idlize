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
public interface ReuseOptionsInterfaces <:  {
    public mut open prop reuseId: Option<ReuseIdCallback>
}
public open class ReuseOptions <: ReuseOptionsInterfaces {
    private var reuseId_container: Option<ReuseIdCallback>
    public mut open prop reuseId: Option<ReuseIdCallback>
    {
        get() {
            return reuseId_container
        }
        set(reuseId) {
            reuseId_container = reuseId
        }
    }
    ReuseOptions(reuseId: Option<ReuseIdCallback>) {
        this.reuseId_container = reuseId
    }
}
public open class ReuseOptions_serializer {
    public static func write(buffer: SerializerBase, value: ReuseOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForReuseId = value.reuseId
        if (valueHolderForReuseId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForReuseIdTmpValue = valueHolderForReuseId
            valueSerializer.holdAndWriteCallback(valueHolderForReuseIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ReuseOptions {
        var valueDeserializer: DeserializerBase = buffer
        let reuseIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var reuseIdTmpBuf: Option<ReuseIdCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(reuseIdTmpBuf_runtimeType))) {
            let reuseIdTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let reuseIdTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let reuseIdTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            reuseIdTmpBuf = { => let reuseIdTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
reuseIdTmpBuf_BufArgsSerializer.writeInt32(reuseIdTmpBuf_BufResource.resourceId);
reuseIdTmpBuf_BufArgsSerializer.writePointer(reuseIdTmpBuf_BufCall);
reuseIdTmpBuf_BufArgsSerializer.writePointer(reuseIdTmpBuf_BufCallSync);
let reuseIdTmpBuf_BufContinuationValue = StringHolder(None<String>);
let reuseIdTmpBuf_BufContinuationCallback: ((breakpoints: String) -> Unit) = {value: String => reuseIdTmpBuf_BufContinuationValue.value = value; }
reuseIdTmpBuf_BufArgsSerializer.holdAndWriteCallback(reuseIdTmpBuf_BufContinuationCallback);
InteropNativeModule._CallCallback(1110529154, reuseIdTmpBuf_BufArgsSerializer.asBuffer(), reuseIdTmpBuf_BufArgsSerializer.length());
reuseIdTmpBuf_BufArgsSerializer.release();
return match (reuseIdTmpBuf_BufContinuationValue.value as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} }
        }
        let reuseIdTmpResult: Option<ReuseIdCallback> = reuseIdTmpBuf
        var value: ReuseOptions = ReuseOptions(reuseIdTmpResult)
        return value
    }
}
