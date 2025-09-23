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

package idlize.peers
import idlize.commonPara.*

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public open class ArkTextPickerPeer <: ArkCommonMethodPeer {
    init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    public  static func create(component: Option<ComponentBase>, flags!: Int32 = 0): ArkTextPickerPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._TextPicker_construct(peerId, flags)
        let _peer = ArkTextPickerPeer(_peerPtr, peerId, "TextPicker", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public func textPickerOptionsAttribute(options: Option<TextPickerOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let optionsTmpValue = options
            TextPickerOptions_serializer.write(thisSerializer, optionsTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TextPickerInterface_setTextPickerOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func defaultPickerItemHeightAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDefaultPickerItemHeight_number(this.peer.ptr, value)
    }
    public func defaultPickerItemHeightAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDefaultPickerItemHeight_String(this.peer.ptr, value)
    }
    public func canLoopAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TextPickerAttribute_setCanLoop(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) })
    }
    public func disappearTextStyleAttribute(value: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", value)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDisappearTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func textStyleAttribute(value: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", value)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func selectedTextStyleAttribute(value: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", value)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setSelectedTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func onAcceptAttribute(callback_: ((value: String, index: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnAccept(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func onCancelAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnCancel(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func onChangeAttribute(callback_: ((value: Array<String>, index: Array<Float64>) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func onScrollStopAttribute(callback_: TextPickerScrollStopCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnScrollStop(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func selectedIndexAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TextPickerAttribute_setSelectedIndex(this.peer.ptr, value)
    }
    public func dividerAttribute(value: Option<DividerOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            DividerOptions_serializer.write(thisSerializer, valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setDivider(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func gradientHeightAttribute(value: Dimension): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0))
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0)
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1))
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1)
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2))
            let valueForIdx2 = value.getValue2()
            Resource_serializer.write(thisSerializer, valueForIdx2)
        } else {
            throw Exception("One of the branches for value has to be chosen for serialisation.")
        }
        ArkUIGeneratedNativeModule._TextPickerAttribute_setGradientHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func onChangeEvent_selectedAttribute(callback: ((selected: Array<Float64>) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnChangeEvent_selected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func onChangeEvent_valueAttribute(callback: ((value: Array<String>) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback)
        ArkUIGeneratedNativeModule._TextPickerAttribute_setOnChangeEvent_value(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
}
