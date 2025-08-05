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
public interface CalendarAttributeInterfaces <:  {
}
public open class CalendarAttribute <: CalendarAttributeInterfaces {
    CalendarAttribute() {
    }
}
public interface CalendarAttribute {
}
public open class ArkCalendarComponent <: ComponentBase & CalendarAttribute {
    public open func getPeer(): ArkCalendarPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCalendarPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setCalendarOptions(value: Type_CalendarInterface_callable0_value): Unit {
        if (this.checkPriority("setCalendarOptions")) {
            let value_casted: Type_CalendarInterface_callable0_value = value
            let thisPeer = this.getPeer()
            thisPeer.setCalendarOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func showLunar(value: Bool): Unit {
        if (this.checkPriority("showLunar")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setShowLunarAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func showHoliday(value: Bool): Unit {
        if (this.checkPriority("showHoliday")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setShowHolidayAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func needSlide(value: Bool): Unit {
        if (this.checkPriority("needSlide")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setNeedSlideAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func startOfWeek(value: Float64): Unit {
        if (this.checkPriority("startOfWeek")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setStartOfWeekAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func offDays(value: Float64): Unit {
        if (this.checkPriority("offDays")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setOffDaysAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func direction(value: Axis): Unit {
        if (this.checkPriority("direction")) {
            let value_casted: Axis = value
            let thisPeer = this.getPeer()
            thisPeer.setDirectionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func currentDayStyle(value: CurrentDayStyle): Unit {
        if (this.checkPriority("currentDayStyle")) {
            let value_casted: CurrentDayStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setCurrentDayStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func nonCurrentDayStyle(value: NonCurrentDayStyle): Unit {
        if (this.checkPriority("nonCurrentDayStyle")) {
            let value_casted: NonCurrentDayStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setNonCurrentDayStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func todayStyle(value: TodayStyle): Unit {
        if (this.checkPriority("todayStyle")) {
            let value_casted: TodayStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setTodayStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func weekStyle(value: WeekStyle): Unit {
        if (this.checkPriority("weekStyle")) {
            let value_casted: WeekStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setWeekStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func workStateStyle(value: WorkStateStyle): Unit {
        if (this.checkPriority("workStateStyle")) {
            let value_casted: WorkStateStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setWorkStateStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onSelectChange(event: ((event: CalendarSelectedDate) -> Unit)): Unit {
        if (this.checkPriority("onSelectChange")) {
            let event_casted: ((event: CalendarSelectedDate) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnSelectChangeAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onRequestData(event: ((event: CalendarRequestedData) -> Unit)): Unit {
        if (this.checkPriority("onRequestData")) {
            let event_casted: ((event: CalendarRequestedData) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnRequestDataAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class CalendarAttributeStyleHolder {
    var value: ?((attributes: CalendarAttribute) -> Unit)
    init (value: ?((attributes: CalendarAttribute) -> Unit)) {
        this.value = value
    }
}

class CalendarAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkCalendar(
        style: ?((attributes: CalendarAttribute) -> Unit),
        content_: ?(() -> Unit),
value: Type_CalendarInterface_callable0_value
    ): Unit {
        let styleHolder = CalendarAttributeStyleHolder(style)
        let contentHolder = CalendarAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkCalendarComponent()
        })
        NodeAttach<ArkCalendarPeer>({ => ArkCalendarPeer.create(receiver, 0) }) {
            receiver.setCalendarOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
