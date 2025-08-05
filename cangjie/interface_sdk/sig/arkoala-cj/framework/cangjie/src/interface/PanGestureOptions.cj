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
public open class PanGestureOptionsInternal {
    public static func fromPtr(ptr: UInt64): PanGestureOptions {
        return PanGestureOptions(false, ptr)
    }
}
public open class PanGestureOptions <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    PanGestureOptions(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, PanGestureOptions.getFinalizer())
    }
    init () {
        PanGestureOptions(Option.None)
    }
    PanGestureOptions(value: Option<Literal_Number_distance_fingers_PanDirection_direction>) {
        super(false, PanGestureOptions.construct0(value))
    }
    init () {
        PanGestureOptions(Option.None)
    }
    PanGestureOptions(value: Option<PanGestureHandlerOptions>) {
        super(false, PanGestureOptions.construct1(value))
    }
    static func construct0(value: Option<Literal_Number_distance_fingers_PanDirection_direction>): UInt64 {
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
        let retval = ArkUIGeneratedNativeModule._PanGestureOptions_construct0(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct1(value: Option<PanGestureHandlerOptions>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            PanGestureHandlerOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._PanGestureOptions_construct1(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PanGestureOptions_getFinalizer()
    }
    public open func setDirection(value: PanDirection): Unit {
        let value_casted: PanDirection = value
        let thisPeer = this
        thisPeer.setDirection_serialize(value_casted)
        return
    }
    public open func setDistance(value: Float64): Unit {
        let value_casted: Float64 = value
        let thisPeer = this
        thisPeer.setDistance_serialize(value_casted)
        return
    }
    public open func setFingers(value: Float64): Unit {
        let value_casted: Float64 = value
        let thisPeer = this
        thisPeer.setFingers_serialize(value_casted)
        return
    }
    public open func getDirection(): PanDirection {
        return this.getDirection_serialize()
    }
    public open func getDistance(): Float64 {
        return this.getDistance_serialize()
    }
    private func setDirection_serialize(value: PanDirection): Unit {
        ArkUIGeneratedNativeModule._PanGestureOptions_setDirection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value.value);
    }
    private func setDistance_serialize(value: Float64): Unit {
        ArkUIGeneratedNativeModule._PanGestureOptions_setDistance(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value);
    }
    private func setFingers_serialize(value: Float64): Unit {
        ArkUIGeneratedNativeModule._PanGestureOptions_setFingers(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value);
    }
    private func getDirection_serialize(): PanDirection {
        let retval = ArkUIGeneratedNativeModule._PanGestureOptions_getDirection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return PanDirection(retval)
    }
    private func getDistance_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PanGestureOptions_getDistance(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class PanGestureOptions_serializer {
    public static func write(buffer: SerializerBase, value: PanGestureOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PanGestureOptions {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PanGestureOptionsInternal.fromPtr(ptr)
    }
}
