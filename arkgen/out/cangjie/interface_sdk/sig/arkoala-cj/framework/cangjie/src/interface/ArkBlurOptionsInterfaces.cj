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
public interface BlurOptionsInterfaces <:  {
    public mut open prop grayscale: Tuple_Number_Number
}
public open class BlurOptions <: BlurOptionsInterfaces {
    private var grayscale_container: Tuple_Number_Number
    public mut open prop grayscale: Tuple_Number_Number
    {
        get() {
            return grayscale_container
        }
        set(grayscale) {
            grayscale_container = grayscale
        }
    }
    BlurOptions(grayscale: Tuple_Number_Number) {
        this.grayscale_container = grayscale
    }
}
public open class BlurOptions_serializer {
    public static func write(buffer: SerializerBase, value: BlurOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForGrayscale = value.grayscale
        let valueHolderForGrayscale_0 = valueHolderForGrayscale.value0
        valueSerializer.writeNumber(valueHolderForGrayscale_0);
        let valueHolderForGrayscale_1 = valueHolderForGrayscale.value1
        valueSerializer.writeNumber(valueHolderForGrayscale_1);
    }
    public static func read(buffer: DeserializerBase): BlurOptions {
        var valueDeserializer: DeserializerBase = buffer
        let grayscaleTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let grayscaleTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let grayscaleTmpResult: Tuple_Number_Number = Tuple_Number_Number(grayscaleTmpBuf_value0, grayscaleTmpBuf_value1)
        var value: BlurOptions = BlurOptions(grayscaleTmpResult)
        return value
    }
}
