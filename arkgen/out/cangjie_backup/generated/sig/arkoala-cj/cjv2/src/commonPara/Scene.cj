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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class SceneInternal {
    public  static func fromPtr(ptr: UInt64): Scene {
        return Scene(ptr)
    }
}
public open class Scene <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public  func getPeer(): Option<Finalizable> {
        return this.peer
    }
    init(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, Scene.getFinalizer())
    }
    init() {
        this(Scene.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Scene_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._Scene_getFinalizer()
    }
    private  static func load_serialize(uri: Option<ResourceStr>): Scene {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(uri) <- uri) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let uriTmpValue = uri
            if (uriTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let uriTmpValueForIdx0 = uriTmpValue.getValue0()
                thisSerializer.writeString(uriTmpValueForIdx0)
            } else if (uriTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let uriTmpValueForIdx1 = uriTmpValue.getValue1()
                Resource_serializer.write(thisSerializer, uriTmpValueForIdx1)
            } else {
                throw Exception("One of the branches for uriTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._Scene_load(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        let obj: Scene = SceneInternal.fromPtr(retval)
        return obj
    }
    public  static func load(uri: Option<ResourceStr>): Scene {
        let uri_casted: Option<ResourceStr> = if (let Some(uri) <- uri) {uri} else { throw Exception("Type has to be not None")}
        return Scene.load_serialize(uri_casted)
    }
    public  func destroy(): Unit {
        let thisPeer = this
        thisPeer.destroy_serialize()
        return
    }
    private  func destroy_serialize(): Unit {
        ArkUIGeneratedNativeModule._Scene_destroy(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
    }
}
public class Scene_serializer {
    public  static func write(buffer: SerializerBase, value: Scene): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value))
    }
    public  static func read(buffer: DeserializerBase): Scene {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SceneInternal.fromPtr(ptr)
    }
}
