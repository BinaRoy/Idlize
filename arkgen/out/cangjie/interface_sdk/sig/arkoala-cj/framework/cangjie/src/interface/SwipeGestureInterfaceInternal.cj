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
public interface SwipeGestureInterface {
    public open func onAction(event: ((event: GestureEvent) -> Unit)): SwipeGestureInterface
}
public open class SwipeGestureInterfaceInternal <: MaterializedBase & GestureInterfaceInterface<SwipeGestureInterface> & SwipeGestureInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    SwipeGestureInterfaceInternal(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, SwipeGestureInterfaceInternal.getFinalizer())
    }
    init () {
        SwipeGestureInterfaceInternal(Option.None)
    }
    SwipeGestureInterfaceInternal(value: Option<Literal_Number_fingers_speed_SwipeDirection_direction>) {
        super(false, SwipeGestureInterfaceInternal.construct(value))
    }
    static func construct(value: Option<Literal_Number_fingers_speed_SwipeDirection_direction>): UInt64 {
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
            let valueTmpValueDirection = valueTmpValue.direction
            if (valueTmpValueDirection.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueTmpValueDirectionTmpValue = valueTmpValueDirection
                thisSerializer.writeInt32(valueTmpValueDirectionTmpValue.value);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
            let valueTmpValueSpeed = valueTmpValue.speed
            if (valueTmpValueSpeed.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueTmpValueSpeedTmpValue = valueTmpValueSpeed
                thisSerializer.writeNumber(valueTmpValueSpeedTmpValue);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._SwipeGestureInterface_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._SwipeGestureInterface_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): SwipeGestureInterfaceInternal {
        return SwipeGestureInterfaceInternal(false, ptr)
    }
    public open func onAction(event: ((event: GestureEvent) -> Unit)): SwipeGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onAction_serialize(event_casted)
    }
    private func onAction_serialize(event: ((event: GestureEvent) -> Unit)): SwipeGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._SwipeGestureInterface_onAction(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: SwipeGestureInterface = SwipeGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
}
public open class SwipeGestureInterface_serializer {
    public static func write(buffer: SerializerBase, value: SwipeGestureInterface): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): SwipeGestureInterface {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SwipeGestureInterfaceInternal.fromPtr(ptr)
    }
}
