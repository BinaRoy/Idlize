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
public interface ImageAIOptionsInterfaces <:  {
    public mut open prop types: Option<ArrayList<ImageAnalyzerType>>
    public mut open prop aiController: Option<ImageAnalyzerController>
}
public open class ImageAIOptions <: ImageAIOptionsInterfaces {
    private var types_container: Option<ArrayList<ImageAnalyzerType>>
    public mut open prop types: Option<ArrayList<ImageAnalyzerType>>
    {
        get() {
            return types_container
        }
        set(types) {
            types_container = types
        }
    }
    private var aiController_container: Option<ImageAnalyzerController>
    public mut open prop aiController: Option<ImageAnalyzerController>
    {
        get() {
            return aiController_container
        }
        set(aiController) {
            aiController_container = aiController
        }
    }
    ImageAIOptions(types: Option<ArrayList<ImageAnalyzerType>>, aiController: Option<ImageAnalyzerController>) {
        this.types_container = types
        this.aiController_container = aiController
    }
}
public open class ImageAIOptions_serializer {
    public static func write(buffer: SerializerBase, value: ImageAIOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTypes = value.types
        if (valueHolderForTypes.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypesTmpValue = valueHolderForTypes
            valueSerializer.writeInt32(Int32(valueHolderForTypesTmpValue.size));
            for (valueHolderForTypesTmpValueCounterI in 0..valueHolderForTypesTmpValue.size) {
                let valueHolderForTypesTmpValueTmpElement: ImageAnalyzerType = valueHolderForTypesTmpValue[Int64(valueHolderForTypesTmpValueCounterI)]
                valueSerializer.writeInt32(valueHolderForTypesTmpValueTmpElement.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAiController = value.aiController
        if (valueHolderForAiController.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAiControllerTmpValue = valueHolderForAiController
            ImageAnalyzerController_serializer.write(valueSerializer, valueHolderForAiControllerTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ImageAIOptions {
        var valueDeserializer: DeserializerBase = buffer
        let typesTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typesTmpBuf: Option<ArrayList<ImageAnalyzerType>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typesTmpBuf_runtimeType))) {
            let typesTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var typesTmpBuf_: ArrayList<ImageAnalyzerType> = ArrayList<ImageAnalyzerType>(Int64(typesTmpBuf_Length))
            typesTmpBuf_ = ArrayList<ImageAnalyzerType>(Int64(typesTmpBuf_Length))
            for (typesTmpBuf_BufCounterI in 0..typesTmpBuf_Length) {
                typesTmpBuf_[Int64(typesTmpBuf_BufCounterI)] = ImageAnalyzerType(valueDeserializer.readInt32())
            }
            typesTmpBuf = typesTmpBuf_
        }
        let typesTmpResult: Option<ArrayList<ImageAnalyzerType>> = typesTmpBuf
        let aiControllerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var aiControllerTmpBuf: Option<ImageAnalyzerController> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(aiControllerTmpBuf_runtimeType))) {
            aiControllerTmpBuf = match (ImageAnalyzerController_serializer.read(valueDeserializer) as ImageAnalyzerController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let aiControllerTmpResult: Option<ImageAnalyzerController> = aiControllerTmpBuf
        var value: ImageAIOptions = ImageAIOptions(typesTmpResult, aiControllerTmpResult)
        return value
    }
}
