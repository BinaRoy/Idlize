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
public interface OverlayOffsetInterfaces <:  {
    public mut open prop x: Option<Float64>
    public mut open prop y: Option<Float64>
}
public open class OverlayOffset <: OverlayOffsetInterfaces {
    private var x_container: Option<Float64>
    public mut open prop x: Option<Float64>
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Option<Float64>
    public mut open prop y: Option<Float64>
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    OverlayOffset(x: Option<Float64>, y: Option<Float64>) {
        this.x_container = x
        this.y_container = y
    }
}
public open class OverlayOffset_serializer {
    public static func write(buffer: SerializerBase, value: OverlayOffset): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        if (valueHolderForX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXTmpValue = valueHolderForX
            valueSerializer.writeNumber(valueHolderForXTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForY = value.y
        if (valueHolderForY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForYTmpValue = valueHolderForY
            valueSerializer.writeNumber(valueHolderForYTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): OverlayOffset {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xTmpBuf_runtimeType))) {
            xTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xTmpResult: Option<Float64> = xTmpBuf
        let yTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yTmpBuf_runtimeType))) {
            yTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let yTmpResult: Option<Float64> = yTmpBuf
        var value: OverlayOffset = OverlayOffset(xTmpResult, yTmpResult)
        return value
    }
}
