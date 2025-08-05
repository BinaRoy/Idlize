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
public interface NavContentInfoInterfaces <:  {
    public mut open prop name: Option<String>
    public mut open prop index: Float64
    public mut open prop mode: Option<NavDestinationMode>
    public mut open prop param: Option<Any>
    public mut open prop navDestinationId: Option<String>
}
public open class NavContentInfo <: NavContentInfoInterfaces {
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
    private var mode_container: Option<NavDestinationMode>
    public mut open prop mode: Option<NavDestinationMode>
    {
        get() {
            return mode_container
        }
        set(mode) {
            mode_container = mode
        }
    }
    private var param_container: Option<Any>
    public mut open prop param: Option<Any>
    {
        get() {
            return param_container
        }
        set(param) {
            param_container = param
        }
    }
    private var navDestinationId_container: Option<String>
    public mut open prop navDestinationId: Option<String>
    {
        get() {
            return navDestinationId_container
        }
        set(navDestinationId) {
            navDestinationId_container = navDestinationId
        }
    }
    NavContentInfo(name: Option<String>, index: Float64, mode: Option<NavDestinationMode>, param: Option<Any>, navDestinationId: Option<String>) {
        this.name_container = name
        this.index_container = index
        this.mode_container = mode
        this.param_container = param
        this.navDestinationId_container = navDestinationId
    }
}
public open class NavContentInfo_serializer {
    public static func write(buffer: SerializerBase, value: NavContentInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForName = value.name
        if (valueHolderForName.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNameTmpValue = valueHolderForName
            valueSerializer.writeString(valueHolderForNameTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIndex = value.index
        valueSerializer.writeNumber(valueHolderForIndex);
        let valueHolderForMode = value.mode
        if (valueHolderForMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModeTmpValue = valueHolderForMode
            valueSerializer.writeInt32(valueHolderForModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForParam = value.param
        if (valueHolderForParam.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParamTmpValue = valueHolderForParam
            valueSerializer.holdAndWriteObject(valueHolderForParamTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForNavDestinationId = value.navDestinationId
        if (valueHolderForNavDestinationId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNavDestinationIdTmpValue = valueHolderForNavDestinationId
            valueSerializer.writeString(valueHolderForNavDestinationIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NavContentInfo {
        var valueDeserializer: DeserializerBase = buffer
        let nameTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var nameTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(nameTmpBuf_runtimeType))) {
            nameTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let nameTmpResult: Option<String> = nameTmpBuf
        let indexTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<NavDestinationMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            modeTmpBuf = NavDestinationMode(valueDeserializer.readInt32())
        }
        let modeTmpResult: Option<NavDestinationMode> = modeTmpBuf
        let paramTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paramTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paramTmpBuf_runtimeType))) {
            paramTmpBuf = match (valueDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paramTmpResult: Option<Any> = paramTmpBuf
        let navDestinationIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var navDestinationIdTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(navDestinationIdTmpBuf_runtimeType))) {
            navDestinationIdTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let navDestinationIdTmpResult: Option<String> = navDestinationIdTmpBuf
        var value: NavContentInfo = NavContentInfo(nameTmpResult, indexTmpResult, modeTmpResult, paramTmpResult, navDestinationIdTmpResult)
        return value
    }
}
