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
public open class TapGestureInternal {
    public static func fromPtr(ptr: UInt64): TapGesture {
        return TapGesture(ptr)
    }
}
public open class TapGesture <: Gesture & MaterializedBase {
    TapGesture(peerPtr: UInt64) {
        super(peerPtr)
    }
    TapGesture() {
        super(TapGesture.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TapGesture_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TapGesture_getFinalizer()
    }
    static private func dollar__instantiate_serialize(factory: (() -> TapGesture), value: Option<TapGestureParameters>): TapGesture {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(factory);
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            TapGestureParameters_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TapGesture_dollar__instantiate(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: TapGesture = TapGestureInternal.fromPtr(retval)
        return obj
    }
    static public func dollar__instantiate(factory: (() -> TapGesture), value: Option<TapGestureParameters>): TapGesture {
        let factory_casted: (() -> TapGesture) = factory
        let value_casted: Option<TapGestureParameters> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TapGesture.dollar__instantiate_serialize(factory_casted, value_casted)
    }
    public open func onAction(event: ((event: GestureEvent) -> Unit)): Any {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onAction_serialize(event_casted)
    }
    private func onAction_serialize(event: ((event: GestureEvent) -> Unit)): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._TapGesture_onAction(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        throw Exception("Object deserialization is not implemented.")
    }
}
public open class TapGesture_serializer {
    public static func write(buffer: SerializerBase, value: TapGesture): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TapGesture {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TapGestureInternal.fromPtr(ptr)
    }
}
