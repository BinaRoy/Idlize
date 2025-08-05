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
public interface TimePickerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class TimePickerAttribute <: TimePickerAttributeInterfaces {
    TimePickerAttribute() {
    }
}
public interface TimePickerAttribute {
}
public open class ArkTimePickerComponent <: ArkCommonMethodComponent & TimePickerAttribute {
    public open func getPeer(): ArkTimePickerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTimePickerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setTimePickerOptions(options: Option<TimePickerOptions>): Unit {
        if (this.checkPriority("setTimePickerOptions")) {
            let options_casted: Option<TimePickerOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTimePickerOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func useMilitaryTime(isMilitaryTime: Option<Bool>): Unit {
        if (this.checkPriority("useMilitaryTime")) {
            let isMilitaryTime_casted: Option<Bool> = if (let Some(isMilitaryTime) <- isMilitaryTime) {isMilitaryTime} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setUseMilitaryTimeAttribute(isMilitaryTime_casted)
            return
        }
        return
    }
    )
    public open func loop(isLoop: Option<Bool>): Unit {
        if (this.checkPriority("loop")) {
            let isLoop_casted: Option<Bool> = if (let Some(isLoop) <- isLoop) {isLoop} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLoopAttribute(isLoop_casted)
            return
        }
        return
    }
    )
    public open func disappearTextStyle(style: Option<PickerTextStyle>): Unit {
        if (this.checkPriority("disappearTextStyle")) {
            let style_casted: Option<PickerTextStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDisappearTextStyleAttribute(style_casted)
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
    public open func selectedTextStyle(style: Option<PickerTextStyle>): Unit {
        if (this.checkPriority("selectedTextStyle")) {
            let style_casted: Option<PickerTextStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSelectedTextStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func dateTimeOptions(timeFormat: Option<DateTimeOptions>): Unit {
        if (this.checkPriority("dateTimeOptions")) {
            let timeFormat_casted: Option<DateTimeOptions> = if (let Some(timeFormat) <- timeFormat) {timeFormat} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDateTimeOptionsAttribute(timeFormat_casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: ((value: TimePickerResult) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((value: TimePickerResult) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChange0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onChange(callback_: Option<OnTimePickerChangeCallback>): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: Option<OnTimePickerChangeCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnChange1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onEnterSelectedArea(callback_: ((value: TimePickerResult) -> Unit)): Unit {
        if (this.checkPriority("onEnterSelectedArea")) {
            let callback__casted: ((value: TimePickerResult) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnEnterSelectedAreaAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func enableHapticFeedback(enable: Option<Bool>): Unit {
        if (this.checkPriority("enableHapticFeedback")) {
            let enable_casted: Option<Bool> = if (let Some(enable) <- enable) {enable} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setEnableHapticFeedbackAttribute(enable_casted)
            return
        }
        return
    }
    )
    public open func digitalCrownSensitivity(sensitivity: Option<CrownSensitivity>): Unit {
        if (this.checkPriority("digitalCrownSensitivity")) {
            let sensitivity_casted: Option<CrownSensitivity> = if (let Some(sensitivity) <- sensitivity) {sensitivity} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDigitalCrownSensitivityAttribute(sensitivity_casted)
            return
        }
        return
    }
    )
    public open func enableCascade(enabled: Bool): Unit {
        if (this.checkPriority("enableCascade")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setEnableCascadeAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_selected(callback: ((selected: Union_Date_Bindable) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_selected")) {
            let callback_casted: ((selected: Union_Date_Bindable) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectedAttribute(callback_casted)
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
class TimePickerAttributeStyleHolder {
    var value: ?((attributes: TimePickerAttribute) -> Unit)
    init (value: ?((attributes: TimePickerAttribute) -> Unit)) {
        this.value = value
    }
}

class TimePickerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkTimePicker(
        style: ?((attributes: TimePickerAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<TimePickerOptions>
    ): Unit {
        let styleHolder = TimePickerAttributeStyleHolder(style)
        let contentHolder = TimePickerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkTimePickerComponent()
        })
        NodeAttach<ArkTimePickerPeer>({ => ArkTimePickerPeer.create(receiver, 0) }) {
            receiver.setTimePickerOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
