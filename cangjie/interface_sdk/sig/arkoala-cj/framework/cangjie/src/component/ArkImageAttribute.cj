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
public interface ImageAttributeInterfaces <: CommonMethodInterfaces {
}
public open class ImageAttribute <: ImageAttributeInterfaces {
    ImageAttribute() {
    }
}
public interface ImageAttribute {
}
public open class ArkImageComponent <: ArkCommonMethodComponent & ImageAttribute {
    public open func getPeer(): ArkImagePeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkImagePeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setImageOptions(src: Union_PixelMap_ResourceStr_DrawableDescriptor): Unit {
        if (this.checkPriority("setImageOptions")) {
            let src_casted: Union_PixelMap_ResourceStr_DrawableDescriptor = src
            let thisPeer = this.getPeer()
            thisPeer.setImageOptions0Attribute(src_casted)
            return
        }
        return
    }
    )
    public open func setImageOptions(src: Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent): Unit {
        if (this.checkPriority("setImageOptions")) {
            let src_casted: Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent = src
            let thisPeer = this.getPeer()
            thisPeer.setImageOptions1Attribute(src_casted)
            return
        }
        return
    }
    )
    public open func setImageOptions(src: Union_PixelMap_ResourceStr_DrawableDescriptor, imageAIOptions: ImageAIOptions): Unit {
        if (this.checkPriority("setImageOptions")) {
            let src_casted: Union_PixelMap_ResourceStr_DrawableDescriptor = src
            let imageAIOptions_casted: ImageAIOptions = imageAIOptions
            let thisPeer = this.getPeer()
            thisPeer.setImageOptions2Attribute(src_casted, imageAIOptions_casted)
            return
        }
        return
    }
    )
    public open func alt(value: Union_String_Resource_PixelMap): Unit {
        if (this.checkPriority("alt")) {
            let value_casted: Union_String_Resource_PixelMap = value
            let thisPeer = this.getPeer()
            thisPeer.setAltAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func matchTextDirection(value: Bool): Unit {
        if (this.checkPriority("matchTextDirection")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setMatchTextDirectionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fitOriginalSize(value: Bool): Unit {
        if (this.checkPriority("fitOriginalSize")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setFitOriginalSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fillColor(color: Union_ResourceColor_ColorContent_ColorMetrics): Unit {
        if (this.checkPriority("fillColor")) {
            let color_casted: Union_ResourceColor_ColorContent_ColorMetrics = color
            let thisPeer = this.getPeer()
            thisPeer.setFillColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func objectFit(value: ImageFit): Unit {
        if (this.checkPriority("objectFit")) {
            let value_casted: ImageFit = value
            let thisPeer = this.getPeer()
            thisPeer.setObjectFitAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func imageMatrix(matrix: ImageMatrix): Unit {
        if (this.checkPriority("imageMatrix")) {
            let matrix_casted: ImageMatrix = matrix
            let thisPeer = this.getPeer()
            thisPeer.setImageMatrixAttribute(matrix_casted)
            return
        }
        return
    }
    )
    public open func objectRepeat(value: ImageRepeat): Unit {
        if (this.checkPriority("objectRepeat")) {
            let value_casted: ImageRepeat = value
            let thisPeer = this.getPeer()
            thisPeer.setObjectRepeatAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func autoResize(value: Bool): Unit {
        if (this.checkPriority("autoResize")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAutoResizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func renderMode(value: ImageRenderMode): Unit {
        if (this.checkPriority("renderMode")) {
            let value_casted: ImageRenderMode = value
            let thisPeer = this.getPeer()
            thisPeer.setRenderModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func dynamicRangeMode(value: DynamicRangeMode): Unit {
        if (this.checkPriority("dynamicRangeMode")) {
            let value_casted: DynamicRangeMode = value
            let thisPeer = this.getPeer()
            thisPeer.setDynamicRangeModeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func hdrBrightness(brightness: Float64): Unit {
        if (this.checkPriority("hdrBrightness")) {
            let brightness_casted: Float64 = brightness
            let thisPeer = this.getPeer()
            thisPeer.setHdrBrightnessAttribute(brightness_casted)
            return
        }
        return
    }
    )
    public open func interpolation(value: ImageInterpolation): Unit {
        if (this.checkPriority("interpolation")) {
            let value_casted: ImageInterpolation = value
            let thisPeer = this.getPeer()
            thisPeer.setInterpolationAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func sourceSize(value: ImageSourceSize): Unit {
        if (this.checkPriority("sourceSize")) {
            let value_casted: ImageSourceSize = value
            let thisPeer = this.getPeer()
            thisPeer.setSourceSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func syncLoad(value: Bool): Unit {
        if (this.checkPriority("syncLoad")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setSyncLoadAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func colorFilter(value: Union_ColorFilter_DrawingColorFilter): Unit {
        if (this.checkPriority("colorFilter")) {
            let value_casted: Union_ColorFilter_DrawingColorFilter = value
            let thisPeer = this.getPeer()
            thisPeer.setColorFilterAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func copyOption(value: CopyOptions): Unit {
        if (this.checkPriority("copyOption")) {
            let value_casted: CopyOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setCopyOptionAttribute(value_casted)
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
    public open func pointLight(value: PointLightStyle): Unit {
        if (this.checkPriority("pointLight")) {
            let value_casted: PointLightStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setPointLightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func edgeAntialiasing(value: Float64): Unit {
        if (this.checkPriority("edgeAntialiasing")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setEdgeAntialiasingAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onComplete(callback_: ((event: Type_ImageAttribute_onComplete_callback_event) -> Unit)): Unit {
        if (this.checkPriority("onComplete")) {
            let callback__casted: ((event: Type_ImageAttribute_onComplete_callback_event) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnComplete0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onComplete(callback_: ImageOnCompleteCallback): Unit {
        if (this.checkPriority("onComplete")) {
            let callback__casted: ImageOnCompleteCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnComplete1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onError(callback_: ImageErrorCallback): Unit {
        if (this.checkPriority("onError")) {
            let callback__casted: ImageErrorCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnErrorAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onFinish(event: (() -> Unit)): Unit {
        if (this.checkPriority("onFinish")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnFinishAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func enableAnalyzer(enable: Bool): Unit {
        if (this.checkPriority("enableAnalyzer")) {
            let enable_casted: Bool = enable
            let thisPeer = this.getPeer()
            thisPeer.setEnableAnalyzerAttribute(enable_casted)
            return
        }
        return
    }
    )
    public open func analyzerConfig(config: ImageAnalyzerConfig): Unit {
        if (this.checkPriority("analyzerConfig")) {
            let config_casted: ImageAnalyzerConfig = config
            let thisPeer = this.getPeer()
            thisPeer.setAnalyzerConfigAttribute(config_casted)
            return
        }
        return
    }
    )
    public open func resizable(value: ResizableOptions): Unit {
        if (this.checkPriority("resizable")) {
            let value_casted: ResizableOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setResizableAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func privacySensitive(supported: Bool): Unit {
        if (this.checkPriority("privacySensitive")) {
            let supported_casted: Bool = supported
            let thisPeer = this.getPeer()
            thisPeer.setPrivacySensitiveAttribute(supported_casted)
            return
        }
        return
    }
    )
    public open func enhancedImageQuality(imageQuality: ResolutionQuality): Unit {
        if (this.checkPriority("enhancedImageQuality")) {
            let imageQuality_casted: ResolutionQuality = imageQuality
            let thisPeer = this.getPeer()
            thisPeer.setEnhancedImageQualityAttribute(imageQuality_casted)
            return
        }
        return
    }
    )
    public open func orientation(orientation: ImageRotateOrientation): Unit {
        if (this.checkPriority("orientation")) {
            let orientation_casted: ImageRotateOrientation = orientation
            let thisPeer = this.getPeer()
            thisPeer.setOrientationAttribute(orientation_casted)
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
class ImageAttributeStyleHolder {
    var value: ?((attributes: ImageAttribute) -> Unit)
    init (value: ?((attributes: ImageAttribute) -> Unit)) {
        this.value = value
    }
}

class ImageAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkImage(
        style: ?((attributes: ImageAttribute) -> Unit),
        content_: ?(() -> Unit),
src: Union_Union_PixelMap_ResourceStr_DrawableDescriptor_Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent, imageAIOptions: Option<ImageAIOptions>
    ): Unit {
        let styleHolder = ImageAttributeStyleHolder(style)
        let contentHolder = ImageAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkImageComponent()
        })
        NodeAttach<ArkImagePeer>({ => ArkImagePeer.create(receiver, 0) }) {
            receiver.setImageOptions(src,imageAIOptions)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
