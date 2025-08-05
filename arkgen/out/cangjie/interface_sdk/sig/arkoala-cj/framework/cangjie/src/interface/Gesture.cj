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
public open class GestureInternal {
    public static func fromPtr(ptr: UInt64): Gesture {
        return Gesture(ptr)
    }
}
public open class Gesture <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    Gesture(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, Gesture.getFinalizer())
    }
    Gesture() {
        super(Gesture.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Gesture_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._Gesture_getFinalizer()
    }
    public open func tag(tag: String): Any {
        let tag_casted: String = tag
        return this.tag_serialize(tag_casted)
    }
    public open func allowedTypes(types: ArrayList<SourceTool>): Any {
        let types_casted: ArrayList<SourceTool> = types
        return this.allowedTypes_serialize(types_casted)
    }
    private func tag_serialize(tag: String): Any {
        let retval = ArkUIGeneratedNativeModule._Gesture_tag(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, tag)
        throw Exception("Object deserialization is not implemented.")
    }
    private func allowedTypes_serialize(types: ArrayList<SourceTool>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(types.size));
        for (typesCounterI in 0..types.size) {
            let typesTmpElement: SourceTool = types[Int64(typesCounterI)]
            thisSerializer.writeInt32(typesTmpElement.value);
        }
        let retval = ArkUIGeneratedNativeModule._Gesture_allowedTypes(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        throw Exception("Object deserialization is not implemented.")
    }
}
public open class Gesture_serializer {
    public static func write(buffer: SerializerBase, value: Gesture): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): Gesture {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return GestureInternal.fromPtr(ptr)
    }
}
