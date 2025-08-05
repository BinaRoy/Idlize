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
public open class PermissionRequestInternal {
    public static func fromPtr(ptr: UInt64): PermissionRequest {
        return PermissionRequest(ptr)
    }
}
public open class PermissionRequest <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    PermissionRequest(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, PermissionRequest.getFinalizer())
    }
    PermissionRequest() {
        super(PermissionRequest.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._PermissionRequest_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PermissionRequest_getFinalizer()
    }
    public open func deny(): Unit {
        let thisPeer = this
        thisPeer.deny_serialize()
        return
    }
    public open func getOrigin(): String {
        return this.getOrigin_serialize()
    }
    public open func getAccessibleResource(): ArrayList<String> {
        return this.getAccessibleResource_serialize()
    }
    public open func grant(resources: ArrayList<String>): Unit {
        let resources_casted: ArrayList<String> = resources
        let thisPeer = this
        thisPeer.grant_serialize(resources_casted)
        return
    }
    private func deny_serialize(): Unit {
        ArkUIGeneratedNativeModule._PermissionRequest_deny(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getOrigin_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._PermissionRequest_getOrigin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getAccessibleResource_serialize(): ArrayList<String> {
        let retval = ArkUIGeneratedNativeModule._PermissionRequest_getAccessibleResource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<String> = ArrayList<String>(Int64(bufferLength))
        buffer = ArrayList<String>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<String> = buffer
        return returnResult
    }
    private func grant_serialize(resources: ArrayList<String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(resources.size));
        for (resourcesCounterI in 0..resources.size) {
            let resourcesTmpElement: String = resources[Int64(resourcesCounterI)]
            thisSerializer.writeString(resourcesTmpElement);
        }
        ArkUIGeneratedNativeModule._PermissionRequest_grant(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class PermissionRequest_serializer {
    public static func write(buffer: SerializerBase, value: PermissionRequest): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PermissionRequest {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PermissionRequestInternal.fromPtr(ptr)
    }
}
