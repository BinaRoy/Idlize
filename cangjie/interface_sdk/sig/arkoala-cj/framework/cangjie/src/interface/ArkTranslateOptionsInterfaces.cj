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
public interface TranslateOptionsInterfaces <:  {
    public mut open prop x: Option<Union_Number_String>
    public mut open prop y: Option<Union_Number_String>
    public mut open prop z: Option<Union_Number_String>
}
public open class TranslateOptions <: TranslateOptionsInterfaces {
    private var x_container: Option<Union_Number_String>
    public mut open prop x: Option<Union_Number_String>
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Option<Union_Number_String>
    public mut open prop y: Option<Union_Number_String>
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var z_container: Option<Union_Number_String>
    public mut open prop z: Option<Union_Number_String>
    {
        get() {
            return z_container
        }
        set(z) {
            z_container = z
        }
    }
    TranslateOptions(x: Option<Union_Number_String>, y: Option<Union_Number_String>, z: Option<Union_Number_String>) {
        this.x_container = x
        this.y_container = y
        this.z_container = z
    }
}
public open class TranslateOptions_serializer {
    public static func write(buffer: SerializerBase, value: TranslateOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        if (valueHolderForX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXTmpValue = valueHolderForX
            if (valueHolderForXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForXTmpValueForIdx0 = valueHolderForXTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForXTmpValueForIdx0);
            } else if (valueHolderForXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForXTmpValueForIdx1 = valueHolderForXTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForXTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForY = value.y
        if (valueHolderForY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForYTmpValue = valueHolderForY
            if (valueHolderForYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForYTmpValueForIdx0 = valueHolderForYTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForYTmpValueForIdx0);
            } else if (valueHolderForYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForYTmpValueForIdx1 = valueHolderForYTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForYTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForZ = value.z
        if (valueHolderForZ.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForZTmpValue = valueHolderForZ
            if (valueHolderForZTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForZTmpValueForIdx0 = valueHolderForZTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForZTmpValueForIdx0);
            } else if (valueHolderForZTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForZTmpValueForIdx1 = valueHolderForZTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForZTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TranslateOptions {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xTmpBuf_runtimeType))) {
            let xTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var xTmpBuf_: Union_Number_String 
            if (xTmpBuf_UnionSelector == Int8(0)) {
                xTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xTmpBuf_UnionSelector == Int8(1)) {
                xTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for xTmpBuf_ has to be chosen through deserialisation.")
            }
            xTmpBuf = match (xTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xTmpResult: Option<Union_Number_String> = xTmpBuf
        let yTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yTmpBuf_runtimeType))) {
            let yTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var yTmpBuf_: Union_Number_String 
            if (yTmpBuf_UnionSelector == Int8(0)) {
                yTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (yTmpBuf_UnionSelector == Int8(1)) {
                yTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for yTmpBuf_ has to be chosen through deserialisation.")
            }
            yTmpBuf = match (yTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let yTmpResult: Option<Union_Number_String> = yTmpBuf
        let zTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var zTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(zTmpBuf_runtimeType))) {
            let zTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var zTmpBuf_: Union_Number_String 
            if (zTmpBuf_UnionSelector == Int8(0)) {
                zTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (zTmpBuf_UnionSelector == Int8(1)) {
                zTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for zTmpBuf_ has to be chosen through deserialisation.")
            }
            zTmpBuf = match (zTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let zTmpResult: Option<Union_Number_String> = zTmpBuf
        var value: TranslateOptions = TranslateOptions(xTmpResult, yTmpResult, zTmpResult)
        return value
    }
}
