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
public interface CloseSwipeActionOptionsInterfaces <:  {
    public mut open prop onFinish: Option<(() -> Unit)>
}
public open class CloseSwipeActionOptions <: CloseSwipeActionOptionsInterfaces {
    private var onFinish_container: Option<(() -> Unit)>
    public mut open prop onFinish: Option<(() -> Unit)>
    {
        get() {
            return onFinish_container
        }
        set(onFinish) {
            onFinish_container = onFinish
        }
    }
    CloseSwipeActionOptions(onFinish: Option<(() -> Unit)>) {
        this.onFinish_container = onFinish
    }
}
public open class CloseSwipeActionOptions_serializer {
    public static func write(buffer: SerializerBase, value: CloseSwipeActionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnFinish = value.onFinish
        if (valueHolderForOnFinish.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnFinishTmpValue = valueHolderForOnFinish
            valueSerializer.holdAndWriteCallback(valueHolderForOnFinishTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CloseSwipeActionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let onFinishTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onFinishTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onFinishTmpBuf_runtimeType))) {
            let onFinishTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onFinishTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onFinishTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onFinishTmpBuf = { => let onFinishTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onFinishTmpBuf_BufArgsSerializer.writeInt32(onFinishTmpBuf_BufResource.resourceId);
onFinishTmpBuf_BufArgsSerializer.writePointer(onFinishTmpBuf_BufCall);
onFinishTmpBuf_BufArgsSerializer.writePointer(onFinishTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onFinishTmpBuf_BufArgsSerializer.asBuffer(), onFinishTmpBuf_BufArgsSerializer.length());
onFinishTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onFinishTmpResult: Option<(() -> Unit)> = onFinishTmpBuf
        var value: CloseSwipeActionOptions = CloseSwipeActionOptions(onFinishTmpResult)
        return value
    }
}
