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
public open class ArkPanelPeer <: ArkCommonMethodPeer {
    protected ArkPanelPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkPanelPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Panel_construct(peerId, flags)
        let _peer = ArkPanelPeer(_peerPtr, peerId, "Panel", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setPanelOptionsAttribute(show: Bool): Unit {
        ArkUIGeneratedNativeModule._PanelInterface_setPanelOptions(this.peer.ptr, if (show) { Int32(1) } else { Int32(0) });
    }
    public open func setModeAttribute(value: PanelMode): Unit {
        ArkUIGeneratedNativeModule._PanelAttribute_setMode(this.peer.ptr, value.value);
    }
    public open func setTypeAttribute(value: PanelType): Unit {
        ArkUIGeneratedNativeModule._PanelAttribute_setType(this.peer.ptr, value.value);
    }
    public open func setDragBarAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._PanelAttribute_setDragBar(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setCustomHeightAttribute(value: Union_Dimension_PanelHeight): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            if (valueForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx0ForIdx0 = valueForIdx0.getValue0()
                thisSerializer.writeString(valueForIdx0ForIdx0);
            } else if (valueForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx0ForIdx1 = valueForIdx0.getValue1()
                thisSerializer.writeNumber(valueForIdx0ForIdx1);
            } else if (valueForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx0ForIdx2 = valueForIdx0.getValue2()
                thisSerializer.writeCustomObject("Any", valueForIdx0ForIdx2);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(valueForIdx1.value);
        }
        ArkUIGeneratedNativeModule._PanelAttribute_setCustomHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFullHeightAttribute(value: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._PanelAttribute_setFullHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHalfHeightAttribute(value: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._PanelAttribute_setHalfHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMiniHeightAttribute(value: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._PanelAttribute_setMiniHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._PanelAttribute_setShow(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setBackgroundMaskAttribute(color: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let colorForIdx0 = color.getValue0()
            thisSerializer.writeInt32(colorForIdx0.value);
        } else if (color.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let colorForIdx1 = color.getValue1()
            thisSerializer.writeNumber(colorForIdx1);
        } else if (color.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let colorForIdx2 = color.getValue2()
            thisSerializer.writeString(colorForIdx2);
        } else if (color.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let colorForIdx3 = color.getValue3()
            thisSerializer.writeCustomObject("Any", colorForIdx3);
        }
        ArkUIGeneratedNativeModule._PanelAttribute_setBackgroundMask(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShowCloseIconAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._PanelAttribute_setShowCloseIcon(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setOnChangeAttribute(event: ((width: Float64, height: Float64, mode: PanelMode) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._PanelAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnHeightChangeAttribute(callback_: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._PanelAttribute_setOnHeightChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_modeAttribute(callback: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._PanelAttribute_set_onChangeEvent_mode(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
