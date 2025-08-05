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
public open class ConsoleMessageInternal {
    public static func fromPtr(ptr: UInt64): ConsoleMessage {
        return ConsoleMessage(false, false, false, false, ptr)
    }
}
public open class ConsoleMessage <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    ConsoleMessage(_0: Bool, _1: Bool, _2: Bool, _3: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ConsoleMessage.getFinalizer())
    }
    ConsoleMessage(message: String, sourceId: String, lineNumber: Float64, messageLevel: MessageLevel) {
        super(false, false, false, false, ConsoleMessage.construct0(message, sourceId, lineNumber, messageLevel))
    }
    ConsoleMessage() {
        super(false, false, false, false, ConsoleMessage.construct1())
    }
    static func construct0(message: String, sourceId: String, lineNumber: Float64, messageLevel: MessageLevel): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ConsoleMessage_construct0(message, sourceId, lineNumber, messageLevel.value)
        return retval
    }
    static func construct1(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ConsoleMessage_construct1()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ConsoleMessage_getFinalizer()
    }
    public open func getMessage(): String {
        return this.getMessage_serialize()
    }
    public open func getSourceId(): String {
        return this.getSourceId_serialize()
    }
    public open func getLineNumber(): Float64 {
        return this.getLineNumber_serialize()
    }
    public open func getMessageLevel(): MessageLevel {
        return this.getMessageLevel_serialize()
    }
    private func getMessage_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._ConsoleMessage_getMessage(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getSourceId_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._ConsoleMessage_getSourceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getLineNumber_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ConsoleMessage_getLineNumber(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getMessageLevel_serialize(): MessageLevel {
        let retval = ArkUIGeneratedNativeModule._ConsoleMessage_getMessageLevel(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return MessageLevel(retval)
    }
}
public open class ConsoleMessage_serializer {
    public static func write(buffer: SerializerBase, value: ConsoleMessage): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ConsoleMessage {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ConsoleMessageInternal.fromPtr(ptr)
    }
}
