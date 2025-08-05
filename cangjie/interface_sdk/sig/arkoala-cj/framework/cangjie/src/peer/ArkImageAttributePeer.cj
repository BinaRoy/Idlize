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
public open class ArkImagePeer <: ArkCommonMethodPeer {
    protected ArkImagePeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkImagePeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Image_construct(peerId, flags)
        let _peer = ArkImagePeer(_peerPtr, peerId, "Image", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setImageOptions0Attribute(src: Union_PixelMap_ResourceStr_DrawableDescriptor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (src.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let srcForIdx0 = src.getValue0()
            thisSerializer.writeCustomObject("Any", srcForIdx0);
        } else if (src.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let srcForIdx1 = src.getValue1()
            if (srcForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let srcForIdx1ForIdx0 = srcForIdx1.getValue0()
                thisSerializer.writeString(srcForIdx1ForIdx0);
            } else if (srcForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let srcForIdx1ForIdx1 = srcForIdx1.getValue1()
                thisSerializer.writeCustomObject("Any", srcForIdx1ForIdx1);
            }
        } else if (src.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let srcForIdx2 = src.getValue2()
            thisSerializer.writeCustomObject("Any", srcForIdx2);
        }
        ArkUIGeneratedNativeModule._ImageInterface_setImageOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setImageOptions1Attribute(src: Union_PixelMap_ResourceStr_DrawableDescriptor_ImageContent): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (src.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let srcForIdx0 = src.getValue0()
            thisSerializer.writeCustomObject("Any", srcForIdx0);
        } else if (src.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let srcForIdx1 = src.getValue1()
            if (srcForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let srcForIdx1ForIdx0 = srcForIdx1.getValue0()
                thisSerializer.writeString(srcForIdx1ForIdx0);
            } else if (srcForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let srcForIdx1ForIdx1 = srcForIdx1.getValue1()
                thisSerializer.writeCustomObject("Any", srcForIdx1ForIdx1);
            }
        } else if (src.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let srcForIdx2 = src.getValue2()
            thisSerializer.writeCustomObject("Any", srcForIdx2);
        } else if (src.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let srcForIdx3 = src.getValue3()
            thisSerializer.writeInt32(srcForIdx3.value);
        }
        ArkUIGeneratedNativeModule._ImageInterface_setImageOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setImageOptions2Attribute(src: Union_PixelMap_ResourceStr_DrawableDescriptor, imageAIOptions: ImageAIOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (src.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let srcForIdx0 = src.getValue0()
            thisSerializer.writeCustomObject("Any", srcForIdx0);
        } else if (src.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let srcForIdx1 = src.getValue1()
            if (srcForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let srcForIdx1ForIdx0 = srcForIdx1.getValue0()
                thisSerializer.writeString(srcForIdx1ForIdx0);
            } else if (srcForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let srcForIdx1ForIdx1 = srcForIdx1.getValue1()
                thisSerializer.writeCustomObject("Any", srcForIdx1ForIdx1);
            }
        } else if (src.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let srcForIdx2 = src.getValue2()
            thisSerializer.writeCustomObject("Any", srcForIdx2);
        }
        ImageAIOptions_serializer.write(thisSerializer, imageAIOptions);
        ArkUIGeneratedNativeModule._ImageInterface_setImageOptions2(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAltAttribute(value: Union_String_Resource_PixelMap): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._ImageAttribute_setAlt(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMatchTextDirectionAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setMatchTextDirection(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setFitOriginalSizeAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setFitOriginalSize(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setFillColorAttribute(color: Union_ResourceColor_ColorContent_ColorMetrics): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (color.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let colorForIdx0 = color.getValue0()
            if (colorForIdx0.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let colorForIdx0ForIdx0 = colorForIdx0.getValue0()
                thisSerializer.writeInt32(colorForIdx0ForIdx0.value);
            } else if (colorForIdx0.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let colorForIdx0ForIdx1 = colorForIdx0.getValue1()
                thisSerializer.writeNumber(colorForIdx0ForIdx1);
            } else if (colorForIdx0.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let colorForIdx0ForIdx2 = colorForIdx0.getValue2()
                thisSerializer.writeString(colorForIdx0ForIdx2);
            } else if (colorForIdx0.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let colorForIdx0ForIdx3 = colorForIdx0.getValue3()
                thisSerializer.writeCustomObject("Any", colorForIdx0ForIdx3);
            }
        } else if (color.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let colorForIdx1 = color.getValue1()
            ColorContent_serializer.write(thisSerializer, colorForIdx1);
        } else if (color.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let colorForIdx2 = color.getValue2()
            thisSerializer.writeCustomObject("Any", colorForIdx2);
        }
        ArkUIGeneratedNativeModule._ImageAttribute_setFillColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setObjectFitAttribute(value: ImageFit): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setObjectFit(this.peer.ptr, value.value);
    }
    public open func setImageMatrixAttribute(matrix: ImageMatrix): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", matrix);
        ArkUIGeneratedNativeModule._ImageAttribute_setImageMatrix(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setObjectRepeatAttribute(value: ImageRepeat): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setObjectRepeat(this.peer.ptr, value.value);
    }
    public open func setAutoResizeAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setAutoResize(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setRenderModeAttribute(value: ImageRenderMode): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setRenderMode(this.peer.ptr, value.value);
    }
    public open func setDynamicRangeModeAttribute(value: DynamicRangeMode): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setDynamicRangeMode(this.peer.ptr, value.value);
    }
    public open func setHdrBrightnessAttribute(brightness: Float64): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setHdrBrightness(this.peer.ptr, brightness);
    }
    public open func setInterpolationAttribute(value: ImageInterpolation): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setInterpolation(this.peer.ptr, value.value);
    }
    public open func setSourceSizeAttribute(value: ImageSourceSize): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ImageSourceSize_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._ImageAttribute_setSourceSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSyncLoadAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setSyncLoad(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setColorFilterAttribute(value: Union_ColorFilter_DrawingColorFilter): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            ColorFilter_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        }
        ArkUIGeneratedNativeModule._ImageAttribute_setColorFilter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCopyOptionAttribute(value: CopyOptions): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setCopyOption(this.peer.ptr, value.value);
    }
    public open func setDraggableAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setDraggable(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setPointLightAttribute(value: PointLightStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        PointLightStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._ImageAttribute_setPointLight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEdgeAntialiasingAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setEdgeAntialiasing(this.peer.ptr, value);
    }
    public open func setOnComplete0Attribute(callback_: ((event: Type_ImageAttribute_onComplete_callback_event) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._ImageAttribute_setOnComplete0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnComplete1Attribute(callback_: ImageOnCompleteCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._ImageAttribute_setOnComplete1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnErrorAttribute(callback_: ImageErrorCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._ImageAttribute_setOnError(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFinishAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._ImageAttribute_setOnFinish(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableAnalyzerAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setEnableAnalyzer(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setAnalyzerConfigAttribute(config: ImageAnalyzerConfig): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ImageAnalyzerConfig_serializer.write(thisSerializer, config);
        ArkUIGeneratedNativeModule._ImageAttribute_setAnalyzerConfig(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setResizableAttribute(value: ResizableOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ResizableOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._ImageAttribute_setResizable(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPrivacySensitiveAttribute(supported: Bool): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setPrivacySensitive(this.peer.ptr, if (supported) { Int32(1) } else { Int32(0) });
    }
    public open func setEnhancedImageQualityAttribute(imageQuality: ResolutionQuality): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", imageQuality);
        ArkUIGeneratedNativeModule._ImageAttribute_setEnhancedImageQuality(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOrientationAttribute(orientation: ImageRotateOrientation): Unit {
        ArkUIGeneratedNativeModule._ImageAttribute_setOrientation(this.peer.ptr, orientation.value);
    }
}
