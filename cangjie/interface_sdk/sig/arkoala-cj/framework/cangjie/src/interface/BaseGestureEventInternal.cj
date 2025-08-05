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
public interface BaseGestureEvent {
    public mut open prop fingerList: ArrayList<FingerInfo>
    public mut open prop fingerInfos: Option<ArrayList<FingerInfo>>
}
public open class BaseGestureEventInternal <: BaseEventInternal & MaterializedBase & BaseGestureEvent {
    public mut open prop fingerList: ArrayList<FingerInfo>
    {
        get() {
            return this.getFingerList()
        }
        set(fingerList) {
            this.setFingerList(fingerList)
        }
    }
    public mut open prop fingerInfos: Option<ArrayList<FingerInfo>>
    {
        get() {
            return this.getFingerInfos()
        }
        set(fingerInfos) {
            let fingerInfos_NonNull = match (fingerInfos as ArrayList<FingerInfo>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setFingerInfos(fingerInfos_NonNull)
        }
    }
    BaseGestureEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    BaseGestureEventInternal() {
        super(BaseGestureEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._BaseGestureEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._BaseGestureEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): BaseGestureEventInternal {
        return BaseGestureEventInternal(ptr)
    }
    private func getFingerList(): ArrayList<FingerInfo> {
        return this.getFingerList_serialize()
    }
    private func setFingerList(fingerList: ArrayList<FingerInfo>): Unit {
        let fingerList_casted: ArrayList<FingerInfo> = fingerList
        let thisPeer = this
        thisPeer.setFingerList_serialize(fingerList_casted)
        return
    }
    private func getFingerInfos(): Option<ArrayList<FingerInfo>> {
        return this.getFingerInfos_serialize()
    }
    private func setFingerInfos(fingerInfos: Option<ArrayList<FingerInfo>>): Unit {
        let fingerInfos_casted: Option<ArrayList<FingerInfo>> = if (let Some(fingerInfos) <- fingerInfos) {fingerInfos} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setFingerInfos_serialize(fingerInfos_casted)
        return
    }
    private func getFingerList_serialize(): ArrayList<FingerInfo> {
        let retval = ArkUIGeneratedNativeModule._BaseGestureEvent_getFingerList(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<FingerInfo> = ArrayList<FingerInfo>(Int64(bufferLength))
        buffer = ArrayList<FingerInfo>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = FingerInfo_serializer.read(retvalDeserializer)
        }
        let returnResult: ArrayList<FingerInfo> = buffer
        return returnResult
    }
    private func setFingerList_serialize(fingerList: ArrayList<FingerInfo>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(fingerList.size));
        for (fingerListCounterI in 0..fingerList.size) {
            let fingerListTmpElement: FingerInfo = fingerList[Int64(fingerListCounterI)]
            FingerInfo_serializer.write(thisSerializer, fingerListTmpElement);
        }
        ArkUIGeneratedNativeModule._BaseGestureEvent_setFingerList(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getFingerInfos_serialize(): Option<ArrayList<FingerInfo>> {
        let retval = ArkUIGeneratedNativeModule._BaseGestureEvent_getFingerInfos(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<ArrayList<FingerInfo>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let buffer_Length: Int32 = retvalDeserializer.readInt32()
            var buffer_: ArrayList<FingerInfo> = ArrayList<FingerInfo>(Int64(buffer_Length))
            buffer_ = ArrayList<FingerInfo>(Int64(buffer_Length))
            for (buffer_BufCounterI in 0..buffer_Length) {
                buffer_[Int64(buffer_BufCounterI)] = FingerInfo_serializer.read(retvalDeserializer)
            }
            buffer = buffer_
        }
        let returnResult: Option<ArrayList<FingerInfo>> = buffer
        return returnResult
    }
    private func setFingerInfos_serialize(fingerInfos: Option<ArrayList<FingerInfo>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fingerInfos.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fingerInfosTmpValue = fingerInfos
            thisSerializer.writeInt32(Int32(fingerInfosTmpValue.size));
            for (fingerInfosTmpValueCounterI in 0..fingerInfosTmpValue.size) {
                let fingerInfosTmpValueTmpElement: FingerInfo = fingerInfosTmpValue[Int64(fingerInfosTmpValueCounterI)]
                FingerInfo_serializer.write(thisSerializer, fingerInfosTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseGestureEvent_setFingerInfos(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class BaseGestureEvent_serializer {
    public static func write(buffer: SerializerBase, value: BaseGestureEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): BaseGestureEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return BaseGestureEventInternal.fromPtr(ptr)
    }
}
