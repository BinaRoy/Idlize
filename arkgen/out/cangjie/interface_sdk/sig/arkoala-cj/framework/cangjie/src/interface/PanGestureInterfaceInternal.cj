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
public interface PanGestureInterface {
    public open func onActionStart(event: ((event: GestureEvent) -> Unit)): PanGestureInterface
    public open func onActionUpdate(event: ((event: GestureEvent) -> Unit)): PanGestureInterface
    public open func onActionEnd(event: ((event: GestureEvent) -> Unit)): PanGestureInterface
    public open func onActionCancel(event: (() -> Unit)): PanGestureInterface
    public open func onActionCancel(event: ((event: GestureEvent) -> Unit)): PanGestureInterface
}
public open class PanGestureInterfaceInternal <: MaterializedBase & GestureInterfaceInterface<PanGestureInterface> & PanGestureInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    PanGestureInterfaceInternal(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, PanGestureInterfaceInternal.getFinalizer())
    }
    init () {
        PanGestureInterfaceInternal(Option.None)
    }
    PanGestureInterfaceInternal(value: Option<Type_PanGestureInterface_callable0_value>) {
        super(false, PanGestureInterfaceInternal.construct(value))
    }
    static func construct(value: Option<Type_PanGestureInterface_callable0_value>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                let valueTmpValueForIdx0Fingers = valueTmpValueForIdx0.fingers
                if (valueTmpValueForIdx0Fingers.isSome()) {
                    thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueTmpValueForIdx0FingersTmpValue = valueTmpValueForIdx0Fingers
                    thisSerializer.writeNumber(valueTmpValueForIdx0FingersTmpValue);
                } else {
                    thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueTmpValueForIdx0Direction = valueTmpValueForIdx0.direction
                if (valueTmpValueForIdx0Direction.isSome()) {
                    thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueTmpValueForIdx0DirectionTmpValue = valueTmpValueForIdx0Direction
                    thisSerializer.writeInt32(valueTmpValueForIdx0DirectionTmpValue.value);
                } else {
                    thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueTmpValueForIdx0Distance = valueTmpValueForIdx0.distance
                if (valueTmpValueForIdx0Distance.isSome()) {
                    thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueTmpValueForIdx0DistanceTmpValue = valueTmpValueForIdx0Distance
                    thisSerializer.writeNumber(valueTmpValueForIdx0DistanceTmpValue);
                } else {
                    thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                PanGestureOptions_serializer.write(thisSerializer, valueTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._PanGestureInterface_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PanGestureInterface_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): PanGestureInterfaceInternal {
        return PanGestureInterfaceInternal(false, ptr)
    }
    public open func onActionStart(event: ((event: GestureEvent) -> Unit)): PanGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionStart_serialize(event_casted)
    }
    public open func onActionUpdate(event: ((event: GestureEvent) -> Unit)): PanGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionUpdate_serialize(event_casted)
    }
    public open func onActionEnd(event: ((event: GestureEvent) -> Unit)): PanGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionEnd_serialize(event_casted)
    }
    public open func onActionCancel(event: (() -> Unit)): PanGestureInterface {
        let event_casted: (() -> Unit) = event
        return this.onActionCancel0_serialize(event_casted)
    }
    public open func onActionCancel(event: ((event: GestureEvent) -> Unit)): PanGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onActionCancel1_serialize(event_casted)
    }
    private func onActionStart_serialize(event: ((event: GestureEvent) -> Unit)): PanGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PanGestureInterface_onActionStart(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PanGestureInterface = PanGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionUpdate_serialize(event: ((event: GestureEvent) -> Unit)): PanGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PanGestureInterface_onActionUpdate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PanGestureInterface = PanGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionEnd_serialize(event: ((event: GestureEvent) -> Unit)): PanGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PanGestureInterface_onActionEnd(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PanGestureInterface = PanGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionCancel0_serialize(event: (() -> Unit)): PanGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PanGestureInterface_onActionCancel0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PanGestureInterface = PanGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
    private func onActionCancel1_serialize(event: ((event: GestureEvent) -> Unit)): PanGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._PanGestureInterface_onActionCancel1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: PanGestureInterface = PanGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
}
public open class PanGestureInterface_serializer {
    public static func write(buffer: SerializerBase, value: PanGestureInterface): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PanGestureInterface {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PanGestureInterfaceInternal.fromPtr(ptr)
    }
}
