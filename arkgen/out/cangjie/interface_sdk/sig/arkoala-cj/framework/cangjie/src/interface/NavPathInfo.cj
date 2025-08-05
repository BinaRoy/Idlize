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
public open class NavPathInfoInternal {
    public static func fromPtr(ptr: UInt64): NavPathInfo {
        return NavPathInfo(false, false, false, false, ptr)
    }
}
public open class NavPathInfo <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop name: String
    {
        get() {
            return this.getName()
        }
        set(name) {
            this.setName(name)
        }
    }
    public mut open prop param: Option<Any>
    {
        get() {
            return this.getParam()
        }
        set(param) {
            let param_NonNull = match (param as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setParam(param_NonNull)
        }
    }
    public mut open prop param: Option<Any>
    {
        get() {
            return this.getParam()
        }
        set(param) {
            let param_NonNull = match (param as Option<Any>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setParam(param_NonNull)
        }
    }
    public mut open prop onPop: Option<((parameter: PopInfo) -> Unit)>
    {
        get() {
            return this.getOnPop()
        }
        set(onPop) {
            let onPop_NonNull = match (onPop as ((parameter: PopInfo) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setOnPop(onPop_NonNull)
        }
    }
    public mut open prop onPop: Option<((parameter: PopInfo) -> Unit)>
    {
        get() {
            return this.getOnPop()
        }
        set(onPop) {
            let onPop_NonNull = match (onPop as ((parameter: PopInfo) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setOnPop(onPop_NonNull)
        }
    }
    public mut open prop isEntry: Option<Bool>
    {
        get() {
            return this.getIsEntry()
        }
        set(isEntry) {
            let isEntry_NonNull = match (isEntry as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setIsEntry(isEntry_NonNull)
        }
    }
    public mut open prop navDestinationId: Option<String>
    {
        get() {
            return this.getNavDestinationId()
        }
        set(navDestinationId) {
            let navDestinationId_NonNull = match (navDestinationId as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setNavDestinationId(navDestinationId_NonNull)
        }
    }
    NavPathInfo(_0: Bool, _1: Bool, _2: Bool, _3: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, NavPathInfo.getFinalizer())
    }
    init (name: String, param: Any, onPop: Option<((parameter: PopInfo) -> Unit)>) {
        NavPathInfo(name, param, onPop, Option.None)
    }
    init (name: String, param: Any) {
        NavPathInfo(name, param, Option.None, Option.None)
    }
    NavPathInfo(name: String, param: Any, onPop: Option<((parameter: PopInfo) -> Unit)>, isEntry: Option<Bool>) {
        super(false, false, false, false, NavPathInfo.construct0(name, param, onPop, isEntry))
    }
    init (name: String, param: Option<Any>, onPop: Option<((parameter: PopInfo) -> Unit)>) {
        NavPathInfo(name, param, onPop, Option.None)
    }
    init (name: String, param: Option<Any>) {
        NavPathInfo(name, param, Option.None, Option.None)
    }
    NavPathInfo(name: String, param: Option<Any>, onPop: Option<((parameter: PopInfo) -> Unit)>, isEntry: Option<Bool>) {
        super(false, false, false, false, NavPathInfo.construct1(name, param, onPop, isEntry))
    }
    static func construct0(name: String, param: Any, onPop: Option<((parameter: PopInfo) -> Unit)>, isEntry: Option<Bool>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(param);
        if (onPop.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onPopTmpValue = onPop
            thisSerializer.holdAndWriteCallback(onPopTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (isEntry.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isEntryTmpValue = isEntry
            thisSerializer.writeBoolean(isEntryTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_construct0(name, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct1(name: String, param: Option<Any>, onPop: Option<((parameter: PopInfo) -> Unit)>, isEntry: Option<Bool>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (param.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let paramTmpValue = param
            thisSerializer.holdAndWriteObject(paramTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (onPop.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onPopTmpValue = onPop
            thisSerializer.holdAndWriteCallback(onPopTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (isEntry.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isEntryTmpValue = isEntry
            thisSerializer.writeBoolean(isEntryTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_construct1(name, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._NavPathInfo_getFinalizer()
    }
    private func getName(): String {
        return this.getName_serialize()
    }
    private func setName(name: String): Unit {
        let name_casted: String = name
        let thisPeer = this
        thisPeer.setName_serialize(name_casted)
        return
    }
    private func getParam(): Option<Any> {
        return this.getParam0_serialize()
    }
    private func setParam(param: Option<Any>): Unit {
        let param_casted: Option<Any> = if (let Some(param) <- param) {param} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setParam0_serialize(param_casted)
        return
    }
    private func getParam(): Option<Any> {
        return this.getParam1_serialize()
    }
    private func setParam(param: Option<Any>): Unit {
        let param_casted: Option<Any> = if (let Some(param) <- param) {param} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setParam1_serialize(param_casted)
        return
    }
    private func getOnPop(): Option<((parameter: PopInfo) -> Unit)> {
        return this.getOnPop0_serialize()
    }
    private func setOnPop(onPop: Option<((parameter: PopInfo) -> Unit)>): Unit {
        let onPop_casted: Option<((parameter: PopInfo) -> Unit)> = if (let Some(onPop) <- onPop) {onPop} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnPop0_serialize(onPop_casted)
        return
    }
    private func getOnPop(): Option<((parameter: PopInfo) -> Unit)> {
        return this.getOnPop1_serialize()
    }
    private func setOnPop(onPop: Option<((parameter: PopInfo) -> Unit)>): Unit {
        let onPop_casted: Option<((parameter: PopInfo) -> Unit)> = if (let Some(onPop) <- onPop) {onPop} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnPop1_serialize(onPop_casted)
        return
    }
    private func getIsEntry(): Option<Bool> {
        return this.getIsEntry_serialize()
    }
    private func setIsEntry(isEntry: Option<Bool>): Unit {
        let isEntry_casted: Option<Bool> = if (let Some(isEntry) <- isEntry) {isEntry} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setIsEntry_serialize(isEntry_casted)
        return
    }
    private func getNavDestinationId(): Option<String> {
        return this.getNavDestinationId_serialize()
    }
    private func setNavDestinationId(navDestinationId: Option<String>): Unit {
        let navDestinationId_casted: Option<String> = if (let Some(navDestinationId) <- navDestinationId) {navDestinationId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setNavDestinationId_serialize(navDestinationId_casted)
        return
    }
    private func getName_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_getName(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setName_serialize(name: String): Unit {
        ArkUIGeneratedNativeModule._NavPathInfo_setName(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name);
    }
    private func getParam0_serialize(): Option<Any> {
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_getParam0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Any> = buffer
        return returnResult
    }
    private func setParam0_serialize(param: Option<Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (param.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let paramTmpValue = param
            thisSerializer.holdAndWriteObject(paramTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathInfo_setParam0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getParam1_serialize(): Option<Any> {
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_getParam1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Any> = buffer
        return returnResult
    }
    private func setParam1_serialize(param: Option<Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (param.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let paramTmpValue = param
            thisSerializer.holdAndWriteObject(paramTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathInfo_setParam1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnPop0_serialize(): Option<((parameter: PopInfo) -> Unit)> {
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_getOnPop0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<((parameter: PopInfo) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_BufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let buffer_BufCall: UInt64 = retvalDeserializer.readPointer()
            let buffer_BufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {parameter: PopInfo => let buffer_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buffer_BufArgsSerializer.writeInt32(buffer_BufResource.resourceId);
buffer_BufArgsSerializer.writePointer(buffer_BufCall);
buffer_BufArgsSerializer.writePointer(buffer_BufCallSync);
PopInfo_serializer.write(buffer_BufArgsSerializer, parameter);
InteropNativeModule._CallCallback(624053870, buffer_BufArgsSerializer.asBuffer(), buffer_BufArgsSerializer.length());
buffer_BufArgsSerializer.release();
return; }
        }
        let returnResult: Option<((parameter: PopInfo) -> Unit)> = buffer
        return returnResult
    }
    private func setOnPop0_serialize(onPop: Option<((parameter: PopInfo) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (onPop.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onPopTmpValue = onPop
            thisSerializer.holdAndWriteCallback(onPopTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathInfo_setOnPop0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnPop1_serialize(): Option<((parameter: PopInfo) -> Unit)> {
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_getOnPop1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<((parameter: PopInfo) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_BufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let buffer_BufCall: UInt64 = retvalDeserializer.readPointer()
            let buffer_BufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {parameter: PopInfo => let buffer_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buffer_BufArgsSerializer.writeInt32(buffer_BufResource.resourceId);
buffer_BufArgsSerializer.writePointer(buffer_BufCall);
buffer_BufArgsSerializer.writePointer(buffer_BufCallSync);
PopInfo_serializer.write(buffer_BufArgsSerializer, parameter);
InteropNativeModule._CallCallback(624053870, buffer_BufArgsSerializer.asBuffer(), buffer_BufArgsSerializer.length());
buffer_BufArgsSerializer.release();
return; }
        }
        let returnResult: Option<((parameter: PopInfo) -> Unit)> = buffer
        return returnResult
    }
    private func setOnPop1_serialize(onPop: Option<((parameter: PopInfo) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (onPop.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let onPopTmpValue = onPop
            thisSerializer.holdAndWriteCallback(onPopTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathInfo_setOnPop1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getIsEntry_serialize(): Option<Bool> {
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_getIsEntry(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = retvalDeserializer.readBoolean()
        }
        let returnResult: Option<Bool> = buffer
        return returnResult
    }
    private func setIsEntry_serialize(isEntry: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isEntry.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isEntryTmpValue = isEntry
            thisSerializer.writeBoolean(isEntryTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathInfo_setIsEntry(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getNavDestinationId_serialize(): Option<String> {
        let retval = ArkUIGeneratedNativeModule._NavPathInfo_getNavDestinationId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<String> = buffer
        return returnResult
    }
    private func setNavDestinationId_serialize(navDestinationId: Option<String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (navDestinationId.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let navDestinationIdTmpValue = navDestinationId
            thisSerializer.writeString(navDestinationIdTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathInfo_setNavDestinationId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class NavPathInfo_serializer {
    public static func write(buffer: SerializerBase, value: NavPathInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): NavPathInfo {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return NavPathInfoInternal.fromPtr(ptr)
    }
}
