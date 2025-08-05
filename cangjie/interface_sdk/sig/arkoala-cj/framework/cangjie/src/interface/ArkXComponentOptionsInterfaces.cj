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
public interface XComponentOptionsInterfaces <:  {
    public mut open prop type_: XComponentType
    public mut open prop controller: XComponentController
    public mut open prop imageAIOptions: Option<ImageAIOptions>
    public mut open prop screenId: Option<Float64>
}
public open class XComponentOptions <: XComponentOptionsInterfaces {
    private var type_container: XComponentType
    public mut open prop type_: XComponentType
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var controller_container: XComponentController
    public mut open prop controller: XComponentController
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
    private var screenId_container: Option<Float64>
    public mut open prop screenId: Option<Float64>
    {
        get() {
            return screenId_container
        }
        set(screenId) {
            screenId_container = screenId
        }
    }
    XComponentOptions(type_: XComponentType, controller: XComponentController, imageAIOptions: Option<ImageAIOptions>, screenId: Option<Float64>) {
        this.type_container = type_
        this.controller_container = controller
        this.imageAIOptions_container = imageAIOptions
        this.screenId_container = screenId
    }
}
public open class XComponentOptions_serializer {
    public static func write(buffer: SerializerBase, value: XComponentOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForType = value.type_
        valueSerializer.writeInt32(valueHolderForType.value);
        let valueHolderForController = value.controller
        XComponentController_serializer.write(valueSerializer, valueHolderForController);
        let valueHolderForImageAIOptions = value.imageAIOptions
        if (valueHolderForImageAIOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForImageAIOptionsTmpValue = valueHolderForImageAIOptions
            ImageAIOptions_serializer.write(valueSerializer, valueHolderForImageAIOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScreenId = value.screenId
        if (valueHolderForScreenId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScreenIdTmpValue = valueHolderForScreenId
            valueSerializer.writeNumber(valueHolderForScreenIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): XComponentOptions {
        var valueDeserializer: DeserializerBase = buffer
        let typeTmpResult: XComponentType = XComponentType(valueDeserializer.readInt32())
        let controllerTmpResult: XComponentController = match (XComponentController_serializer.read(valueDeserializer) as XComponentController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let imageAIOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var imageAIOptionsTmpBuf: Option<ImageAIOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(imageAIOptionsTmpBuf_runtimeType))) {
            imageAIOptionsTmpBuf = ImageAIOptions_serializer.read(valueDeserializer)
        }
        let imageAIOptionsTmpResult: Option<ImageAIOptions> = imageAIOptionsTmpBuf
        let screenIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var screenIdTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(screenIdTmpBuf_runtimeType))) {
            screenIdTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let screenIdTmpResult: Option<Float64> = screenIdTmpBuf
        var value: XComponentOptions = XComponentOptions(typeTmpResult, controllerTmpResult, imageAIOptionsTmpResult, screenIdTmpResult)
        return value
    }
}
