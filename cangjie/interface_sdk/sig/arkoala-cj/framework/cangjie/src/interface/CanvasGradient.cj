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
public open class CanvasGradientInternal {
    public static func fromPtr(ptr: UInt64): CanvasGradient {
        return CanvasGradient(ptr)
    }
}
public open class CanvasGradient <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    CanvasGradient(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, CanvasGradient.getFinalizer())
    }
    CanvasGradient() {
        super(CanvasGradient.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._CanvasGradient_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._CanvasGradient_getFinalizer()
    }
    public open func addColorStop(offset: Float64, color: Union_String_ColorMetrics): Unit {
        let offset_casted: Float64 = offset
        let color_casted: Union_String_ColorMetrics = color
        let thisPeer = this
        thisPeer.addColorStop_serialize(offset_casted, color_casted)
        return
    }
    private func addColorStop_serialize(offset: Float64, color: Union_String_ColorMetrics): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let colorForIdx0 = color.getValue0()
            thisSerializer.writeString(colorForIdx0);
        } else if (color.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let colorForIdx1 = color.getValue1()
            thisSerializer.writeCustomObject("Any", colorForIdx1);
        }
        ArkUIGeneratedNativeModule._CanvasGradient_addColorStop(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, offset, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class CanvasGradient_serializer {
    public static func write(buffer: SerializerBase, value: CanvasGradient): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): CanvasGradient {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return CanvasGradientInternal.fromPtr(ptr)
    }
}
