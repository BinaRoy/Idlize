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
public open class ArkCheckboxPeer <: ArkCommonMethodPeer {
    protected ArkCheckboxPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCheckboxPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Checkbox_construct(peerId, flags)
        let _peer = ArkCheckboxPeer(_peerPtr, peerId, "Checkbox", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setCheckboxOptionsAttribute(options: Option<CheckboxOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            CheckboxOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CheckboxInterface_setCheckboxOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectAttribute(isSelected: Option<Union_Boolean_Bindable>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isSelected.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isSelectedTmpValue = isSelected
            if (isSelectedTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let isSelectedTmpValueForIdx0 = isSelectedTmpValue.getValue0()
                thisSerializer.writeBoolean(isSelectedTmpValueForIdx0);
            } else if (isSelectedTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let isSelectedTmpValueForIdx1 = isSelectedTmpValue.getValue1()
                thisSerializer.writeCustomObject("Any", isSelectedTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CheckboxAttribute_setSelect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedColorAttribute(resColor: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resColor.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resColorTmpValue = resColor
            if (resColorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resColorTmpValueForIdx0 = resColorTmpValue.getValue0()
                thisSerializer.writeInt32(resColorTmpValueForIdx0.value);
            } else if (resColorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resColorTmpValueForIdx1 = resColorTmpValue.getValue1()
                thisSerializer.writeNumber(resColorTmpValueForIdx1);
            } else if (resColorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resColorTmpValueForIdx2 = resColorTmpValue.getValue2()
                thisSerializer.writeString(resColorTmpValueForIdx2);
            } else if (resColorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let resColorTmpValueForIdx3 = resColorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", resColorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CheckboxAttribute_setSelectedColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShapeAttribute(shape: Option<CheckBoxShape>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (shape.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let shapeTmpValue = shape
            thisSerializer.writeInt32(shapeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CheckboxAttribute_setShape(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setUnselectedColorAttribute(resColor: Option<ResourceColor>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (resColor.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let resColorTmpValue = resColor
            if (resColorTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let resColorTmpValueForIdx0 = resColorTmpValue.getValue0()
                thisSerializer.writeInt32(resColorTmpValueForIdx0.value);
            } else if (resColorTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let resColorTmpValueForIdx1 = resColorTmpValue.getValue1()
                thisSerializer.writeNumber(resColorTmpValueForIdx1);
            } else if (resColorTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let resColorTmpValueForIdx2 = resColorTmpValue.getValue2()
                thisSerializer.writeString(resColorTmpValueForIdx2);
            } else if (resColorTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let resColorTmpValueForIdx3 = resColorTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", resColorTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CheckboxAttribute_setUnselectedColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMarkAttribute(style: Option<MarkStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            MarkStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CheckboxAttribute_setMark(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChangeAttribute(callback_: Option<OnCheckboxChangeCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CheckboxAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setContentModifierAttribute(modifier: Option<ContentModifier<CheckBoxConfiguration>>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (modifier.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let modifierTmpValue = modifier
            thisSerializer.holdAndWriteObject(modifierTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CheckboxAttribute_setContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_selectAttribute(callback: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._CheckboxAttribute_set_onChangeEvent_select(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
