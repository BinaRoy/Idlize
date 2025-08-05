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
public interface ImageAnalyzerConfigInterfaces <:  {
    public mut open prop types: ArrayList<ImageAnalyzerType>
}
public open class ImageAnalyzerConfig <: ImageAnalyzerConfigInterfaces {
    private var types_container: ArrayList<ImageAnalyzerType>
    public mut open prop types: ArrayList<ImageAnalyzerType>
    {
        get() {
            return types_container
        }
        set(types) {
            types_container = types
        }
    }
    ImageAnalyzerConfig(types: ArrayList<ImageAnalyzerType>) {
        this.types_container = types
    }
}
public open class ImageAnalyzerConfig_serializer {
    public static func write(buffer: SerializerBase, value: ImageAnalyzerConfig): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTypes = value.types
        valueSerializer.writeInt32(Int32(valueHolderForTypes.size));
        for (valueHolderForTypesCounterI in 0..valueHolderForTypes.size) {
            let valueHolderForTypesTmpElement: ImageAnalyzerType = valueHolderForTypes[Int64(valueHolderForTypesCounterI)]
            valueSerializer.writeInt32(valueHolderForTypesTmpElement.value);
        }
    }
    public static func read(buffer: DeserializerBase): ImageAnalyzerConfig {
        var valueDeserializer: DeserializerBase = buffer
        let typesTmpBufLength: Int32 = valueDeserializer.readInt32()
        var typesTmpBuf: ArrayList<ImageAnalyzerType> = ArrayList<ImageAnalyzerType>(Int64(typesTmpBufLength))
        typesTmpBuf = ArrayList<ImageAnalyzerType>(Int64(typesTmpBufLength))
        for (typesTmpBufBufCounterI in 0..typesTmpBufLength) {
            typesTmpBuf[Int64(typesTmpBufBufCounterI)] = ImageAnalyzerType(valueDeserializer.readInt32())
        }
        let typesTmpResult: ArrayList<ImageAnalyzerType> = typesTmpBuf
        var value: ImageAnalyzerConfig = ImageAnalyzerConfig(typesTmpResult)
        return value
    }
}
