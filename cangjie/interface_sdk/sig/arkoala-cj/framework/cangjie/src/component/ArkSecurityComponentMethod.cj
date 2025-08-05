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
public interface SecurityComponentMethodInterfaces <:  {
}
public open class SecurityComponentMethod <: SecurityComponentMethodInterfaces {
    SecurityComponentMethod() {
    }
}
public interface SecurityComponentMethod {
}
public open class ArkSecurityComponentMethodComponent <: ComponentBase & SecurityComponentMethod {
    public open func getPeer(): ArkSecurityComponentMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkSecurityComponentMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func iconSize(value: Dimension): Unit {
        if (this.checkPriority("iconSize")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setIconSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func layoutDirection(value: SecurityComponentLayoutDirection): Unit {
        if (this.checkPriority("layoutDirection")) {
            let value_casted: SecurityComponentLayoutDirection = value
            let thisPeer = this.getPeer()
            thisPeer.setLayoutDirectionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func position(value: Position): Unit {
        if (this.checkPriority("position")) {
            let value_casted: Position = value
            let thisPeer = this.getPeer()
            thisPeer.setPositionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func markAnchor(value: Position): Unit {
        if (this.checkPriority("markAnchor")) {
            let value_casted: Position = value
            let thisPeer = this.getPeer()
            thisPeer.setMarkAnchorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func offset(value: Union_Position_Edges_LocalizedEdges): Unit {
        if (this.checkPriority("offset")) {
            let value_casted: Union_Position_Edges_LocalizedEdges = value
            let thisPeer = this.getPeer()
            thisPeer.setOffsetAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontSize(value: Dimension): Unit {
        if (this.checkPriority("fontSize")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setFontSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontStyle(value: FontStyle): Unit {
        if (this.checkPriority("fontStyle")) {
            let value_casted: FontStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setFontStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontWeight(value: Union_Number_FontWeight_String_Resource): Unit {
        if (this.checkPriority("fontWeight")) {
            let value_casted: Union_Number_FontWeight_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFontWeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontFamily(value: Union_String_Resource): Unit {
        if (this.checkPriority("fontFamily")) {
            let value_casted: Union_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFontFamilyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fontColor(value: ResourceColor): Unit {
        if (this.checkPriority("fontColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setFontColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func iconColor(value: ResourceColor): Unit {
        if (this.checkPriority("iconColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setIconColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func backgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("backgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderStyle(value: BorderStyle): Unit {
        if (this.checkPriority("borderStyle")) {
            let value_casted: BorderStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderWidth(value: Dimension): Unit {
        if (this.checkPriority("borderWidth")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderColor(value: ResourceColor): Unit {
        if (this.checkPriority("borderColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderRadius(radius: Union_Dimension_BorderRadiuses): Unit {
        if (this.checkPriority("borderRadius")) {
            let radius_casted: Union_Dimension_BorderRadiuses = radius
            let thisPeer = this.getPeer()
            thisPeer.setBorderRadiusAttribute(radius_casted)
            return
        }
        return
    }
    )
    public open func padding(value: Union_Padding_Dimension): Unit {
        if (this.checkPriority("padding")) {
            let value_casted: Union_Padding_Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setPaddingAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func textIconSpace(value: Dimension): Unit {
        if (this.checkPriority("textIconSpace")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setTextIconSpaceAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func key(value: String): Unit {
        if (this.checkPriority("key")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setKeyAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func width(value: Length): Unit {
        if (this.checkPriority("width")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func height(value: Length): Unit {
        if (this.checkPriority("height")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setHeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func size(value: SizeOptions): Unit {
        if (this.checkPriority("size")) {
            let value_casted: SizeOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func constraintSize(value: ConstraintSizeOptions): Unit {
        if (this.checkPriority("constraintSize")) {
            let value_casted: ConstraintSizeOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setConstraintSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func align(alignType: Alignment): Unit {
        if (this.checkPriority("align")) {
            let alignType_casted: Alignment = alignType
            let thisPeer = this.getPeer()
            thisPeer.setAlignAttribute(alignType_casted)
            return
        }
        return
    }
    )
    public open func alignRules(alignRule: AlignRuleOption): Unit {
        if (this.checkPriority("alignRules")) {
            let alignRule_casted: AlignRuleOption = alignRule
            let thisPeer = this.getPeer()
            thisPeer.setAlignRules0Attribute(alignRule_casted)
            return
        }
        return
    }
    )
    public open func alignRules(alignRule: LocalizedAlignRuleOptions): Unit {
        if (this.checkPriority("alignRules")) {
            let alignRule_casted: LocalizedAlignRuleOptions = alignRule
            let thisPeer = this.getPeer()
            thisPeer.setAlignRules1Attribute(alignRule_casted)
            return
        }
        return
    }
    )
    public open func id(description: String): Unit {
        if (this.checkPriority("id")) {
            let description_casted: String = description
            let thisPeer = this.getPeer()
            thisPeer.setIdAttribute(description_casted)
            return
        }
        return
    }
    )
    public open func chainMode(direction: Axis, style: ChainStyle): Unit {
        if (this.checkPriority("chainMode")) {
            let direction_casted: Axis = direction
            let style_casted: ChainStyle = style
            let thisPeer = this.getPeer()
            thisPeer.setChainModeAttribute(direction_casted, style_casted)
            return
        }
        return
    }
    )
    public open func minFontScale(scale: Union_Number_Resource): Unit {
        if (this.checkPriority("minFontScale")) {
            let scale_casted: Union_Number_Resource = scale
            let thisPeer = this.getPeer()
            thisPeer.setMinFontScaleAttribute(scale_casted)
            return
        }
        return
    }
    )
    public open func maxFontScale(scale: Union_Number_Resource): Unit {
        if (this.checkPriority("maxFontScale")) {
            let scale_casted: Union_Number_Resource = scale
            let thisPeer = this.getPeer()
            thisPeer.setMaxFontScaleAttribute(scale_casted)
            return
        }
        return
    }
    )
    public open func maxLines(line: Union_Number_Resource): Unit {
        if (this.checkPriority("maxLines")) {
            let line_casted: Union_Number_Resource = line
            let thisPeer = this.getPeer()
            thisPeer.setMaxLinesAttribute(line_casted)
            return
        }
        return
    }
    )
    public open func minFontSize(minSize: Union_Number_String_Resource): Unit {
        if (this.checkPriority("minFontSize")) {
            let minSize_casted: Union_Number_String_Resource = minSize
            let thisPeer = this.getPeer()
            thisPeer.setMinFontSizeAttribute(minSize_casted)
            return
        }
        return
    }
    )
    public open func maxFontSize(maxSize: Union_Number_String_Resource): Unit {
        if (this.checkPriority("maxFontSize")) {
            let maxSize_casted: Union_Number_String_Resource = maxSize
            let thisPeer = this.getPeer()
            thisPeer.setMaxFontSizeAttribute(maxSize_casted)
            return
        }
        return
    }
    )
    public open func heightAdaptivePolicy(policy: TextHeightAdaptivePolicy): Unit {
        if (this.checkPriority("heightAdaptivePolicy")) {
            let policy_casted: TextHeightAdaptivePolicy = policy
            let thisPeer = this.getPeer()
            thisPeer.setHeightAdaptivePolicyAttribute(policy_casted)
            return
        }
        return
    }
    )
    public open func enabled(respond: Bool): Unit {
        if (this.checkPriority("enabled")) {
            let respond_casted: Bool = respond
            let thisPeer = this.getPeer()
            thisPeer.setEnabledAttribute(respond_casted)
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
