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
public interface NavigationTransitionProxy {
    public mut open prop from_: NavContentInfo
    public mut open prop to: NavContentInfo
    public mut open prop isInteractive: Option<Bool>
    public mut open prop cancelTransition: Option<VoidCallback>
    public mut open prop updateTransition: Option<UpdateTransitionCallback>
    public open func finishTransition(): Unit
    public open func cancelTransition(): Unit
    public open func updateTransition(progress: Float64): Unit
}
public open class NavigationTransitionProxyInternal <: MaterializedBase & NavigationTransitionProxy {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop from_: NavContentInfo
    {
        get() {
            return this.getFrom()
        }
        set(from_) {
            this.setFrom(from_)
        }
    }
    public mut open prop to: NavContentInfo
    {
        get() {
            return this.getTo()
        }
        set(to) {
            this.setTo(to)
        }
    }
    public mut open prop isInteractive: Option<Bool>
    {
        get() {
            return this.getIsInteractive()
        }
        set(isInteractive) {
            let isInteractive_NonNull = match (isInteractive as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setIsInteractive(isInteractive_NonNull)
        }
    }
    public mut open prop cancelTransition: Option<VoidCallback>
    {
        get() {
            return this.getCancelTransition()
        }
        set(cancelTransition) {
            let cancelTransition_NonNull = match (cancelTransition as VoidCallback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setCancelTransition(cancelTransition_NonNull)
        }
    }
    public mut open prop updateTransition: Option<UpdateTransitionCallback>
    {
        get() {
            return this.getUpdateTransition()
        }
        set(updateTransition) {
            let updateTransition_NonNull = match (updateTransition as UpdateTransitionCallback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setUpdateTransition(updateTransition_NonNull)
        }
    }
    NavigationTransitionProxyInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, NavigationTransitionProxyInternal.getFinalizer())
    }
    NavigationTransitionProxyInternal() {
        super(NavigationTransitionProxyInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._NavigationTransitionProxy_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._NavigationTransitionProxy_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): NavigationTransitionProxyInternal {
        return NavigationTransitionProxyInternal(ptr)
    }
    public open func finishTransition(): Unit {
        let thisPeer = this
        thisPeer.finishTransition_serialize()
        return
    }
    public open func cancelTransition(): Unit {
        let thisPeer = this
        thisPeer.cancelTransition1_serialize()
        return
    }
    public open func updateTransition(progress: Float64): Unit {
        let progress_casted: Float64 = progress
        let thisPeer = this
        thisPeer.updateTransition1_serialize(progress_casted)
        return
    }
    private func getFrom(): NavContentInfo {
        return this.getFrom_serialize()
    }
    private func setFrom(from_: NavContentInfo): Unit {
        let from_casted: NavContentInfo = from_
        let thisPeer = this
        thisPeer.setFrom_serialize(from_casted)
        return
    }
    private func getTo(): NavContentInfo {
        return this.getTo_serialize()
    }
    private func setTo(to: NavContentInfo): Unit {
        let to_casted: NavContentInfo = to
        let thisPeer = this
        thisPeer.setTo_serialize(to_casted)
        return
    }
    private func getIsInteractive(): Option<Bool> {
        return this.getIsInteractive_serialize()
    }
    private func setIsInteractive(isInteractive: Option<Bool>): Unit {
        let isInteractive_casted: Option<Bool> = if (let Some(isInteractive) <- isInteractive) {isInteractive} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setIsInteractive_serialize(isInteractive_casted)
        return
    }
    private func getCancelTransition(): Option<VoidCallback> {
        return this.getCancelTransition_serialize()
    }
    private func setCancelTransition(cancelTransition: Option<VoidCallback>): Unit {
        let cancelTransition_casted: Option<VoidCallback> = if (let Some(cancelTransition) <- cancelTransition) {cancelTransition} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setCancelTransition_serialize(cancelTransition_casted)
        return
    }
    private func getUpdateTransition(): Option<UpdateTransitionCallback> {
        return this.getUpdateTransition_serialize()
    }
    private func setUpdateTransition(updateTransition: Option<UpdateTransitionCallback>): Unit {
        let updateTransition_casted: Option<UpdateTransitionCallback> = if (let Some(updateTransition) <- updateTransition) {updateTransition} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setUpdateTransition_serialize(updateTransition_casted)
        return
    }
    private func finishTransition_serialize(): Unit {
        ArkUIGeneratedNativeModule._NavigationTransitionProxy_finishTransition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func cancelTransition1_serialize(): Unit {
        ArkUIGeneratedNativeModule._NavigationTransitionProxy_cancelTransition1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func updateTransition1_serialize(progress: Float64): Unit {
        ArkUIGeneratedNativeModule._NavigationTransitionProxy_updateTransition1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, progress);
    }
    private func getFrom_serialize(): NavContentInfo {
        let retval = ArkUIGeneratedNativeModule._NavigationTransitionProxy_getFrom(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: NavContentInfo = NavContentInfo_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func setFrom_serialize(from_: NavContentInfo): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavContentInfo_serializer.write(thisSerializer, from);
        ArkUIGeneratedNativeModule._NavigationTransitionProxy_setFrom(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getTo_serialize(): NavContentInfo {
        let retval = ArkUIGeneratedNativeModule._NavigationTransitionProxy_getTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: NavContentInfo = NavContentInfo_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func setTo_serialize(to: NavContentInfo): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavContentInfo_serializer.write(thisSerializer, to);
        ArkUIGeneratedNativeModule._NavigationTransitionProxy_setTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getIsInteractive_serialize(): Option<Bool> {
        let retval = ArkUIGeneratedNativeModule._NavigationTransitionProxy_getIsInteractive(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = retvalDeserializer.readBoolean()
        }
        let returnResult: Option<Bool> = buffer
        return returnResult
    }
    private func setIsInteractive_serialize(isInteractive: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isInteractive.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isInteractiveTmpValue = isInteractive
            thisSerializer.writeBoolean(isInteractiveTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationTransitionProxy_setIsInteractive(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getCancelTransition_serialize(): Option<VoidCallback> {
        let retval = ArkUIGeneratedNativeModule._NavigationTransitionProxy_getCancelTransition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<VoidCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_BufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let buffer_BufCall: UInt64 = retvalDeserializer.readPointer()
            let buffer_BufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = { => let buffer_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buffer_BufArgsSerializer.writeInt32(buffer_BufResource.resourceId);
buffer_BufArgsSerializer.writePointer(buffer_BufCall);
buffer_BufArgsSerializer.writePointer(buffer_BufCallSync);
InteropNativeModule._CallCallback(-2038961969, buffer_BufArgsSerializer.asBuffer(), buffer_BufArgsSerializer.length());
buffer_BufArgsSerializer.release();
return; }
        }
        let returnResult: Option<VoidCallback> = buffer
        return returnResult
    }
    private func setCancelTransition_serialize(cancelTransition: Option<VoidCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (cancelTransition.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let cancelTransitionTmpValue = cancelTransition
            thisSerializer.holdAndWriteCallback(cancelTransitionTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationTransitionProxy_setCancelTransition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getUpdateTransition_serialize(): Option<UpdateTransitionCallback> {
        let retval = ArkUIGeneratedNativeModule._NavigationTransitionProxy_getUpdateTransition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<UpdateTransitionCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_BufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let buffer_BufCall: UInt64 = retvalDeserializer.readPointer()
            let buffer_BufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {progress: Float64 => let buffer_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buffer_BufArgsSerializer.writeInt32(buffer_BufResource.resourceId);
buffer_BufArgsSerializer.writePointer(buffer_BufCall);
buffer_BufArgsSerializer.writePointer(buffer_BufCallSync);
buffer_BufArgsSerializer.writeNumber(progress);
InteropNativeModule._CallCallback(-448105339, buffer_BufArgsSerializer.asBuffer(), buffer_BufArgsSerializer.length());
buffer_BufArgsSerializer.release();
return; }
        }
        let returnResult: Option<UpdateTransitionCallback> = buffer
        return returnResult
    }
    private func setUpdateTransition_serialize(updateTransition: Option<UpdateTransitionCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (updateTransition.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let updateTransitionTmpValue = updateTransition
            thisSerializer.holdAndWriteCallback(updateTransitionTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavigationTransitionProxy_setUpdateTransition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class NavigationTransitionProxy_serializer {
    public static func write(buffer: SerializerBase, value: NavigationTransitionProxy): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): NavigationTransitionProxy {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return NavigationTransitionProxyInternal.fromPtr(ptr)
    }
}
