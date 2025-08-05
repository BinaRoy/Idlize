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
public open class TextShadowStyleInternal {
    public static func fromPtr(ptr: UInt64): TextShadowStyle {
        return TextShadowStyle(false, ptr)
    }
}
public open class TextShadowStyle <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop textShadow: ArrayList<ShadowOptions>
    TextShadowStyle(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TextShadowStyle.getFinalizer())
        textShadow = this.getTextShadow()
    }
    TextShadowStyle(value: Union_ShadowOptions_Array_ShadowOptions) {
        super(false, TextShadowStyle.construct(value))
    }
    static func construct(value: Union_ShadowOptions_Array_ShadowOptions): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            ShadowOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(Int32(valueForIdx1.size));
            for (valueForIdx1CounterI in 0..valueForIdx1.size) {
                let valueForIdx1TmpElement: ShadowOptions = valueForIdx1[Int64(valueForIdx1CounterI)]
                ShadowOptions_serializer.write(thisSerializer, valueForIdx1TmpElement);
            }
        }
        let retval = ArkUIGeneratedNativeModule._TextShadowStyle_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextShadowStyle_getFinalizer()
    }
    private func getTextShadow(): ArrayList<ShadowOptions> {
        return this.getTextShadow_serialize()
    }
    private func getTextShadow_serialize(): ArrayList<ShadowOptions> {
        let retval = ArkUIGeneratedNativeModule._TextShadowStyle_getTextShadow(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<ShadowOptions> = ArrayList<ShadowOptions>(Int64(bufferLength))
        buffer = ArrayList<ShadowOptions>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = ShadowOptions_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<ShadowOptions> = buffer
        return returnResult
    }
}
public open class TextShadowStyle_serializer {
    public static func write(buffer: SerializerBase, value: TextShadowStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextShadowStyle {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextShadowStyleInternal.fromPtr(ptr)
    }
}
