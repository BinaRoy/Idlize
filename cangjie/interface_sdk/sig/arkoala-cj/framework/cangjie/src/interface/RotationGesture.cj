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
public open class RotationGestureInternal {
    public static func fromPtr(ptr: UInt64): RotationGesture {
        return RotationGesture(ptr)
    }
}
public open class RotationGesture <: Gesture & MaterializedBase {
    RotationGesture(peerPtr: UInt64) {
        super(peerPtr)
    }
    RotationGesture() {
        super(RotationGesture.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._RotationGesture_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RotationGesture_getFinalizer()
    }
    static private func dollar__instantiate_serialize(factory: (() -> RotationGesture), value: Option<RotationGestureHandlerOptions>): RotationGesture {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(factory);
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            RotationGestureHandlerOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RotationGesture_dollar__instantiate(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: RotationGesture = RotationGestureInternal.fromPtr(retval)
        return obj
    }
    static public func dollar__instantiate(factory: (() -> RotationGesture), value: Option<RotationGestureHandlerOptions>): RotationGesture {
        let factory_casted: (() -> RotationGesture) = factory
        let value_casted: Option<RotationGestureHandlerOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return RotationGesture.dollar__instantiate_serialize(factory_casted, value_casted)
    }
    public open func onActionStart(event: ((event: GestureEvent) -> Unit)): Any {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionStart_serialize(event_casted)
    }
    public open func onActionUpdate(event: ((event: GestureEvent) -> Unit)): Any {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionUpdate_serialize(event_casted)
    }
    public open func onActionEnd(event: ((event: GestureEvent) -> Unit)): Any {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionEnd_serialize(event_casted)
    }
    public open func onActionCancel(event: ((event: GestureEvent) -> Unit)): Any {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionCancel_serialize(event_casted)
    }
    private func onActionStart_serialize(event: ((event: GestureEvent) -> Unit)): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGesture_onActionStart(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        throw Exception("Object deserialization is not implemented.")
    }
    private func onActionUpdate_serialize(event: ((event: GestureEvent) -> Unit)): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGesture_onActionUpdate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        throw Exception("Object deserialization is not implemented.")
    }
    private func onActionEnd_serialize(event: ((event: GestureEvent) -> Unit)): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGesture_onActionEnd(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        throw Exception("Object deserialization is not implemented.")
    }
    private func onActionCancel_serialize(event: ((event: GestureEvent) -> Unit)): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGesture_onActionCancel(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        throw Exception("Object deserialization is not implemented.")
    }
}
public open class RotationGesture_serializer {
    public static func write(buffer: SerializerBase, value: RotationGesture): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RotationGesture {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RotationGestureInternal.fromPtr(ptr)
    }
}
