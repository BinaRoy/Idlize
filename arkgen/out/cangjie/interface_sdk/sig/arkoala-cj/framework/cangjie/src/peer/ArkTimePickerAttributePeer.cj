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
public open class ArkTimePickerPeer <: ArkCommonMethodPeer {
    protected ArkTimePickerPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkTimePickerPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._TimePicker_construct(peerId, flags)
        let _peer = ArkTimePickerPeer(_peerPtr, peerId, "TimePicker", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setTimePickerOptionsAttribute(options: Option<TimePickerOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            TimePickerOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerInterface_setTimePickerOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setUseMilitaryTimeAttribute(isMilitaryTime: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isMilitaryTime.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isMilitaryTimeTmpValue = isMilitaryTime
            thisSerializer.writeBoolean(isMilitaryTimeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setUseMilitaryTime(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLoopAttribute(isLoop: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isLoop.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isLoopTmpValue = isLoop
            thisSerializer.writeBoolean(isLoopTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setLoop(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDisappearTextStyleAttribute(style: Option<PickerTextStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PickerTextStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setDisappearTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextStyleAttribute(style: Option<PickerTextStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PickerTextStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedTextStyleAttribute(style: Option<PickerTextStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PickerTextStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setSelectedTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDateTimeOptionsAttribute(timeFormat: Option<DateTimeOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (timeFormat.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let timeFormatTmpValue = timeFormat
            thisSerializer.writeCustomObject("Any", timeFormatTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setDateTimeOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChange0Attribute(callback_: ((value: TimePickerResult) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TimePickerAttribute_setOnChange0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChange1Attribute(callback_: Option<OnTimePickerChangeCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setOnChange1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnEnterSelectedAreaAttribute(callback_: ((value: TimePickerResult) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._TimePickerAttribute_setOnEnterSelectedArea(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableHapticFeedbackAttribute(enable: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enable.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enableTmpValue = enable
            thisSerializer.writeBoolean(enableTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setEnableHapticFeedback(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDigitalCrownSensitivityAttribute(sensitivity: Option<CrownSensitivity>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (sensitivity.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sensitivityTmpValue = sensitivity
            thisSerializer.writeInt32(sensitivityTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TimePickerAttribute_setDigitalCrownSensitivity(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableCascadeAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._TimePickerAttribute_setEnableCascade(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
    public open func set_onChangeEvent_selectedAttribute(callback: ((selected: Union_Date_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._TimePickerAttribute_set_onChangeEvent_selected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
