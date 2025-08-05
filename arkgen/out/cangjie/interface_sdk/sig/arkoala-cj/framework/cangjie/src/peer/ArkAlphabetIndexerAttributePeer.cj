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
public open class ArkAlphabetIndexerPeer <: ArkCommonMethodPeer {
    protected ArkAlphabetIndexerPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkAlphabetIndexerPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._AlphabetIndexer_construct(peerId, flags)
        let _peer = ArkAlphabetIndexerPeer(_peerPtr, peerId, "AlphabetIndexer", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setAlphabetIndexerOptionsAttribute(options: AlphabetIndexerOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AlphabetIndexerOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._AlphabetIndexerInterface_setAlphabetIndexerOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelectedAttribute(callback_: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setOnSelected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setSelectedColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPopupColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedBackgroundColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setSelectedBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPopupBackgroundAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupBackground(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPopupSelectedColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupSelectedColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPopupUnselectedColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupUnselectedColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPopupItemBackgroundColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupItemBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setUsingPopupAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setUsingPopup(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setSelectedFontAttribute(value: Font): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Font_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setSelectedFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPopupFontAttribute(value: Font): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Font_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPopupItemFontAttribute(value: Font): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Font_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupItemFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setItemSizeAttribute(value: Union_String_Number): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setItemSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontAttribute(value: Font): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Font_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAlignStyleAttribute(value: IndexerAlign, offset: Option<Length>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (offset.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let offsetTmpValue = offset
            if (offsetTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let offsetTmpValueForIdx0 = offsetTmpValue.getValue0()
                thisSerializer.writeString(offsetTmpValueForIdx0);
            } else if (offsetTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let offsetTmpValueForIdx1 = offsetTmpValue.getValue1()
                thisSerializer.writeNumber(offsetTmpValueForIdx1);
            } else if (offsetTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let offsetTmpValueForIdx2 = offsetTmpValue.getValue2()
                thisSerializer.writeCustomObject("Any", offsetTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setAlignStyle(this.peer.ptr, value.value, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSelectAttribute(callback_: OnAlphabetIndexerSelectCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setOnSelect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRequestPopupDataAttribute(callback_: OnAlphabetIndexerRequestPopupDataCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setOnRequestPopupData(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPopupSelectAttribute(callback_: OnAlphabetIndexerPopupSelectCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setOnPopupSelect(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectedAttribute(index: Union_Number_Bindable): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (index.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let indexForIdx0 = index.getValue0()
            thisSerializer.writeNumber(indexForIdx0);
        } else if (index.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let indexForIdx1 = index.getValue1()
            thisSerializer.writeCustomObject("Any", indexForIdx1);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setSelected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPopupPositionAttribute(value: Position): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Position_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupPosition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAutoCollapseAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setAutoCollapse(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setPopupItemBorderRadiusAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupItemBorderRadius(this.peer.ptr, value);
    }
    public open func setItemBorderRadiusAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setItemBorderRadius(this.peer.ptr, value);
    }
    public open func setPopupBackgroundBlurStyleAttribute(value: BlurStyle): Unit {
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupBackgroundBlurStyle(this.peer.ptr, value.value);
    }
    public open func setPopupTitleBackgroundAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setPopupTitleBackground(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableHapticFeedbackAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_setEnableHapticFeedback(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func set_onChangeEvent_selectedAttribute(callback: ((selected: Union_Number_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._AlphabetIndexerAttribute_set_onChangeEvent_selected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
