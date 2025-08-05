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
public interface RichEditorLayoutStyleInterfaces <:  {
    public mut open prop margin: Option<Union_Dimension_Margin>
    public mut open prop borderRadius: Option<Union_Dimension_BorderRadiuses>
}
public open class RichEditorLayoutStyle <: RichEditorLayoutStyleInterfaces {
    private var margin_container: Option<Union_Dimension_Margin>
    public mut open prop margin: Option<Union_Dimension_Margin>
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    private var borderRadius_container: Option<Union_Dimension_BorderRadiuses>
    public mut open prop borderRadius: Option<Union_Dimension_BorderRadiuses>
    {
        get() {
            return borderRadius_container
        }
        set(borderRadius) {
            borderRadius_container = borderRadius
        }
    }
    RichEditorLayoutStyle(margin: Option<Union_Dimension_Margin>, borderRadius: Option<Union_Dimension_BorderRadiuses>) {
        this.margin_container = margin
        this.borderRadius_container = borderRadius
    }
}
public open class RichEditorLayoutStyle_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorLayoutStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMargin = value.margin
        if (valueHolderForMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginTmpValue = valueHolderForMargin
            if (valueHolderForMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarginTmpValueForIdx0 = valueHolderForMarginTmpValue.getValue0()
                if (valueHolderForMarginTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForMarginTmpValueForIdx0ForIdx0 = valueHolderForMarginTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForMarginTmpValueForIdx0ForIdx0);
                } else if (valueHolderForMarginTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForMarginTmpValueForIdx0ForIdx1 = valueHolderForMarginTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForMarginTmpValueForIdx0ForIdx1);
                } else if (valueHolderForMarginTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForMarginTmpValueForIdx0ForIdx2 = valueHolderForMarginTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForMarginTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginTmpValueForIdx1 = valueHolderForMarginTmpValue.getValue1()
                Padding_serializer.write(valueSerializer, valueHolderForMarginTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderRadius = value.borderRadius
        if (valueHolderForBorderRadius.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderRadiusTmpValue = valueHolderForBorderRadius
            if (valueHolderForBorderRadiusTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderRadiusTmpValueForIdx0 = valueHolderForBorderRadiusTmpValue.getValue0()
                if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx0 = valueHolderForBorderRadiusTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForBorderRadiusTmpValueForIdx0ForIdx0);
                } else if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx1 = valueHolderForBorderRadiusTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForBorderRadiusTmpValueForIdx0ForIdx1);
                } else if (valueHolderForBorderRadiusTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForBorderRadiusTmpValueForIdx0ForIdx2 = valueHolderForBorderRadiusTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForBorderRadiusTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderRadiusTmpValueForIdx1 = valueHolderForBorderRadiusTmpValue.getValue1()
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForBorderRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorLayoutStyle {
        var valueDeserializer: DeserializerBase = buffer
        let marginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBuf: Option<Union_Dimension_Margin> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBuf_runtimeType))) {
            let marginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTmpBuf_: Union_Dimension_Margin 
            if (marginTmpBuf_UnionSelector == Int8(0)) {
                let marginTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var marginTmpBuf_BufU: Dimension 
                if (marginTmpBuf_BufUUnionSelector == Int8(0)) {
                    marginTmpBuf_BufU = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (marginTmpBuf_BufUUnionSelector == Int8(1)) {
                    marginTmpBuf_BufU = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (marginTmpBuf_BufUUnionSelector == Int8(2)) {
                    marginTmpBuf_BufU = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for marginTmpBuf_BufU has to be chosen through deserialisation.")
                }
                marginTmpBuf_ = Union_Dimension_Margin(match (marginTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBuf_UnionSelector == Int8(1)) {
                marginTmpBuf_ = Union_Dimension_Margin(Padding_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for marginTmpBuf_ has to be chosen through deserialisation.")
            }
            marginTmpBuf = match (marginTmpBuf_ as Union_Dimension_Margin) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpResult: Option<Union_Dimension_Margin> = marginTmpBuf
        let borderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderRadiusTmpBuf: Option<Union_Dimension_BorderRadiuses> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderRadiusTmpBuf_runtimeType))) {
            let borderRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderRadiusTmpBuf_: Union_Dimension_BorderRadiuses 
            if (borderRadiusTmpBuf_UnionSelector == Int8(0)) {
                let borderRadiusTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var borderRadiusTmpBuf_BufU: Dimension 
                if (borderRadiusTmpBuf_BufUUnionSelector == Int8(0)) {
                    borderRadiusTmpBuf_BufU = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderRadiusTmpBuf_BufUUnionSelector == Int8(1)) {
                    borderRadiusTmpBuf_BufU = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderRadiusTmpBuf_BufUUnionSelector == Int8(2)) {
                    borderRadiusTmpBuf_BufU = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for borderRadiusTmpBuf_BufU has to be chosen through deserialisation.")
                }
                borderRadiusTmpBuf_ = Union_Dimension_BorderRadiuses(match (borderRadiusTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(1)) {
                borderRadiusTmpBuf_ = Union_Dimension_BorderRadiuses(BorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            borderRadiusTmpBuf = match (borderRadiusTmpBuf_ as Union_Dimension_BorderRadiuses) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderRadiusTmpResult: Option<Union_Dimension_BorderRadiuses> = borderRadiusTmpBuf
        var value: RichEditorLayoutStyle = RichEditorLayoutStyle(marginTmpResult, borderRadiusTmpResult)
        return value
    }
}
