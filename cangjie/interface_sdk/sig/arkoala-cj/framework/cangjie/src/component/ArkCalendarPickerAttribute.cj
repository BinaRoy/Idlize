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
public interface CalendarPickerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class CalendarPickerAttribute <: CalendarPickerAttributeInterfaces {
    CalendarPickerAttribute() {
    }
}
public interface CalendarPickerAttribute {
}
public open class ArkCalendarPickerComponent <: ArkCommonMethodComponent & CalendarPickerAttribute {
    public open func getPeer(): ArkCalendarPickerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCalendarPickerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setCalendarPickerOptions(options: Option<CalendarOptions>): Unit {
        if (this.checkPriority("setCalendarPickerOptions")) {
            let options_casted: Option<CalendarOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCalendarPickerOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func edgeAlign(alignType: Option<CalendarAlign>, offset: Option<Offset>): Unit {
        if (this.checkPriority("edgeAlign")) {
            let alignType_casted: Option<CalendarAlign> = if (let Some(alignType) <- alignType) {alignType} else { throw Exception("Type has to be not None")}
            let offset_casted: Option<Offset> = if (let Some(offset) <- offset) {offset} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEdgeAlignAttribute(alignType_casted, offset_casted)
            return
        }
        return
    }
    )
    public open func textStyle(style: Option<PickerTextStyle>): Unit {
        if (this.checkPriority("textStyle")) {
            let style_casted: Option<PickerTextStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTextStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: Option<((parameter: DateTime) -> Unit)>): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: Option<((parameter: DateTime) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func markToday(enabled: Bool): Unit {
        if (this.checkPriority("markToday")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setMarkTodayAttribute(enabled_casted)
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
class CalendarPickerAttributeStyleHolder {
    var value: ?((attributes: CalendarPickerAttribute) -> Unit)
    init (value: ?((attributes: CalendarPickerAttribute) -> Unit)) {
        this.value = value
    }
}

class CalendarPickerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkCalendarPicker(
        style: ?((attributes: CalendarPickerAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<CalendarOptions>
    ): Unit {
        let styleHolder = CalendarPickerAttributeStyleHolder(style)
        let contentHolder = CalendarPickerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkCalendarPickerComponent()
        })
        NodeAttach<ArkCalendarPickerPeer>({ => ArkCalendarPickerPeer.create(receiver, 0) }) {
            receiver.setCalendarPickerOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
