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
public open class ArkCalendarPeer <: PeerNode {
    protected ArkCalendarPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCalendarPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Calendar_construct(peerId, flags)
        let _peer = ArkCalendarPeer(_peerPtr, peerId, "Calendar", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setCalendarOptionsAttribute(value: Type_CalendarInterface_callable0_value): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let valueDate = value.date
        let valueDateYear = valueDate.year
        thisSerializer.writeNumber(valueDateYear);
        let valueDateMonth = valueDate.month
        thisSerializer.writeNumber(valueDateMonth);
        let valueDateDay = valueDate.day
        thisSerializer.writeNumber(valueDateDay);
        let valueCurrentData = value.currentData
        MonthData_serializer.write(thisSerializer, valueCurrentData);
        let valuePreData = value.preData
        MonthData_serializer.write(thisSerializer, valuePreData);
        let valueNextData = value.nextData
        MonthData_serializer.write(thisSerializer, valueNextData);
        let valueController = value.controller
        if (valueController.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueControllerTmpValue = valueController
            CalendarController_serializer.write(thisSerializer, valueControllerTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CalendarInterface_setCalendarOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowLunarAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CalendarAttribute_setShowLunar(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setShowHolidayAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CalendarAttribute_setShowHoliday(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setNeedSlideAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._CalendarAttribute_setNeedSlide(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setStartOfWeekAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CalendarAttribute_setStartOfWeek(this.peer.ptr, value);
    }
    public open func setOffDaysAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CalendarAttribute_setOffDays(this.peer.ptr, value);
    }
    public open func setDirectionAttribute(value: Axis): Unit {
        ArkUIGeneratedNativeModule._CalendarAttribute_setDirection(this.peer.ptr, value.value);
    }
    public open func setCurrentDayStyleAttribute(value: CurrentDayStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        CurrentDayStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CalendarAttribute_setCurrentDayStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNonCurrentDayStyleAttribute(value: NonCurrentDayStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NonCurrentDayStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CalendarAttribute_setNonCurrentDayStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTodayStyleAttribute(value: TodayStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TodayStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CalendarAttribute_setTodayStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setWeekStyleAttribute(value: WeekStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        WeekStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CalendarAttribute_setWeekStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setWorkStateStyleAttribute(value: WorkStateStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        WorkStateStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._CalendarAttribute_setWorkStateStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelectChangeAttribute(event: ((event: CalendarSelectedDate) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CalendarAttribute_setOnSelectChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRequestDataAttribute(event: ((event: CalendarRequestedData) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CalendarAttribute_setOnRequestData(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
