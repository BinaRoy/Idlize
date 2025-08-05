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
public interface PinchGestureInterface {
    public open func onActionStart(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface
    public open func onActionUpdate(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface
    public open func onActionEnd(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface
    public open func onActionCancel(event: (() -> Unit)): PinchGestureInterface
    public open func onActionCancel(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface
}
public open class PinchGestureInterfaceInternal <: MaterializedBase & GestureInterfaceInterface<PinchGestureInterface> & PinchGestureInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    PinchGestureInterfaceInternal(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, PinchGestureInterfaceInternal.getFinalizer())
    }
    init () {
        PinchGestureInterfaceInternal(Option.None)
    }
    PinchGestureInterfaceInternal(value: Option<Literal_Number_distance_fingers>) {
        super(false, PinchGestureInterfaceInternal.construct(value))
    }
    static func construct(value: Option<Literal_Number_distance_fingers>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            let valueTmpValueFingers = valueTmpValue.fingers
            if (valueTmpValueFingers.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueTmpValueFingersTmpValue = valueTmpValueFingers
                thisSerializer.writeNumber(valueTmpValueFingersTmpValue);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
            let valueTmpValueDistance = valueTmpValue.distance
            if (valueTmpValueDistance.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueTmpValueDistanceTmpValue = valueTmpValueDistance
                thisSerializer.writeNumber(valueTmpValueDistanceTmpValue);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._PinchGestureInterface_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PinchGestureInterface_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): PinchGestureInterfaceInternal {
        return PinchGestureInterfaceInternal(false, ptr)
    }
    public open func onActionStart(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionStart_serialize(event_casted)
    }
    public open func onActionUpdate(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionUpdate_serialize(event_casted)
    }
    public open func onActionEnd(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionEnd_serialize(event_casted)
    }
    public open func onActionCancel(event: (() -> Unit)): PinchGestureInterface {
        let event_casted: (() -> Unit) = event
        return this.onActionCancel0_serialize(event_casted)
    }
    public open func onActionCancel(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionCancel1_serialize(event_casted)
    }
    private func onActionStart_serialize(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PinchGestureInterface_onActionStart(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PinchGestureInterface = PinchGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionUpdate_serialize(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PinchGestureInterface_onActionUpdate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PinchGestureInterface = PinchGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionEnd_serialize(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PinchGestureInterface_onActionEnd(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PinchGestureInterface = PinchGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionCancel0_serialize(event: (() -> Unit)): PinchGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PinchGestureInterface_onActionCancel0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PinchGestureInterface = PinchGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionCancel1_serialize(event: ((event: GestureEvent) -> Unit)): PinchGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PinchGestureInterface_onActionCancel1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PinchGestureInterface = PinchGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
}
public open class PinchGestureInterface_serializer {
    public static func write(buffer: SerializerBase, value: PinchGestureInterface): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PinchGestureInterface {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PinchGestureInterfaceInternal.fromPtr(ptr)
    }
}
