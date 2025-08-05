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
public interface RadioOptionsInterfaces <:  {
    public mut open prop group: String
    public mut open prop value: String
    public mut open prop indicatorType: Option<RadioIndicatorType>
    public mut open prop indicatorBuilder: Option<CustomBuilder>
}
public open class RadioOptions <: RadioOptionsInterfaces {
    private var group_container: String
    public mut open prop group: String
    {
        get() {
            return group_container
        }
        set(group) {
            group_container = group
        }
    }
    private var value_container: String
    public mut open prop value: String
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var indicatorType_container: Option<RadioIndicatorType>
    public mut open prop indicatorType: Option<RadioIndicatorType>
    {
        get() {
            return indicatorType_container
        }
        set(indicatorType) {
            indicatorType_container = indicatorType
        }
    }
    private var indicatorBuilder_container: Option<CustomBuilder>
    public mut open prop indicatorBuilder: Option<CustomBuilder>
    {
        get() {
            return indicatorBuilder_container
        }
        set(indicatorBuilder) {
            indicatorBuilder_container = indicatorBuilder
        }
    }
    RadioOptions(group: String, value: String, indicatorType: Option<RadioIndicatorType>, indicatorBuilder: Option<CustomBuilder>) {
        this.group_container = group
        this.value_container = value
        this.indicatorType_container = indicatorType
        this.indicatorBuilder_container = indicatorBuilder
    }
}
public open class RadioOptions_serializer {
    public static func write(buffer: SerializerBase, value: RadioOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForGroup = value.group
        valueSerializer.writeString(valueHolderForGroup);
        let valueHolderForValue = value.value
        valueSerializer.writeString(valueHolderForValue);
        let valueHolderForIndicatorType = value.indicatorType
        if (valueHolderForIndicatorType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIndicatorTypeTmpValue = valueHolderForIndicatorType
            valueSerializer.writeInt32(valueHolderForIndicatorTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIndicatorBuilder = value.indicatorBuilder
        if (valueHolderForIndicatorBuilder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIndicatorBuilderTmpValue = valueHolderForIndicatorBuilder
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForIndicatorBuilderTmpValue));
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RadioOptions {
        var valueDeserializer: DeserializerBase = buffer
        let groupTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let valueTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let indicatorTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var indicatorTypeTmpBuf: Option<RadioIndicatorType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(indicatorTypeTmpBuf_runtimeType))) {
            indicatorTypeTmpBuf = RadioIndicatorType(valueDeserializer.readInt32())
        }
        let indicatorTypeTmpResult: Option<RadioIndicatorType> = indicatorTypeTmpBuf
        let indicatorBuilderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var indicatorBuilderTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(indicatorBuilderTmpBuf_runtimeType))) {
            let indicatorBuilderTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let indicatorBuilderTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let indicatorBuilderTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            indicatorBuilderTmpBuf = { => let indicatorBuilderTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
indicatorBuilderTmpBuf_BufArgsSerializer.writeInt32(indicatorBuilderTmpBuf_BufResource.resourceId);
indicatorBuilderTmpBuf_BufArgsSerializer.writePointer(indicatorBuilderTmpBuf_BufCall);
indicatorBuilderTmpBuf_BufArgsSerializer.writePointer(indicatorBuilderTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, indicatorBuilderTmpBuf_BufArgsSerializer.asBuffer(), indicatorBuilderTmpBuf_BufArgsSerializer.length());
indicatorBuilderTmpBuf_BufArgsSerializer.release();
return; }
        }
        let indicatorBuilderTmpResult: Option<CustomBuilder> = indicatorBuilderTmpBuf
        var value: RadioOptions = RadioOptions(groupTmpResult, valueTmpResult, indicatorTypeTmpResult, indicatorBuilderTmpResult)
        return value
    }
}
