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
public open class ColorShaderStyleInternal {
    public static func fromPtr(ptr: UInt64): ColorShaderStyle {
        return ColorShaderStyle(false, ptr)
    }
}
public open class ColorShaderStyle <: MaterializedBase & ShaderStyleInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop color: ResourceColor
    {
        get() {
            return this.getColor()
        }
        set(color) {
            this.setColor(color)
        }
    }
    ColorShaderStyle(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ColorShaderStyle.getFinalizer())
    }
    ColorShaderStyle(color: ResourceColor) {
        super(false, ColorShaderStyle.construct(color))
    }
    static func construct(color: ResourceColor): UInt64 {
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
        let retval = ArkUIGeneratedNativeModule._ColorShaderStyle_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ColorShaderStyle_getFinalizer()
    }
    private func getColor(): ResourceColor {
        return this.getColor_serialize()
    }
    private func setColor(color: ResourceColor): Unit {
        let color_casted: ResourceColor = color
        let thisPeer = this
        thisPeer.setColor_serialize(color_casted)
        return
    }
    private func getColor_serialize(): ResourceColor {
        let retval = ArkUIGeneratedNativeModule._ColorShaderStyle_getColor(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setColor_serialize(color: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._ColorShaderStyle_setColor(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class ColorShaderStyle_serializer {
    public static func write(buffer: SerializerBase, value: ColorShaderStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ColorShaderStyle {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ColorShaderStyleInternal.fromPtr(ptr)
    }
}
