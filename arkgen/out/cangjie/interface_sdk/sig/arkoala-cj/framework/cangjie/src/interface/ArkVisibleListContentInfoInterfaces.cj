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
public interface VisibleListContentInfoInterfaces <:  {
    public mut open prop index: Float64
    public mut open prop itemGroupArea: Option<ListItemGroupArea>
    public mut open prop itemIndexInGroup: Option<Float64>
}
public open class VisibleListContentInfo <: VisibleListContentInfoInterfaces {
    private var index_container: Float64
    public mut open prop index: Float64
    {
        get() {
            return index_container
        }
        set(index) {
            index_container = index
        }
    }
    private var itemGroupArea_container: Option<ListItemGroupArea>
    public mut open prop itemGroupArea: Option<ListItemGroupArea>
    {
        get() {
            return itemGroupArea_container
        }
        set(itemGroupArea) {
            itemGroupArea_container = itemGroupArea
        }
    }
    private var itemIndexInGroup_container: Option<Float64>
    public mut open prop itemIndexInGroup: Option<Float64>
    {
        get() {
            return itemIndexInGroup_container
        }
        set(itemIndexInGroup) {
            itemIndexInGroup_container = itemIndexInGroup
        }
    }
    VisibleListContentInfo(index: Float64, itemGroupArea: Option<ListItemGroupArea>, itemIndexInGroup: Option<Float64>) {
        this.index_container = index
        this.itemGroupArea_container = itemGroupArea
        this.itemIndexInGroup_container = itemIndexInGroup
    }
}
public open class VisibleListContentInfo_serializer {
    public static func write(buffer: SerializerBase, value: VisibleListContentInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIndex = value.index
        valueSerializer.writeNumber(valueHolderForIndex);
        let valueHolderForItemGroupArea = value.itemGroupArea
        if (valueHolderForItemGroupArea.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForItemGroupAreaTmpValue = valueHolderForItemGroupArea
            valueSerializer.writeInt32(valueHolderForItemGroupAreaTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForItemIndexInGroup = value.itemIndexInGroup
        if (valueHolderForItemIndexInGroup.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForItemIndexInGroupTmpValue = valueHolderForItemIndexInGroup
            valueSerializer.writeNumber(valueHolderForItemIndexInGroupTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): VisibleListContentInfo {
        var valueDeserializer: DeserializerBase = buffer
        let indexTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let itemGroupAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var itemGroupAreaTmpBuf: Option<ListItemGroupArea> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(itemGroupAreaTmpBuf_runtimeType))) {
            itemGroupAreaTmpBuf = ListItemGroupArea(valueDeserializer.readInt32())
        }
        let itemGroupAreaTmpResult: Option<ListItemGroupArea> = itemGroupAreaTmpBuf
        let itemIndexInGroupTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var itemIndexInGroupTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(itemIndexInGroupTmpBuf_runtimeType))) {
            itemIndexInGroupTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let itemIndexInGroupTmpResult: Option<Float64> = itemIndexInGroupTmpBuf
        var value: VisibleListContentInfo = VisibleListContentInfo(indexTmpResult, itemGroupAreaTmpResult, itemIndexInGroupTmpResult)
        return value
    }
}
