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
public interface SearchOptionsInterfaces <:  {
    public mut open prop value: Option<ResourceStr>
    public mut open prop value: Option<Union_String_Bindable>
    public mut open prop placeholder: Option<ResourceStr>
    public mut open prop icon: Option<String>
    public mut open prop controller: Option<SearchController>
}
public open class SearchOptions <: SearchOptionsInterfaces {
    private var value_container: Option<ResourceStr>
    public mut open prop value: Option<ResourceStr>
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var value_container: Option<Union_String_Bindable>
    public mut open prop value: Option<Union_String_Bindable>
    {
        get() {
            return value_container
        }
        set(value) {
            value_container = value
        }
    }
    private var placeholder_container: Option<ResourceStr>
    public mut open prop placeholder: Option<ResourceStr>
    {
        get() {
            return placeholder_container
        }
        set(placeholder) {
            placeholder_container = placeholder
        }
    }
    private var icon_container: Option<String>
    public mut open prop icon: Option<String>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var controller_container: Option<SearchController>
    public mut open prop controller: Option<SearchController>
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    SearchOptions(value: Option<ResourceStr>, value: Option<Union_String_Bindable>, placeholder: Option<ResourceStr>, icon: Option<String>, controller: Option<SearchController>) {
        this.value_container = value
        this.value_container = value
        this.placeholder_container = placeholder
        this.icon_container = icon
        this.controller_container = controller
    }
}
public open class SearchOptions_serializer {
    public static func write(buffer: SerializerBase, value: SearchOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValue = value.value
        if (valueHolderForValue.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValueTmpValue = valueHolderForValue
            if (valueHolderForValueTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForValueTmpValueForIdx0 = valueHolderForValueTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForValueTmpValueForIdx0);
            } else if (valueHolderForValueTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForValueTmpValueForIdx1 = valueHolderForValueTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForValue = value.value
        if (valueHolderForValue.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForValueTmpValue = valueHolderForValue
            if (valueHolderForValueTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForValueTmpValueForIdx0 = valueHolderForValueTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForValueTmpValueForIdx0);
            } else if (valueHolderForValueTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForValueTmpValueForIdx1 = valueHolderForValueTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForValueTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPlaceholder = value.placeholder
        if (valueHolderForPlaceholder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPlaceholderTmpValue = valueHolderForPlaceholder
            if (valueHolderForPlaceholderTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPlaceholderTmpValueForIdx0 = valueHolderForPlaceholderTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForPlaceholderTmpValueForIdx0);
            } else if (valueHolderForPlaceholderTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPlaceholderTmpValueForIdx1 = valueHolderForPlaceholderTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForPlaceholderTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIcon = value.icon
        if (valueHolderForIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIconTmpValue = valueHolderForIcon
            valueSerializer.writeString(valueHolderForIconTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForController = value.controller
        if (valueHolderForController.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForControllerTmpValue = valueHolderForController
            SearchController_serializer.write(valueSerializer, valueHolderForControllerTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SearchOptions {
        var valueDeserializer: DeserializerBase = buffer
        let valueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueTmpBuf_runtimeType))) {
            let valueTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var valueTmpBuf_: ResourceStr 
            if (valueTmpBuf_UnionSelector == Int8(0)) {
                valueTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (valueTmpBuf_UnionSelector == Int8(1)) {
                valueTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for valueTmpBuf_ has to be chosen through deserialisation.")
            }
            valueTmpBuf = match (valueTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueTmpResult: Option<ResourceStr> = valueTmpBuf
        let valueTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var valueTmpBuf: Option<Union_String_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(valueTmpBuf_runtimeType))) {
            let valueTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var valueTmpBuf_: Union_String_Bindable 
            if (valueTmpBuf_UnionSelector == Int8(0)) {
                valueTmpBuf_ = Union_String_Bindable(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (valueTmpBuf_UnionSelector == Int8(1)) {
                valueTmpBuf_ = Union_String_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for valueTmpBuf_ has to be chosen through deserialisation.")
            }
            valueTmpBuf = match (valueTmpBuf_ as Union_String_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let valueTmpResult: Option<Union_String_Bindable> = valueTmpBuf
        let placeholderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var placeholderTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(placeholderTmpBuf_runtimeType))) {
            let placeholderTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var placeholderTmpBuf_: ResourceStr 
            if (placeholderTmpBuf_UnionSelector == Int8(0)) {
                placeholderTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (placeholderTmpBuf_UnionSelector == Int8(1)) {
                placeholderTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for placeholderTmpBuf_ has to be chosen through deserialisation.")
            }
            placeholderTmpBuf = match (placeholderTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let placeholderTmpResult: Option<ResourceStr> = placeholderTmpBuf
        let iconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconTmpBuf_runtimeType))) {
            iconTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let iconTmpResult: Option<String> = iconTmpBuf
        let controllerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var controllerTmpBuf: Option<SearchController> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(controllerTmpBuf_runtimeType))) {
            controllerTmpBuf = match (SearchController_serializer.read(valueDeserializer) as SearchController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let controllerTmpResult: Option<SearchController> = controllerTmpBuf
        var value: SearchOptions = SearchOptions(valueTmpResult, valueTmpResult, placeholderTmpResult, iconTmpResult, controllerTmpResult)
        return value
    }
}
