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
public open class ArkMenuPeer <: ArkCommonMethodPeer {
    protected ArkMenuPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkMenuPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Menu_construct(peerId, flags)
        let _peer = ArkMenuPeer(_peerPtr, peerId, "Menu", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setMenuOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._MenuInterface_setMenuOptions(this.peer.ptr);
    }
    public open func setFontSizeAttribute(value: Length): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._MenuAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontAttribute(value: Font): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Font_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._MenuAttribute_setFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._MenuAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRadiusAttribute(value: Union_Dimension_BorderRadiuses): Unit {
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
            BorderRadiuses_serializer.write(thisSerializer, valueForIdx1);
        }
        ArkUIGeneratedNativeModule._MenuAttribute_setRadius(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMenuItemDividerAttribute(options: Option<DividerStyleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            DividerStyleOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._MenuAttribute_setMenuItemDivider(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMenuItemGroupDividerAttribute(options: Option<DividerStyleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            DividerStyleOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._MenuAttribute_setMenuItemGroupDivider(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSubMenuExpandingModeAttribute(mode: SubMenuExpandingMode): Unit {
        ArkUIGeneratedNativeModule._MenuAttribute_setSubMenuExpandingMode(this.peer.ptr, mode.value);
    }
    public open func setSubMenuExpandSymbolAttribute(symbol: SymbolGlyphModifier): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", symbol);
        ArkUIGeneratedNativeModule._MenuAttribute_setSubMenuExpandSymbol(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
