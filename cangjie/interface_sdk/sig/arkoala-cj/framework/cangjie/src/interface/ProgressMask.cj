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
public open class ProgressMaskInternal {
    public static func fromPtr(ptr: UInt64): ProgressMask {
        return ProgressMask(false, false, false, ptr)
    }
}
public open class ProgressMask <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    ProgressMask(_0: Bool, _1: Bool, _2: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ProgressMask.getFinalizer())
    }
    ProgressMask(value: Float64, total: Float64, color: ResourceColor) {
        super(false, false, false, ProgressMask.construct(value, total, color))
    }
    static func construct(value: Float64, total: Float64, color: ResourceColor): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let colorForIdx0 = color.getValue0()
            thisSerializer.writeInt32(colorForIdx0.value);
        } else if (color.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let colorForIdx1 = color.getValue1()
            thisSerializer.writeNumber(colorForIdx1);
        } else if (color.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let colorForIdx2 = color.getValue2()
            thisSerializer.writeString(colorForIdx2);
        } else if (color.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let colorForIdx3 = color.getValue3()
            thisSerializer.writeCustomObject("Any", colorForIdx3);
        }
        let retval = ArkUIGeneratedNativeModule._ProgressMask_construct(value, total, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ProgressMask_getFinalizer()
    }
    public open func updateProgress(value: Float64): Unit {
        let value_casted: Float64 = value
        let thisPeer = this
        thisPeer.updateProgress_serialize(value_casted)
        return
    }
    public open func updateColor(value: ResourceColor): Unit {
        let value_casted: ResourceColor = value
        let thisPeer = this
        thisPeer.updateColor_serialize(value_casted)
        return
    }
    public open func enableBreathingAnimation(value: Bool): Unit {
        let value_casted: Bool = value
        let thisPeer = this
        thisPeer.enableBreathingAnimation_serialize(value_casted)
        return
    }
    private func updateProgress_serialize(value: Float64): Unit {
        ArkUIGeneratedNativeModule._ProgressMask_updateProgress(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value);
    }
    private func updateColor_serialize(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._ProgressMask_updateColor(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func enableBreathingAnimation_serialize(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ProgressMask_enableBreathingAnimation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (value) { Int32(1) } else { Int32(0) });
    }
}
public open class ProgressMask_serializer {
    public static func write(buffer: SerializerBase, value: ProgressMask): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ProgressMask {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ProgressMaskInternal.fromPtr(ptr)
    }
}
