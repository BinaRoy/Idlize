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
public interface WebKeyboardCallbackInfoInterfaces <:  {
    public mut open prop controller: WebKeyboardController
    public mut open prop attributes: HashMap<String, String>
}
public open class WebKeyboardCallbackInfo <: WebKeyboardCallbackInfoInterfaces {
    private var controller_container: WebKeyboardController
    public mut open prop controller: WebKeyboardController
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    private var attributes_container: HashMap<String, String>
    public mut open prop attributes: HashMap<String, String>
    {
        get() {
            return attributes_container
        }
        set(attributes) {
            attributes_container = attributes
        }
    }
    WebKeyboardCallbackInfo(controller: WebKeyboardController, attributes: HashMap<String, String>) {
        this.controller_container = controller
        this.attributes_container = attributes
    }
}
public open class WebKeyboardCallbackInfo_serializer {
    public static func write(buffer: SerializerBase, value: WebKeyboardCallbackInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForController = value.controller
        WebKeyboardController_serializer.write(valueSerializer, valueHolderForController);
        let valueHolderForAttributes = value.attributes
        valueSerializer.writeInt32(Int32(valueHolderForAttributes.size));
        for ((valueHolderForAttributesKeyVar, valueHolderForAttributesValueVar) in valueHolderForAttributes) {
            valueSerializer.writeString(valueHolderForAttributesKeyVar);
            valueSerializer.writeString(valueHolderForAttributesValueVar);
        }
    }
    public static func read(buffer: DeserializerBase): WebKeyboardCallbackInfo {
        var valueDeserializer: DeserializerBase = buffer
        let controllerTmpResult: WebKeyboardController = match (WebKeyboardController_serializer.read(valueDeserializer) as WebKeyboardController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let attributesTmpBufSizeVar: Int32 = valueDeserializer.readInt32()
        var attributesTmpBuf: HashMap<String, String> = HashMap<String, String>()
        // TODO: TS map resize;
        for (attributesTmpBufIVar in 0..attributesTmpBufSizeVar) {
            let attributesTmpBufKeyVar: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let attributesTmpBufValueVar: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            attributesTmpBuf.add(attributesTmpBufKeyVar, attributesTmpBufValueVar);
        }
        let attributesTmpResult: HashMap<String, String> = attributesTmpBuf
        var value: WebKeyboardCallbackInfo = WebKeyboardCallbackInfo(controllerTmpResult, attributesTmpResult)
        return value
    }
}
