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
public open class GestureGroupInternal {
    public static func fromPtr(ptr: UInt64): GestureGroup {
        return GestureGroup(ptr)
    }
}
public open class GestureGroup <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    GestureGroup(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, GestureGroup.getFinalizer())
    }
    GestureGroup() {
        super(GestureGroup.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._GestureGroup_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._GestureGroup_getFinalizer()
    }
    static private func dollar__instantiate_serialize(factory: (() -> GestureGroup), mode: GestureMode, gesture: ArrayList<GestureType>): GestureGroup {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(factory);
        thisSerializer.writeInt32(Int32(gesture.size));
        for (gestureCounterI in 0..gesture.size) {
            let gestureTmpElement: GestureType = gesture[Int64(gestureCounterI)]
            if (gestureTmpElement.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let gestureTmpElementForIdx0 = gestureTmpElement.getValue0()
                TapGestureInterface_serializer.write(thisSerializer, gestureTmpElementForIdx0);
            } else if (gestureTmpElement.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let gestureTmpElementForIdx1 = gestureTmpElement.getValue1()
                LongPressGestureInterface_serializer.write(thisSerializer, gestureTmpElementForIdx1);
            } else if (gestureTmpElement.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let gestureTmpElementForIdx2 = gestureTmpElement.getValue2()
                PanGestureInterface_serializer.write(thisSerializer, gestureTmpElementForIdx2);
            } else if (gestureTmpElement.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let gestureTmpElementForIdx3 = gestureTmpElement.getValue3()
                PinchGestureInterface_serializer.write(thisSerializer, gestureTmpElementForIdx3);
            } else if (gestureTmpElement.getSelector() == 4) {
                thisSerializer.writeInt8(Int8(4));
                let gestureTmpElementForIdx4 = gestureTmpElement.getValue4()
                SwipeGestureInterface_serializer.write(thisSerializer, gestureTmpElementForIdx4);
            } else if (gestureTmpElement.getSelector() == 5) {
                thisSerializer.writeInt8(Int8(5));
                let gestureTmpElementForIdx5 = gestureTmpElement.getValue5()
                RotationGestureInterface_serializer.write(thisSerializer, gestureTmpElementForIdx5);
            } else if (gestureTmpElement.getSelector() == 6) {
                thisSerializer.writeInt8(Int8(6));
                let gestureTmpElementForIdx6 = gestureTmpElement.getValue6()
                GestureGroupInterface_serializer.write(thisSerializer, gestureTmpElementForIdx6);
            }
        }
        let retval = ArkUIGeneratedNativeModule._GestureGroup_dollar__instantiate(thisSerializer.asBuffer(), thisSerializer.length(), mode.value)
        thisSerializer.release();
        let obj: GestureGroup = GestureGroupInternal.fromPtr(retval)
        return obj
    }
    static public func dollar__instantiate(factory: (() -> GestureGroup), mode: GestureMode, gesture: ArrayList<GestureType>): GestureGroup {
        let factory_casted: (() -> GestureGroup) = factory
        let mode_casted: GestureMode = mode
        let gesture_casted: ArrayList<GestureType> = gesture
        return GestureGroup.dollar__instantiate_serialize(factory_casted, mode_casted, gesture_casted)
    }
    public open func onCancel(event: (() -> Unit)): GestureGroup {
        let event_casted: (() -> Unit) = event
        return this.onCancel_serialize(event_casted)
    }
    private func onCancel_serialize(event: (() -> Unit)): GestureGroup {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._GestureGroup_onCancel(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: GestureGroup = GestureGroupInternal.fromPtr(retval)
        return obj
    }
}
public open class GestureGroup_serializer {
    public static func write(buffer: SerializerBase, value: GestureGroup): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): GestureGroup {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return GestureGroupInternal.fromPtr(ptr)
    }
}
