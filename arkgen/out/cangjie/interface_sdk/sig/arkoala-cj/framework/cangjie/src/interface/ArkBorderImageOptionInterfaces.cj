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
public interface BorderImageOptionInterfaces <:  {
    public mut open prop slice: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop repeat: Option<RepeatMode>
    public mut open prop source: Option<Union_String_Resource_LinearGradient_common>
    public mut open prop width: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop outset: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop fill: Option<Bool>
}
public open class BorderImageOption <: BorderImageOptionInterfaces {
    private var slice_container: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop slice: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    {
        get() {
            return slice_container
        }
        set(slice) {
            slice_container = slice
        }
    }
    private var repeat_container: Option<RepeatMode>
    public mut open prop repeat: Option<RepeatMode>
    {
        get() {
            return repeat_container
        }
        set(repeat) {
            repeat_container = repeat
        }
    }
    private var source_container: Option<Union_String_Resource_LinearGradient_common>
    public mut open prop source: Option<Union_String_Resource_LinearGradient_common>
    {
        get() {
            return source_container
        }
        set(source) {
            source_container = source
        }
    }
    private var width_container: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop width: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var outset_container: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop outset: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>
    {
        get() {
            return outset_container
        }
        set(outset) {
            outset_container = outset
        }
    }
    private var fill_container: Option<Bool>
    public mut open prop fill: Option<Bool>
    {
        get() {
            return fill_container
        }
        set(fill) {
            fill_container = fill
        }
    }
    BorderImageOption(slice: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>, repeat: Option<RepeatMode>, source: Option<Union_String_Resource_LinearGradient_common>, width: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>, outset: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>, fill: Option<Bool>) {
        this.slice_container = slice
        this.repeat_container = repeat
        this.source_container = source
        this.width_container = width
        this.outset_container = outset
        this.fill_container = fill
    }
}
public open class BorderImageOption_serializer {
    public static func write(buffer: SerializerBase, value: BorderImageOption): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSlice = value.slice
        if (valueHolderForSlice.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSliceTmpValue = valueHolderForSlice
            if (valueHolderForSliceTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSliceTmpValueForIdx0 = valueHolderForSliceTmpValue.getValue0()
                if (valueHolderForSliceTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForSliceTmpValueForIdx0ForIdx0 = valueHolderForSliceTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForSliceTmpValueForIdx0ForIdx0);
                } else if (valueHolderForSliceTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForSliceTmpValueForIdx0ForIdx1 = valueHolderForSliceTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForSliceTmpValueForIdx0ForIdx1);
                } else if (valueHolderForSliceTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForSliceTmpValueForIdx0ForIdx2 = valueHolderForSliceTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForSliceTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForSliceTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSliceTmpValueForIdx1 = valueHolderForSliceTmpValue.getValue1()
                EdgeWidths_serializer.write(valueSerializer, valueHolderForSliceTmpValueForIdx1);
            } else if (valueHolderForSliceTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSliceTmpValueForIdx2 = valueHolderForSliceTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(valueSerializer, valueHolderForSliceTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRepeat = value.repeat
        if (valueHolderForRepeat.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRepeatTmpValue = valueHolderForRepeat
            valueSerializer.writeInt32(valueHolderForRepeatTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSource = value.source
        if (valueHolderForSource.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSourceTmpValue = valueHolderForSource
            if (valueHolderForSourceTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSourceTmpValueForIdx0 = valueHolderForSourceTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSourceTmpValueForIdx0);
            } else if (valueHolderForSourceTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSourceTmpValueForIdx1 = valueHolderForSourceTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSourceTmpValueForIdx1);
            } else if (valueHolderForSourceTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSourceTmpValueForIdx2 = valueHolderForSourceTmpValue.getValue2()
                LinearGradient_common_serializer.write(valueSerializer, valueHolderForSourceTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWidth = value.width
        if (valueHolderForWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                if (valueHolderForWidthTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForWidthTmpValueForIdx0ForIdx0 = valueHolderForWidthTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0ForIdx0);
                } else if (valueHolderForWidthTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForWidthTmpValueForIdx0ForIdx1 = valueHolderForWidthTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx0ForIdx1);
                } else if (valueHolderForWidthTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForWidthTmpValueForIdx0ForIdx2 = valueHolderForWidthTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForWidthTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                EdgeWidths_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx1);
            } else if (valueHolderForWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOutset = value.outset
        if (valueHolderForOutset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOutsetTmpValue = valueHolderForOutset
            if (valueHolderForOutsetTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOutsetTmpValueForIdx0 = valueHolderForOutsetTmpValue.getValue0()
                if (valueHolderForOutsetTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForOutsetTmpValueForIdx0ForIdx0 = valueHolderForOutsetTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForOutsetTmpValueForIdx0ForIdx0);
                } else if (valueHolderForOutsetTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForOutsetTmpValueForIdx0ForIdx1 = valueHolderForOutsetTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForOutsetTmpValueForIdx0ForIdx1);
                } else if (valueHolderForOutsetTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForOutsetTmpValueForIdx0ForIdx2 = valueHolderForOutsetTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForOutsetTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForOutsetTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOutsetTmpValueForIdx1 = valueHolderForOutsetTmpValue.getValue1()
                EdgeWidths_serializer.write(valueSerializer, valueHolderForOutsetTmpValueForIdx1);
            } else if (valueHolderForOutsetTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForOutsetTmpValueForIdx2 = valueHolderForOutsetTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(valueSerializer, valueHolderForOutsetTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFill = value.fill
        if (valueHolderForFill.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFillTmpValue = valueHolderForFill
            valueSerializer.writeBoolean(valueHolderForFillTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BorderImageOption {
        var valueDeserializer: DeserializerBase = buffer
        let sliceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sliceTmpBuf: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sliceTmpBuf_runtimeType))) {
            let sliceTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var sliceTmpBuf_: Union_Length_EdgeWidths_LocalizedEdgeWidths 
            if (sliceTmpBuf_UnionSelector == Int8(0)) {
                let sliceTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var sliceTmpBuf_BufU: Length 
                if (sliceTmpBuf_BufUUnionSelector == Int8(0)) {
                    sliceTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (sliceTmpBuf_BufUUnionSelector == Int8(1)) {
                    sliceTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (sliceTmpBuf_BufUUnionSelector == Int8(2)) {
                    sliceTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for sliceTmpBuf_BufU has to be chosen through deserialisation.")
                }
                sliceTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(match (sliceTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sliceTmpBuf_UnionSelector == Int8(1)) {
                sliceTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(EdgeWidths_serializer.read(valueDeserializer))
            } else if (sliceTmpBuf_UnionSelector == Int8(2)) {
                sliceTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(LocalizedEdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for sliceTmpBuf_ has to be chosen through deserialisation.")
            }
            sliceTmpBuf = match (sliceTmpBuf_ as Union_Length_EdgeWidths_LocalizedEdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sliceTmpResult: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths> = sliceTmpBuf
        let repeatTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var repeatTmpBuf: Option<RepeatMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(repeatTmpBuf_runtimeType))) {
            repeatTmpBuf = RepeatMode(valueDeserializer.readInt32())
        }
        let repeatTmpResult: Option<RepeatMode> = repeatTmpBuf
        let sourceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sourceTmpBuf: Option<Union_String_Resource_LinearGradient_common> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sourceTmpBuf_runtimeType))) {
            let sourceTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var sourceTmpBuf_: Union_String_Resource_LinearGradient_common 
            if (sourceTmpBuf_UnionSelector == Int8(0)) {
                sourceTmpBuf_ = Union_String_Resource_LinearGradient_common(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sourceTmpBuf_UnionSelector == Int8(1)) {
                sourceTmpBuf_ = Union_String_Resource_LinearGradient_common(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sourceTmpBuf_UnionSelector == Int8(2)) {
                sourceTmpBuf_ = Union_String_Resource_LinearGradient_common(LinearGradient_common_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for sourceTmpBuf_ has to be chosen through deserialisation.")
            }
            sourceTmpBuf = match (sourceTmpBuf_ as Union_String_Resource_LinearGradient_common) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sourceTmpResult: Option<Union_String_Resource_LinearGradient_common> = sourceTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBuf_: Union_Length_EdgeWidths_LocalizedEdgeWidths 
            if (widthTmpBuf_UnionSelector == Int8(0)) {
                let widthTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var widthTmpBuf_BufU: Length 
                if (widthTmpBuf_BufUUnionSelector == Int8(0)) {
                    widthTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (widthTmpBuf_BufUUnionSelector == Int8(1)) {
                    widthTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (widthTmpBuf_BufUUnionSelector == Int8(2)) {
                    widthTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for widthTmpBuf_BufU has to be chosen through deserialisation.")
                }
                widthTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(match (widthTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBuf_UnionSelector == Int8(1)) {
                widthTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(EdgeWidths_serializer.read(valueDeserializer))
            } else if (widthTmpBuf_UnionSelector == Int8(2)) {
                widthTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(LocalizedEdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBuf_ as Union_Length_EdgeWidths_LocalizedEdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths> = widthTmpBuf
        let outsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var outsetTmpBuf: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(outsetTmpBuf_runtimeType))) {
            let outsetTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var outsetTmpBuf_: Union_Length_EdgeWidths_LocalizedEdgeWidths 
            if (outsetTmpBuf_UnionSelector == Int8(0)) {
                let outsetTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var outsetTmpBuf_BufU: Length 
                if (outsetTmpBuf_BufUUnionSelector == Int8(0)) {
                    outsetTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (outsetTmpBuf_BufUUnionSelector == Int8(1)) {
                    outsetTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (outsetTmpBuf_BufUUnionSelector == Int8(2)) {
                    outsetTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for outsetTmpBuf_BufU has to be chosen through deserialisation.")
                }
                outsetTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(match (outsetTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (outsetTmpBuf_UnionSelector == Int8(1)) {
                outsetTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(EdgeWidths_serializer.read(valueDeserializer))
            } else if (outsetTmpBuf_UnionSelector == Int8(2)) {
                outsetTmpBuf_ = Union_Length_EdgeWidths_LocalizedEdgeWidths(LocalizedEdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for outsetTmpBuf_ has to be chosen through deserialisation.")
            }
            outsetTmpBuf = match (outsetTmpBuf_ as Union_Length_EdgeWidths_LocalizedEdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let outsetTmpResult: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths> = outsetTmpBuf
        let fillTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fillTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fillTmpBuf_runtimeType))) {
            fillTmpBuf = valueDeserializer.readBoolean()
        }
        let fillTmpResult: Option<Bool> = fillTmpBuf
        var value: BorderImageOption = BorderImageOption(sliceTmpResult, repeatTmpResult, sourceTmpResult, widthTmpResult, outsetTmpResult, fillTmpResult)
        return value
    }
}
