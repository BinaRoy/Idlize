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
public interface ScrollableBarModeOptionsInterfaces <:  {
    public mut open prop margin: Option<Dimension>
    public mut open prop nonScrollableLayoutStyle: Option<LayoutStyle>
}
public open class ScrollableBarModeOptions <: ScrollableBarModeOptionsInterfaces {
    private var margin_container: Option<Dimension>
    public mut open prop margin: Option<Dimension>
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    private var nonScrollableLayoutStyle_container: Option<LayoutStyle>
    public mut open prop nonScrollableLayoutStyle: Option<LayoutStyle>
    {
        get() {
            return nonScrollableLayoutStyle_container
        }
        set(nonScrollableLayoutStyle) {
            nonScrollableLayoutStyle_container = nonScrollableLayoutStyle
        }
    }
    ScrollableBarModeOptions(margin: Option<Dimension>, nonScrollableLayoutStyle: Option<LayoutStyle>) {
        this.margin_container = margin
        this.nonScrollableLayoutStyle_container = nonScrollableLayoutStyle
    }
}
public open class ScrollableBarModeOptions_serializer {
    public static func write(buffer: SerializerBase, value: ScrollableBarModeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMargin = value.margin
        if (valueHolderForMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginTmpValue = valueHolderForMargin
            if (valueHolderForMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarginTmpValueForIdx0 = valueHolderForMarginTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMarginTmpValueForIdx0);
            } else if (valueHolderForMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginTmpValueForIdx1 = valueHolderForMarginTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMarginTmpValueForIdx1);
            } else if (valueHolderForMarginTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMarginTmpValueForIdx2 = valueHolderForMarginTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMarginTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForNonScrollableLayoutStyle = value.nonScrollableLayoutStyle
        if (valueHolderForNonScrollableLayoutStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNonScrollableLayoutStyleTmpValue = valueHolderForNonScrollableLayoutStyle
            valueSerializer.writeInt32(valueHolderForNonScrollableLayoutStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ScrollableBarModeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let marginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBuf_runtimeType))) {
            let marginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTmpBuf_: Dimension 
            if (marginTmpBuf_UnionSelector == Int8(0)) {
                marginTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBuf_UnionSelector == Int8(1)) {
                marginTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBuf_UnionSelector == Int8(2)) {
                marginTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for marginTmpBuf_ has to be chosen through deserialisation.")
            }
            marginTmpBuf = match (marginTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpResult: Option<Dimension> = marginTmpBuf
        let nonScrollableLayoutStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var nonScrollableLayoutStyleTmpBuf: Option<LayoutStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(nonScrollableLayoutStyleTmpBuf_runtimeType))) {
            nonScrollableLayoutStyleTmpBuf = LayoutStyle(valueDeserializer.readInt32())
        }
        let nonScrollableLayoutStyleTmpResult: Option<LayoutStyle> = nonScrollableLayoutStyleTmpBuf
        var value: ScrollableBarModeOptions = ScrollableBarModeOptions(marginTmpResult, nonScrollableLayoutStyleTmpResult)
        return value
    }
}
