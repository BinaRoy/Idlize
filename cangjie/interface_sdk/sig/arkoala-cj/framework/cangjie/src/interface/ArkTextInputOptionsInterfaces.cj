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
public interface TextInputOptionsInterfaces <:  {
    public mut open prop placeholder: Option<ResourceStr>
    public mut open prop text: Option<Union_ResourceStr_Bindable_Bindable_Bindable>
    public mut open prop controller: Option<TextInputController>
}
public open class TextInputOptions <: TextInputOptionsInterfaces {
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
    private var text_container: Option<Union_ResourceStr_Bindable_Bindable_Bindable>
    public mut open prop text: Option<Union_ResourceStr_Bindable_Bindable_Bindable>
    {
        get() {
            return text_container
        }
        set(text) {
            text_container = text
        }
    }
    private var controller_container: Option<TextInputController>
    public mut open prop controller: Option<TextInputController>
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    TextInputOptions(placeholder: Option<ResourceStr>, text: Option<Union_ResourceStr_Bindable_Bindable_Bindable>, controller: Option<TextInputController>) {
        this.placeholder_container = placeholder
        this.text_container = text
        this.controller_container = controller
    }
}
public open class TextInputOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextInputOptions): Unit {
        var valueSerializer: SerializerBase = buffer
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
        let valueHolderForText = value.text
        if (valueHolderForText.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTextTmpValue = valueHolderForText
            if (valueHolderForTextTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTextTmpValueForIdx0 = valueHolderForTextTmpValue.getValue0()
                if (valueHolderForTextTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForTextTmpValueForIdx0ForIdx0 = valueHolderForTextTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForTextTmpValueForIdx0ForIdx0);
                } else if (valueHolderForTextTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForTextTmpValueForIdx0ForIdx1 = valueHolderForTextTmpValueForIdx0.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForTextTmpValueForIdx0ForIdx1);
                }
            } else if (valueHolderForTextTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTextTmpValueForIdx1 = valueHolderForTextTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForTextTmpValueForIdx1);
            } else if (valueHolderForTextTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTextTmpValueForIdx2 = valueHolderForTextTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForTextTmpValueForIdx2);
            } else if (valueHolderForTextTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForTextTmpValueForIdx3 = valueHolderForTextTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForTextTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForController = value.controller
        if (valueHolderForController.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForControllerTmpValue = valueHolderForController
            TextInputController_serializer.write(valueSerializer, valueHolderForControllerTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextInputOptions {
        var valueDeserializer: DeserializerBase = buffer
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
        let textTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var textTmpBuf: Option<Union_ResourceStr_Bindable_Bindable_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(textTmpBuf_runtimeType))) {
            let textTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var textTmpBuf_: Union_ResourceStr_Bindable_Bindable_Bindable 
            if (textTmpBuf_UnionSelector == Int8(0)) {
                let textTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var textTmpBuf_BufU: ResourceStr 
                if (textTmpBuf_BufUUnionSelector == Int8(0)) {
                    textTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (textTmpBuf_BufUUnionSelector == Int8(1)) {
                    textTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for textTmpBuf_BufU has to be chosen through deserialisation.")
                }
                textTmpBuf_ = Union_ResourceStr_Bindable_Bindable_Bindable(match (textTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (textTmpBuf_UnionSelector == Int8(1)) {
                textTmpBuf_ = Union_ResourceStr_Bindable_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (textTmpBuf_UnionSelector == Int8(2)) {
                textTmpBuf_ = Union_ResourceStr_Bindable_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (textTmpBuf_UnionSelector == Int8(3)) {
                textTmpBuf_ = Union_ResourceStr_Bindable_Bindable_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for textTmpBuf_ has to be chosen through deserialisation.")
            }
            textTmpBuf = match (textTmpBuf_ as Union_ResourceStr_Bindable_Bindable_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let textTmpResult: Option<Union_ResourceStr_Bindable_Bindable_Bindable> = textTmpBuf
        let controllerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var controllerTmpBuf: Option<TextInputController> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(controllerTmpBuf_runtimeType))) {
            controllerTmpBuf = match (TextInputController_serializer.read(valueDeserializer) as TextInputController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let controllerTmpResult: Option<TextInputController> = controllerTmpBuf
        var value: TextInputOptions = TextInputOptions(placeholderTmpResult, textTmpResult, controllerTmpResult)
        return value
    }
}
