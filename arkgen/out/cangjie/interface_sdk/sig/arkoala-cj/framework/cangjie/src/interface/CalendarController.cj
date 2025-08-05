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
public open class CalendarControllerInternal {
    public static func fromPtr(ptr: UInt64): CalendarController {
        return CalendarController(ptr)
    }
}
public open class CalendarController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    CalendarController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, CalendarController.getFinalizer())
    }
    CalendarController() {
        super(CalendarController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._CalendarController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._CalendarController_getFinalizer()
    }
    public open func backToToday(): Unit {
        let thisPeer = this
        thisPeer.backToToday_serialize()
        return
    }
    public open func goTo(value: Literal_Number_day_month_year): Unit {
        let value_casted: Literal_Number_day_month_year = value
        let thisPeer = this
        thisPeer.goTo_serialize(value_casted)
        return
    }
    private func backToToday_serialize(): Unit {
        ArkUIGeneratedNativeModule._CalendarController_backToToday(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func goTo_serialize(value: Literal_Number_day_month_year): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let valueYear = value.year
        thisSerializer.writeNumber(valueYear);
        let valueMonth = value.month
        thisSerializer.writeNumber(valueMonth);
        let valueDay = value.day
        thisSerializer.writeNumber(valueDay);
        ArkUIGeneratedNativeModule._CalendarController_goTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class CalendarController_serializer {
    public static func write(buffer: SerializerBase, value: CalendarController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): CalendarController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return CalendarControllerInternal.fromPtr(ptr)
    }
}
