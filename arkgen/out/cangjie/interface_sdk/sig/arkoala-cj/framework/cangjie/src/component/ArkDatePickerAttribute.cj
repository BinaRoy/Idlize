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
public interface DatePickerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class DatePickerAttribute <: DatePickerAttributeInterfaces {
    DatePickerAttribute() {
    }
}
public interface DatePickerAttribute {
}
public open class ArkDatePickerComponent <: ArkCommonMethodComponent & DatePickerAttribute {
    public open func getPeer(): ArkDatePickerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkDatePickerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setDatePickerOptions(options: Option<DatePickerOptions>): Unit {
        if (this.checkPriority("setDatePickerOptions")) {
            let options_casted: Option<DatePickerOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDatePickerOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func lunar(isLunar: Option<Bool>): Unit {
        if (this.checkPriority("lunar")) {
            let isLunar_casted: Option<Bool> = if (let Some(isLunar) <- isLunar) {isLunar} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLunarAttribute(isLunar_casted)
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
    public open func onChange(callback_: ((value: DatePickerResult) -> Unit)): Unit {
        if (this.checkPriority("onChange")) {
            let callback__casted: ((value: DatePickerResult) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDateChange(callback_: Option<((parameter: DateTime) -> Unit)>): Unit {
        if (this.checkPriority("onDateChange")) {
            let callback__casted: Option<((parameter: DateTime) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnDateChangeAttribute(callback__casted)
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
    public open func canLoop(isLoop: Option<Bool>): Unit {
        if (this.checkPriority("canLoop")) {
            let isLoop_casted: Option<Bool> = if (let Some(isLoop) <- isLoop) {isLoop} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCanLoopAttribute(isLoop_casted)
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
class DatePickerAttributeStyleHolder {
    var value: ?((attributes: DatePickerAttribute) -> Unit)
    init (value: ?((attributes: DatePickerAttribute) -> Unit)) {
        this.value = value
    }
}

class DatePickerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkDatePicker(
        style: ?((attributes: DatePickerAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<DatePickerOptions>
    ): Unit {
        let styleHolder = DatePickerAttributeStyleHolder(style)
        let contentHolder = DatePickerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkDatePickerComponent()
        })
        NodeAttach<ArkDatePickerPeer>({ => ArkDatePickerPeer.create(receiver, 0) }) {
            receiver.setDatePickerOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
