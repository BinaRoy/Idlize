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
public interface GutterOptionInterfaces <:  {
    public mut open prop x: Option<Union_Length_GridRowSizeOption>
    public mut open prop y: Option<Union_Length_GridRowSizeOption>
}
public open class GutterOption <: GutterOptionInterfaces {
    private var x_container: Option<Union_Length_GridRowSizeOption>
    public mut open prop x: Option<Union_Length_GridRowSizeOption>
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Option<Union_Length_GridRowSizeOption>
    public mut open prop y: Option<Union_Length_GridRowSizeOption>
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    GutterOption(x: Option<Union_Length_GridRowSizeOption>, y: Option<Union_Length_GridRowSizeOption>) {
        this.x_container = x
        this.y_container = y
    }
}
public open class GutterOption_serializer {
    public static func write(buffer: SerializerBase, value: GutterOption): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        if (valueHolderForX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXTmpValue = valueHolderForX
            if (valueHolderForXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForXTmpValueForIdx0 = valueHolderForXTmpValue.getValue0()
                if (valueHolderForXTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForXTmpValueForIdx0ForIdx0 = valueHolderForXTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForXTmpValueForIdx0ForIdx0);
                } else if (valueHolderForXTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForXTmpValueForIdx0ForIdx1 = valueHolderForXTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForXTmpValueForIdx0ForIdx1);
                } else if (valueHolderForXTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForXTmpValueForIdx0ForIdx2 = valueHolderForXTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForXTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForXTmpValueForIdx1 = valueHolderForXTmpValue.getValue1()
                GridRowSizeOption_serializer.write(valueSerializer, valueHolderForXTmpValueForIdx1);
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
                if (valueHolderForYTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForYTmpValueForIdx0ForIdx0 = valueHolderForYTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForYTmpValueForIdx0ForIdx0);
                } else if (valueHolderForYTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForYTmpValueForIdx0ForIdx1 = valueHolderForYTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForYTmpValueForIdx0ForIdx1);
                } else if (valueHolderForYTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForYTmpValueForIdx0ForIdx2 = valueHolderForYTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForYTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForYTmpValueForIdx1 = valueHolderForYTmpValue.getValue1()
                GridRowSizeOption_serializer.write(valueSerializer, valueHolderForYTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GutterOption {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xTmpBuf: Option<Union_Length_GridRowSizeOption> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xTmpBuf_runtimeType))) {
            let xTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var xTmpBuf_: Union_Length_GridRowSizeOption 
            if (xTmpBuf_UnionSelector == Int8(0)) {
                let xTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var xTmpBuf_BufU: Length 
                if (xTmpBuf_BufUUnionSelector == Int8(0)) {
                    xTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (xTmpBuf_BufUUnionSelector == Int8(1)) {
                    xTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (xTmpBuf_BufUUnionSelector == Int8(2)) {
                    xTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for xTmpBuf_BufU has to be chosen through deserialisation.")
                }
                xTmpBuf_ = Union_Length_GridRowSizeOption(match (xTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xTmpBuf_UnionSelector == Int8(1)) {
                xTmpBuf_ = Union_Length_GridRowSizeOption(GridRowSizeOption_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for xTmpBuf_ has to be chosen through deserialisation.")
            }
            xTmpBuf = match (xTmpBuf_ as Union_Length_GridRowSizeOption) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xTmpResult: Option<Union_Length_GridRowSizeOption> = xTmpBuf
        let yTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yTmpBuf: Option<Union_Length_GridRowSizeOption> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yTmpBuf_runtimeType))) {
            let yTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var yTmpBuf_: Union_Length_GridRowSizeOption 
            if (yTmpBuf_UnionSelector == Int8(0)) {
                let yTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var yTmpBuf_BufU: Length 
                if (yTmpBuf_BufUUnionSelector == Int8(0)) {
                    yTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (yTmpBuf_BufUUnionSelector == Int8(1)) {
                    yTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (yTmpBuf_BufUUnionSelector == Int8(2)) {
                    yTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for yTmpBuf_BufU has to be chosen through deserialisation.")
                }
                yTmpBuf_ = Union_Length_GridRowSizeOption(match (yTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (yTmpBuf_UnionSelector == Int8(1)) {
                yTmpBuf_ = Union_Length_GridRowSizeOption(GridRowSizeOption_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for yTmpBuf_ has to be chosen through deserialisation.")
            }
            yTmpBuf = match (yTmpBuf_ as Union_Length_GridRowSizeOption) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let yTmpResult: Option<Union_Length_GridRowSizeOption> = yTmpBuf
        var value: GutterOption = GutterOption(xTmpResult, yTmpResult)
        return value
    }
}
