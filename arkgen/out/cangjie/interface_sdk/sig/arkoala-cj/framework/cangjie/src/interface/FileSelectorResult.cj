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
public open class FileSelectorResultInternal {
    public static func fromPtr(ptr: UInt64): FileSelectorResult {
        return FileSelectorResult(ptr)
    }
}
public open class FileSelectorResult <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    FileSelectorResult(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, FileSelectorResult.getFinalizer())
    }
    FileSelectorResult() {
        super(FileSelectorResult.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._FileSelectorResult_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._FileSelectorResult_getFinalizer()
    }
    public open func handleFileList(fileList: ArrayList<String>): Unit {
        let fileList_casted: ArrayList<String> = fileList
        let thisPeer = this
        thisPeer.handleFileList_serialize(fileList_casted)
        return
    }
    private func handleFileList_serialize(fileList: ArrayList<String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(fileList.size));
        for (fileListCounterI in 0..fileList.size) {
            let fileListTmpElement: String = fileList[Int64(fileListCounterI)]
            thisSerializer.writeString(fileListTmpElement);
        }
        ArkUIGeneratedNativeModule._FileSelectorResult_handleFileList(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class FileSelectorResult_serializer {
    public static func write(buffer: SerializerBase, value: FileSelectorResult): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): FileSelectorResult {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return FileSelectorResultInternal.fromPtr(ptr)
    }
}
