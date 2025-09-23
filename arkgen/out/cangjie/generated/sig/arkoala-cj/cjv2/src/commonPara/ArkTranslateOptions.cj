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

public class TranslateOptions {
    public var x: Option<Int64>
    public var y: Option<Int64>
    public var z: Option<Int64>
    init(x: Option<Int64>, y: Option<Int64>, z: Option<Int64>) {
        this.x = x
        this.y = y
        this.z = z
    }
}
public class TranslateOptions_serializer {
    public  static func write(buffer: SerializerBase, value: TranslateOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        if (let Some(valueHolderForX) <- valueHolderForX) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForXTmpValue = valueHolderForX
            valueSerializer.writeInt64(valueHolderForXTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForY = value.y
        if (let Some(valueHolderForY) <- valueHolderForY) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForYTmpValue = valueHolderForY
            valueSerializer.writeInt64(valueHolderForYTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForZ = value.z
        if (let Some(valueHolderForZ) <- valueHolderForZ) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForZTmpValue = valueHolderForZ
            valueSerializer.writeInt64(valueHolderForZTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): TranslateOptions {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xTmpBuf: Option<Int64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xTmpBuf_runtimeType))) {
            xTmpBuf = valueDeserializer.readInt64()
        }
        let xTmpResult: Option<Int64> = xTmpBuf
        let yTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yTmpBuf: Option<Int64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yTmpBuf_runtimeType))) {
            yTmpBuf = valueDeserializer.readInt64()
        }
        let yTmpResult: Option<Int64> = yTmpBuf
        let zTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var zTmpBuf: Option<Int64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(zTmpBuf_runtimeType))) {
            zTmpBuf = valueDeserializer.readInt64()
        }
        let zTmpResult: Option<Int64> = zTmpBuf
        var value: TranslateOptions = TranslateOptions(xTmpResult, yTmpResult, zTmpResult)
        return value
    }
}
