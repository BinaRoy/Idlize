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
public open class CommonShapeInternal {
    public static func fromPtr(ptr: UInt64): CommonShape {
        return CommonShape(ptr)
    }
}
public open class CommonShape <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    CommonShape(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, CommonShape.getFinalizer())
    }
    CommonShape() {
        super(CommonShape.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._CommonShape_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._CommonShape_getFinalizer()
    }
    public open func offset(offset: Position): CommonShape {
        let offset_casted: Position = offset
        return this.offset_serialize(offset_casted)
    }
    public open func fill(color: ResourceColor): CommonShape {
        let color_casted: ResourceColor = color
        return this.fill_serialize(color_casted)
    }
    public open func position(position: Position): CommonShape {
        let position_casted: Position = position
        return this.position_serialize(position_casted)
    }
    private func offset_serialize(offset: Position): CommonShape {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Position_serializer.write(thisSerializer, offset);
        let retval = ArkUIGeneratedNativeModule._CommonShape_offset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: CommonShape = CommonShapeInternal.fromPtr(retval)
        return obj
    }
    private func fill_serialize(color: ResourceColor): CommonShape {
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
        let retval = ArkUIGeneratedNativeModule._CommonShape_fill(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: CommonShape = CommonShapeInternal.fromPtr(retval)
        return obj
    }
    private func position_serialize(position: Position): CommonShape {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Position_serializer.write(thisSerializer, position);
        let retval = ArkUIGeneratedNativeModule._CommonShape_position(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: CommonShape = CommonShapeInternal.fromPtr(retval)
        return obj
    }
}
public open class CommonShape_serializer {
    public static func write(buffer: SerializerBase, value: CommonShape): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): CommonShape {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return CommonShapeInternal.fromPtr(ptr)
    }
}
