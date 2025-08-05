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
public open class BaseShapeInternal {
    public static func fromPtr(ptr: UInt64): BaseShape {
        return BaseShape(ptr)
    }
}
public open class BaseShape <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    BaseShape(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, BaseShape.getFinalizer())
    }
    BaseShape() {
        super(BaseShape.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._BaseShape_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._BaseShape_getFinalizer()
    }
    public open func width(width: Length): BaseShape {
        let width_casted: Length = width
        return this.width_serialize(width_casted)
    }
    public open func height(height: Length): BaseShape {
        let height_casted: Length = height
        return this.height_serialize(height_casted)
    }
    public open func size(size: SizeOptions): BaseShape {
        let size_casted: SizeOptions = size
        return this.size_serialize(size_casted)
    }
    private func width_serialize(width: Length): BaseShape {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (width.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let widthForIdx0 = width.getValue0()
            thisSerializer.writeString(widthForIdx0);
        } else if (width.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let widthForIdx1 = width.getValue1()
            thisSerializer.writeNumber(widthForIdx1);
        } else if (width.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let widthForIdx2 = width.getValue2()
            thisSerializer.writeCustomObject("Any", widthForIdx2);
        }
        let retval = ArkUIGeneratedNativeModule._BaseShape_width(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: BaseShape = BaseShapeInternal.fromPtr(retval)
        return obj
    }
    private func height_serialize(height: Length): BaseShape {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (height.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let heightForIdx0 = height.getValue0()
            thisSerializer.writeString(heightForIdx0);
        } else if (height.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let heightForIdx1 = height.getValue1()
            thisSerializer.writeNumber(heightForIdx1);
        } else if (height.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let heightForIdx2 = height.getValue2()
            thisSerializer.writeCustomObject("Any", heightForIdx2);
        }
        let retval = ArkUIGeneratedNativeModule._BaseShape_height(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: BaseShape = BaseShapeInternal.fromPtr(retval)
        return obj
    }
    private func size_serialize(size: SizeOptions): BaseShape {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SizeOptions_serializer.write(thisSerializer, size);
        let retval = ArkUIGeneratedNativeModule._BaseShape_size(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: BaseShape = BaseShapeInternal.fromPtr(retval)
        return obj
    }
}
public open class BaseShape_serializer {
    public static func write(buffer: SerializerBase, value: BaseShape): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): BaseShape {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return BaseShapeInternal.fromPtr(ptr)
    }
}
