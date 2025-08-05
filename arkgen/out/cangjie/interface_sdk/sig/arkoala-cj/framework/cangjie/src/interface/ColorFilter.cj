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
public open class ColorFilterInternal {
    public static func fromPtr(ptr: UInt64): ColorFilter {
        return ColorFilter(false, ptr)
    }
}
public open class ColorFilter <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    ColorFilter(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ColorFilter.getFinalizer())
    }
    ColorFilter(value: ArrayList<Float64>) {
        super(false, ColorFilter.construct(value))
    }
    static func construct(value: ArrayList<Float64>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size));
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: Float64 = value[Int64(valueCounterI)]
            thisSerializer.writeNumber(valueTmpElement);
        }
        let retval = ArkUIGeneratedNativeModule._ColorFilter_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ColorFilter_getFinalizer()
    }
}
public open class ColorFilter_serializer {
    public static func write(buffer: SerializerBase, value: ColorFilter): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ColorFilter {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ColorFilterInternal.fromPtr(ptr)
    }
}
