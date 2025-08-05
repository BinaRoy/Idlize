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
public interface KeyEvent {
    public mut open prop type_: KeyType
    public mut open prop keyCode: Float64
    public mut open prop keyText: String
    public mut open prop keySource: KeySource
    public mut open prop deviceId: Float64
    public mut open prop metaKey: Float64
    public mut open prop timestamp: Int64
    public mut open prop stopPropagation: (() -> Unit)
    public mut open prop intentionCode: IntentionCode
    public mut open prop unicode: Option<Float64>
    public mut open prop isNumLockOn: Option<Bool>
    public mut open prop isCapsLockOn: Option<Bool>
    public mut open prop isScrollLockOn: Option<Bool>
    public open func getModifierKeyState(keys: ArrayList<String>): Bool
}
public open class KeyEventInternal <: MaterializedBase & KeyEvent {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop type_: KeyType
    {
        get() {
            return this.getType()
        }
        set(type_) {
            this.setType(type_)
        }
    }
    public mut open prop keyCode: Float64
    {
        get() {
            return this.getKeyCode()
        }
        set(keyCode) {
            this.setKeyCode(keyCode)
        }
    }
    public mut open prop keyText: String
    {
        get() {
            return this.getKeyText()
        }
        set(keyText) {
            this.setKeyText(keyText)
        }
    }
    public mut open prop keySource: KeySource
    {
        get() {
            return this.getKeySource()
        }
        set(keySource) {
            this.setKeySource(keySource)
        }
    }
    public mut open prop deviceId: Float64
    {
        get() {
            return this.getDeviceId()
        }
        set(deviceId) {
            this.setDeviceId(deviceId)
        }
    }
    public mut open prop metaKey: Float64
    {
        get() {
            return this.getMetaKey()
        }
        set(metaKey) {
            this.setMetaKey(metaKey)
        }
    }
    public mut open prop timestamp: Int64
    {
        get() {
            return this.getTimestamp()
        }
        set(timestamp) {
            this.setTimestamp(timestamp)
        }
    }
    public mut open prop stopPropagation: (() -> Unit)
    {
        get() {
            return this.getStopPropagation()
        }
        set(stopPropagation) {
            this.setStopPropagation(stopPropagation)
        }
    }
    public mut open prop intentionCode: IntentionCode
    {
        get() {
            return this.getIntentionCode()
        }
        set(intentionCode) {
            this.setIntentionCode(intentionCode)
        }
    }
    public mut open prop unicode: Option<Float64>
    {
        get() {
            return this.getUnicode()
        }
        set(unicode) {
            let unicode_NonNull = match (unicode as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setUnicode(unicode_NonNull)
        }
    }
    public mut open prop isNumLockOn: Option<Bool>
    {
        get() {
            return this.getIsNumLockOn()
        }
        set(isNumLockOn) {
            let isNumLockOn_NonNull = match (isNumLockOn as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setIsNumLockOn(isNumLockOn_NonNull)
        }
    }
    public mut open prop isCapsLockOn: Option<Bool>
    {
        get() {
            return this.getIsCapsLockOn()
        }
        set(isCapsLockOn) {
            let isCapsLockOn_NonNull = match (isCapsLockOn as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setIsCapsLockOn(isCapsLockOn_NonNull)
        }
    }
    public mut open prop isScrollLockOn: Option<Bool>
    {
        get() {
            return this.getIsScrollLockOn()
        }
        set(isScrollLockOn) {
            let isScrollLockOn_NonNull = match (isScrollLockOn as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setIsScrollLockOn(isScrollLockOn_NonNull)
        }
    }
    KeyEventInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, KeyEventInternal.getFinalizer())
    }
    KeyEventInternal() {
        super(KeyEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._KeyEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): KeyEventInternal {
        return KeyEventInternal(ptr)
    }
    public open func getModifierKeyState(keys: ArrayList<String>): Bool {
        let keys_casted: ArrayList<String> = keys
        return this.getModifierKeyState_serialize(keys_casted)
    }
    private func getType(): KeyType {
        return this.getType_serialize()
    }
    private func setType(type_: KeyType): Unit {
        let type_casted: KeyType = type_
        let thisPeer = this
        thisPeer.setType_serialize(type_casted)
        return
    }
    private func getKeyCode(): Float64 {
        return this.getKeyCode_serialize()
    }
    private func setKeyCode(keyCode: Float64): Unit {
        let keyCode_casted: Float64 = keyCode
        let thisPeer = this
        thisPeer.setKeyCode_serialize(keyCode_casted)
        return
    }
    private func getKeyText(): String {
        return this.getKeyText_serialize()
    }
    private func setKeyText(keyText: String): Unit {
        let keyText_casted: String = keyText
        let thisPeer = this
        thisPeer.setKeyText_serialize(keyText_casted)
        return
    }
    private func getKeySource(): KeySource {
        return this.getKeySource_serialize()
    }
    private func setKeySource(keySource: KeySource): Unit {
        let keySource_casted: KeySource = keySource
        let thisPeer = this
        thisPeer.setKeySource_serialize(keySource_casted)
        return
    }
    private func getDeviceId(): Float64 {
        return this.getDeviceId_serialize()
    }
    private func setDeviceId(deviceId: Float64): Unit {
        let deviceId_casted: Float64 = deviceId
        let thisPeer = this
        thisPeer.setDeviceId_serialize(deviceId_casted)
        return
    }
    private func getMetaKey(): Float64 {
        return this.getMetaKey_serialize()
    }
    private func setMetaKey(metaKey: Float64): Unit {
        let metaKey_casted: Float64 = metaKey
        let thisPeer = this
        thisPeer.setMetaKey_serialize(metaKey_casted)
        return
    }
    private func getTimestamp(): Int64 {
        return this.getTimestamp_serialize()
    }
    private func setTimestamp(timestamp: Int64): Unit {
        let timestamp_casted: Int64 = timestamp
        let thisPeer = this
        thisPeer.setTimestamp_serialize(timestamp_casted)
        return
    }
    private func getStopPropagation(): (() -> Unit) {
        return this.getStopPropagation_serialize()
    }
    private func setStopPropagation(stopPropagation: (() -> Unit)): Unit {
        let stopPropagation_casted: (() -> Unit) = stopPropagation
        let thisPeer = this
        thisPeer.setStopPropagation_serialize(stopPropagation_casted)
        return
    }
    private func getIntentionCode(): IntentionCode {
        return this.getIntentionCode_serialize()
    }
    private func setIntentionCode(intentionCode: IntentionCode): Unit {
        let intentionCode_casted: IntentionCode = intentionCode
        let thisPeer = this
        thisPeer.setIntentionCode_serialize(intentionCode_casted)
        return
    }
    private func getUnicode(): Option<Float64> {
        return this.getUnicode_serialize()
    }
    private func setUnicode(unicode: Option<Float64>): Unit {
        let unicode_casted: Option<Float64> = if (let Some(unicode) <- unicode) {unicode} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setUnicode_serialize(unicode_casted)
        return
    }
    private func getIsNumLockOn(): Option<Bool> {
        return this.getIsNumLockOn_serialize()
    }
    private func setIsNumLockOn(isNumLockOn: Option<Bool>): Unit {
        let isNumLockOn_casted: Option<Bool> = if (let Some(isNumLockOn) <- isNumLockOn) {isNumLockOn} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setIsNumLockOn_serialize(isNumLockOn_casted)
        return
    }
    private func getIsCapsLockOn(): Option<Bool> {
        return this.getIsCapsLockOn_serialize()
    }
    private func setIsCapsLockOn(isCapsLockOn: Option<Bool>): Unit {
        let isCapsLockOn_casted: Option<Bool> = if (let Some(isCapsLockOn) <- isCapsLockOn) {isCapsLockOn} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setIsCapsLockOn_serialize(isCapsLockOn_casted)
        return
    }
    private func getIsScrollLockOn(): Option<Bool> {
        return this.getIsScrollLockOn_serialize()
    }
    private func setIsScrollLockOn(isScrollLockOn: Option<Bool>): Unit {
        let isScrollLockOn_casted: Option<Bool> = if (let Some(isScrollLockOn) <- isScrollLockOn) {isScrollLockOn} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setIsScrollLockOn_serialize(isScrollLockOn_casted)
        return
    }
    private func getModifierKeyState_serialize(keys: ArrayList<String>): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(keys.size));
        for (keysCounterI in 0..keys.size) {
            let keysTmpElement: String = keys[Int64(keysCounterI)]
            thisSerializer.writeString(keysTmpElement);
        }
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getModifierKeyState(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func getType_serialize(): KeyType {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return KeyType(retval)
    }
    private func setType_serialize(type_: KeyType): Unit {
        ArkUIGeneratedNativeModule._KeyEvent_setType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, type_.value);
    }
    private func getKeyCode_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getKeyCode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setKeyCode_serialize(keyCode: Float64): Unit {
        ArkUIGeneratedNativeModule._KeyEvent_setKeyCode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, keyCode);
    }
    private func getKeyText_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getKeyText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setKeyText_serialize(keyText: String): Unit {
        ArkUIGeneratedNativeModule._KeyEvent_setKeyText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, keyText);
    }
    private func getKeySource_serialize(): KeySource {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getKeySource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return KeySource(retval)
    }
    private func setKeySource_serialize(keySource: KeySource): Unit {
        ArkUIGeneratedNativeModule._KeyEvent_setKeySource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, keySource.value);
    }
    private func getDeviceId_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getDeviceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setDeviceId_serialize(deviceId: Float64): Unit {
        ArkUIGeneratedNativeModule._KeyEvent_setDeviceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, deviceId);
    }
    private func getMetaKey_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getMetaKey(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setMetaKey_serialize(metaKey: Float64): Unit {
        ArkUIGeneratedNativeModule._KeyEvent_setMetaKey(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, metaKey);
    }
    private func getTimestamp_serialize(): Int64 {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getTimestamp(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setTimestamp_serialize(timestamp: Int64): Unit {
        ArkUIGeneratedNativeModule._KeyEvent_setTimestamp(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, timestamp);
    }
    private func getStopPropagation_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setStopPropagation_serialize(stopPropagation: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(stopPropagation);
        ArkUIGeneratedNativeModule._KeyEvent_setStopPropagation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getIntentionCode_serialize(): IntentionCode {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getIntentionCode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setIntentionCode_serialize(intentionCode: IntentionCode): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", intentionCode);
        ArkUIGeneratedNativeModule._KeyEvent_setIntentionCode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getUnicode_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getUnicode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setUnicode_serialize(unicode: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (unicode.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let unicodeTmpValue = unicode
            thisSerializer.writeNumber(unicodeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._KeyEvent_setUnicode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getIsNumLockOn_serialize(): Option<Bool> {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getIsNumLockOn(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = retvalDeserializer.readBoolean()
        }
        let returnResult: Option<Bool> = buffer
        return returnResult
    }
    private func setIsNumLockOn_serialize(isNumLockOn: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isNumLockOn.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isNumLockOnTmpValue = isNumLockOn
            thisSerializer.writeBoolean(isNumLockOnTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._KeyEvent_setIsNumLockOn(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getIsCapsLockOn_serialize(): Option<Bool> {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getIsCapsLockOn(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = retvalDeserializer.readBoolean()
        }
        let returnResult: Option<Bool> = buffer
        return returnResult
    }
    private func setIsCapsLockOn_serialize(isCapsLockOn: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isCapsLockOn.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isCapsLockOnTmpValue = isCapsLockOn
            thisSerializer.writeBoolean(isCapsLockOnTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._KeyEvent_setIsCapsLockOn(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getIsScrollLockOn_serialize(): Option<Bool> {
        let retval = ArkUIGeneratedNativeModule._KeyEvent_getIsScrollLockOn(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = retvalDeserializer.readBoolean()
        }
        let returnResult: Option<Bool> = buffer
        return returnResult
    }
    private func setIsScrollLockOn_serialize(isScrollLockOn: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isScrollLockOn.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isScrollLockOnTmpValue = isScrollLockOn
            thisSerializer.writeBoolean(isScrollLockOnTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._KeyEvent_setIsScrollLockOn(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class KeyEvent_serializer {
    public static func write(buffer: SerializerBase, value: KeyEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): KeyEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return KeyEventInternal.fromPtr(ptr)
    }
}
