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
public interface VideoOptionsInterfaces <:  {
    public mut open prop src: Option<Union_String_Resource>
    public mut open prop currentProgressRate: Option<Union_Number_String_PlaybackSpeed>
    public mut open prop previewUri: Option<Union_String_PixelMap_Resource>
    public mut open prop controller: Option<VideoController>
    public mut open prop imageAIOptions: Option<ImageAIOptions>
    public mut open prop posterOptions: Option<PosterOptions>
}
public open class VideoOptions <: VideoOptionsInterfaces {
    private var src_container: Option<Union_String_Resource>
    public mut open prop src: Option<Union_String_Resource>
    {
        get() {
            return src_container
        }
        set(src) {
            src_container = src
        }
    }
    private var currentProgressRate_container: Option<Union_Number_String_PlaybackSpeed>
    public mut open prop currentProgressRate: Option<Union_Number_String_PlaybackSpeed>
    {
        get() {
            return currentProgressRate_container
        }
        set(currentProgressRate) {
            currentProgressRate_container = currentProgressRate
        }
    }
    private var previewUri_container: Option<Union_String_PixelMap_Resource>
    public mut open prop previewUri: Option<Union_String_PixelMap_Resource>
    {
        get() {
            return previewUri_container
        }
        set(previewUri) {
            previewUri_container = previewUri
        }
    }
    private var controller_container: Option<VideoController>
    public mut open prop controller: Option<VideoController>
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    private var imageAIOptions_container: Option<ImageAIOptions>
    public mut open prop imageAIOptions: Option<ImageAIOptions>
    {
        get() {
            return imageAIOptions_container
        }
        set(imageAIOptions) {
            imageAIOptions_container = imageAIOptions
        }
    }
    private var posterOptions_container: Option<PosterOptions>
    public mut open prop posterOptions: Option<PosterOptions>
    {
        get() {
            return posterOptions_container
        }
        set(posterOptions) {
            posterOptions_container = posterOptions
        }
    }
    VideoOptions(src: Option<Union_String_Resource>, currentProgressRate: Option<Union_Number_String_PlaybackSpeed>, previewUri: Option<Union_String_PixelMap_Resource>, controller: Option<VideoController>, imageAIOptions: Option<ImageAIOptions>, posterOptions: Option<PosterOptions>) {
        this.src_container = src
        this.currentProgressRate_container = currentProgressRate
        this.previewUri_container = previewUri
        this.controller_container = controller
        this.imageAIOptions_container = imageAIOptions
        this.posterOptions_container = posterOptions
    }
}
public open class VideoOptions_serializer {
    public static func write(buffer: SerializerBase, value: VideoOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSrc = value.src
        if (valueHolderForSrc.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSrcTmpValue = valueHolderForSrc
            if (valueHolderForSrcTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSrcTmpValueForIdx0 = valueHolderForSrcTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSrcTmpValueForIdx0);
            } else if (valueHolderForSrcTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSrcTmpValueForIdx1 = valueHolderForSrcTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSrcTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCurrentProgressRate = value.currentProgressRate
        if (valueHolderForCurrentProgressRate.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCurrentProgressRateTmpValue = valueHolderForCurrentProgressRate
            if (valueHolderForCurrentProgressRateTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForCurrentProgressRateTmpValueForIdx0 = valueHolderForCurrentProgressRateTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForCurrentProgressRateTmpValueForIdx0);
            } else if (valueHolderForCurrentProgressRateTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForCurrentProgressRateTmpValueForIdx1 = valueHolderForCurrentProgressRateTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForCurrentProgressRateTmpValueForIdx1);
            } else if (valueHolderForCurrentProgressRateTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForCurrentProgressRateTmpValueForIdx2 = valueHolderForCurrentProgressRateTmpValue.getValue2()
                valueSerializer.writeInt32(valueHolderForCurrentProgressRateTmpValueForIdx2.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreviewUri = value.previewUri
        if (valueHolderForPreviewUri.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewUriTmpValue = valueHolderForPreviewUri
            if (valueHolderForPreviewUriTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPreviewUriTmpValueForIdx0 = valueHolderForPreviewUriTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForPreviewUriTmpValueForIdx0);
            } else if (valueHolderForPreviewUriTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPreviewUriTmpValueForIdx1 = valueHolderForPreviewUriTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForPreviewUriTmpValueForIdx1);
            } else if (valueHolderForPreviewUriTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForPreviewUriTmpValueForIdx2 = valueHolderForPreviewUriTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForPreviewUriTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForController = value.controller
        if (valueHolderForController.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForControllerTmpValue = valueHolderForController
            VideoController_serializer.write(valueSerializer, valueHolderForControllerTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForImageAIOptions = value.imageAIOptions
        if (valueHolderForImageAIOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForImageAIOptionsTmpValue = valueHolderForImageAIOptions
            ImageAIOptions_serializer.write(valueSerializer, valueHolderForImageAIOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPosterOptions = value.posterOptions
        if (valueHolderForPosterOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPosterOptionsTmpValue = valueHolderForPosterOptions
            PosterOptions_serializer.write(valueSerializer, valueHolderForPosterOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): VideoOptions {
        var valueDeserializer: DeserializerBase = buffer
        let srcTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var srcTmpBuf: Option<Union_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(srcTmpBuf_runtimeType))) {
            let srcTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var srcTmpBuf_: Union_String_Resource 
            if (srcTmpBuf_UnionSelector == Int8(0)) {
                srcTmpBuf_ = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (srcTmpBuf_UnionSelector == Int8(1)) {
                srcTmpBuf_ = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for srcTmpBuf_ has to be chosen through deserialisation.")
            }
            srcTmpBuf = match (srcTmpBuf_ as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let srcTmpResult: Option<Union_String_Resource> = srcTmpBuf
        let currentProgressRateTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var currentProgressRateTmpBuf: Option<Union_Number_String_PlaybackSpeed> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(currentProgressRateTmpBuf_runtimeType))) {
            let currentProgressRateTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var currentProgressRateTmpBuf_: Union_Number_String_PlaybackSpeed 
            if (currentProgressRateTmpBuf_UnionSelector == Int8(0)) {
                currentProgressRateTmpBuf_ = Union_Number_String_PlaybackSpeed(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (currentProgressRateTmpBuf_UnionSelector == Int8(1)) {
                currentProgressRateTmpBuf_ = Union_Number_String_PlaybackSpeed(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (currentProgressRateTmpBuf_UnionSelector == Int8(2)) {
                currentProgressRateTmpBuf_ = Union_Number_String_PlaybackSpeed(PlaybackSpeed(valueDeserializer.readInt32()))
            } else {
                throw Exception("One of the branches for currentProgressRateTmpBuf_ has to be chosen through deserialisation.")
            }
            currentProgressRateTmpBuf = match (currentProgressRateTmpBuf_ as Union_Number_String_PlaybackSpeed) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let currentProgressRateTmpResult: Option<Union_Number_String_PlaybackSpeed> = currentProgressRateTmpBuf
        let previewUriTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewUriTmpBuf: Option<Union_String_PixelMap_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewUriTmpBuf_runtimeType))) {
            let previewUriTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var previewUriTmpBuf_: Union_String_PixelMap_Resource 
            if (previewUriTmpBuf_UnionSelector == Int8(0)) {
                previewUriTmpBuf_ = Union_String_PixelMap_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (previewUriTmpBuf_UnionSelector == Int8(1)) {
                previewUriTmpBuf_ = Union_String_PixelMap_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (previewUriTmpBuf_UnionSelector == Int8(2)) {
                previewUriTmpBuf_ = Union_String_PixelMap_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for previewUriTmpBuf_ has to be chosen through deserialisation.")
            }
            previewUriTmpBuf = match (previewUriTmpBuf_ as Union_String_PixelMap_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let previewUriTmpResult: Option<Union_String_PixelMap_Resource> = previewUriTmpBuf
        let controllerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var controllerTmpBuf: Option<VideoController> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(controllerTmpBuf_runtimeType))) {
            controllerTmpBuf = match (VideoController_serializer.read(valueDeserializer) as VideoController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let controllerTmpResult: Option<VideoController> = controllerTmpBuf
        let imageAIOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var imageAIOptionsTmpBuf: Option<ImageAIOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(imageAIOptionsTmpBuf_runtimeType))) {
            imageAIOptionsTmpBuf = ImageAIOptions_serializer.read(valueDeserializer)
        }
        let imageAIOptionsTmpResult: Option<ImageAIOptions> = imageAIOptionsTmpBuf
        let posterOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var posterOptionsTmpBuf: Option<PosterOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(posterOptionsTmpBuf_runtimeType))) {
            posterOptionsTmpBuf = PosterOptions_serializer.read(valueDeserializer)
        }
        let posterOptionsTmpResult: Option<PosterOptions> = posterOptionsTmpBuf
        var value: VideoOptions = VideoOptions(srcTmpResult, currentProgressRateTmpResult, previewUriTmpResult, controllerTmpResult, imageAIOptionsTmpResult, posterOptionsTmpResult)
        return value
    }
}
