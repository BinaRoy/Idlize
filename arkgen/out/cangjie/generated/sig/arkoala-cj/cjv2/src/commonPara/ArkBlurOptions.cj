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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class BlurOptions {
    public var grayscale: Option<(Float64, Float64)>
    init(grayscale: Option<(Float64, Float64)>) {
        this.grayscale = grayscale
    }
}
public class BlurOptions_serializer {
    public  static func write(buffer: SerializerBase, value: BlurOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForGrayscale = value.grayscale
        if (let Some(valueHolderForGrayscale) <- valueHolderForGrayscale) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForGrayscaleTmpValue = valueHolderForGrayscale
            valueSerializer.writeCustomObject("(Float64, Float64)", valueHolderForGrayscaleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): BlurOptions {
        var valueDeserializer: DeserializerBase = buffer
        let grayscaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var grayscaleTmpBuf: Option<(Float64, Float64)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(grayscaleTmpBuf_runtimeType))) {
            grayscaleTmpBuf = match (valueDeserializer.readCustomObject("(Float64, Float64)") as (Float64, Float64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let grayscaleTmpResult: Option<(Float64, Float64)> = grayscaleTmpBuf
        var value: BlurOptions = BlurOptions(grayscaleTmpResult)
        return value
    }
}
