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
public interface TapGestureEvent {
    public mut open prop tapLocation: Option<EventLocationInfo>
}
public open class TapGestureEventInternal <: BaseGestureEventInternal & MaterializedBase & TapGestureEvent {
    public mut open prop tapLocation: Option<EventLocationInfo>
    {
        get() {
            return this.getTapLocation()
        }
        set(tapLocation) {
            let tapLocation_NonNull = match (tapLocation as EventLocationInfo) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setTapLocation(tapLocation_NonNull)
        }
    }
    TapGestureEventInternal(peerPtr: UInt64) {
        super(peerPtr)
    }
    TapGestureEventInternal() {
        super(TapGestureEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TapGestureEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TapGestureEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): TapGestureEventInternal {
        return TapGestureEventInternal(ptr)
    }
    private func getTapLocation(): Option<EventLocationInfo> {
        return this.getTapLocation_serialize()
    }
    private func setTapLocation(tapLocation: Option<EventLocationInfo>): Unit {
        let tapLocation_casted: Option<EventLocationInfo> = if (let Some(tapLocation) <- tapLocation) {tapLocation} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTapLocation_serialize(tapLocation_casted)
        return
    }
    private func getTapLocation_serialize(): Option<EventLocationInfo> {
        let retval = ArkUIGeneratedNativeModule._TapGestureEvent_getTapLocation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<EventLocationInfo> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = EventLocationInfo_serializer.read(retvalDeserializer)
        }
        let returnResult: Option<EventLocationInfo> = buffer
        return returnResult
    }
    private func setTapLocation_serialize(tapLocation: Option<EventLocationInfo>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (tapLocation.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let tapLocationTmpValue = tapLocation
            EventLocationInfo_serializer.write(thisSerializer, tapLocationTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TapGestureEvent_setTapLocation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class TapGestureEvent_serializer {
    public static func write(buffer: SerializerBase, value: TapGestureEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TapGestureEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TapGestureEventInternal.fromPtr(ptr)
    }
}
