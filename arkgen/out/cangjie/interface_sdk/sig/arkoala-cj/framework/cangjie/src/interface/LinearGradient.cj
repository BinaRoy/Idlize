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
public open class LinearGradientInternal {
    public static func fromPtr(ptr: UInt64): LinearGradient {
        return LinearGradient(false, ptr)
    }
}
public open class LinearGradient <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    LinearGradient(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, LinearGradient.getFinalizer())
    }
    LinearGradient(colorStops: ArrayList<ColorStop>) {
        super(false, LinearGradient.construct(colorStops))
    }
    static func construct(colorStops: ArrayList<ColorStop>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(colorStops.size));
        for (colorStopsCounterI in 0..colorStops.size) {
            let colorStopsTmpElement: ColorStop = colorStops[Int64(colorStopsCounterI)]
            ColorStop_serializer.write(thisSerializer, colorStopsTmpElement);
        }
        let retval = ArkUIGeneratedNativeModule._LinearGradient_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._LinearGradient_getFinalizer()
    }
}
public open class LinearGradient_serializer {
    public static func write(buffer: SerializerBase, value: LinearGradient): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): LinearGradient {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return LinearGradientInternal.fromPtr(ptr)
    }
}
