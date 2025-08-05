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
public interface GridRowColumnOptionInterfaces <:  {
    public mut open prop xs: Option<Float64>
    public mut open prop sm: Option<Float64>
    public mut open prop md: Option<Float64>
    public mut open prop lg: Option<Float64>
    public mut open prop xl: Option<Float64>
    public mut open prop xxl: Option<Float64>
}
public open class GridRowColumnOption <: GridRowColumnOptionInterfaces {
    private var xs_container: Option<Float64>
    public mut open prop xs: Option<Float64>
    {
        get() {
            return xs_container
        }
        set(xs) {
            xs_container = xs
        }
    }
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
    private var xl_container: Option<Float64>
    public mut open prop xl: Option<Float64>
    {
        get() {
            return xl_container
        }
        set(xl) {
            xl_container = xl
        }
    }
    private var xxl_container: Option<Float64>
    public mut open prop xxl: Option<Float64>
    {
        get() {
            return xxl_container
        }
        set(xxl) {
            xxl_container = xxl
        }
    }
    GridRowColumnOption(xs: Option<Float64>, sm: Option<Float64>, md: Option<Float64>, lg: Option<Float64>, xl: Option<Float64>, xxl: Option<Float64>) {
        this.xs_container = xs
        this.sm_container = sm
        this.md_container = md
        this.lg_container = lg
        this.xl_container = xl
        this.xxl_container = xxl
    }
}
public open class GridRowColumnOption_serializer {
    public static func write(buffer: SerializerBase, value: GridRowColumnOption): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForXs = value.xs
        if (valueHolderForXs.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXsTmpValue = valueHolderForXs
            valueSerializer.writeNumber(valueHolderForXsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
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
        let valueHolderForXl = value.xl
        if (valueHolderForXl.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXlTmpValue = valueHolderForXl
            valueSerializer.writeNumber(valueHolderForXlTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForXxl = value.xxl
        if (valueHolderForXxl.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXxlTmpValue = valueHolderForXxl
            valueSerializer.writeNumber(valueHolderForXxlTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GridRowColumnOption {
        var valueDeserializer: DeserializerBase = buffer
        let xsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xsTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xsTmpBuf_runtimeType))) {
            xsTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xsTmpResult: Option<Float64> = xsTmpBuf
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
        let xlTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xlTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xlTmpBuf_runtimeType))) {
            xlTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xlTmpResult: Option<Float64> = xlTmpBuf
        let xxlTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xxlTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xxlTmpBuf_runtimeType))) {
            xxlTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xxlTmpResult: Option<Float64> = xxlTmpBuf
        var value: GridRowColumnOption = GridRowColumnOption(xsTmpResult, smTmpResult, mdTmpResult, lgTmpResult, xlTmpResult, xxlTmpResult)
        return value
    }
}
