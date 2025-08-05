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
public interface RotationGestureInterface {
    public open func onActionStart(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface
    public open func onActionUpdate(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface
    public open func onActionEnd(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface
    public open func onActionCancel(event: (() -> Unit)): RotationGestureInterface
    public open func onActionCancel(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface
}
public open class RotationGestureInterfaceInternal <: MaterializedBase & GestureInterfaceInterface<RotationGestureInterface> & RotationGestureInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    RotationGestureInterfaceInternal(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, RotationGestureInterfaceInternal.getFinalizer())
    }
    init () {
        RotationGestureInterfaceInternal(Option.None)
    }
    RotationGestureInterfaceInternal(value: Option<Literal_Number_angle_fingers>) {
        super(false, RotationGestureInterfaceInternal.construct(value))
    }
    static func construct(value: Option<Literal_Number_angle_fingers>): UInt64 {
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
            let valueTmpValueAngle = valueTmpValue.angle
            if (valueTmpValueAngle.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueTmpValueAngleTmpValue = valueTmpValueAngle
                thisSerializer.writeNumber(valueTmpValueAngleTmpValue);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RotationGestureInterface_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RotationGestureInterface_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): RotationGestureInterfaceInternal {
        return RotationGestureInterfaceInternal(false, ptr)
    }
    public open func onActionStart(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionStart_serialize(event_casted)
    }
    public open func onActionUpdate(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionUpdate_serialize(event_casted)
    }
    public open func onActionEnd(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionEnd_serialize(event_casted)
    }
    public open func onActionCancel(event: (() -> Unit)): RotationGestureInterface {
        let event_casted: (() -> Unit) = event
        return this.onActionCancel0_serialize(event_casted)
    }
    public open func onActionCancel(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionCancel1_serialize(event_casted)
    }
    private func onActionStart_serialize(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGestureInterface_onActionStart(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: RotationGestureInterface = RotationGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionUpdate_serialize(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGestureInterface_onActionUpdate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: RotationGestureInterface = RotationGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionEnd_serialize(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGestureInterface_onActionEnd(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: RotationGestureInterface = RotationGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionCancel0_serialize(event: (() -> Unit)): RotationGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGestureInterface_onActionCancel0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: RotationGestureInterface = RotationGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionCancel1_serialize(event: ((event: GestureEvent) -> Unit)): RotationGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._RotationGestureInterface_onActionCancel1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: RotationGestureInterface = RotationGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
}
public open class RotationGestureInterface_serializer {
    public static func write(buffer: SerializerBase, value: RotationGestureInterface): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RotationGestureInterface {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RotationGestureInterfaceInternal.fromPtr(ptr)
    }
}
