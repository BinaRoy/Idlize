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
public interface UIExtensionProxy {
    public open func send(data: HashMap<String, Any>): Unit
    public open func sendSync(data: HashMap<String, Any>): HashMap<String, Any>
    public open func onAsyncReceiverRegister(callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit
    public open func onSyncReceiverRegister(callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit
    public open func offAsyncReceiverRegister(callback_: Option<((parameter: UIExtensionProxy) -> Unit)>): Unit
    public open func offSyncReceiverRegister(callback_: Option<((parameter: UIExtensionProxy) -> Unit)>): Unit
}
public open class UIExtensionProxyInternal <: MaterializedBase & UIExtensionProxy {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    UIExtensionProxyInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, UIExtensionProxyInternal.getFinalizer())
    }
    UIExtensionProxyInternal() {
        super(UIExtensionProxyInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._UIExtensionProxy_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._UIExtensionProxy_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): UIExtensionProxyInternal {
        return UIExtensionProxyInternal(ptr)
    }
    public open func send(data: HashMap<String, Any>): Unit {
        let data_casted: HashMap<String, Any> = data
        let thisPeer = this
        thisPeer.send_serialize(data_casted)
        return
    }
    public open func sendSync(data: HashMap<String, Any>): HashMap<String, Any> {
        let data_casted: HashMap<String, Any> = data
        return this.sendSync_serialize(data_casted)
    }
    public open func onAsyncReceiverRegister(callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit {
        let callback__casted: ((parameter: UIExtensionProxy) -> Unit) = callback_
        let thisPeer = this
        thisPeer.onAsyncReceiverRegister_serialize(callback__casted)
        return
    }
    public open func onSyncReceiverRegister(callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit {
        let callback__casted: ((parameter: UIExtensionProxy) -> Unit) = callback_
        let thisPeer = this
        thisPeer.onSyncReceiverRegister_serialize(callback__casted)
        return
    }
    public open func offAsyncReceiverRegister(callback_: Option<((parameter: UIExtensionProxy) -> Unit)>): Unit {
        let callback__casted: Option<((parameter: UIExtensionProxy) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.offAsyncReceiverRegister_serialize(callback__casted)
        return
    }
    public open func offSyncReceiverRegister(callback_: Option<((parameter: UIExtensionProxy) -> Unit)>): Unit {
        let callback__casted: Option<((parameter: UIExtensionProxy) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.offSyncReceiverRegister_serialize(callback__casted)
        return
    }
    public open func on(type_: String, callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit {
        throw Exception("Improve")
    }
    public open func off(type_: String, callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit {
        throw Exception("Improve")
    }
    private func send_serialize(data: HashMap<String, Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(data.size));
        for ((dataKeyVar, dataValueVar) in data) {
            thisSerializer.writeString(dataKeyVar);
            thisSerializer.holdAndWriteObject(dataValueVar);
        }
        ArkUIGeneratedNativeModule._UIExtensionProxy_send(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func sendSync_serialize(data: HashMap<String, Any>): HashMap<String, Any> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(data.size));
        for ((dataKeyVar, dataValueVar) in data) {
            thisSerializer.writeString(dataKeyVar);
            thisSerializer.holdAndWriteObject(dataValueVar);
        }
        let retval = ArkUIGeneratedNativeModule._UIExtensionProxy_sendSync(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferSizeVar: Int32 = retvalDeserializer.readInt32()
        var buffer: HashMap<String, Any> = HashMap<String, Any>()
        // TODO: TS map resize;
        for (bufferIVar in 0..bufferSizeVar) {
            let bufferKeyVar: String = match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let bufferValueVar: Any = match (retvalDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            buffer.add(bufferKeyVar, bufferValueVar);
        }
        let returnResult: HashMap<String, Any> = buffer
        return returnResult
    }
    private func onAsyncReceiverRegister_serialize(callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._UIExtensionProxy_onAsyncReceiverRegister(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func onSyncReceiverRegister_serialize(callback_: ((parameter: UIExtensionProxy) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._UIExtensionProxy_onSyncReceiverRegister(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func offAsyncReceiverRegister_serialize(callback_: Option<((parameter: UIExtensionProxy) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIExtensionProxy_offAsyncReceiverRegister(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func offSyncReceiverRegister_serialize(callback_: Option<((parameter: UIExtensionProxy) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UIExtensionProxy_offSyncReceiverRegister(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class UIExtensionProxy_serializer {
    public static func write(buffer: SerializerBase, value: UIExtensionProxy): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): UIExtensionProxy {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return UIExtensionProxyInternal.fromPtr(ptr)
    }
}
