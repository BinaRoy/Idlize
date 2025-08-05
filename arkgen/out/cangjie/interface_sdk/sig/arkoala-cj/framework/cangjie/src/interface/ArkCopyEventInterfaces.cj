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
public interface CopyEventInterfaces <:  {
    public mut open prop preventDefault: Option<(() -> Unit)>
    public mut open prop preventDefault: Option<VoidCallback>
}
public open class CopyEvent <: CopyEventInterfaces {
    private var preventDefault_container: Option<(() -> Unit)>
    public mut open prop preventDefault: Option<(() -> Unit)>
    {
        get() {
            return preventDefault_container
        }
        set(preventDefault) {
            preventDefault_container = preventDefault
        }
    }
    private var preventDefault_container: Option<VoidCallback>
    public mut open prop preventDefault: Option<VoidCallback>
    {
        get() {
            return preventDefault_container
        }
        set(preventDefault) {
            preventDefault_container = preventDefault
        }
    }
    CopyEvent(preventDefault: Option<(() -> Unit)>, preventDefault: Option<VoidCallback>) {
        this.preventDefault_container = preventDefault
        this.preventDefault_container = preventDefault
    }
}
public open class CopyEvent_serializer {
    public static func write(buffer: SerializerBase, value: CopyEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPreventDefault = value.preventDefault
        if (valueHolderForPreventDefault.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreventDefaultTmpValue = valueHolderForPreventDefault
            valueSerializer.holdAndWriteCallback(valueHolderForPreventDefaultTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreventDefault = value.preventDefault
        if (valueHolderForPreventDefault.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreventDefaultTmpValue = valueHolderForPreventDefault
            valueSerializer.holdAndWriteCallback(valueHolderForPreventDefaultTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CopyEvent {
        var valueDeserializer: DeserializerBase = buffer
        let preventDefaultTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var preventDefaultTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(preventDefaultTmpBuf_runtimeType))) {
            let preventDefaultTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let preventDefaultTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let preventDefaultTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            preventDefaultTmpBuf = { => let preventDefaultTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
preventDefaultTmpBuf_BufArgsSerializer.writeInt32(preventDefaultTmpBuf_BufResource.resourceId);
preventDefaultTmpBuf_BufArgsSerializer.writePointer(preventDefaultTmpBuf_BufCall);
preventDefaultTmpBuf_BufArgsSerializer.writePointer(preventDefaultTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, preventDefaultTmpBuf_BufArgsSerializer.asBuffer(), preventDefaultTmpBuf_BufArgsSerializer.length());
preventDefaultTmpBuf_BufArgsSerializer.release();
return; }
        }
        let preventDefaultTmpResult: Option<(() -> Unit)> = preventDefaultTmpBuf
        let preventDefaultTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var preventDefaultTmpBuf: Option<VoidCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(preventDefaultTmpBuf_runtimeType))) {
            let preventDefaultTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let preventDefaultTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let preventDefaultTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            preventDefaultTmpBuf = { => let preventDefaultTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
preventDefaultTmpBuf_BufArgsSerializer.writeInt32(preventDefaultTmpBuf_BufResource.resourceId);
preventDefaultTmpBuf_BufArgsSerializer.writePointer(preventDefaultTmpBuf_BufCall);
preventDefaultTmpBuf_BufArgsSerializer.writePointer(preventDefaultTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-2038961969, preventDefaultTmpBuf_BufArgsSerializer.asBuffer(), preventDefaultTmpBuf_BufArgsSerializer.length());
preventDefaultTmpBuf_BufArgsSerializer.release();
return; }
        }
        let preventDefaultTmpResult: Option<VoidCallback> = preventDefaultTmpBuf
        var value: CopyEvent = CopyEvent(preventDefaultTmpResult, preventDefaultTmpResult)
        return value
    }
}
