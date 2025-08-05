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
public interface CheckboxOptionsInterfaces <:  {
    public mut open prop name: Option<String>
    public mut open prop group: Option<String>
    public mut open prop indicatorBuilder: Option<CustomBuilder>
}
public open class CheckboxOptions <: CheckboxOptionsInterfaces {
    private var name_container: Option<String>
    public mut open prop name: Option<String>
    {
        get() {
            return name_container
        }
        set(name) {
            name_container = name
        }
    }
    private var group_container: Option<String>
    public mut open prop group: Option<String>
    {
        get() {
            return group_container
        }
        set(group) {
            group_container = group
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
    CheckboxOptions(name: Option<String>, group: Option<String>, indicatorBuilder: Option<CustomBuilder>) {
        this.name_container = name
        this.group_container = group
        this.indicatorBuilder_container = indicatorBuilder
    }
}
public open class CheckboxOptions_serializer {
    public static func write(buffer: SerializerBase, value: CheckboxOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForName = value.name
        if (valueHolderForName.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNameTmpValue = valueHolderForName
            valueSerializer.writeString(valueHolderForNameTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForGroup = value.group
        if (valueHolderForGroup.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGroupTmpValue = valueHolderForGroup
            valueSerializer.writeString(valueHolderForGroupTmpValue);
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
    public static func read(buffer: DeserializerBase): CheckboxOptions {
        var valueDeserializer: DeserializerBase = buffer
        let nameTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var nameTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(nameTmpBuf_runtimeType))) {
            nameTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let nameTmpResult: Option<String> = nameTmpBuf
        let groupTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var groupTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(groupTmpBuf_runtimeType))) {
            groupTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let groupTmpResult: Option<String> = groupTmpBuf
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
        var value: CheckboxOptions = CheckboxOptions(nameTmpResult, groupTmpResult, indicatorBuilderTmpResult)
        return value
    }
}
