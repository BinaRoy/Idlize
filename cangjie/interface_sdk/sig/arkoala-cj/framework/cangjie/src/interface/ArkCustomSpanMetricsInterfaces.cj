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
public interface CustomSpanMetricsInterfaces <:  {
    public mut open prop width: Float64
    public mut open prop height: Option<Float64>
}
public open class CustomSpanMetrics <: CustomSpanMetricsInterfaces {
    private var width_container: Float64
    public mut open prop width: Float64
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Float64>
    public mut open prop height: Option<Float64>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    CustomSpanMetrics(width: Float64, height: Option<Float64>) {
        this.width_container = width
        this.height_container = height
    }
}
public open class CustomSpanMetrics_serializer {
    public static func write(buffer: SerializerBase, value: CustomSpanMetrics): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        valueSerializer.writeNumber(valueHolderForWidth);
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            valueSerializer.writeNumber(valueHolderForHeightTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): CustomSpanMetrics {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            heightTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Float64> = heightTmpBuf
        var value: CustomSpanMetrics = CustomSpanMetrics(widthTmpResult, heightTmpResult)
        return value
    }
}
