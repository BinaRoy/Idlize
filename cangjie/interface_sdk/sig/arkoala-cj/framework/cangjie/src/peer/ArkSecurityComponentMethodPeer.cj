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
public open class ArkSecurityComponentMethodPeer <: PeerNode {
    protected ArkSecurityComponentMethodPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSecurityComponentMethodPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._SecurityComponentMethod_construct(peerId, flags)
        let _peer = ArkSecurityComponentMethodPeer(_peerPtr, peerId, "SecurityComponentMethod", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setIconSizeAttribute(value: Dimension): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setIconSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLayoutDirectionAttribute(value: SecurityComponentLayoutDirection): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setLayoutDirection(this.peer.ptr, value.value);
    }
    public open func setPositionAttribute(value: Position): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Position_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setPosition(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMarkAnchorAttribute(value: Position): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Position_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setMarkAnchor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOffsetAttribute(value: Union_Position_Edges_LocalizedEdges): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            Position_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            Edges_serializer.write(thisSerializer, valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            LocalizedEdges_serializer.write(thisSerializer, valueForIdx2);
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setOffset(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontSizeAttribute(value: Dimension): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontStyleAttribute(value: FontStyle): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setFontStyle(this.peer.ptr, value.value);
    }
    public open func setFontWeightAttribute(value: Union_Number_FontWeight_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(valueForIdx1.value);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setFontWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontFamilyAttribute(value: Union_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setFontFamily(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIconColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setIconColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderStyleAttribute(value: BorderStyle): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setBorderStyle(this.peer.ptr, value.value);
    }
    public open func setBorderWidthAttribute(value: Dimension): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setBorderWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderColorAttribute(value: ResourceColor): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setBorderColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderRadiusAttribute(radius: Union_Dimension_BorderRadiuses): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setBorderRadius(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPaddingAttribute(value: Union_Padding_Dimension): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            Padding_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            if (valueForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx1ForIdx0 = valueForIdx1.getValue0()
                thisSerializer.writeString(valueForIdx1ForIdx0);
            } else if (valueForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx1ForIdx1 = valueForIdx1.getValue1()
                thisSerializer.writeNumber(valueForIdx1ForIdx1);
            } else if (valueForIdx1.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx1ForIdx2 = valueForIdx1.getValue2()
                thisSerializer.writeCustomObject("Any", valueForIdx1ForIdx2);
            }
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setPadding(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextIconSpaceAttribute(value: Dimension): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setTextIconSpace(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setKeyAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setKey(this.peer.ptr, value);
    }
    public open func setWidthAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHeightAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSizeAttribute(value: SizeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SizeOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setConstraintSizeAttribute(value: ConstraintSizeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ConstraintSizeOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setConstraintSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAlignAttribute(alignType: Alignment): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setAlign(this.peer.ptr, alignType.value);
    }
    public open func setAlignRules0Attribute(alignRule: AlignRuleOption): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AlignRuleOption_serializer.write(thisSerializer, alignRule);
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setAlignRules0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAlignRules1Attribute(alignRule: LocalizedAlignRuleOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        LocalizedAlignRuleOptions_serializer.write(thisSerializer, alignRule);
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setAlignRules1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setIdAttribute(description: String): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setId(this.peer.ptr, description);
    }
    public open func setChainModeAttribute(direction: Axis, style: ChainStyle): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setChainMode(this.peer.ptr, direction.value, style.value);
    }
    public open func setMinFontScaleAttribute(scale: Union_Number_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scale.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let scaleForIdx0 = scale.getValue0()
            thisSerializer.writeNumber(scaleForIdx0);
        } else if (scale.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let scaleForIdx1 = scale.getValue1()
            thisSerializer.writeCustomObject("Any", scaleForIdx1);
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setMinFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxFontScaleAttribute(scale: Union_Number_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scale.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let scaleForIdx0 = scale.getValue0()
            thisSerializer.writeNumber(scaleForIdx0);
        } else if (scale.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let scaleForIdx1 = scale.getValue1()
            thisSerializer.writeCustomObject("Any", scaleForIdx1);
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setMaxFontScale(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxLinesAttribute(line: Union_Number_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (line.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let lineForIdx0 = line.getValue0()
            thisSerializer.writeNumber(lineForIdx0);
        } else if (line.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let lineForIdx1 = line.getValue1()
            thisSerializer.writeCustomObject("Any", lineForIdx1);
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setMaxLines(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMinFontSizeAttribute(minSize: Union_Number_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (minSize.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let minSizeForIdx0 = minSize.getValue0()
            thisSerializer.writeNumber(minSizeForIdx0);
        } else if (minSize.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let minSizeForIdx1 = minSize.getValue1()
            thisSerializer.writeString(minSizeForIdx1);
        } else if (minSize.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let minSizeForIdx2 = minSize.getValue2()
            thisSerializer.writeCustomObject("Any", minSizeForIdx2);
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setMinFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxFontSizeAttribute(maxSize: Union_Number_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (maxSize.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let maxSizeForIdx0 = maxSize.getValue0()
            thisSerializer.writeNumber(maxSizeForIdx0);
        } else if (maxSize.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let maxSizeForIdx1 = maxSize.getValue1()
            thisSerializer.writeString(maxSizeForIdx1);
        } else if (maxSize.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let maxSizeForIdx2 = maxSize.getValue2()
            thisSerializer.writeCustomObject("Any", maxSizeForIdx2);
        }
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setMaxFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHeightAdaptivePolicyAttribute(policy: TextHeightAdaptivePolicy): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setHeightAdaptivePolicy(this.peer.ptr, policy.value);
    }
    public open func setEnabledAttribute(respond: Bool): Unit {
        ArkUIGeneratedNativeModule._SecurityComponentMethod_setEnabled(this.peer.ptr, if (respond) { Int32(1) } else { Int32(0) });
    }
}
