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
public interface GridRowSizeOptionInterfaces <:  {
    public mut open prop xs: Option<Length>
    public mut open prop sm: Option<Length>
    public mut open prop md: Option<Length>
    public mut open prop lg: Option<Length>
    public mut open prop xl: Option<Length>
    public mut open prop xxl: Option<Length>
}
public open class GridRowSizeOption <: GridRowSizeOptionInterfaces {
    private var xs_container: Option<Length>
    public mut open prop xs: Option<Length>
    {
        get() {
            return xs_container
        }
        set(xs) {
            xs_container = xs
        }
    }
    private var sm_container: Option<Length>
    public mut open prop sm: Option<Length>
    {
        get() {
            return sm_container
        }
        set(sm) {
            sm_container = sm
        }
    }
    private var md_container: Option<Length>
    public mut open prop md: Option<Length>
    {
        get() {
            return md_container
        }
        set(md) {
            md_container = md
        }
    }
    private var lg_container: Option<Length>
    public mut open prop lg: Option<Length>
    {
        get() {
            return lg_container
        }
        set(lg) {
            lg_container = lg
        }
    }
    private var xl_container: Option<Length>
    public mut open prop xl: Option<Length>
    {
        get() {
            return xl_container
        }
        set(xl) {
            xl_container = xl
        }
    }
    private var xxl_container: Option<Length>
    public mut open prop xxl: Option<Length>
    {
        get() {
            return xxl_container
        }
        set(xxl) {
            xxl_container = xxl
        }
    }
    GridRowSizeOption(xs: Option<Length>, sm: Option<Length>, md: Option<Length>, lg: Option<Length>, xl: Option<Length>, xxl: Option<Length>) {
        this.xs_container = xs
        this.sm_container = sm
        this.md_container = md
        this.lg_container = lg
        this.xl_container = xl
        this.xxl_container = xxl
    }
}
public open class GridRowSizeOption_serializer {
    public static func write(buffer: SerializerBase, value: GridRowSizeOption): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForXs = value.xs
        if (valueHolderForXs.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXsTmpValue = valueHolderForXs
            if (valueHolderForXsTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForXsTmpValueForIdx0 = valueHolderForXsTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForXsTmpValueForIdx0);
            } else if (valueHolderForXsTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForXsTmpValueForIdx1 = valueHolderForXsTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForXsTmpValueForIdx1);
            } else if (valueHolderForXsTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForXsTmpValueForIdx2 = valueHolderForXsTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForXsTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSm = value.sm
        if (valueHolderForSm.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSmTmpValue = valueHolderForSm
            if (valueHolderForSmTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSmTmpValueForIdx0 = valueHolderForSmTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSmTmpValueForIdx0);
            } else if (valueHolderForSmTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSmTmpValueForIdx1 = valueHolderForSmTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSmTmpValueForIdx1);
            } else if (valueHolderForSmTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSmTmpValueForIdx2 = valueHolderForSmTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSmTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMd = value.md
        if (valueHolderForMd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMdTmpValue = valueHolderForMd
            if (valueHolderForMdTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMdTmpValueForIdx0 = valueHolderForMdTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMdTmpValueForIdx0);
            } else if (valueHolderForMdTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMdTmpValueForIdx1 = valueHolderForMdTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMdTmpValueForIdx1);
            } else if (valueHolderForMdTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMdTmpValueForIdx2 = valueHolderForMdTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMdTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLg = value.lg
        if (valueHolderForLg.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLgTmpValue = valueHolderForLg
            if (valueHolderForLgTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLgTmpValueForIdx0 = valueHolderForLgTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForLgTmpValueForIdx0);
            } else if (valueHolderForLgTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLgTmpValueForIdx1 = valueHolderForLgTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForLgTmpValueForIdx1);
            } else if (valueHolderForLgTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForLgTmpValueForIdx2 = valueHolderForLgTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForLgTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForXl = value.xl
        if (valueHolderForXl.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXlTmpValue = valueHolderForXl
            if (valueHolderForXlTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForXlTmpValueForIdx0 = valueHolderForXlTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForXlTmpValueForIdx0);
            } else if (valueHolderForXlTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForXlTmpValueForIdx1 = valueHolderForXlTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForXlTmpValueForIdx1);
            } else if (valueHolderForXlTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForXlTmpValueForIdx2 = valueHolderForXlTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForXlTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForXxl = value.xxl
        if (valueHolderForXxl.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXxlTmpValue = valueHolderForXxl
            if (valueHolderForXxlTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForXxlTmpValueForIdx0 = valueHolderForXxlTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForXxlTmpValueForIdx0);
            } else if (valueHolderForXxlTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForXxlTmpValueForIdx1 = valueHolderForXxlTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForXxlTmpValueForIdx1);
            } else if (valueHolderForXxlTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForXxlTmpValueForIdx2 = valueHolderForXxlTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForXxlTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GridRowSizeOption {
        var valueDeserializer: DeserializerBase = buffer
        let xsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xsTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xsTmpBuf_runtimeType))) {
            let xsTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var xsTmpBuf_: Length 
            if (xsTmpBuf_UnionSelector == Int8(0)) {
                xsTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xsTmpBuf_UnionSelector == Int8(1)) {
                xsTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xsTmpBuf_UnionSelector == Int8(2)) {
                xsTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for xsTmpBuf_ has to be chosen through deserialisation.")
            }
            xsTmpBuf = match (xsTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xsTmpResult: Option<Length> = xsTmpBuf
        let smTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var smTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(smTmpBuf_runtimeType))) {
            let smTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var smTmpBuf_: Length 
            if (smTmpBuf_UnionSelector == Int8(0)) {
                smTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (smTmpBuf_UnionSelector == Int8(1)) {
                smTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (smTmpBuf_UnionSelector == Int8(2)) {
                smTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for smTmpBuf_ has to be chosen through deserialisation.")
            }
            smTmpBuf = match (smTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let smTmpResult: Option<Length> = smTmpBuf
        let mdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var mdTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(mdTmpBuf_runtimeType))) {
            let mdTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var mdTmpBuf_: Length 
            if (mdTmpBuf_UnionSelector == Int8(0)) {
                mdTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (mdTmpBuf_UnionSelector == Int8(1)) {
                mdTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (mdTmpBuf_UnionSelector == Int8(2)) {
                mdTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for mdTmpBuf_ has to be chosen through deserialisation.")
            }
            mdTmpBuf = match (mdTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let mdTmpResult: Option<Length> = mdTmpBuf
        let lgTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var lgTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(lgTmpBuf_runtimeType))) {
            let lgTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var lgTmpBuf_: Length 
            if (lgTmpBuf_UnionSelector == Int8(0)) {
                lgTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (lgTmpBuf_UnionSelector == Int8(1)) {
                lgTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (lgTmpBuf_UnionSelector == Int8(2)) {
                lgTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for lgTmpBuf_ has to be chosen through deserialisation.")
            }
            lgTmpBuf = match (lgTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let lgTmpResult: Option<Length> = lgTmpBuf
        let xlTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xlTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xlTmpBuf_runtimeType))) {
            let xlTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var xlTmpBuf_: Length 
            if (xlTmpBuf_UnionSelector == Int8(0)) {
                xlTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xlTmpBuf_UnionSelector == Int8(1)) {
                xlTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xlTmpBuf_UnionSelector == Int8(2)) {
                xlTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for xlTmpBuf_ has to be chosen through deserialisation.")
            }
            xlTmpBuf = match (xlTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xlTmpResult: Option<Length> = xlTmpBuf
        let xxlTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xxlTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xxlTmpBuf_runtimeType))) {
            let xxlTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var xxlTmpBuf_: Length 
            if (xxlTmpBuf_UnionSelector == Int8(0)) {
                xxlTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xxlTmpBuf_UnionSelector == Int8(1)) {
                xxlTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xxlTmpBuf_UnionSelector == Int8(2)) {
                xxlTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for xxlTmpBuf_ has to be chosen through deserialisation.")
            }
            xxlTmpBuf = match (xxlTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xxlTmpResult: Option<Length> = xxlTmpBuf
        var value: GridRowSizeOption = GridRowSizeOption(xsTmpResult, smTmpResult, mdTmpResult, lgTmpResult, xlTmpResult, xxlTmpResult)
        return value
    }
}
