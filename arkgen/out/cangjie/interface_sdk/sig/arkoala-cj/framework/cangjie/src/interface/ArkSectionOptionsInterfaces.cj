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
public interface SectionOptionsInterfaces <:  {
    public mut open prop itemsCount: Float64
    public mut open prop crossCount: Option<Float64>
    public mut open prop onGetItemMainSizeByIndex: Option<GetItemMainSizeByIndex>
    public mut open prop columnsGap: Option<Dimension>
    public mut open prop rowsGap: Option<Dimension>
    public mut open prop margin: Option<Union_Margin_Dimension>
}
public open class SectionOptions <: SectionOptionsInterfaces {
    private var itemsCount_container: Float64
    public mut open prop itemsCount: Float64
    {
        get() {
            return itemsCount_container
        }
        set(itemsCount) {
            itemsCount_container = itemsCount
        }
    }
    private var crossCount_container: Option<Float64>
    public mut open prop crossCount: Option<Float64>
    {
        get() {
            return crossCount_container
        }
        set(crossCount) {
            crossCount_container = crossCount
        }
    }
    private var onGetItemMainSizeByIndex_container: Option<GetItemMainSizeByIndex>
    public mut open prop onGetItemMainSizeByIndex: Option<GetItemMainSizeByIndex>
    {
        get() {
            return onGetItemMainSizeByIndex_container
        }
        set(onGetItemMainSizeByIndex) {
            onGetItemMainSizeByIndex_container = onGetItemMainSizeByIndex
        }
    }
    private var columnsGap_container: Option<Dimension>
    public mut open prop columnsGap: Option<Dimension>
    {
        get() {
            return columnsGap_container
        }
        set(columnsGap) {
            columnsGap_container = columnsGap
        }
    }
    private var rowsGap_container: Option<Dimension>
    public mut open prop rowsGap: Option<Dimension>
    {
        get() {
            return rowsGap_container
        }
        set(rowsGap) {
            rowsGap_container = rowsGap
        }
    }
    private var margin_container: Option<Union_Margin_Dimension>
    public mut open prop margin: Option<Union_Margin_Dimension>
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    SectionOptions(itemsCount: Float64, crossCount: Option<Float64>, onGetItemMainSizeByIndex: Option<GetItemMainSizeByIndex>, columnsGap: Option<Dimension>, rowsGap: Option<Dimension>, margin: Option<Union_Margin_Dimension>) {
        this.itemsCount_container = itemsCount
        this.crossCount_container = crossCount
        this.onGetItemMainSizeByIndex_container = onGetItemMainSizeByIndex
        this.columnsGap_container = columnsGap
        this.rowsGap_container = rowsGap
        this.margin_container = margin
    }
}
public open class SectionOptions_serializer {
    public static func write(buffer: SerializerBase, value: SectionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForItemsCount = value.itemsCount
        valueSerializer.writeNumber(valueHolderForItemsCount);
        let valueHolderForCrossCount = value.crossCount
        if (valueHolderForCrossCount.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCrossCountTmpValue = valueHolderForCrossCount
            valueSerializer.writeNumber(valueHolderForCrossCountTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnGetItemMainSizeByIndex = value.onGetItemMainSizeByIndex
        if (valueHolderForOnGetItemMainSizeByIndex.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnGetItemMainSizeByIndexTmpValue = valueHolderForOnGetItemMainSizeByIndex
            valueSerializer.holdAndWriteCallback(valueHolderForOnGetItemMainSizeByIndexTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColumnsGap = value.columnsGap
        if (valueHolderForColumnsGap.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColumnsGapTmpValue = valueHolderForColumnsGap
            if (valueHolderForColumnsGapTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColumnsGapTmpValueForIdx0 = valueHolderForColumnsGapTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForColumnsGapTmpValueForIdx0);
            } else if (valueHolderForColumnsGapTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColumnsGapTmpValueForIdx1 = valueHolderForColumnsGapTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForColumnsGapTmpValueForIdx1);
            } else if (valueHolderForColumnsGapTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColumnsGapTmpValueForIdx2 = valueHolderForColumnsGapTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForColumnsGapTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRowsGap = value.rowsGap
        if (valueHolderForRowsGap.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRowsGapTmpValue = valueHolderForRowsGap
            if (valueHolderForRowsGapTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRowsGapTmpValueForIdx0 = valueHolderForRowsGapTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForRowsGapTmpValueForIdx0);
            } else if (valueHolderForRowsGapTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRowsGapTmpValueForIdx1 = valueHolderForRowsGapTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForRowsGapTmpValueForIdx1);
            } else if (valueHolderForRowsGapTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForRowsGapTmpValueForIdx2 = valueHolderForRowsGapTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForRowsGapTmpValueForIdx2);
            }
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
                Padding_serializer.write(valueSerializer, valueHolderForMarginTmpValueForIdx0);
            } else if (valueHolderForMarginTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginTmpValueForIdx1 = valueHolderForMarginTmpValue.getValue1()
                if (valueHolderForMarginTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForMarginTmpValueForIdx1ForIdx0 = valueHolderForMarginTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForMarginTmpValueForIdx1ForIdx0);
                } else if (valueHolderForMarginTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForMarginTmpValueForIdx1ForIdx1 = valueHolderForMarginTmpValueForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForMarginTmpValueForIdx1ForIdx1);
                } else if (valueHolderForMarginTmpValueForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForMarginTmpValueForIdx1ForIdx2 = valueHolderForMarginTmpValueForIdx1.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForMarginTmpValueForIdx1ForIdx2);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SectionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let itemsCountTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let crossCountTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var crossCountTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(crossCountTmpBuf_runtimeType))) {
            crossCountTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let crossCountTmpResult: Option<Float64> = crossCountTmpBuf
        let onGetItemMainSizeByIndexTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onGetItemMainSizeByIndexTmpBuf: Option<GetItemMainSizeByIndex> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onGetItemMainSizeByIndexTmpBuf_runtimeType))) {
            let onGetItemMainSizeByIndexTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onGetItemMainSizeByIndexTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onGetItemMainSizeByIndexTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onGetItemMainSizeByIndexTmpBuf = {index: Float64 => let onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer.writeInt32(onGetItemMainSizeByIndexTmpBuf_BufResource.resourceId);
onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer.writePointer(onGetItemMainSizeByIndexTmpBuf_BufCall);
onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer.writePointer(onGetItemMainSizeByIndexTmpBuf_BufCallSync);
onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer.writeNumber(index);
let onGetItemMainSizeByIndexTmpBuf_BufContinuationValue = Float64Holder(None<Float64>);
let onGetItemMainSizeByIndexTmpBuf_BufContinuationCallback: ((parameter: Float64) -> Unit) = {value: Float64 => onGetItemMainSizeByIndexTmpBuf_BufContinuationValue.value = value; }
onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer.holdAndWriteCallback(onGetItemMainSizeByIndexTmpBuf_BufContinuationCallback);
InteropNativeModule._CallCallback(-2076995110, onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer.asBuffer(), onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer.length());
onGetItemMainSizeByIndexTmpBuf_BufArgsSerializer.release();
return match (onGetItemMainSizeByIndexTmpBuf_BufContinuationValue.value as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} }
        }
        let onGetItemMainSizeByIndexTmpResult: Option<GetItemMainSizeByIndex> = onGetItemMainSizeByIndexTmpBuf
        let columnsGapTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var columnsGapTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(columnsGapTmpBuf_runtimeType))) {
            let columnsGapTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var columnsGapTmpBuf_: Dimension 
            if (columnsGapTmpBuf_UnionSelector == Int8(0)) {
                columnsGapTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (columnsGapTmpBuf_UnionSelector == Int8(1)) {
                columnsGapTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (columnsGapTmpBuf_UnionSelector == Int8(2)) {
                columnsGapTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for columnsGapTmpBuf_ has to be chosen through deserialisation.")
            }
            columnsGapTmpBuf = match (columnsGapTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let columnsGapTmpResult: Option<Dimension> = columnsGapTmpBuf
        let rowsGapTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var rowsGapTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(rowsGapTmpBuf_runtimeType))) {
            let rowsGapTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var rowsGapTmpBuf_: Dimension 
            if (rowsGapTmpBuf_UnionSelector == Int8(0)) {
                rowsGapTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rowsGapTmpBuf_UnionSelector == Int8(1)) {
                rowsGapTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (rowsGapTmpBuf_UnionSelector == Int8(2)) {
                rowsGapTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for rowsGapTmpBuf_ has to be chosen through deserialisation.")
            }
            rowsGapTmpBuf = match (rowsGapTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let rowsGapTmpResult: Option<Dimension> = rowsGapTmpBuf
        let marginTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBuf: Option<Union_Margin_Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBuf_runtimeType))) {
            let marginTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTmpBuf_: Union_Margin_Dimension 
            if (marginTmpBuf_UnionSelector == Int8(0)) {
                marginTmpBuf_ = Union_Margin_Dimension(Padding_serializer.read(valueDeserializer))
            } else if (marginTmpBuf_UnionSelector == Int8(1)) {
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
                marginTmpBuf_ = Union_Margin_Dimension(match (marginTmpBuf_BufU as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for marginTmpBuf_ has to be chosen through deserialisation.")
            }
            marginTmpBuf = match (marginTmpBuf_ as Union_Margin_Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpResult: Option<Union_Margin_Dimension> = marginTmpBuf
        var value: SectionOptions = SectionOptions(itemsCountTmpResult, crossCountTmpResult, onGetItemMainSizeByIndexTmpResult, columnsGapTmpResult, rowsGapTmpResult, marginTmpResult)
        return value
    }
}
