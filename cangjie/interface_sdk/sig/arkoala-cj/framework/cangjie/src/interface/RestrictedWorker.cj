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
public open class RestrictedWorkerInternal {
    public static func fromPtr(ptr: UInt64): RestrictedWorker {
        return RestrictedWorker(false, false, ptr)
    }
}
public open class RestrictedWorker <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop onexit: Option<RestrictedWorker_onexit_Callback>
    {
        get() {
            return this.getOnexit()
        }
        set(onexit) {
            let onexit_NonNull = match (onexit as RestrictedWorker_onexit_Callback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setOnexit(onexit_NonNull)
        }
    }
    public mut open prop onerror: Option<RestrictedWorker_onerror_Callback>
    {
        get() {
            return this.getOnerror()
        }
        set(onerror) {
            let onerror_NonNull = match (onerror as RestrictedWorker_onerror_Callback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setOnerror(onerror_NonNull)
        }
    }
    public mut open prop onmessage: Option<RestrictedWorker_onmessage_Callback>
    {
        get() {
            return this.getOnmessage()
        }
        set(onmessage) {
            let onmessage_NonNull = match (onmessage as RestrictedWorker_onmessage_Callback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setOnmessage(onmessage_NonNull)
        }
    }
    public mut open prop onmessageerror: Option<RestrictedWorker_onmessage_Callback>
    {
        get() {
            return this.getOnmessageerror()
        }
        set(onmessageerror) {
            let onmessageerror_NonNull = match (onmessageerror as RestrictedWorker_onmessage_Callback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setOnmessageerror(onmessageerror_NonNull)
        }
    }
    RestrictedWorker(_0: Bool, _1: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, RestrictedWorker.getFinalizer())
    }
    init (scriptURL: String) {
        RestrictedWorker(scriptURL, Option.None)
    }
    RestrictedWorker(scriptURL: String, options: Option<WorkerOptions>) {
        super(false, false, RestrictedWorker.construct(scriptURL, options))
    }
    static func construct(scriptURL: String, options: Option<WorkerOptions>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            WorkerOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._RestrictedWorker_construct(scriptURL, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RestrictedWorker_getFinalizer()
    }
    public open func postMessage(message: Any, transfer: ArrayList<Array<UInt8>>): Unit {
        let message_casted: Any = message
        let transfer_casted: ArrayList<Array<UInt8>> = transfer
        let thisPeer = this
        thisPeer.postMessage0_serialize(message_casted, transfer_casted)
        return
    }
    public open func postMessage(message: Any, options: Option<PostMessageOptions>): Unit {
        let message_casted: Any = message
        let options_casted: Option<PostMessageOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.postMessage1_serialize(message_casted, options_casted)
        return
    }
    public open func postMessageWithSharedSendable(message: Any, transfer: Option<ArrayList<Array<UInt8>>>): Unit {
        let message_casted: Any = message
        let transfer_casted: Option<ArrayList<Array<UInt8>>> = if (let Some(transfer) <- transfer) {transfer} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.postMessageWithSharedSendable_serialize(message_casted, transfer_casted)
        return
    }
    public open func on(Type: String, listener: WorkerEventListener): Unit {
        let Type_casted: String = Type
        let listener_casted: WorkerEventListener = listener
        let thisPeer = this
        thisPeer.on_serialize(Type_casted, listener_casted)
        return
    }
    public open func once(Type: String, listener: WorkerEventListener): Unit {
        let Type_casted: String = Type
        let listener_casted: WorkerEventListener = listener
        let thisPeer = this
        thisPeer.once_serialize(Type_casted, listener_casted)
        return
    }
    public open func off(Type: String, listener: Option<WorkerEventListener>): Unit {
        let Type_casted: String = Type
        let listener_casted: Option<WorkerEventListener> = if (let Some(listener) <- listener) {listener} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.off_serialize(Type_casted, listener_casted)
        return
    }
    public open func terminate(): Unit {
        let thisPeer = this
        thisPeer.terminate_serialize()
        return
    }
    public open func addEventListener(Type: String, listener: WorkerEventListener): Unit {
        let Type_casted: String = Type
        let listener_casted: WorkerEventListener = listener
        let thisPeer = this
        thisPeer.addEventListener_serialize(Type_casted, listener_casted)
        return
    }
    public open func dispatchEvent(event: Event): Bool {
        let event_casted: Event = event
        return this.dispatchEvent_serialize(event_casted)
    }
    public open func removeEventListener(Type: String, callback_: Option<WorkerEventListener>): Unit {
        let Type_casted: String = Type
        let callback__casted: Option<WorkerEventListener> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.removeEventListener_serialize(Type_casted, callback__casted)
        return
    }
    public open func removeAllListener(): Unit {
        let thisPeer = this
        thisPeer.removeAllListener_serialize()
        return
    }
    public open func registerGlobalCallObject(instanceName: String, globalCallObject: Any): Unit {
        let instanceName_casted: String = instanceName
        let globalCallObject_casted: Any = globalCallObject
        let thisPeer = this
        thisPeer.registerGlobalCallObject_serialize(instanceName_casted, globalCallObject_casted)
        return
    }
    public open func unregisterGlobalCallObject(instanceName: Option<String>): Unit {
        let instanceName_casted: Option<String> = if (let Some(instanceName) <- instanceName) {instanceName} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.unregisterGlobalCallObject_serialize(instanceName_casted)
        return
    }
    private func getOnexit(): Option<RestrictedWorker_onexit_Callback> {
        return this.getOnexit_serialize()
    }
    private func setOnexit(onexit: Option<RestrictedWorker_onexit_Callback>): Unit {
        let onexit_casted: Option<RestrictedWorker_onexit_Callback> = if (let Some(onexit) <- onexit) {onexit} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnexit_serialize(onexit_casted)
        return
    }
    private func getOnerror(): Option<RestrictedWorker_onerror_Callback> {
        return this.getOnerror_serialize()
    }
    private func setOnerror(onerror: Option<RestrictedWorker_onerror_Callback>): Unit {
        let onerror_casted: Option<RestrictedWorker_onerror_Callback> = if (let Some(onerror) <- onerror) {onerror} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnerror_serialize(onerror_casted)
        return
    }
    private func getOnmessage(): Option<RestrictedWorker_onmessage_Callback> {
        return this.getOnmessage_serialize()
    }
    private func setOnmessage(onmessage: Option<RestrictedWorker_onmessage_Callback>): Unit {
        let onmessage_casted: Option<RestrictedWorker_onmessage_Callback> = if (let Some(onmessage) <- onmessage) {onmessage} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnmessage_serialize(onmessage_casted)
        return
    }
    private func getOnmessageerror(): Option<RestrictedWorker_onmessage_Callback> {
        return this.getOnmessageerror_serialize()
    }
    private func setOnmessageerror(onmessageerror: Option<RestrictedWorker_onmessage_Callback>): Unit {
        let onmessageerror_casted: Option<RestrictedWorker_onmessage_Callback> = if (let Some(onmessageerror) <- onmessageerror) {onmessageerror} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnmessageerror_serialize(onmessageerror_casted)
        return
    }
    private func postMessage0_serialize(message: Any, transfer: ArrayList<Array<UInt8>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(message);
        thisSerializer.writeInt32(Int32(transfer.size));
        for (transferCounterI in 0..transfer.size) {
            let transferTmpElement: Array<UInt8> = transfer[Int64(transferCounterI)]
            thisSerializer.writeBuffer(transferTmpElement);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_postMessage0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func postMessage1_serialize(message: Any, options: Option<PostMessageOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(message);
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            PostMessageOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_postMessage1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func postMessageWithSharedSendable_serialize(message: Any, transfer: Option<ArrayList<Array<UInt8>>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(message);
        if (transfer.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let transferTmpValue = transfer
            thisSerializer.writeInt32(Int32(transferTmpValue.size));
            for (transferTmpValueCounterI in 0..transferTmpValue.size) {
                let transferTmpValueTmpElement: Array<UInt8> = transferTmpValue[Int64(transferTmpValueCounterI)]
                thisSerializer.writeBuffer(transferTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_postMessageWithSharedSendable(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func on_serialize(Type: String, listener: WorkerEventListener): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        WorkerEventListener_serializer.write(thisSerializer, listener);
        ArkUIGeneratedNativeModule._RestrictedWorker_on(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, Type, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func once_serialize(Type: String, listener: WorkerEventListener): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        WorkerEventListener_serializer.write(thisSerializer, listener);
        ArkUIGeneratedNativeModule._RestrictedWorker_once(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, Type, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func off_serialize(Type: String, listener: Option<WorkerEventListener>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (listener.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let listenerTmpValue = listener
            WorkerEventListener_serializer.write(thisSerializer, listenerTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_off(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, Type, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func terminate_serialize(): Unit {
        ArkUIGeneratedNativeModule._RestrictedWorker_terminate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func addEventListener_serialize(Type: String, listener: WorkerEventListener): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        WorkerEventListener_serializer.write(thisSerializer, listener);
        ArkUIGeneratedNativeModule._RestrictedWorker_addEventListener(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, Type, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func dispatchEvent_serialize(event: Event): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Event_serializer.write(thisSerializer, event);
        let retval = ArkUIGeneratedNativeModule._RestrictedWorker_dispatchEvent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func removeEventListener_serialize(Type: String, callback_: Option<WorkerEventListener>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            WorkerEventListener_serializer.write(thisSerializer, callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_removeEventListener(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, Type, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func removeAllListener_serialize(): Unit {
        ArkUIGeneratedNativeModule._RestrictedWorker_removeAllListener(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func registerGlobalCallObject_serialize(instanceName: String, globalCallObject: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(globalCallObject);
        ArkUIGeneratedNativeModule._RestrictedWorker_registerGlobalCallObject(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, instanceName, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func unregisterGlobalCallObject_serialize(instanceName: Option<String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (instanceName.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let instanceNameTmpValue = instanceName
            thisSerializer.writeString(instanceNameTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_unregisterGlobalCallObject(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnexit_serialize(): Option<RestrictedWorker_onexit_Callback> {
        let retval = ArkUIGeneratedNativeModule._RestrictedWorker_getOnexit(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<RestrictedWorker_onexit_Callback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_BufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let buffer_BufCall: UInt64 = retvalDeserializer.readPointer()
            let buffer_BufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {code: Float64 => let buffer_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buffer_BufArgsSerializer.writeInt32(buffer_BufResource.resourceId);
buffer_BufArgsSerializer.writePointer(buffer_BufCall);
buffer_BufArgsSerializer.writePointer(buffer_BufCallSync);
buffer_BufArgsSerializer.writeNumber(code);
InteropNativeModule._CallCallback(-2095497263, buffer_BufArgsSerializer.asBuffer(), buffer_BufArgsSerializer.length());
buffer_BufArgsSerializer.release();
return; }
        }
        let returnResult: Option<RestrictedWorker_onexit_Callback> = buffer
        return returnResult
    }
    private func setOnexit_serialize(onexit: Option<RestrictedWorker_onexit_Callback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (onexit.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onexitTmpValue = onexit
            thisSerializer.holdAndWriteCallback(onexitTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_setOnexit(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnerror_serialize(): Option<RestrictedWorker_onerror_Callback> {
        let retval = ArkUIGeneratedNativeModule._RestrictedWorker_getOnerror(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<RestrictedWorker_onerror_Callback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_BufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let buffer_BufCall: UInt64 = retvalDeserializer.readPointer()
            let buffer_BufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {ev: ErrorEvent => let buffer_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buffer_BufArgsSerializer.writeInt32(buffer_BufResource.resourceId);
buffer_BufArgsSerializer.writePointer(buffer_BufCall);
buffer_BufArgsSerializer.writePointer(buffer_BufCallSync);
ErrorEvent_serializer.write(buffer_BufArgsSerializer, ev);
InteropNativeModule._CallCallback(-1213708823, buffer_BufArgsSerializer.asBuffer(), buffer_BufArgsSerializer.length());
buffer_BufArgsSerializer.release();
return; }
        }
        let returnResult: Option<RestrictedWorker_onerror_Callback> = buffer
        return returnResult
    }
    private func setOnerror_serialize(onerror: Option<RestrictedWorker_onerror_Callback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (onerror.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onerrorTmpValue = onerror
            thisSerializer.holdAndWriteCallback(onerrorTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_setOnerror(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnmessage_serialize(): Option<RestrictedWorker_onmessage_Callback> {
        let retval = ArkUIGeneratedNativeModule._RestrictedWorker_getOnmessage(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<RestrictedWorker_onmessage_Callback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_BufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let buffer_BufCall: UInt64 = retvalDeserializer.readPointer()
            let buffer_BufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {event: MessageEvents => let buffer_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buffer_BufArgsSerializer.writeInt32(buffer_BufResource.resourceId);
buffer_BufArgsSerializer.writePointer(buffer_BufCall);
buffer_BufArgsSerializer.writePointer(buffer_BufCallSync);
MessageEvents_serializer.write(buffer_BufArgsSerializer, event);
InteropNativeModule._CallCallback(1614214490, buffer_BufArgsSerializer.asBuffer(), buffer_BufArgsSerializer.length());
buffer_BufArgsSerializer.release();
return; }
        }
        let returnResult: Option<RestrictedWorker_onmessage_Callback> = buffer
        return returnResult
    }
    private func setOnmessage_serialize(onmessage: Option<RestrictedWorker_onmessage_Callback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (onmessage.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onmessageTmpValue = onmessage
            thisSerializer.holdAndWriteCallback(onmessageTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_setOnmessage(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnmessageerror_serialize(): Option<RestrictedWorker_onmessage_Callback> {
        let retval = ArkUIGeneratedNativeModule._RestrictedWorker_getOnmessageerror(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<RestrictedWorker_onmessage_Callback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_BufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let buffer_BufCall: UInt64 = retvalDeserializer.readPointer()
            let buffer_BufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {event: MessageEvents => let buffer_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buffer_BufArgsSerializer.writeInt32(buffer_BufResource.resourceId);
buffer_BufArgsSerializer.writePointer(buffer_BufCall);
buffer_BufArgsSerializer.writePointer(buffer_BufCallSync);
MessageEvents_serializer.write(buffer_BufArgsSerializer, event);
InteropNativeModule._CallCallback(1614214490, buffer_BufArgsSerializer.asBuffer(), buffer_BufArgsSerializer.length());
buffer_BufArgsSerializer.release();
return; }
        }
        let returnResult: Option<RestrictedWorker_onmessage_Callback> = buffer
        return returnResult
    }
    private func setOnmessageerror_serialize(onmessageerror: Option<RestrictedWorker_onmessage_Callback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (onmessageerror.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onmessageerrorTmpValue = onmessageerror
            thisSerializer.holdAndWriteCallback(onmessageerrorTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RestrictedWorker_setOnmessageerror(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class RestrictedWorker_serializer {
    public static func write(buffer: SerializerBase, value: RestrictedWorker): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RestrictedWorker {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RestrictedWorkerInternal.fromPtr(ptr)
    }
}
