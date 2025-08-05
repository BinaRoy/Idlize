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
public interface BarGridColumnOptionsInterfaces <:  {
    public mut open prop sm: Option<Float64>
    public mut open prop md: Option<Float64>
    public mut open prop lg: Option<Float64>
    public mut open prop margin: Option<Dimension>
    public mut open prop gutter: Option<Dimension>
}
public open class BarGridColumnOptions <: BarGridColumnOptionsInterfaces {
    private var sm_container: Option<Float64>
    public mut open prop sm: Option<Float64>
    {
        get() {
            return sm_container
        }
        set(sm) {
            sm_container = sm
        }
    }
    private var md_container: Option<Float64>
    public mut open prop md: Option<Float64>
    {
        get() {
            return md_container
        }
        set(md) {
            md_container = md
        }
    }
    private var lg_container: Option<Float64>
    public mut open prop lg: Option<Float64>
    {
        get() {
            return lg_container
        }
        set(lg) {
            lg_container = lg
        }
    }
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
    private var gutter_container: Option<Dimension>
    public mut open prop gutter: Option<Dimension>
    {
        get() {
            return gutter_container
        }
        set(gutter) {
            gutter_container = gutter
        }
    }
    BarGridColumnOptions(sm: Option<Float64>, md: Option<Float64>, lg: Option<Float64>, margin: Option<Dimension>, gutter: Option<Dimension>) {
        this.sm_container = sm
        this.md_container = md
        this.lg_container = lg
        this.margin_container = margin
        this.gutter_container = gutter
    }
}
public open class BarGridColumnOptions_serializer {
    public static func write(buffer: SerializerBase, value: BarGridColumnOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSm = value.sm
        if (valueHolderForSm.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSmTmpValue = valueHolderForSm
            valueSerializer.writeNumber(valueHolderForSmTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMd = value.md
        if (valueHolderForMd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMdTmpValue = valueHolderForMd
            valueSerializer.writeNumber(valueHolderForMdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLg = value.lg
        if (valueHolderForLg.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLgTmpValue = valueHolderForLg
            valueSerializer.writeNumber(valueHolderForLgTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
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
        let valueHolderForGutter = value.gutter
        if (valueHolderForGutter.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGutterTmpValue = valueHolderForGutter
            if (valueHolderForGutterTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForGutterTmpValueForIdx0 = valueHolderForGutterTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForGutterTmpValueForIdx0);
            } else if (valueHolderForGutterTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForGutterTmpValueForIdx1 = valueHolderForGutterTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForGutterTmpValueForIdx1);
            } else if (valueHolderForGutterTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForGutterTmpValueForIdx2 = valueHolderForGutterTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForGutterTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BarGridColumnOptions {
        var valueDeserializer: DeserializerBase = buffer
        let smTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var smTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(smTmpBuf_runtimeType))) {
            smTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let smTmpResult: Option<Float64> = smTmpBuf
        let mdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var mdTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(mdTmpBuf_runtimeType))) {
            mdTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let mdTmpResult: Option<Float64> = mdTmpBuf
        let lgTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lgTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lgTmpBuf_runtimeType))) {
            lgTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lgTmpResult: Option<Float64> = lgTmpBuf
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
        let gutterTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var gutterTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(gutterTmpBuf_runtimeType))) {
            let gutterTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var gutterTmpBuf_: Dimension 
            if (gutterTmpBuf_UnionSelector == Int8(0)) {
                gutterTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (gutterTmpBuf_UnionSelector == Int8(1)) {
                gutterTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (gutterTmpBuf_UnionSelector == Int8(2)) {
                gutterTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for gutterTmpBuf_ has to be chosen through deserialisation.")
            }
            gutterTmpBuf = match (gutterTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let gutterTmpResult: Option<Dimension> = gutterTmpBuf
        var value: BarGridColumnOptions = BarGridColumnOptions(smTmpResult, mdTmpResult, lgTmpResult, marginTmpResult, gutterTmpResult)
        return value
    }
}
