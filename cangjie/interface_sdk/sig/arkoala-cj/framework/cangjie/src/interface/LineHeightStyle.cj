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
public open class LineHeightStyleInternal {
    public static func fromPtr(ptr: UInt64): LineHeightStyle {
        return LineHeightStyle(false, ptr)
    }
}
public open class LineHeightStyle <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public open prop lineHeight: Float64
    LineHeightStyle(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, LineHeightStyle.getFinalizer())
        lineHeight = this.getLineHeight()
    }
    LineHeightStyle(lineHeight: LengthMetrics) {
        super(false, LineHeightStyle.construct(lineHeight))
    }
    static func construct(lineHeight: LengthMetrics): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", lineHeight);
        let retval = ArkUIGeneratedNativeModule._LineHeightStyle_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._LineHeightStyle_getFinalizer()
    }
    private func getLineHeight(): Float64 {
        return this.getLineHeight_serialize()
    }
    private func getLineHeight_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._LineHeightStyle_getLineHeight(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class LineHeightStyle_serializer {
    public static func write(buffer: SerializerBase, value: LineHeightStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): LineHeightStyle {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return LineHeightStyleInternal.fromPtr(ptr)
    }
}
