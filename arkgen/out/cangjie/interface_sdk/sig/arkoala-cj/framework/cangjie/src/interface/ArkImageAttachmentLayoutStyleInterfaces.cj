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
public interface ImageAttachmentLayoutStyleInterfaces <:  {
    public mut open prop margin: Option<Union_LengthMetrics_Margin>
    public mut open prop padding: Option<Union_LengthMetrics_Padding>
    public mut open prop borderRadius: Option<Union_LengthMetrics_BorderRadiuses>
}
public open class ImageAttachmentLayoutStyle <: ImageAttachmentLayoutStyleInterfaces {
    private var margin_container: Option<Union_LengthMetrics_Margin>
    public mut open prop margin: Option<Union_LengthMetrics_Margin>
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    private var padding_container: Option<Union_LengthMetrics_Padding>
    public mut open prop padding: Option<Union_LengthMetrics_Padding>
    {
        get() {
            return padding_container
        }
        set(padding) {
            padding_container = padding
        }
    }
    private var borderRadius_container: Option<Union_LengthMetrics_BorderRadiuses>
    public mut open prop borderRadius: Option<Union_LengthMetrics_BorderRadiuses>
    {
        get() {
            return borderRadius_container
        }
        set(borderRadius) {
            borderRadius_container = borderRadius
        }
    }
    ImageAttachmentLayoutStyle(margin: Option<Union_LengthMetrics_Margin>, padding: Option<Union_LengthMetrics_Padding>, borderRadius: Option<Union_LengthMetrics_BorderRadiuses>) {
        this.margin_container = margin
        this.padding_container = padding
        this.borderRadius_container = borderRadius
    }
}
public open class ImageAttachmentLayoutStyle_serializer {
    public static func write(buffer: SerializerBase, value: ImageAttachmentLayoutStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMargin = value.margin
        if (valueHolderForMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginTmpValue = valueHolderForMargin
            if (valueHolderForMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarginTmpValueForIdx0 = valueHolderForMarginTmpValue.getValue0()
                valueSerializer.writeCustomObject("Any", valueHolderForMarginTmpValueForIdx0);
            } else if (valueHolderForMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginTmpValueForIdx1 = valueHolderForMarginTmpValue.getValue1()
                Padding_serializer.write(valueSerializer, valueHolderForMarginTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPadding = value.padding
        if (valueHolderForPadding.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPaddingTmpValue = valueHolderForPadding
            if (valueHolderForPaddingTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPaddingTmpValueForIdx0 = valueHolderForPaddingTmpValue.getValue0()
                valueSerializer.writeCustomObject("Any", valueHolderForPaddingTmpValueForIdx0);
            } else if (valueHolderForPaddingTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPaddingTmpValueForIdx1 = valueHolderForPaddingTmpValue.getValue1()
                Padding_serializer.write(valueSerializer, valueHolderForPaddingTmpValueForIdx1);
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
                valueSerializer.writeCustomObject("Any", valueHolderForBorderRadiusTmpValueForIdx0);
            } else if (valueHolderForBorderRadiusTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderRadiusTmpValueForIdx1 = valueHolderForBorderRadiusTmpValue.getValue1()
                BorderRadiuses_serializer.write(valueSerializer, valueHolderForBorderRadiusTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ImageAttachmentLayoutStyle {
        var valueDeserializer: DeserializerBase = buffer
        let marginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBuf: Option<Union_LengthMetrics_Margin> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBuf_runtimeType))) {
            let marginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTmpBuf_: Union_LengthMetrics_Margin 
            if (marginTmpBuf_UnionSelector == Int8(0)) {
                marginTmpBuf_ = Union_LengthMetrics_Margin(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBuf_UnionSelector == Int8(1)) {
                marginTmpBuf_ = Union_LengthMetrics_Margin(Padding_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for marginTmpBuf_ has to be chosen through deserialisation.")
            }
            marginTmpBuf = match (marginTmpBuf_ as Union_LengthMetrics_Margin) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpResult: Option<Union_LengthMetrics_Margin> = marginTmpBuf
        let paddingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paddingTmpBuf: Option<Union_LengthMetrics_Padding> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paddingTmpBuf_runtimeType))) {
            let paddingTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var paddingTmpBuf_: Union_LengthMetrics_Padding 
            if (paddingTmpBuf_UnionSelector == Int8(0)) {
                paddingTmpBuf_ = Union_LengthMetrics_Padding(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBuf_UnionSelector == Int8(1)) {
                paddingTmpBuf_ = Union_LengthMetrics_Padding(Padding_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for paddingTmpBuf_ has to be chosen through deserialisation.")
            }
            paddingTmpBuf = match (paddingTmpBuf_ as Union_LengthMetrics_Padding) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paddingTmpResult: Option<Union_LengthMetrics_Padding> = paddingTmpBuf
        let borderRadiusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderRadiusTmpBuf: Option<Union_LengthMetrics_BorderRadiuses> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderRadiusTmpBuf_runtimeType))) {
            let borderRadiusTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var borderRadiusTmpBuf_: Union_LengthMetrics_BorderRadiuses 
            if (borderRadiusTmpBuf_UnionSelector == Int8(0)) {
                borderRadiusTmpBuf_ = Union_LengthMetrics_BorderRadiuses(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderRadiusTmpBuf_UnionSelector == Int8(1)) {
                borderRadiusTmpBuf_ = Union_LengthMetrics_BorderRadiuses(BorderRadiuses_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderRadiusTmpBuf_ has to be chosen through deserialisation.")
            }
            borderRadiusTmpBuf = match (borderRadiusTmpBuf_ as Union_LengthMetrics_BorderRadiuses) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderRadiusTmpResult: Option<Union_LengthMetrics_BorderRadiuses> = borderRadiusTmpBuf
        var value: ImageAttachmentLayoutStyle = ImageAttachmentLayoutStyle(marginTmpResult, paddingTmpResult, borderRadiusTmpResult)
        return value
    }
}
