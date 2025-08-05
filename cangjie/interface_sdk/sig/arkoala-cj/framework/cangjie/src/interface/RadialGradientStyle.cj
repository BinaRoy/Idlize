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
public open class RadialGradientStyleInternal {
    public static func fromPtr(ptr: UInt64): RadialGradientStyle {
        return RadialGradientStyle(false, ptr)
    }
}
public open class RadialGradientStyle <: MaterializedBase & ShaderStyleInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop options: RadialGradientOptions
    {
        get() {
            return this.getOptions()
        }
        set(options) {
            this.setOptions(options)
        }
    }
    RadialGradientStyle(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, RadialGradientStyle.getFinalizer())
    }
    RadialGradientStyle(options: RadialGradientOptions) {
        super(false, RadialGradientStyle.construct(options))
    }
    static func construct(options: RadialGradientOptions): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RadialGradientOptions_serializer.write(thisSerializer, options);
        let retval = ArkUIGeneratedNativeModule._RadialGradientStyle_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RadialGradientStyle_getFinalizer()
    }
    private func getOptions(): RadialGradientOptions {
        return this.getOptions_serialize()
    }
    private func setOptions(options: RadialGradientOptions): Unit {
        let options_casted: RadialGradientOptions = options
        let thisPeer = this
        thisPeer.setOptions_serialize(options_casted)
        return
    }
    private func getOptions_serialize(): RadialGradientOptions {
        let retval = ArkUIGeneratedNativeModule._RadialGradientStyle_getOptions(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: RadialGradientOptions = RadialGradientOptions_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func setOptions_serialize(options: RadialGradientOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RadialGradientOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._RadialGradientStyle_setOptions(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class RadialGradientStyle_serializer {
    public static func write(buffer: SerializerBase, value: RadialGradientStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RadialGradientStyle {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RadialGradientStyleInternal.fromPtr(ptr)
    }
}
