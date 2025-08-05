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
public interface SwitchStyleInterfaces <:  {
    public mut open prop pointRadius: Option<Union_Number_Resource>
    public mut open prop unselectedColor: Option<ResourceColor>
    public mut open prop pointColor: Option<ResourceColor>
    public mut open prop trackBorderRadius: Option<Union_Number_Resource>
}
public open class SwitchStyle <: SwitchStyleInterfaces {
    private var pointRadius_container: Option<Union_Number_Resource>
    public mut open prop pointRadius: Option<Union_Number_Resource>
    {
        get() {
            return pointRadius_container
        }
        set(pointRadius) {
            pointRadius_container = pointRadius
        }
    }
    private var unselectedColor_container: Option<ResourceColor>
    public mut open prop unselectedColor: Option<ResourceColor>
    {
        get() {
            return unselectedColor_container
        }
        set(unselectedColor) {
            unselectedColor_container = unselectedColor
        }
    }
    private var pointColor_container: Option<ResourceColor>
    public mut open prop pointColor: Option<ResourceColor>
    {
        get() {
            return pointColor_container
        }
        set(pointColor) {
            pointColor_container = pointColor
        }
    }
    private var trackBorderRadius_container: Option<Union_Number_Resource>
    public mut open prop trackBorderRadius: Option<Union_Number_Resource>
    {
        get() {
            return trackBorderRadius_container
        }
        set(trackBorderRadius) {
            trackBorderRadius_container = trackBorderRadius
        }
    }
    SwitchStyle(pointRadius: Option<Union_Number_Resource>, unselectedColor: Option<ResourceColor>, pointColor: Option<ResourceColor>, trackBorderRadius: Option<Union_Number_Resource>) {
        this.pointRadius_container = pointRadius
        this.unselectedColor_container = unselectedColor
        this.pointColor_container = pointColor
        this.trackBorderRadius_container = trackBorderRadius
    }
}
public open class SwitchStyle_serializer {
    public static func write(buffer: SerializerBase, value: SwitchStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPointRadius = value.pointRadius
        if (valueHolderForPointRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPointRadiusTmpValue = valueHolderForPointRadius
            if (valueHolderForPointRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPointRadiusTmpValueForIdx0 = valueHolderForPointRadiusTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForPointRadiusTmpValueForIdx0);
            } else if (valueHolderForPointRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPointRadiusTmpValueForIdx1 = valueHolderForPointRadiusTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForPointRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUnselectedColor = value.unselectedColor
        if (valueHolderForUnselectedColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUnselectedColorTmpValue = valueHolderForUnselectedColor
            if (valueHolderForUnselectedColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForUnselectedColorTmpValueForIdx0 = valueHolderForUnselectedColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForUnselectedColorTmpValueForIdx0.value);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForUnselectedColorTmpValueForIdx1 = valueHolderForUnselectedColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForUnselectedColorTmpValueForIdx1);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForUnselectedColorTmpValueForIdx2 = valueHolderForUnselectedColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForUnselectedColorTmpValueForIdx2);
            } else if (valueHolderForUnselectedColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForUnselectedColorTmpValueForIdx3 = valueHolderForUnselectedColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForUnselectedColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPointColor = value.pointColor
        if (valueHolderForPointColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPointColorTmpValue = valueHolderForPointColor
            if (valueHolderForPointColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPointColorTmpValueForIdx0 = valueHolderForPointColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForPointColorTmpValueForIdx0.value);
            } else if (valueHolderForPointColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPointColorTmpValueForIdx1 = valueHolderForPointColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForPointColorTmpValueForIdx1);
            } else if (valueHolderForPointColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForPointColorTmpValueForIdx2 = valueHolderForPointColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForPointColorTmpValueForIdx2);
            } else if (valueHolderForPointColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForPointColorTmpValueForIdx3 = valueHolderForPointColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForPointColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTrackBorderRadius = value.trackBorderRadius
        if (valueHolderForTrackBorderRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTrackBorderRadiusTmpValue = valueHolderForTrackBorderRadius
            if (valueHolderForTrackBorderRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTrackBorderRadiusTmpValueForIdx0 = valueHolderForTrackBorderRadiusTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForTrackBorderRadiusTmpValueForIdx0);
            } else if (valueHolderForTrackBorderRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTrackBorderRadiusTmpValueForIdx1 = valueHolderForTrackBorderRadiusTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForTrackBorderRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SwitchStyle {
        var valueDeserializer: DeserializerBase = buffer
        let pointRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var pointRadiusTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(pointRadiusTmpBuf_runtimeType))) {
            let pointRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var pointRadiusTmpBuf_: Union_Number_Resource 
            if (pointRadiusTmpBuf_UnionSelector == Int8(0)) {
                pointRadiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (pointRadiusTmpBuf_UnionSelector == Int8(1)) {
                pointRadiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for pointRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            pointRadiusTmpBuf = match (pointRadiusTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let pointRadiusTmpResult: Option<Union_Number_Resource> = pointRadiusTmpBuf
        let unselectedColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var unselectedColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(unselectedColorTmpBuf_runtimeType))) {
            let unselectedColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var unselectedColorTmpBuf_: ResourceColor 
            if (unselectedColorTmpBuf_UnionSelector == Int8(0)) {
                unselectedColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(1)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(2)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (unselectedColorTmpBuf_UnionSelector == Int8(3)) {
                unselectedColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for unselectedColorTmpBuf_ has to be chosen through deserialisation.")
            }
            unselectedColorTmpBuf = match (unselectedColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let unselectedColorTmpResult: Option<ResourceColor> = unselectedColorTmpBuf
        let pointColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var pointColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(pointColorTmpBuf_runtimeType))) {
            let pointColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var pointColorTmpBuf_: ResourceColor 
            if (pointColorTmpBuf_UnionSelector == Int8(0)) {
                pointColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (pointColorTmpBuf_UnionSelector == Int8(1)) {
                pointColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (pointColorTmpBuf_UnionSelector == Int8(2)) {
                pointColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (pointColorTmpBuf_UnionSelector == Int8(3)) {
                pointColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for pointColorTmpBuf_ has to be chosen through deserialisation.")
            }
            pointColorTmpBuf = match (pointColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let pointColorTmpResult: Option<ResourceColor> = pointColorTmpBuf
        let trackBorderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var trackBorderRadiusTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(trackBorderRadiusTmpBuf_runtimeType))) {
            let trackBorderRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var trackBorderRadiusTmpBuf_: Union_Number_Resource 
            if (trackBorderRadiusTmpBuf_UnionSelector == Int8(0)) {
                trackBorderRadiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (trackBorderRadiusTmpBuf_UnionSelector == Int8(1)) {
                trackBorderRadiusTmpBuf_ = Union_Number_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for trackBorderRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            trackBorderRadiusTmpBuf = match (trackBorderRadiusTmpBuf_ as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let trackBorderRadiusTmpResult: Option<Union_Number_Resource> = trackBorderRadiusTmpBuf
        var value: SwitchStyle = SwitchStyle(pointRadiusTmpResult, unselectedColorTmpResult, pointColorTmpResult, trackBorderRadiusTmpResult)
        return value
    }
}
