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
public open class FileSelectorParamInternal {
    public static func fromPtr(ptr: UInt64): FileSelectorParam {
        return FileSelectorParam(ptr)
    }
}
public open class FileSelectorParam <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    FileSelectorParam(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, FileSelectorParam.getFinalizer())
    }
    FileSelectorParam() {
        super(FileSelectorParam.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._FileSelectorParam_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._FileSelectorParam_getFinalizer()
    }
    public open func getTitle(): String {
        return this.getTitle_serialize()
    }
    public open func getMode(): FileSelectorMode {
        return this.getMode_serialize()
    }
    public open func getAcceptType(): ArrayList<String> {
        return this.getAcceptType_serialize()
    }
    public open func isCapture(): Bool {
        return this.isCapture_serialize()
    }
    public open func getMimeTypes(): ArrayList<String> {
        return this.getMimeTypes_serialize()
    }
    private func getTitle_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._FileSelectorParam_getTitle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getMode_serialize(): FileSelectorMode {
        let retval = ArkUIGeneratedNativeModule._FileSelectorParam_getMode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return FileSelectorMode(retval)
    }
    private func getAcceptType_serialize(): ArrayList<String> {
        let retval = ArkUIGeneratedNativeModule._FileSelectorParam_getAcceptType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
    private func isCapture_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._FileSelectorParam_isCapture(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getMimeTypes_serialize(): ArrayList<String> {
        let retval = ArkUIGeneratedNativeModule._FileSelectorParam_getMimeTypes(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
}
public open class FileSelectorParam_serializer {
    public static func write(buffer: SerializerBase, value: FileSelectorParam): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): FileSelectorParam {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return FileSelectorParamInternal.fromPtr(ptr)
    }
}
