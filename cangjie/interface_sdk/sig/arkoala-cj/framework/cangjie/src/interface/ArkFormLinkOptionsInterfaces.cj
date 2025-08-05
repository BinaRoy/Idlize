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
public interface FormLinkOptionsInterfaces <:  {
    public mut open prop action: String
    public mut open prop moduleName: Option<String>
    public mut open prop bundleName: Option<String>
    public mut open prop abilityName: Option<String>
    public mut open prop uri: Option<String>
    public mut open prop params: Option<Any>
}
public open class FormLinkOptions <: FormLinkOptionsInterfaces {
    private var action_container: String
    public mut open prop action: String
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    private var moduleName_container: Option<String>
    public mut open prop moduleName: Option<String>
    {
        get() {
            return moduleName_container
        }
        set(moduleName) {
            moduleName_container = moduleName
        }
    }
    private var bundleName_container: Option<String>
    public mut open prop bundleName: Option<String>
    {
        get() {
            return bundleName_container
        }
        set(bundleName) {
            bundleName_container = bundleName
        }
    }
    private var abilityName_container: Option<String>
    public mut open prop abilityName: Option<String>
    {
        get() {
            return abilityName_container
        }
        set(abilityName) {
            abilityName_container = abilityName
        }
    }
    private var uri_container: Option<String>
    public mut open prop uri: Option<String>
    {
        get() {
            return uri_container
        }
        set(uri) {
            uri_container = uri
        }
    }
    private var params_container: Option<Any>
    public mut open prop params: Option<Any>
    {
        get() {
            return params_container
        }
        set(params) {
            params_container = params
        }
    }
    FormLinkOptions(action: String, moduleName: Option<String>, bundleName: Option<String>, abilityName: Option<String>, uri: Option<String>, params: Option<Any>) {
        this.action_container = action
        this.moduleName_container = moduleName
        this.bundleName_container = bundleName
        this.abilityName_container = abilityName
        this.uri_container = uri
        this.params_container = params
    }
}
public open class FormLinkOptions_serializer {
    public static func write(buffer: SerializerBase, value: FormLinkOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAction = value.action
        valueSerializer.writeString(valueHolderForAction);
        let valueHolderForModuleName = value.moduleName
        if (valueHolderForModuleName.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModuleNameTmpValue = valueHolderForModuleName
            valueSerializer.writeString(valueHolderForModuleNameTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBundleName = value.bundleName
        if (valueHolderForBundleName.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBundleNameTmpValue = valueHolderForBundleName
            valueSerializer.writeString(valueHolderForBundleNameTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAbilityName = value.abilityName
        if (valueHolderForAbilityName.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAbilityNameTmpValue = valueHolderForAbilityName
            valueSerializer.writeString(valueHolderForAbilityNameTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUri = value.uri
        if (valueHolderForUri.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUriTmpValue = valueHolderForUri
            valueSerializer.writeString(valueHolderForUriTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForParams = value.params
        if (valueHolderForParams.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParamsTmpValue = valueHolderForParams
            valueSerializer.holdAndWriteObject(valueHolderForParamsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FormLinkOptions {
        var valueDeserializer: DeserializerBase = buffer
        let actionTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let moduleNameTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var moduleNameTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(moduleNameTmpBuf_runtimeType))) {
            moduleNameTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let moduleNameTmpResult: Option<String> = moduleNameTmpBuf
        let bundleNameTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bundleNameTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bundleNameTmpBuf_runtimeType))) {
            bundleNameTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bundleNameTmpResult: Option<String> = bundleNameTmpBuf
        let abilityNameTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var abilityNameTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(abilityNameTmpBuf_runtimeType))) {
            abilityNameTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let abilityNameTmpResult: Option<String> = abilityNameTmpBuf
        let uriTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var uriTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(uriTmpBuf_runtimeType))) {
            uriTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let uriTmpResult: Option<String> = uriTmpBuf
        let paramsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paramsTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paramsTmpBuf_runtimeType))) {
            paramsTmpBuf = match (valueDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paramsTmpResult: Option<Any> = paramsTmpBuf
        var value: FormLinkOptions = FormLinkOptions(actionTmpResult, moduleNameTmpResult, bundleNameTmpResult, abilityNameTmpResult, uriTmpResult, paramsTmpResult)
        return value
    }
}
