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
public interface BiasInterfaces <:  {
    public mut open prop horizontal: Option<Float64>
    public mut open prop vertical: Option<Float64>
}
public open class Bias <: BiasInterfaces {
    private var horizontal_container: Option<Float64>
    public mut open prop horizontal: Option<Float64>
    {
        get() {
            return horizontal_container
        }
        set(horizontal) {
            horizontal_container = horizontal
        }
    }
    private var vertical_container: Option<Float64>
    public mut open prop vertical: Option<Float64>
    {
        get() {
            return vertical_container
        }
        set(vertical) {
            vertical_container = vertical
        }
    }
    Bias(horizontal: Option<Float64>, vertical: Option<Float64>) {
        this.horizontal_container = horizontal
        this.vertical_container = vertical
    }
}
public open class Bias_serializer {
    public static func write(buffer: SerializerBase, value: Bias): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHorizontal = value.horizontal
        if (valueHolderForHorizontal.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHorizontalTmpValue = valueHolderForHorizontal
            valueSerializer.writeNumber(valueHolderForHorizontalTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForVertical = value.vertical
        if (valueHolderForVertical.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForVerticalTmpValue = valueHolderForVertical
            valueSerializer.writeNumber(valueHolderForVerticalTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): Bias {
        var valueDeserializer: DeserializerBase = buffer
        let horizontalTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var horizontalTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(horizontalTmpBuf_runtimeType))) {
            horizontalTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let horizontalTmpResult: Option<Float64> = horizontalTmpBuf
        let verticalTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var verticalTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(verticalTmpBuf_runtimeType))) {
            verticalTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let verticalTmpResult: Option<Float64> = verticalTmpBuf
        var value: Bias = Bias(horizontalTmpResult, verticalTmpResult)
        return value
    }
}
