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
public interface CommonMethodInterfaces <:  {
}
public open class CommonMethod <: CommonMethodInterfaces {
    CommonMethod() {
    }
}
public interface CommonMethod {
}
public open class ArkCommonMethodComponent <: ComponentBase & CommonMethod {
    public open func getPeer(): ArkCommonMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func width(widthValue: Union_Length_LayoutPolicy): Unit {
        if (this.checkPriority("width")) {
            let widthValue_casted: Union_Length_LayoutPolicy = widthValue
            let thisPeer = this.getPeer()
            thisPeer.setWidthAttribute(widthValue_casted)
            return
        }
        return
    }
    )
    public open func height(heightValue: Union_Length_LayoutPolicy): Unit {
        if (this.checkPriority("height")) {
            let heightValue_casted: Union_Length_LayoutPolicy = heightValue
            let thisPeer = this.getPeer()
            thisPeer.setHeightAttribute(heightValue_casted)
            return
        }
        return
    }
    )
    public open func drawModifier(modifier: Option<DrawModifier>): Unit {
        if (this.checkPriority("drawModifier")) {
            let modifier_casted: Option<DrawModifier> = if (let Some(modifier) <- modifier) {modifier} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDrawModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func customProperty(name: String, value: Option<Any>): Unit {
        if (this.checkPriority("customProperty")) {
            let name_casted: String = name
            let value_casted: Option<Any> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCustomPropertyAttribute(name_casted, value_casted)
            return
        }
        return
    }
    )
    public open func expandSafeArea(types: Option<ArrayList<SafeAreaType>>, edges: Option<ArrayList<SafeAreaEdge>>): Unit {
        if (this.checkPriority("expandSafeArea")) {
            let types_casted: Option<ArrayList<SafeAreaType>> = if (let Some(types) <- types) {types} else { throw Exception("Type has to be not None")}
            let edges_casted: Option<ArrayList<SafeAreaEdge>> = if (let Some(edges) <- edges) {edges} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setExpandSafeAreaAttribute(types_casted, edges_casted)
            return
        }
        return
    }
    )
    public open func ignoreLayoutSafeArea(types: Option<ArrayList<LayoutSafeAreaType>>, edges: Option<ArrayList<LayoutSafeAreaEdge>>): Unit {
        if (this.checkPriority("ignoreLayoutSafeArea")) {
            let types_casted: Option<ArrayList<LayoutSafeAreaType>> = if (let Some(types) <- types) {types} else { throw Exception("Type has to be not None")}
            let edges_casted: Option<ArrayList<LayoutSafeAreaEdge>> = if (let Some(edges) <- edges) {edges} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setIgnoreLayoutSafeAreaAttribute(types_casted, edges_casted)
            return
        }
        return
    }
    )
    public open func responseRegion(value: Union_Array_Rectangle_Rectangle): Unit {
        if (this.checkPriority("responseRegion")) {
            let value_casted: Union_Array_Rectangle_Rectangle = value
            let thisPeer = this.getPeer()
            thisPeer.setResponseRegionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func mouseResponseRegion(value: Union_Array_Rectangle_Rectangle): Unit {
        if (this.checkPriority("mouseResponseRegion")) {
            let value_casted: Union_Array_Rectangle_Rectangle = value
            let thisPeer = this.getPeer()
            thisPeer.setMouseResponseRegionAttribute(value_casted)
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
    public open func touchable(value: Bool): Unit {
        if (this.checkPriority("touchable")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setTouchableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func hitTestBehavior(value: HitTestMode): Unit {
        if (this.checkPriority("hitTestBehavior")) {
            let value_casted: HitTestMode = value
            let thisPeer = this.getPeer()
            thisPeer.setHitTestBehaviorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onChildTouchTest(event: ((value: ArrayList<TouchTestInfo>) -> TouchResult)): Unit {
        if (this.checkPriority("onChildTouchTest")) {
            let event_casted: ((value: ArrayList<TouchTestInfo>) -> TouchResult) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnChildTouchTestAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func layoutWeight(value: Union_Number_String): Unit {
        if (this.checkPriority("layoutWeight")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setLayoutWeightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func chainWeight(chainWeight: ChainWeightOptions): Unit {
        if (this.checkPriority("chainWeight")) {
            let chainWeight_casted: ChainWeightOptions = chainWeight
            let thisPeer = this.getPeer()
            thisPeer.setChainWeightAttribute(chainWeight_casted)
            return
        }
        return
    }
    )
    public open func padding(value: Union_Padding_Length_LocalizedPadding): Unit {
        if (this.checkPriority("padding")) {
            let value_casted: Union_Padding_Length_LocalizedPadding = value
            let thisPeer = this.getPeer()
            thisPeer.setPaddingAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func safeAreaPadding(paddingValue: Union_Padding_LengthMetrics_LocalizedPadding): Unit {
        if (this.checkPriority("safeAreaPadding")) {
            let paddingValue_casted: Union_Padding_LengthMetrics_LocalizedPadding = paddingValue
            let thisPeer = this.getPeer()
            thisPeer.setSafeAreaPaddingAttribute(paddingValue_casted)
            return
        }
        return
    }
    )
    public open func margin(value: Union_Margin_Length_LocalizedMargin): Unit {
        if (this.checkPriority("margin")) {
            let value_casted: Union_Margin_Length_LocalizedMargin = value
            let thisPeer = this.getPeer()
            thisPeer.setMarginAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func background(builder: CustomBuilder, options: Option<Literal_Alignment_align>): Unit {
        if (this.checkPriority("background")) {
            let builder_casted: CustomBuilder = builder
            let options_casted: Option<Literal_Alignment_align> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackground0Attribute(builder_casted, options_casted)
            return
        }
        return
    }
    )
    public open func background(content: Union_CustomBuilder_ResourceColor, options: Option<BackgroundOptions>): Unit {
        if (this.checkPriority("background")) {
            let content_casted: Union_CustomBuilder_ResourceColor = content
            let options_casted: Option<BackgroundOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackground1Attribute(content_casted, options_casted)
            return
        }
        return
    }
    )
    public open func backgroundColor(color: Option<Union_ResourceColor_ColorMetrics>): Unit {
        if (this.checkPriority("backgroundColor")) {
            let color_casted: Option<Union_ResourceColor_ColorMetrics> = if (let Some(color) <- color) {color} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func pixelRound(value: PixelRoundPolicy): Unit {
        if (this.checkPriority("pixelRound")) {
            let value_casted: PixelRoundPolicy = value
            let thisPeer = this.getPeer()
            thisPeer.setPixelRoundAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func backgroundImage(src: Union_ResourceStr_PixelMap, repeat: Option<ImageRepeat>): Unit {
        if (this.checkPriority("backgroundImage")) {
            let src_casted: Union_ResourceStr_PixelMap = src
            let repeat_casted: Option<ImageRepeat> = if (let Some(repeat) <- repeat) {repeat} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundImage0Attribute(src_casted, repeat_casted)
            return
        }
        return
    }
    )
    public open func backgroundImage(src: Union_ResourceStr_PixelMap, options: Option<BackgroundImageOptions>): Unit {
        if (this.checkPriority("backgroundImage")) {
            let src_casted: Union_ResourceStr_PixelMap = src
            let options_casted: Option<BackgroundImageOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundImage1Attribute(src_casted, options_casted)
            return
        }
        return
    }
    )
    public open func backgroundImageSize(value: Union_SizeOptions_ImageSize): Unit {
        if (this.checkPriority("backgroundImageSize")) {
            let value_casted: Union_SizeOptions_ImageSize = value
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundImageSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func backgroundImagePosition(value: Union_Position_Alignment): Unit {
        if (this.checkPriority("backgroundImagePosition")) {
            let value_casted: Union_Position_Alignment = value
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundImagePositionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func backgroundBlurStyle(style: Option<BlurStyle>, options: Option<BackgroundBlurStyleOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        if (this.checkPriority("backgroundBlurStyle")) {
            let style_casted: Option<BlurStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let options_casted: Option<BackgroundBlurStyleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let sysOptions_casted: Option<SystemAdaptiveOptions> = if (let Some(sysOptions) <- sysOptions) {sysOptions} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundBlurStyleAttribute(style_casted, options_casted, sysOptions_casted)
            return
        }
        return
    }
    )
    public open func backgroundEffect(options: Option<BackgroundEffectOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        if (this.checkPriority("backgroundEffect")) {
            let options_casted: Option<BackgroundEffectOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let sysOptions_casted: Option<SystemAdaptiveOptions> = if (let Some(sysOptions) <- sysOptions) {sysOptions} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundEffectAttribute(options_casted, sysOptions_casted)
            return
        }
        return
    }
    )
    public open func backgroundImageResizable(value: ResizableOptions): Unit {
        if (this.checkPriority("backgroundImageResizable")) {
            let value_casted: ResizableOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundImageResizableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func foregroundEffect(options: ForegroundEffectOptions): Unit {
        if (this.checkPriority("foregroundEffect")) {
            let options_casted: ForegroundEffectOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setForegroundEffectAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func visualEffect(effect: VisualEffect): Unit {
        if (this.checkPriority("visualEffect")) {
            let effect_casted: VisualEffect = effect
            let thisPeer = this.getPeer()
            thisPeer.setVisualEffectAttribute(effect_casted)
            return
        }
        return
    }
    )
    public open func backgroundFilter(filter: Filter): Unit {
        if (this.checkPriority("backgroundFilter")) {
            let filter_casted: Filter = filter
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundFilterAttribute(filter_casted)
            return
        }
        return
    }
    )
    public open func foregroundFilter(filter: Filter): Unit {
        if (this.checkPriority("foregroundFilter")) {
            let filter_casted: Filter = filter
            let thisPeer = this.getPeer()
            thisPeer.setForegroundFilterAttribute(filter_casted)
            return
        }
        return
    }
    )
    public open func compositingFilter(filter: Filter): Unit {
        if (this.checkPriority("compositingFilter")) {
            let filter_casted: Filter = filter
            let thisPeer = this.getPeer()
            thisPeer.setCompositingFilterAttribute(filter_casted)
            return
        }
        return
    }
    )
    public open func foregroundBlurStyle(style: Option<BlurStyle>, options: Option<ForegroundBlurStyleOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        if (this.checkPriority("foregroundBlurStyle")) {
            let style_casted: Option<BlurStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let options_casted: Option<ForegroundBlurStyleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let sysOptions_casted: Option<SystemAdaptiveOptions> = if (let Some(sysOptions) <- sysOptions) {sysOptions} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setForegroundBlurStyleAttribute(style_casted, options_casted, sysOptions_casted)
            return
        }
        return
    }
    )
    public open func opacity(opacity: Option<Union_Number_Resource>): Unit {
        if (this.checkPriority("opacity")) {
            let opacity_casted: Option<Union_Number_Resource> = if (let Some(opacity) <- opacity) {opacity} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOpacityAttribute(opacity_casted)
            return
        }
        return
    }
    )
    public open func border(value: BorderOptions): Unit {
        if (this.checkPriority("border")) {
            let value_casted: BorderOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderStyle(value: Union_BorderStyle_EdgeStyles): Unit {
        if (this.checkPriority("borderStyle")) {
            let value_casted: Union_BorderStyle_EdgeStyles = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderWidth(value: Union_Length_EdgeWidths_LocalizedEdgeWidths): Unit {
        if (this.checkPriority("borderWidth")) {
            let value_casted: Union_Length_EdgeWidths_LocalizedEdgeWidths = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderColor(value: Union_ResourceColor_EdgeColors_LocalizedEdgeColors): Unit {
        if (this.checkPriority("borderColor")) {
            let value_casted: Union_ResourceColor_EdgeColors_LocalizedEdgeColors = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderRadius(value: Union_Length_BorderRadiuses_LocalizedBorderRadiuses): Unit {
        if (this.checkPriority("borderRadius")) {
            let value_casted: Union_Length_BorderRadiuses_LocalizedBorderRadiuses = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderRadiusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func borderImage(value: BorderImageOption): Unit {
        if (this.checkPriority("borderImage")) {
            let value_casted: BorderImageOption = value
            let thisPeer = this.getPeer()
            thisPeer.setBorderImageAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func outline(options: Option<OutlineOptions>): Unit {
        if (this.checkPriority("outline")) {
            let options_casted: Option<OutlineOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOutlineAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func outlineStyle(style: Option<Union_OutlineStyle_EdgeOutlineStyles>): Unit {
        if (this.checkPriority("outlineStyle")) {
            let style_casted: Option<Union_OutlineStyle_EdgeOutlineStyles> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOutlineStyleAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func outlineWidth(width: Option<Union_Dimension_EdgeOutlineWidths>): Unit {
        if (this.checkPriority("outlineWidth")) {
            let width_casted: Option<Union_Dimension_EdgeOutlineWidths> = if (let Some(width) <- width) {width} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOutlineWidthAttribute(width_casted)
            return
        }
        return
    }
    )
    public open func outlineColor(color: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>): Unit {
        if (this.checkPriority("outlineColor")) {
            let color_casted: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors> = if (let Some(color) <- color) {color} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOutlineColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func outlineRadius(radius: Option<Union_Dimension_OutlineRadiuses>): Unit {
        if (this.checkPriority("outlineRadius")) {
            let radius_casted: Option<Union_Dimension_OutlineRadiuses> = if (let Some(radius) <- radius) {radius} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOutlineRadiusAttribute(radius_casted)
            return
        }
        return
    }
    )
    public open func foregroundColor(color: Option<Union_ResourceColor_ColoringStrategy>): Unit {
        if (this.checkPriority("foregroundColor")) {
            let color_casted: Option<Union_ResourceColor_ColoringStrategy> = if (let Some(color) <- color) {color} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setForegroundColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func onClick(event: ((event: ClickEvent) -> Unit)): Unit {
        if (this.checkPriority("onClick")) {
            let event_casted: ((event: ClickEvent) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnClick0Attribute(event_casted)
            return
        }
        return
    }
    )
    public open func onClick(event: ((event: ClickEvent) -> Unit), distanceThreshold: Float64): Unit {
        if (this.checkPriority("onClick")) {
            let event_casted: ((event: ClickEvent) -> Unit) = event
            let distanceThreshold_casted: Float64 = distanceThreshold
            let thisPeer = this.getPeer()
            thisPeer.setOnClick1Attribute(event_casted, distanceThreshold_casted)
            return
        }
        return
    }
    )
    public open func onHover(event: ((isHover: Bool, event: HoverEvent) -> Unit)): Unit {
        if (this.checkPriority("onHover")) {
            let event_casted: ((isHover: Bool, event: HoverEvent) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnHoverAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onHoverMove(event: ((parameter: HoverEvent) -> Unit)): Unit {
        if (this.checkPriority("onHoverMove")) {
            let event_casted: ((parameter: HoverEvent) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnHoverMoveAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onAccessibilityHover(callback_: AccessibilityCallback): Unit {
        if (this.checkPriority("onAccessibilityHover")) {
            let callback__casted: AccessibilityCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAccessibilityHoverAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onAccessibilityHoverTransparent(callback_: AccessibilityTransparentCallback): Unit {
        if (this.checkPriority("onAccessibilityHoverTransparent")) {
            let callback__casted: AccessibilityTransparentCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAccessibilityHoverTransparentAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func hoverEffect(value: HoverEffect): Unit {
        if (this.checkPriority("hoverEffect")) {
            let value_casted: HoverEffect = value
            let thisPeer = this.getPeer()
            thisPeer.setHoverEffectAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onMouse(event: ((event: MouseEvent) -> Unit)): Unit {
        if (this.checkPriority("onMouse")) {
            let event_casted: ((event: MouseEvent) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnMouseAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onTouch(event: ((event: TouchEvent) -> Unit)): Unit {
        if (this.checkPriority("onTouch")) {
            let event_casted: ((event: TouchEvent) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnTouchAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onKeyEvent(event: ((event: KeyEvent) -> Unit)): Unit {
        if (this.checkPriority("onKeyEvent")) {
            let event_casted: ((event: KeyEvent) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnKeyEvent0Attribute(event_casted)
            return
        }
        return
    }
    )
    public open func onKeyEvent(event: ((parameter: KeyEvent) -> Bool)): Unit {
        if (this.checkPriority("onKeyEvent")) {
            let event_casted: ((parameter: KeyEvent) -> Bool) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnKeyEvent1Attribute(event_casted)
            return
        }
        return
    }
    )
    public open func onDigitalCrown(handler: Option<((parameter: CrownEvent) -> Unit)>): Unit {
        if (this.checkPriority("onDigitalCrown")) {
            let handler_casted: Option<((parameter: CrownEvent) -> Unit)> = if (let Some(handler) <- handler) {handler} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnDigitalCrownAttribute(handler_casted)
            return
        }
        return
    }
    )
    public open func onKeyPreIme(event: ((parameter: KeyEvent) -> Bool)): Unit {
        if (this.checkPriority("onKeyPreIme")) {
            let event_casted: ((parameter: KeyEvent) -> Bool) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnKeyPreImeAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onKeyEventDispatch(event: ((parameter: KeyEvent) -> Bool)): Unit {
        if (this.checkPriority("onKeyEventDispatch")) {
            let event_casted: ((parameter: KeyEvent) -> Bool) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnKeyEventDispatchAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onFocusAxisEvent(event: ((parameter: FocusAxisEvent) -> Unit)): Unit {
        if (this.checkPriority("onFocusAxisEvent")) {
            let event_casted: ((parameter: FocusAxisEvent) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnFocusAxisEventAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onAxisEvent(event: ((parameter: AxisEvent) -> Unit)): Unit {
        if (this.checkPriority("onAxisEvent")) {
            let event_casted: ((parameter: AxisEvent) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnAxisEventAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func focusable(value: Bool): Unit {
        if (this.checkPriority("focusable")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setFocusableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func nextFocus(nextStep: Option<FocusMovement>): Unit {
        if (this.checkPriority("nextFocus")) {
            let nextStep_casted: Option<FocusMovement> = if (let Some(nextStep) <- nextStep) {nextStep} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setNextFocusAttribute(nextStep_casted)
            return
        }
        return
    }
    )
    public open func tabStop(isTabStop: Bool): Unit {
        if (this.checkPriority("tabStop")) {
            let isTabStop_casted: Bool = isTabStop
            let thisPeer = this.getPeer()
            thisPeer.setTabStopAttribute(isTabStop_casted)
            return
        }
        return
    }
    )
    public open func onFocus(event: (() -> Unit)): Unit {
        if (this.checkPriority("onFocus")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnFocusAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onBlur(event: (() -> Unit)): Unit {
        if (this.checkPriority("onBlur")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnBlurAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func tabIndex(index: Float64): Unit {
        if (this.checkPriority("tabIndex")) {
            let index_casted: Float64 = index
            let thisPeer = this.getPeer()
            thisPeer.setTabIndexAttribute(index_casted)
            return
        }
        return
    }
    )
    public open func defaultFocus(value: Bool): Unit {
        if (this.checkPriority("defaultFocus")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setDefaultFocusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func groupDefaultFocus(value: Bool): Unit {
        if (this.checkPriority("groupDefaultFocus")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setGroupDefaultFocusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func focusOnTouch(value: Bool): Unit {
        if (this.checkPriority("focusOnTouch")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setFocusOnTouchAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func focusBox(style: FocusBoxStyle): Unit {
        if (this.checkPriority("focusBox")) {
            let style_casted: FocusBoxStyle = style
            let thisPeer = this.getPeer()
            thisPeer.setFocusBoxAttribute(style_casted)
            return
        }
        return
    }
    )
    public open func focusScopeId(id: String, isGroup: Option<Bool>, arrowStepOut: Option<Bool>): Unit {
        if (this.checkPriority("focusScopeId")) {
            let id_casted: String = id
            let isGroup_casted: Option<Bool> = if (let Some(isGroup) <- isGroup) {isGroup} else { throw Exception("Type has to be not None")}
            let arrowStepOut_casted: Option<Bool> = if (let Some(arrowStepOut) <- arrowStepOut) {arrowStepOut} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFocusScopeIdAttribute(id_casted, isGroup_casted, arrowStepOut_casted)
            return
        }
        return
    }
    )
    public open func focusScopePriority(scopeId: String, priority: Option<FocusPriority>): Unit {
        if (this.checkPriority("focusScopePriority")) {
            let scopeId_casted: String = scopeId
            let priority_casted: Option<FocusPriority> = if (let Some(priority) <- priority) {priority} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFocusScopePriorityAttribute(scopeId_casted, priority_casted)
            return
        }
        return
    }
    )
    public open func animation(value: AnimateParam): Unit {
        if (this.checkPriority("animation")) {
            let value_casted: AnimateParam = value
            let thisPeer = this.getPeer()
            thisPeer.setAnimationAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func transition(value: Union_TransitionOptions_TransitionEffect): Unit {
        if (this.checkPriority("transition")) {
            let value_casted: Union_TransitionOptions_TransitionEffect = value
            let thisPeer = this.getPeer()
            thisPeer.setTransition0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func transition(effect: TransitionEffect, onFinish: Option<TransitionFinishCallback>): Unit {
        if (this.checkPriority("transition")) {
            let effect_casted: TransitionEffect = effect
            let onFinish_casted: Option<TransitionFinishCallback> = if (let Some(onFinish) <- onFinish) {onFinish} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTransition1Attribute(effect_casted, onFinish_casted)
            return
        }
        return
    }
    )
    public open func gesture(gesture: GestureType, mask: Option<GestureMask>): Unit {
        if (this.checkPriority("gesture")) {
            let gesture_casted: GestureType = gesture
            let mask_casted: Option<GestureMask> = if (let Some(mask) <- mask) {mask} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setGestureAttribute(gesture_casted, mask_casted)
            return
        }
        return
    }
    )
    public open func priorityGesture(gesture: GestureType, mask: Option<GestureMask>): Unit {
        if (this.checkPriority("priorityGesture")) {
            let gesture_casted: GestureType = gesture
            let mask_casted: Option<GestureMask> = if (let Some(mask) <- mask) {mask} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPriorityGestureAttribute(gesture_casted, mask_casted)
            return
        }
        return
    }
    )
    public open func parallelGesture(gesture: GestureType, mask: Option<GestureMask>): Unit {
        if (this.checkPriority("parallelGesture")) {
            let gesture_casted: GestureType = gesture
            let mask_casted: Option<GestureMask> = if (let Some(mask) <- mask) {mask} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setParallelGestureAttribute(gesture_casted, mask_casted)
            return
        }
        return
    }
    )
    public open func blur(blurRadius: Option<Float64>, options: Option<BlurOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        if (this.checkPriority("blur")) {
            let blurRadius_casted: Option<Float64> = if (let Some(blurRadius) <- blurRadius) {blurRadius} else { throw Exception("Type has to be not None")}
            let options_casted: Option<BlurOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let sysOptions_casted: Option<SystemAdaptiveOptions> = if (let Some(sysOptions) <- sysOptions) {sysOptions} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBlurAttribute(blurRadius_casted, options_casted, sysOptions_casted)
            return
        }
        return
    }
    )
    public open func linearGradientBlur(blurRadius: Option<Float64>, options: Option<LinearGradientBlurOptions>): Unit {
        if (this.checkPriority("linearGradientBlur")) {
            let blurRadius_casted: Option<Float64> = if (let Some(blurRadius) <- blurRadius) {blurRadius} else { throw Exception("Type has to be not None")}
            let options_casted: Option<LinearGradientBlurOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLinearGradientBlurAttribute(blurRadius_casted, options_casted)
            return
        }
        return
    }
    )
    public open func motionBlur(motionBlur: Option<MotionBlurOptions>): Unit {
        if (this.checkPriority("motionBlur")) {
            let motionBlur_casted: Option<MotionBlurOptions> = if (let Some(motionBlur) <- motionBlur) {motionBlur} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMotionBlurAttribute(motionBlur_casted)
            return
        }
        return
    }
    )
    public open func brightness(brightness: Option<Float64>): Unit {
        if (this.checkPriority("brightness")) {
            let brightness_casted: Option<Float64> = if (let Some(brightness) <- brightness) {brightness} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBrightnessAttribute(brightness_casted)
            return
        }
        return
    }
    )
    public open func contrast(contrast: Option<Float64>): Unit {
        if (this.checkPriority("contrast")) {
            let contrast_casted: Option<Float64> = if (let Some(contrast) <- contrast) {contrast} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setContrastAttribute(contrast_casted)
            return
        }
        return
    }
    )
    public open func grayscale(grayscale: Option<Float64>): Unit {
        if (this.checkPriority("grayscale")) {
            let grayscale_casted: Option<Float64> = if (let Some(grayscale) <- grayscale) {grayscale} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setGrayscaleAttribute(grayscale_casted)
            return
        }
        return
    }
    )
    public open func colorBlend(color: Option<Union_Color_String_Resource>): Unit {
        if (this.checkPriority("colorBlend")) {
            let color_casted: Option<Union_Color_String_Resource> = if (let Some(color) <- color) {color} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setColorBlendAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func saturate(saturate: Option<Float64>): Unit {
        if (this.checkPriority("saturate")) {
            let saturate_casted: Option<Float64> = if (let Some(saturate) <- saturate) {saturate} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSaturateAttribute(saturate_casted)
            return
        }
        return
    }
    )
    public open func sepia(sepia: Option<Float64>): Unit {
        if (this.checkPriority("sepia")) {
            let sepia_casted: Option<Float64> = if (let Some(sepia) <- sepia) {sepia} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSepiaAttribute(sepia_casted)
            return
        }
        return
    }
    )
    public open func invert(options: Option<Union_Number_InvertOptions>): Unit {
        if (this.checkPriority("invert")) {
            let options_casted: Option<Union_Number_InvertOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setInvertAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func systemBarEffect(): Unit {
        if (this.checkPriority("systemBarEffect")) {
            let thisPeer = this.getPeer()
            thisPeer.setSystemBarEffectAttribute()
            return
        }
        return
    }
    )
    public open func hueRotate(rotation: Option<Union_Number_String>): Unit {
        if (this.checkPriority("hueRotate")) {
            let rotation_casted: Option<Union_Number_String> = if (let Some(rotation) <- rotation) {rotation} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setHueRotateAttribute(rotation_casted)
            return
        }
        return
    }
    )
    public open func useShadowBatching(use: Option<Bool>): Unit {
        if (this.checkPriority("useShadowBatching")) {
            let use_casted: Option<Bool> = if (let Some(use) <- use) {use} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setUseShadowBatchingAttribute(use_casted)
            return
        }
        return
    }
    )
    public open func useEffect(useEffect: Option<Bool>, effectType: Option<EffectType>): Unit {
        if (this.checkPriority("useEffect")) {
            let useEffect_casted: Option<Bool> = if (let Some(useEffect) <- useEffect) {useEffect} else { throw Exception("Type has to be not None")}
            let effectType_casted: Option<EffectType> = if (let Some(effectType) <- effectType) {effectType} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setUseEffectAttribute(useEffect_casted, effectType_casted)
            return
        }
        return
    }
    )
    public open func backdropBlur(radius: Option<Float64>, options: Option<BlurOptions>, sysOptions: Option<SystemAdaptiveOptions>): Unit {
        if (this.checkPriority("backdropBlur")) {
            let radius_casted: Option<Float64> = if (let Some(radius) <- radius) {radius} else { throw Exception("Type has to be not None")}
            let options_casted: Option<BlurOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let sysOptions_casted: Option<SystemAdaptiveOptions> = if (let Some(sysOptions) <- sysOptions) {sysOptions} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackdropBlurAttribute(radius_casted, options_casted, sysOptions_casted)
            return
        }
        return
    }
    )
    public open func renderGroup(isGroup: Option<Bool>): Unit {
        if (this.checkPriority("renderGroup")) {
            let isGroup_casted: Option<Bool> = if (let Some(isGroup) <- isGroup) {isGroup} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRenderGroupAttribute(isGroup_casted)
            return
        }
        return
    }
    )
    public open func freeze(freeze: Option<Bool>): Unit {
        if (this.checkPriority("freeze")) {
            let freeze_casted: Option<Bool> = if (let Some(freeze) <- freeze) {freeze} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setFreezeAttribute(freeze_casted)
            return
        }
        return
    }
    )
    public open func translate(translate: Option<TranslateOptions>): Unit {
        if (this.checkPriority("translate")) {
            let translate_casted: Option<TranslateOptions> = if (let Some(translate) <- translate) {translate} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTranslateAttribute(translate_casted)
            return
        }
        return
    }
    )
    public open func scale(options: Option<ScaleOptions>): Unit {
        if (this.checkPriority("scale")) {
            let options_casted: Option<ScaleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setScaleAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func gridSpan(value: Float64): Unit {
        if (this.checkPriority("gridSpan")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setGridSpanAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func gridOffset(value: Float64): Unit {
        if (this.checkPriority("gridOffset")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setGridOffsetAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func rotate(options: Option<Union_RotateOptions_RotateAngleOptions>): Unit {
        if (this.checkPriority("rotate")) {
            let options_casted: Option<Union_RotateOptions_RotateAngleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRotateAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func transform(value: TransformationMatrix): Unit {
        if (this.checkPriority("transform")) {
            let value_casted: TransformationMatrix = value
            let thisPeer = this.getPeer()
            thisPeer.setTransformAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func transform3D(transform: Option<Matrix4Transit>): Unit {
        if (this.checkPriority("transform3D")) {
            let transform_casted: Option<Matrix4Transit> = if (let Some(transform) <- transform) {transform} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTransform3DAttribute(transform_casted)
            return
        }
        return
    }
    )
    public open func onAppear(event: (() -> Unit)): Unit {
        if (this.checkPriority("onAppear")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnAppearAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onDisAppear(event: (() -> Unit)): Unit {
        if (this.checkPriority("onDisAppear")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnDisAppearAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onAttach(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onAttach")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAttachAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDetach(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onDetach")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDetachAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onAreaChange(event: ((oldValue: Area, newValue: Area) -> Unit)): Unit {
        if (this.checkPriority("onAreaChange")) {
            let event_casted: ((oldValue: Area, newValue: Area) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnAreaChangeAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func visibility(value: Visibility): Unit {
        if (this.checkPriority("visibility")) {
            let value_casted: Visibility = value
            let thisPeer = this.getPeer()
            thisPeer.setVisibilityAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func flexGrow(value: Float64): Unit {
        if (this.checkPriority("flexGrow")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setFlexGrowAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func flexShrink(value: Float64): Unit {
        if (this.checkPriority("flexShrink")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setFlexShrinkAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func flexBasis(value: Union_Number_String): Unit {
        if (this.checkPriority("flexBasis")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setFlexBasisAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func alignSelf(value: ItemAlign): Unit {
        if (this.checkPriority("alignSelf")) {
            let value_casted: ItemAlign = value
            let thisPeer = this.getPeer()
            thisPeer.setAlignSelfAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func layoutGravity(alignment: LocalizedAlignment): Unit {
        if (this.checkPriority("layoutGravity")) {
            let alignment_casted: LocalizedAlignment = alignment
            let thisPeer = this.getPeer()
            thisPeer.setLayoutGravityAttribute(alignment_casted)
            return
        }
        return
    }
    )
    public open func displayPriority(value: Float64): Unit {
        if (this.checkPriority("displayPriority")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setDisplayPriorityAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func zIndex(value: Float64): Unit {
        if (this.checkPriority("zIndex")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setZIndexAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func sharedTransition(id: String, options: Option<sharedTransitionOptions>): Unit {
        if (this.checkPriority("sharedTransition")) {
            let id_casted: String = id
            let options_casted: Option<sharedTransitionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSharedTransitionAttribute(id_casted, options_casted)
            return
        }
        return
    }
    )
    public open func direction(value: Direction): Unit {
        if (this.checkPriority("direction")) {
            let value_casted: Direction = value
            let thisPeer = this.getPeer()
            thisPeer.setDirectionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func align(alignment: Union_Alignment_LocalizedAlignment): Unit {
        if (this.checkPriority("align")) {
            let alignment_casted: Union_Alignment_LocalizedAlignment = alignment
            let thisPeer = this.getPeer()
            thisPeer.setAlignAttribute(alignment_casted)
            return
        }
        return
    }
    )
    public open func position(value: Union_Position_Edges_LocalizedEdges): Unit {
        if (this.checkPriority("position")) {
            let value_casted: Union_Position_Edges_LocalizedEdges = value
            let thisPeer = this.getPeer()
            thisPeer.setPositionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func markAnchor(value: Union_Position_LocalizedPosition): Unit {
        if (this.checkPriority("markAnchor")) {
            let value_casted: Union_Position_LocalizedPosition = value
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
    public open func enabled(value: Bool): Unit {
        if (this.checkPriority("enabled")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setEnabledAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func useSizeType(value: Literal_Union_Number_Literal_Number_offset_span_lg_md_sm_xs): Unit {
        if (this.checkPriority("useSizeType")) {
            let value_casted: Literal_Union_Number_Literal_Number_offset_span_lg_md_sm_xs = value
            let thisPeer = this.getPeer()
            thisPeer.setUseSizeTypeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func alignRules(value: AlignRuleOption): Unit {
        if (this.checkPriority("alignRules")) {
            let value_casted: AlignRuleOption = value
            let thisPeer = this.getPeer()
            thisPeer.setAlignRules0Attribute(value_casted)
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
    public open func aspectRatio(value: Float64): Unit {
        if (this.checkPriority("aspectRatio")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setAspectRatioAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func clickEffect(effect: Option<ClickEffect>): Unit {
        if (this.checkPriority("clickEffect")) {
            let effect_casted: Option<ClickEffect> = if (let Some(effect) <- effect) {effect} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setClickEffectAttribute(effect_casted)
            return
        }
        return
    }
    )
    public open func onDragStart(event: ((event: DragEvent, extraParams: String) -> Union_CustomBuilder_DragItemInfo)): Unit {
        if (this.checkPriority("onDragStart")) {
            let event_casted: ((event: DragEvent, extraParams: String) -> Union_CustomBuilder_DragItemInfo) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnDragStartAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onDragEnter(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        if (this.checkPriority("onDragEnter")) {
            let event_casted: ((event: DragEvent, extraParams: String) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnDragEnterAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onDragMove(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        if (this.checkPriority("onDragMove")) {
            let event_casted: ((event: DragEvent, extraParams: String) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnDragMoveAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onDragLeave(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        if (this.checkPriority("onDragLeave")) {
            let event_casted: ((event: DragEvent, extraParams: String) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnDragLeaveAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onDrop(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        if (this.checkPriority("onDrop")) {
            let event_casted: ((event: DragEvent, extraParams: String) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnDrop0Attribute(event_casted)
            return
        }
        return
    }
    )
    public open func onDrop(eventCallback: OnDragEventCallback, dropOptions: Option<DropOptions>): Unit {
        if (this.checkPriority("onDrop")) {
            let eventCallback_casted: OnDragEventCallback = eventCallback
            let dropOptions_casted: Option<DropOptions> = if (let Some(dropOptions) <- dropOptions) {dropOptions} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnDrop1Attribute(eventCallback_casted, dropOptions_casted)
            return
        }
        return
    }
    )
    public open func onDragEnd(event: ((event: DragEvent, extraParams: String) -> Unit)): Unit {
        if (this.checkPriority("onDragEnd")) {
            let event_casted: ((event: DragEvent, extraParams: String) -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnDragEndAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onDragSpringLoading(callback_: Option<((parameter: SpringLoadingContext) -> Unit)>, configuration: Option<DragSpringLoadingConfiguration>): Unit {
        if (this.checkPriority("onDragSpringLoading")) {
            let callback__casted: Option<((parameter: SpringLoadingContext) -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
            let configuration_casted: Option<DragSpringLoadingConfiguration> = if (let Some(configuration) <- configuration) {configuration} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnDragSpringLoadingAttribute(callback__casted, configuration_casted)
            return
        }
        return
    }
    )
    public open func allowDrop(value: Option<ArrayList<UniformDataType>>): Unit {
        if (this.checkPriority("allowDrop")) {
            let value_casted: Option<ArrayList<UniformDataType>> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setAllowDropAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func draggable(value: Bool): Unit {
        if (this.checkPriority("draggable")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setDraggableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func dragPreview(preview: Union_CustomBuilder_DragItemInfo_String, config: Option<PreviewConfiguration>): Unit {
        if (this.checkPriority("dragPreview")) {
            let preview_casted: Union_CustomBuilder_DragItemInfo_String = preview
            let config_casted: Option<PreviewConfiguration> = if (let Some(config) <- config) {config} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDragPreviewAttribute(preview_casted, config_casted)
            return
        }
        return
    }
    )
    public open func dragPreviewOptions(value: DragPreviewOptions, options: Option<DragInteractionOptions>): Unit {
        if (this.checkPriority("dragPreviewOptions")) {
            let value_casted: DragPreviewOptions = value
            let options_casted: Option<DragInteractionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDragPreviewOptionsAttribute(value_casted, options_casted)
            return
        }
        return
    }
    )
    public open func onPreDrag(callback_: ((parameter: PreDragStatus) -> Unit)): Unit {
        if (this.checkPriority("onPreDrag")) {
            let callback__casted: ((parameter: PreDragStatus) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPreDragAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func overlay(value: Union_String_CustomBuilder_ComponentContent, options: Option<OverlayOptions>): Unit {
        if (this.checkPriority("overlay")) {
            let value_casted: Union_String_CustomBuilder_ComponentContent = value
            let options_casted: Option<OverlayOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOverlayAttribute(value_casted, options_casted)
            return
        }
        return
    }
    )
    public open func toolbar(value: CustomBuilder): Unit {
        if (this.checkPriority("toolbar")) {
            let value_casted: CustomBuilder = value
            let thisPeer = this.getPeer()
            thisPeer.setToolbarAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func linearGradient(options: Option<LinearGradientOptions>): Unit {
        if (this.checkPriority("linearGradient")) {
            let options_casted: Option<LinearGradientOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLinearGradientAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func sweepGradient(options: Option<SweepGradientOptions>): Unit {
        if (this.checkPriority("sweepGradient")) {
            let options_casted: Option<SweepGradientOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSweepGradientAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func radialGradient(options: Option<RadialGradientOptions>): Unit {
        if (this.checkPriority("radialGradient")) {
            let options_casted: Option<RadialGradientOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRadialGradientAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func motionPath(value: MotionPathOptions): Unit {
        if (this.checkPriority("motionPath")) {
            let value_casted: MotionPathOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setMotionPathAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func shadow(options: Option<Union_ShadowOptions_ShadowStyle>): Unit {
        if (this.checkPriority("shadow")) {
            let options_casted: Option<Union_ShadowOptions_ShadowStyle> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setShadowAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func blendMode(mode: Option<BlendMode>, type_: Option<BlendApplyType>): Unit {
        if (this.checkPriority("blendMode")) {
            let mode_casted: Option<BlendMode> = if (let Some(mode) <- mode) {mode} else { throw Exception("Type has to be not None")}
            let type_casted: Option<BlendApplyType> = if (let Some(type_) <- type_) {type_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBlendModeAttribute(mode_casted, type_casted)
            return
        }
        return
    }
    )
    public open func advancedBlendMode(effect: Union_BlendMode_Blender, type_: Option<BlendApplyType>): Unit {
        if (this.checkPriority("advancedBlendMode")) {
            let effect_casted: Union_BlendMode_Blender = effect
            let type_casted: Option<BlendApplyType> = if (let Some(type_) <- type_) {type_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setAdvancedBlendModeAttribute(effect_casted, type_casted)
            return
        }
        return
    }
    )
    public open func clip(clip: Option<Bool>): Unit {
        if (this.checkPriority("clip")) {
            let clip_casted: Option<Bool> = if (let Some(clip) <- clip) {clip} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setClipAttribute(clip_casted)
            return
        }
        return
    }
    )
    public open func clipShape(shape: Option<Union_CircleShape_EllipseShape_PathShape_RectShape>): Unit {
        if (this.checkPriority("clipShape")) {
            let shape_casted: Option<Union_CircleShape_EllipseShape_PathShape_RectShape> = if (let Some(shape) <- shape) {shape} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setClipShapeAttribute(shape_casted)
            return
        }
        return
    }
    )
    public open func mask(mask: Option<ProgressMask>): Unit {
        if (this.checkPriority("mask")) {
            let mask_casted: Option<ProgressMask> = if (let Some(mask) <- mask) {mask} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMaskAttribute(mask_casted)
            return
        }
        return
    }
    )
    public open func maskShape(shape: Option<Union_CircleShape_EllipseShape_PathShape_RectShape>): Unit {
        if (this.checkPriority("maskShape")) {
            let shape_casted: Option<Union_CircleShape_EllipseShape_PathShape_RectShape> = if (let Some(shape) <- shape) {shape} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMaskShapeAttribute(shape_casted)
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
    public open func id(value: String): Unit {
        if (this.checkPriority("id")) {
            hookId(this, value);
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setIdAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func geometryTransition(id: String, options: Option<GeometryTransitionOptions>): Unit {
        if (this.checkPriority("geometryTransition")) {
            let id_casted: String = id
            let options_casted: Option<GeometryTransitionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setGeometryTransitionAttribute(id_casted, options_casted)
            return
        }
        return
    }
    )
    public open func bindTips(message: TipsMessageType, options: Option<TipsOptions>): Unit {
        if (this.checkPriority("bindTips")) {
            let message_casted: TipsMessageType = message
            let options_casted: Option<TipsOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindTipsAttribute(message_casted, options_casted)
            return
        }
        return
    }
    )
    public open func bindPopup(show: Bool, popup: Union_PopupOptions_CustomPopupOptions): Unit {
        if (this.checkPriority("bindPopup")) {
            let show_casted: Bool = show
            let popup_casted: Union_PopupOptions_CustomPopupOptions = popup
            let thisPeer = this.getPeer()
            thisPeer.setBindPopupAttribute(show_casted, popup_casted)
            return
        }
        return
    }
    )
    public open func bindMenu(content: Union_Array_MenuElement_CustomBuilder, options: Option<MenuOptions>): Unit {
        if (this.checkPriority("bindMenu")) {
            let content_casted: Union_Array_MenuElement_CustomBuilder = content
            let options_casted: Option<MenuOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindMenu0Attribute(content_casted, options_casted)
            return
        }
        return
    }
    )
    public open func bindMenu(isShow: Bool, content: Union_Array_MenuElement_CustomBuilder, options: Option<MenuOptions>): Unit {
        if (this.checkPriority("bindMenu")) {
            let isShow_casted: Bool = isShow
            let content_casted: Union_Array_MenuElement_CustomBuilder = content
            let options_casted: Option<MenuOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindMenu1Attribute(isShow_casted, content_casted, options_casted)
            return
        }
        return
    }
    )
    public open func bindContextMenu(content: CustomBuilder, responseType: ResponseType, options: Option<ContextMenuOptions>): Unit {
        if (this.checkPriority("bindContextMenu")) {
            let content_casted: CustomBuilder = content
            let responseType_casted: ResponseType = responseType
            let options_casted: Option<ContextMenuOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindContextMenu0Attribute(content_casted, responseType_casted, options_casted)
            return
        }
        return
    }
    )
    public open func bindContextMenu(isShown: Bool, content: CustomBuilder, options: Option<ContextMenuOptions>): Unit {
        if (this.checkPriority("bindContextMenu")) {
            let isShown_casted: Bool = isShown
            let content_casted: CustomBuilder = content
            let options_casted: Option<ContextMenuOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindContextMenu1Attribute(isShown_casted, content_casted, options_casted)
            return
        }
        return
    }
    )
    public open func bindContentCover(isShow: Bool, builder: CustomBuilder, type_: Option<ModalTransition>): Unit {
        if (this.checkPriority("bindContentCover")) {
            let isShow_casted: Bool = isShow
            let builder_casted: CustomBuilder = builder
            let type_casted: Option<ModalTransition> = if (let Some(type_) <- type_) {type_} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindContentCover0Attribute(isShow_casted, builder_casted, type_casted)
            return
        }
        return
    }
    )
    public open func bindContentCover(isShow: Bool, builder: CustomBuilder, options: Option<ContentCoverOptions>): Unit {
        if (this.checkPriority("bindContentCover")) {
            let isShow_casted: Bool = isShow
            let builder_casted: CustomBuilder = builder
            let options_casted: Option<ContentCoverOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindContentCover1Attribute(isShow_casted, builder_casted, options_casted)
            return
        }
        return
    }
    )
    public open func bindSheet(isShow: Bool, builder: CustomBuilder, options: Option<SheetOptions>): Unit {
        if (this.checkPriority("bindSheet")) {
            let isShow_casted: Bool = isShow
            let builder_casted: CustomBuilder = builder
            let options_casted: Option<SheetOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindSheetAttribute(isShow_casted, builder_casted, options_casted)
            return
        }
        return
    }
    )
    public open func stateStyles(value: StateStyles): Unit {
        if (this.checkPriority("stateStyles")) {
            hookStateStyleImpl(this, value);
        }
        return
    }
    )
    public open func restoreId(value: Float64): Unit {
        if (this.checkPriority("restoreId")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setRestoreIdAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onVisibleAreaChange(ratios: ArrayList<Float64>, event: VisibleAreaChangeCallback): Unit {
        if (this.checkPriority("onVisibleAreaChange")) {
            let ratios_casted: ArrayList<Float64> = ratios
            let event_casted: VisibleAreaChangeCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnVisibleAreaChangeAttribute(ratios_casted, event_casted)
            return
        }
        return
    }
    )
    public open func onVisibleAreaApproximateChange(options: VisibleAreaEventOptions, event: Option<VisibleAreaChangeCallback>): Unit {
        if (this.checkPriority("onVisibleAreaApproximateChange")) {
            let options_casted: VisibleAreaEventOptions = options
            let event_casted: Option<VisibleAreaChangeCallback> = if (let Some(event) <- event) {event} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setOnVisibleAreaApproximateChangeAttribute(options_casted, event_casted)
            return
        }
        return
    }
    )
    public open func sphericalEffect(effect: Option<Float64>): Unit {
        if (this.checkPriority("sphericalEffect")) {
            let effect_casted: Option<Float64> = if (let Some(effect) <- effect) {effect} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSphericalEffectAttribute(effect_casted)
            return
        }
        return
    }
    )
    public open func lightUpEffect(degree: Option<Float64>): Unit {
        if (this.checkPriority("lightUpEffect")) {
            let degree_casted: Option<Float64> = if (let Some(degree) <- degree) {degree} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLightUpEffectAttribute(degree_casted)
            return
        }
        return
    }
    )
    public open func pixelStretchEffect(options: Option<PixelStretchEffectOptions>): Unit {
        if (this.checkPriority("pixelStretchEffect")) {
            let options_casted: Option<PixelStretchEffectOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPixelStretchEffectAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func keyboardShortcut(value: Union_String_FunctionKey, keys: ArrayList<ModifierKey>, action: Option<(() -> Unit)>): Unit {
        if (this.checkPriority("keyboardShortcut")) {
            let value_casted: Union_String_FunctionKey = value
            let keys_casted: ArrayList<ModifierKey> = keys
            let action_casted: Option<(() -> Unit)> = if (let Some(action) <- action) {action} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setKeyboardShortcutAttribute(value_casted, keys_casted, action_casted)
            return
        }
        return
    }
    )
    public open func accessibilityGroup(value: Bool): Unit {
        if (this.checkPriority("accessibilityGroup")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityGroup0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func accessibilityGroup(isGroup: Bool, accessibilityOptions: AccessibilityOptions): Unit {
        if (this.checkPriority("accessibilityGroup")) {
            let isGroup_casted: Bool = isGroup
            let accessibilityOptions_casted: AccessibilityOptions = accessibilityOptions
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityGroup1Attribute(isGroup_casted, accessibilityOptions_casted)
            return
        }
        return
    }
    )
    public open func accessibilityText(value: String): Unit {
        if (this.checkPriority("accessibilityText")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityText0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func accessibilityText(text: Resource): Unit {
        if (this.checkPriority("accessibilityText")) {
            let text_casted: Resource = text
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityText1Attribute(text_casted)
            return
        }
        return
    }
    )
    public open func accessibilityNextFocusId(nextId: String): Unit {
        if (this.checkPriority("accessibilityNextFocusId")) {
            let nextId_casted: String = nextId
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityNextFocusIdAttribute(nextId_casted)
            return
        }
        return
    }
    )
    public open func accessibilityDefaultFocus(focus: Bool): Unit {
        if (this.checkPriority("accessibilityDefaultFocus")) {
            let focus_casted: Bool = focus
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityDefaultFocusAttribute(focus_casted)
            return
        }
        return
    }
    )
    public open func accessibilityUseSamePage(pageMode: AccessibilitySamePageMode): Unit {
        if (this.checkPriority("accessibilityUseSamePage")) {
            let pageMode_casted: AccessibilitySamePageMode = pageMode
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityUseSamePageAttribute(pageMode_casted)
            return
        }
        return
    }
    )
    public open func accessibilityScrollTriggerable(isTriggerable: Bool): Unit {
        if (this.checkPriority("accessibilityScrollTriggerable")) {
            let isTriggerable_casted: Bool = isTriggerable
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityScrollTriggerableAttribute(isTriggerable_casted)
            return
        }
        return
    }
    )
    public open func accessibilityRole(role: AccessibilityRoleType): Unit {
        if (this.checkPriority("accessibilityRole")) {
            let role_casted: AccessibilityRoleType = role
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityRoleAttribute(role_casted)
            return
        }
        return
    }
    )
    public open func onAccessibilityFocus(callback_: AccessibilityFocusCallback): Unit {
        if (this.checkPriority("onAccessibilityFocus")) {
            let callback__casted: AccessibilityFocusCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAccessibilityFocusAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onAccessibilityActionIntercept(callback_: AccessibilityActionInterceptCallback): Unit {
        if (this.checkPriority("onAccessibilityActionIntercept")) {
            let callback__casted: AccessibilityActionInterceptCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAccessibilityActionInterceptAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func accessibilityTextHint(value: String): Unit {
        if (this.checkPriority("accessibilityTextHint")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityTextHintAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func accessibilityDescription(value: String): Unit {
        if (this.checkPriority("accessibilityDescription")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityDescription0Attribute(value_casted)
            return
        }
        return
    }
    )
    public open func accessibilityDescription(description: Resource): Unit {
        if (this.checkPriority("accessibilityDescription")) {
            let description_casted: Resource = description
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityDescription1Attribute(description_casted)
            return
        }
        return
    }
    )
    public open func accessibilityLevel(value: String): Unit {
        if (this.checkPriority("accessibilityLevel")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityLevelAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func accessibilityVirtualNode(builder: CustomBuilder): Unit {
        if (this.checkPriority("accessibilityVirtualNode")) {
            let builder_casted: CustomBuilder = builder
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityVirtualNodeAttribute(builder_casted)
            return
        }
        return
    }
    )
    public open func accessibilityChecked(isCheck: Bool): Unit {
        if (this.checkPriority("accessibilityChecked")) {
            let isCheck_casted: Bool = isCheck
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityCheckedAttribute(isCheck_casted)
            return
        }
        return
    }
    )
    public open func accessibilitySelected(isSelect: Bool): Unit {
        if (this.checkPriority("accessibilitySelected")) {
            let isSelect_casted: Bool = isSelect
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilitySelectedAttribute(isSelect_casted)
            return
        }
        return
    }
    )
    public open func obscured(reasons: ArrayList<ObscuredReasons>): Unit {
        if (this.checkPriority("obscured")) {
            let reasons_casted: ArrayList<ObscuredReasons> = reasons
            let thisPeer = this.getPeer()
            thisPeer.setObscuredAttribute(reasons_casted)
            return
        }
        return
    }
    )
    public open func reuseId(id: String): Unit {
        if (this.checkPriority("reuseId")) {
            let id_casted: String = id
            let thisPeer = this.getPeer()
            thisPeer.setReuseIdAttribute(id_casted)
            return
        }
        return
    }
    )
    public open func reuse(options: ReuseOptions): Unit {
        if (this.checkPriority("reuse")) {
            let options_casted: ReuseOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setReuseAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func renderFit(fitMode: Option<RenderFit>): Unit {
        if (this.checkPriority("renderFit")) {
            let fitMode_casted: Option<RenderFit> = if (let Some(fitMode) <- fitMode) {fitMode} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRenderFitAttribute(fitMode_casted)
            return
        }
        return
    }
    )
    public open func gestureModifier(modifier: GestureModifier): Unit {
        if (this.checkPriority("gestureModifier")) {
            let modifier_casted: GestureModifier = modifier
            let thisPeer = this.getPeer()
            thisPeer.setGestureModifierAttribute(modifier_casted)
            return
        }
        return
    }
    )
    public open func backgroundBrightness(options: Option<BackgroundBrightnessOptions>): Unit {
        if (this.checkPriority("backgroundBrightness")) {
            let options_casted: Option<BackgroundBrightnessOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundBrightnessAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func onGestureJudgeBegin(callback_: ((gestureInfo: GestureInfo, event: BaseGestureEvent) -> GestureJudgeResult)): Unit {
        if (this.checkPriority("onGestureJudgeBegin")) {
            let callback__casted: ((gestureInfo: GestureInfo, event: BaseGestureEvent) -> GestureJudgeResult) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnGestureJudgeBeginAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onGestureRecognizerJudgeBegin(callback_: GestureRecognizerJudgeBeginCallback): Unit {
        if (this.checkPriority("onGestureRecognizerJudgeBegin")) {
            let callback__casted: GestureRecognizerJudgeBeginCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnGestureRecognizerJudgeBegin0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onGestureRecognizerJudgeBegin(callback_: GestureRecognizerJudgeBeginCallback, exposeInnerGesture: Bool): Unit {
        if (this.checkPriority("onGestureRecognizerJudgeBegin")) {
            let callback__casted: GestureRecognizerJudgeBeginCallback = callback_
            let exposeInnerGesture_casted: Bool = exposeInnerGesture
            let thisPeer = this.getPeer()
            thisPeer.setOnGestureRecognizerJudgeBegin1Attribute(callback__casted, exposeInnerGesture_casted)
            return
        }
        return
    }
    )
    public open func shouldBuiltInRecognizerParallelWith(callback_: ShouldBuiltInRecognizerParallelWithCallback): Unit {
        if (this.checkPriority("shouldBuiltInRecognizerParallelWith")) {
            let callback__casted: ShouldBuiltInRecognizerParallelWithCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setShouldBuiltInRecognizerParallelWithAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func monopolizeEvents(monopolize: Bool): Unit {
        if (this.checkPriority("monopolizeEvents")) {
            let monopolize_casted: Bool = monopolize
            let thisPeer = this.getPeer()
            thisPeer.setMonopolizeEventsAttribute(monopolize_casted)
            return
        }
        return
    }
    )
    public open func onTouchIntercept(callback_: ((parameter: TouchEvent) -> HitTestMode)): Unit {
        if (this.checkPriority("onTouchIntercept")) {
            let callback__casted: ((parameter: TouchEvent) -> HitTestMode) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTouchInterceptAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSizeChange(event: SizeChangeCallback): Unit {
        if (this.checkPriority("onSizeChange")) {
            let event_casted: SizeChangeCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnSizeChangeAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func accessibilityFocusDrawLevel(drawLevel: FocusDrawLevel): Unit {
        if (this.checkPriority("accessibilityFocusDrawLevel")) {
            let drawLevel_casted: FocusDrawLevel = drawLevel
            let thisPeer = this.getPeer()
            thisPeer.setAccessibilityFocusDrawLevelAttribute(drawLevel_casted)
            return
        }
        return
    }
    )
    public open func onTouchTestDone(callback_: TouchTestDoneCallback): Unit {
        if (this.checkPriority("onTouchTestDone")) {
            let callback__casted: TouchTestDoneCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTouchTestDoneAttribute(callback__casted)
            return
        }
        return
    }
    )
    public func attributeModifier(modifier: AttributeModifier<Object>) { throw Exception("not implemented") }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
