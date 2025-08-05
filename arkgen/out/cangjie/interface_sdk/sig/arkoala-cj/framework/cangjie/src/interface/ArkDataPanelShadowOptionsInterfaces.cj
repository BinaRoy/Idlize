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
public interface DataPanelShadowOptionsInterfaces <: MultiShadowOptionsInterfaces {
    public mut open prop colors: Option<ArrayList<Union_ResourceColor_LinearGradient>>
}
public open class DataPanelShadowOptions <: DataPanelShadowOptionsInterfaces {
    private var colors_container: Option<ArrayList<Union_ResourceColor_LinearGradient>>
    public mut open prop colors: Option<ArrayList<Union_ResourceColor_LinearGradient>>
    {
        get() {
            return colors_container
        }
        set(colors) {
            colors_container = colors
        }
    }
    private var radius_container: Option<Union_Number_Resource>
    public mut open prop radius: Option<Union_Number_Resource>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var offsetX_container: Option<Union_Number_Resource>
    public mut open prop offsetX: Option<Union_Number_Resource>
    {
        get() {
            return offsetX_container
        }
        set(offsetX) {
            offsetX_container = offsetX
        }
    }
    private var offsetY_container: Option<Union_Number_Resource>
    public mut open prop offsetY: Option<Union_Number_Resource>
    {
        get() {
            return offsetY_container
        }
        set(offsetY) {
            offsetY_container = offsetY
        }
    }
    DataPanelShadowOptions(colors: Option<ArrayList<Union_ResourceColor_LinearGradient>>, radius: Option<Union_Number_Resource>, offsetX: Option<Union_Number_Resource>, offsetY: Option<Union_Number_Resource>) {
        this.colors_container = colors
        this.radius_container = radius
        this.offsetX_container = offsetX
        this.offsetY_container = offsetY
    }
}
public open class DataPanelShadowOptions_serializer {
    public static func write(buffer: SerializerBase, value: DataPanelShadowOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRadius = value.radius
        if (valueHolderForRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRadiusTmpValue = valueHolderForRadius
            if (valueHolderForRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRadiusTmpValueForIdx0 = valueHolderForRadiusTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForRadiusTmpValueForIdx0);
            } else if (valueHolderForRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRadiusTmpValueForIdx1 = valueHolderForRadiusTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffsetX = value.offsetX
        if (valueHolderForOffsetX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetXTmpValue = valueHolderForOffsetX
            if (valueHolderForOffsetXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffsetXTmpValueForIdx0 = valueHolderForOffsetXTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOffsetXTmpValueForIdx0);
            } else if (valueHolderForOffsetXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffsetXTmpValueForIdx1 = valueHolderForOffsetXTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForOffsetXTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffsetY = value.offsetY
        if (valueHolderForOffsetY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetYTmpValue = valueHolderForOffsetY
            if (valueHolderForOffsetYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffsetYTmpValueForIdx0 = valueHolderForOffsetYTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOffsetYTmpValueForIdx0);
            } else if (valueHolderForOffsetYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffsetYTmpValueForIdx1 = valueHolderForOffsetYTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForOffsetYTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColors = value.colors
        if (valueHolderForColors.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorsTmpValue = valueHolderForColors
            valueSerializer.writeInt32(Int32(valueHolderForColorsTmpValue.size));
            for (valueHolderForColorsTmpValueCounterI in 0..valueHolderForColorsTmpValue.size) {
                let valueHolderForColorsTmpValueTmpElement: Union_ResourceColor_LinearGradient = valueHolderForColorsTmpValue[Int64(valueHolderForColorsTmpValueCounterI)]
                if (valueHolderForColorsTmpValueTmpElement.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForColorsTmpValueTmpElementForIdx0 = valueHolderForColorsTmpValueTmpElement.getValue0()
                    if (valueHolderForColorsTmpValueTmpElementForIdx0.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForColorsTmpValueTmpElementForIdx0ForIdx0 = valueHolderForColorsTmpValueTmpElementForIdx0.getValue0()
                        valueSerializer.writeInt32(valueHolderForColorsTmpValueTmpElementForIdx0ForIdx0.value);
                    } else if (valueHolderForColorsTmpValueTmpElementForIdx0.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForColorsTmpValueTmpElementForIdx0ForIdx1 = valueHolderForColorsTmpValueTmpElementForIdx0.getValue1()
                        valueSerializer.writeNumber(valueHolderForColorsTmpValueTmpElementForIdx0ForIdx1);
                    } else if (valueHolderForColorsTmpValueTmpElementForIdx0.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForColorsTmpValueTmpElementForIdx0ForIdx2 = valueHolderForColorsTmpValueTmpElementForIdx0.getValue2()
                        valueSerializer.writeString(valueHolderForColorsTmpValueTmpElementForIdx0ForIdx2);
                    } else if (valueHolderForColorsTmpValueTmpElementForIdx0.getSelector() == 3) {
                        valueSerializer.writeInt8(Int8(3));
                        let valueHolderForColorsTmpValueTmpElementForIdx0ForIdx3 = valueHolderForColorsTmpValueTmpElementForIdx0.getValue3()
                        valueSerializer.writeCustomObject("Any", valueHolderForColorsTmpValueTmpElementForIdx0ForIdx3);
                    }
                } else if (valueHolderForColorsTmpValueTmpElement.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForColorsTmpValueTmpElementForIdx1 = valueHolderForColorsTmpValueTmpElement.getValue1()
                    LinearGradient_serializer.write(valueSerializer, valueHolderForColorsTmpValueTmpElementForIdx1);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DataPanelShadowOptions {
        var valueDeserializer: DeserializerBase = buffer
        let radiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var radiusTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(radiusTmpBuf_runtimeType))) {
            let radiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var radiusTmpBuf_: Union_Number_Resource 
            if (radiusTmpBuf_UnionSelector == Int8(0)) {
                radiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (radiusTmpBuf_UnionSelector == Int8(1)) {
                radiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for radiusTmpBuf_ has to be chosen through deserialisation.")
            }
            radiusTmpBuf = match (radiusTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let radiusTmpResult: Option<Union_Number_Resource> = radiusTmpBuf
        let offsetXTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetXTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetXTmpBuf_runtimeType))) {
            let offsetXTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetXTmpBuf_: Union_Number_Resource 
            if (offsetXTmpBuf_UnionSelector == Int8(0)) {
                offsetXTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetXTmpBuf_UnionSelector == Int8(1)) {
                offsetXTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for offsetXTmpBuf_ has to be chosen through deserialisation.")
            }
            offsetXTmpBuf = match (offsetXTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetXTmpResult: Option<Union_Number_Resource> = offsetXTmpBuf
        let offsetYTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetYTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetYTmpBuf_runtimeType))) {
            let offsetYTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetYTmpBuf_: Union_Number_Resource 
            if (offsetYTmpBuf_UnionSelector == Int8(0)) {
                offsetYTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetYTmpBuf_UnionSelector == Int8(1)) {
                offsetYTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for offsetYTmpBuf_ has to be chosen through deserialisation.")
            }
            offsetYTmpBuf = match (offsetYTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetYTmpResult: Option<Union_Number_Resource> = offsetYTmpBuf
        let colorsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorsTmpBuf: Option<ArrayList<Union_ResourceColor_LinearGradient>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorsTmpBuf_runtimeType))) {
            let colorsTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var colorsTmpBuf_: ArrayList<Union_ResourceColor_LinearGradient> = ArrayList<Union_ResourceColor_LinearGradient>(Int64(colorsTmpBuf_Length))
            colorsTmpBuf_ = ArrayList<Union_ResourceColor_LinearGradient>(Int64(colorsTmpBuf_Length))
            for (colorsTmpBuf_BufCounterI in 0..colorsTmpBuf_Length) {
                let colorsTmpBuf_TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
                var colorsTmpBuf_TempBuf: Union_ResourceColor_LinearGradient 
                if (colorsTmpBuf_TempBufUnionSelector == Int8(0)) {
                    let colorsTmpBuf_TempBufBufUUnionSelector: Int8 = valueDeserializer.readInt8()
                    var colorsTmpBuf_TempBufBufU: ResourceColor 
                    if (colorsTmpBuf_TempBufBufUUnionSelector == Int8(0)) {
                        colorsTmpBuf_TempBufBufU = ResourceColor(Color(valueDeserializer.readInt32()))
                    } else if (colorsTmpBuf_TempBufBufUUnionSelector == Int8(1)) {
                        colorsTmpBuf_TempBufBufU = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (colorsTmpBuf_TempBufBufUUnionSelector == Int8(2)) {
                        colorsTmpBuf_TempBufBufU = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (colorsTmpBuf_TempBufBufUUnionSelector == Int8(3)) {
                        colorsTmpBuf_TempBufBufU = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else {
                        throw Exception("One of the branches for colorsTmpBuf_TempBufBufU has to be chosen through deserialisation.")
                    }
                    colorsTmpBuf_TempBuf = Union_ResourceColor_LinearGradient(match (colorsTmpBuf_TempBufBufU as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (colorsTmpBuf_TempBufUnionSelector == Int8(1)) {
                    colorsTmpBuf_TempBuf = Union_ResourceColor_LinearGradient(match (LinearGradient_serializer.read(valueDeserializer) as LinearGradient) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for colorsTmpBuf_TempBuf has to be chosen through deserialisation.")
                }
                colorsTmpBuf_[Int64(colorsTmpBuf_BufCounterI)] = match (colorsTmpBuf_TempBuf as Union_ResourceColor_LinearGradient) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            colorsTmpBuf = colorsTmpBuf_
        }
        let colorsTmpResult: Option<ArrayList<Union_ResourceColor_LinearGradient>> = colorsTmpBuf
        var value: DataPanelShadowOptions = DataPanelShadowOptions(colorsTmpResult, radiusTmpResult, offsetXTmpResult, offsetYTmpResult)
        return value
    }
}
