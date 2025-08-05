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
public open class ArkSaveButtonPeer <: ArkSecurityComponentMethodPeer {
    protected ArkSaveButtonPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSaveButtonPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._SaveButton_construct(peerId, flags)
        let _peer = ArkSaveButtonPeer(_peerPtr, peerId, "SaveButton", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSaveButtonOptions0Attribute(): Unit {
        ArkUIGeneratedNativeModule._SaveButtonInterface_setSaveButtonOptions0(this.peer.ptr);
    }
    public open func setSaveButtonOptions1Attribute(options: SaveButtonOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SaveButtonOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._SaveButtonInterface_setSaveButtonOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnClickAttribute(event: SaveButtonCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._SaveButtonAttribute_setOnClick(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSetIconAttribute(icon: Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", icon);
        ArkUIGeneratedNativeModule._SaveButtonAttribute_setSetIcon(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSetTextAttribute(text: Union_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (text.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let textForIdx0 = text.getValue0()
            thisSerializer.writeString(textForIdx0);
        } else if (text.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let textForIdx1 = text.getValue1()
            thisSerializer.writeCustomObject("Any", textForIdx1);
        }
        ArkUIGeneratedNativeModule._SaveButtonAttribute_setSetText(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIconSizeAttribute(size: Union_Dimension_SizeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (size.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let sizeForIdx0 = size.getValue0()
            if (sizeForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let sizeForIdx0ForIdx0 = sizeForIdx0.getValue0()
                thisSerializer.writeString(sizeForIdx0ForIdx0);
            } else if (sizeForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let sizeForIdx0ForIdx1 = sizeForIdx0.getValue1()
                thisSerializer.writeNumber(sizeForIdx0ForIdx1);
            } else if (sizeForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let sizeForIdx0ForIdx2 = sizeForIdx0.getValue2()
                thisSerializer.writeCustomObject("Any", sizeForIdx0ForIdx2);
            }
        } else if (size.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let sizeForIdx1 = size.getValue1()
            SizeOptions_serializer.write(thisSerializer, sizeForIdx1);
        }
        ArkUIGeneratedNativeModule._SaveButtonAttribute_setIconSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIconBorderRadiusAttribute(radius: Union_Dimension_BorderRadiuses): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (radius.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let radiusForIdx0 = radius.getValue0()
            if (radiusForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let radiusForIdx0ForIdx0 = radiusForIdx0.getValue0()
                thisSerializer.writeString(radiusForIdx0ForIdx0);
            } else if (radiusForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let radiusForIdx0ForIdx1 = radiusForIdx0.getValue1()
                thisSerializer.writeNumber(radiusForIdx0ForIdx1);
            } else if (radiusForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let radiusForIdx0ForIdx2 = radiusForIdx0.getValue2()
                thisSerializer.writeCustomObject("Any", radiusForIdx0ForIdx2);
            }
        } else if (radius.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let radiusForIdx1 = radius.getValue1()
            BorderRadiuses_serializer.write(thisSerializer, radiusForIdx1);
        }
        ArkUIGeneratedNativeModule._SaveButtonAttribute_setIconBorderRadius(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStateEffectAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._SaveButtonAttribute_setStateEffect(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
    public open func setTipPositionAttribute(position: SaveButtonTipPosition): Unit {
        ArkUIGeneratedNativeModule._SaveButtonAttribute_setTipPosition(this.peer.ptr, position.value);
    }
}
