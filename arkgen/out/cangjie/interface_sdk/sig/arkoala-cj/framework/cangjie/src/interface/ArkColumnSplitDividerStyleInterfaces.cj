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
public interface ColumnSplitDividerStyleInterfaces <:  {
    public mut open prop startMargin: Option<Dimension>
    public mut open prop endMargin: Option<Dimension>
}
public open class ColumnSplitDividerStyle <: ColumnSplitDividerStyleInterfaces {
    private var startMargin_container: Option<Dimension>
    public mut open prop startMargin: Option<Dimension>
    {
        get() {
            return startMargin_container
        }
        set(startMargin) {
            startMargin_container = startMargin
        }
    }
    private var endMargin_container: Option<Dimension>
    public mut open prop endMargin: Option<Dimension>
    {
        get() {
            return endMargin_container
        }
        set(endMargin) {
            endMargin_container = endMargin
        }
    }
    ColumnSplitDividerStyle(startMargin: Option<Dimension>, endMargin: Option<Dimension>) {
        this.startMargin_container = startMargin
        this.endMargin_container = endMargin
    }
}
public open class ColumnSplitDividerStyle_serializer {
    public static func write(buffer: SerializerBase, value: ColumnSplitDividerStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStartMargin = value.startMargin
        if (valueHolderForStartMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartMarginTmpValue = valueHolderForStartMargin
            if (valueHolderForStartMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartMarginTmpValueForIdx0 = valueHolderForStartMarginTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForStartMarginTmpValueForIdx0);
            } else if (valueHolderForStartMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartMarginTmpValueForIdx1 = valueHolderForStartMarginTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStartMarginTmpValueForIdx1);
            } else if (valueHolderForStartMarginTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStartMarginTmpValueForIdx2 = valueHolderForStartMarginTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForStartMarginTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEndMargin = value.endMargin
        if (valueHolderForEndMargin.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndMarginTmpValue = valueHolderForEndMargin
            if (valueHolderForEndMarginTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForEndMarginTmpValueForIdx0 = valueHolderForEndMarginTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForEndMarginTmpValueForIdx0);
            } else if (valueHolderForEndMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForEndMarginTmpValueForIdx1 = valueHolderForEndMarginTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForEndMarginTmpValueForIdx1);
            } else if (valueHolderForEndMarginTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForEndMarginTmpValueForIdx2 = valueHolderForEndMarginTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForEndMarginTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ColumnSplitDividerStyle {
        var valueDeserializer: DeserializerBase = buffer
        let startMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startMarginTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startMarginTmpBuf_runtimeType))) {
            let startMarginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startMarginTmpBuf_: Dimension 
            if (startMarginTmpBuf_UnionSelector == Int8(0)) {
                startMarginTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startMarginTmpBuf_UnionSelector == Int8(1)) {
                startMarginTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startMarginTmpBuf_UnionSelector == Int8(2)) {
                startMarginTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for startMarginTmpBuf_ has to be chosen through deserialisation.")
            }
            startMarginTmpBuf = match (startMarginTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startMarginTmpResult: Option<Dimension> = startMarginTmpBuf
        let endMarginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endMarginTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endMarginTmpBuf_runtimeType))) {
            let endMarginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var endMarginTmpBuf_: Dimension 
            if (endMarginTmpBuf_UnionSelector == Int8(0)) {
                endMarginTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endMarginTmpBuf_UnionSelector == Int8(1)) {
                endMarginTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endMarginTmpBuf_UnionSelector == Int8(2)) {
                endMarginTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for endMarginTmpBuf_ has to be chosen through deserialisation.")
            }
            endMarginTmpBuf = match (endMarginTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endMarginTmpResult: Option<Dimension> = endMarginTmpBuf
        var value: ColumnSplitDividerStyle = ColumnSplitDividerStyle(startMarginTmpResult, endMarginTmpResult)
        return value
    }
}
