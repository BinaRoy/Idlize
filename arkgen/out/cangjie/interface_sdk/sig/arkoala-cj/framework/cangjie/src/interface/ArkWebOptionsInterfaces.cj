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
public interface WebOptionsInterfaces <:  {
    public mut open prop src: Union_String_Resource
    public mut open prop controller: Union_WebController_WebviewController
    public mut open prop renderMode: Option<RenderMode>
    public mut open prop incognitoMode: Option<Bool>
    public mut open prop sharedRenderProcessToken: Option<String>
}
public open class WebOptions <: WebOptionsInterfaces {
    private var src_container: Union_String_Resource
    public mut open prop src: Union_String_Resource
    {
        get() {
            return src_container
        }
        set(src) {
            src_container = src
        }
    }
    private var controller_container: Union_WebController_WebviewController
    public mut open prop controller: Union_WebController_WebviewController
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    private var renderMode_container: Option<RenderMode>
    public mut open prop renderMode: Option<RenderMode>
    {
        get() {
            return renderMode_container
        }
        set(renderMode) {
            renderMode_container = renderMode
        }
    }
    private var incognitoMode_container: Option<Bool>
    public mut open prop incognitoMode: Option<Bool>
    {
        get() {
            return incognitoMode_container
        }
        set(incognitoMode) {
            incognitoMode_container = incognitoMode
        }
    }
    private var sharedRenderProcessToken_container: Option<String>
    public mut open prop sharedRenderProcessToken: Option<String>
    {
        get() {
            return sharedRenderProcessToken_container
        }
        set(sharedRenderProcessToken) {
            sharedRenderProcessToken_container = sharedRenderProcessToken
        }
    }
    WebOptions(src: Union_String_Resource, controller: Union_WebController_WebviewController, renderMode: Option<RenderMode>, incognitoMode: Option<Bool>, sharedRenderProcessToken: Option<String>) {
        this.src_container = src
        this.controller_container = controller
        this.renderMode_container = renderMode
        this.incognitoMode_container = incognitoMode
        this.sharedRenderProcessToken_container = sharedRenderProcessToken
    }
}
public open class WebOptions_serializer {
    public static func write(buffer: SerializerBase, value: WebOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSrc = value.src
        if (valueHolderForSrc.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForSrcForIdx0 = valueHolderForSrc.getValue0()
            valueSerializer.writeString(valueHolderForSrcForIdx0);
        } else if (valueHolderForSrc.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForSrcForIdx1 = valueHolderForSrc.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForSrcForIdx1);
        }
        let valueHolderForController = value.controller
        if (valueHolderForController.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForControllerForIdx0 = valueHolderForController.getValue0()
            WebController_serializer.write(valueSerializer, valueHolderForControllerForIdx0);
        } else if (valueHolderForController.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForControllerForIdx1 = valueHolderForController.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForControllerForIdx1);
        }
        let valueHolderForRenderMode = value.renderMode
        if (valueHolderForRenderMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRenderModeTmpValue = valueHolderForRenderMode
            valueSerializer.writeInt32(valueHolderForRenderModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIncognitoMode = value.incognitoMode
        if (valueHolderForIncognitoMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIncognitoModeTmpValue = valueHolderForIncognitoMode
            valueSerializer.writeBoolean(valueHolderForIncognitoModeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSharedRenderProcessToken = value.sharedRenderProcessToken
        if (valueHolderForSharedRenderProcessToken.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSharedRenderProcessTokenTmpValue = valueHolderForSharedRenderProcessToken
            valueSerializer.writeString(valueHolderForSharedRenderProcessTokenTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): WebOptions {
        var valueDeserializer: DeserializerBase = buffer
        let srcTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var srcTmpBuf: Union_String_Resource 
        if (srcTmpBufUnionSelector == Int8(0)) {
            srcTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (srcTmpBufUnionSelector == Int8(1)) {
            srcTmpBuf = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for srcTmpBuf has to be chosen through deserialisation.")
        }
        let srcTmpResult: Union_String_Resource = match (srcTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let controllerTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var controllerTmpBuf: Union_WebController_WebviewController 
        if (controllerTmpBufUnionSelector == Int8(0)) {
            controllerTmpBuf = Union_WebController_WebviewController(match (WebController_serializer.read(valueDeserializer) as WebController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (controllerTmpBufUnionSelector == Int8(1)) {
            controllerTmpBuf = Union_WebController_WebviewController(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for controllerTmpBuf has to be chosen through deserialisation.")
        }
        let controllerTmpResult: Union_WebController_WebviewController = match (controllerTmpBuf as Union_WebController_WebviewController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let renderModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var renderModeTmpBuf: Option<RenderMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(renderModeTmpBuf_runtimeType))) {
            renderModeTmpBuf = RenderMode(valueDeserializer.readInt32())
        }
        let renderModeTmpResult: Option<RenderMode> = renderModeTmpBuf
        let incognitoModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var incognitoModeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(incognitoModeTmpBuf_runtimeType))) {
            incognitoModeTmpBuf = valueDeserializer.readBoolean()
        }
        let incognitoModeTmpResult: Option<Bool> = incognitoModeTmpBuf
        let sharedRenderProcessTokenTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sharedRenderProcessTokenTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sharedRenderProcessTokenTmpBuf_runtimeType))) {
            sharedRenderProcessTokenTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sharedRenderProcessTokenTmpResult: Option<String> = sharedRenderProcessTokenTmpBuf
        var value: WebOptions = WebOptions(srcTmpResult, controllerTmpResult, renderModeTmpResult, incognitoModeTmpResult, sharedRenderProcessTokenTmpResult)
        return value
    }
}
