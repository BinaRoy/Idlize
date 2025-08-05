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
public interface JavaScriptProxyInterfaces <:  {
    public mut open prop object_: Any
    public mut open prop name: String
    public mut open prop methodList: ArrayList<String>
    public mut open prop controller: Union_WebController_WebviewController
    public mut open prop asyncMethodList: Option<ArrayList<String>>
    public mut open prop permission: Option<String>
}
public open class JavaScriptProxy <: JavaScriptProxyInterfaces {
    private var object__container: Any
    public mut open prop object_: Any
    {
        get() {
            return object__container
        }
        set(object_) {
            object__container = object_
        }
    }
    private var name_container: String
    public mut open prop name: String
    {
        get() {
            return name_container
        }
        set(name) {
            name_container = name
        }
    }
    private var methodList_container: ArrayList<String>
    public mut open prop methodList: ArrayList<String>
    {
        get() {
            return methodList_container
        }
        set(methodList) {
            methodList_container = methodList
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
    private var asyncMethodList_container: Option<ArrayList<String>>
    public mut open prop asyncMethodList: Option<ArrayList<String>>
    {
        get() {
            return asyncMethodList_container
        }
        set(asyncMethodList) {
            asyncMethodList_container = asyncMethodList
        }
    }
    private var permission_container: Option<String>
    public mut open prop permission: Option<String>
    {
        get() {
            return permission_container
        }
        set(permission) {
            permission_container = permission
        }
    }
    JavaScriptProxy(object_: Any, name: String, methodList: ArrayList<String>, controller: Union_WebController_WebviewController, asyncMethodList: Option<ArrayList<String>>, permission: Option<String>) {
        this.object__container = object_
        this.name_container = name
        this.methodList_container = methodList
        this.controller_container = controller
        this.asyncMethodList_container = asyncMethodList
        this.permission_container = permission
    }
}
public open class JavaScriptProxy_serializer {
    public static func write(buffer: SerializerBase, value: JavaScriptProxy): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForObject_ = value.object_
        valueSerializer.holdAndWriteObject(valueHolderForObject_);
        let valueHolderForName = value.name
        valueSerializer.writeString(valueHolderForName);
        let valueHolderForMethodList = value.methodList
        valueSerializer.writeInt32(Int32(valueHolderForMethodList.size));
        for (valueHolderForMethodListCounterI in 0..valueHolderForMethodList.size) {
            let valueHolderForMethodListTmpElement: String = valueHolderForMethodList[Int64(valueHolderForMethodListCounterI)]
            valueSerializer.writeString(valueHolderForMethodListTmpElement);
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
        let valueHolderForAsyncMethodList = value.asyncMethodList
        if (valueHolderForAsyncMethodList.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAsyncMethodListTmpValue = valueHolderForAsyncMethodList
            valueSerializer.writeInt32(Int32(valueHolderForAsyncMethodListTmpValue.size));
            for (valueHolderForAsyncMethodListTmpValueCounterI in 0..valueHolderForAsyncMethodListTmpValue.size) {
                let valueHolderForAsyncMethodListTmpValueTmpElement: String = valueHolderForAsyncMethodListTmpValue[Int64(valueHolderForAsyncMethodListTmpValueCounterI)]
                valueSerializer.writeString(valueHolderForAsyncMethodListTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPermission = value.permission
        if (valueHolderForPermission.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPermissionTmpValue = valueHolderForPermission
            valueSerializer.writeString(valueHolderForPermissionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): JavaScriptProxy {
        var valueDeserializer: DeserializerBase = buffer
        let object_TmpResult: Any = match (valueDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let nameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let methodListTmpBufLength: Int32 = valueDeserializer.readInt32()
        var methodListTmpBuf: ArrayList<String> = ArrayList<String>(Int64(methodListTmpBufLength))
        methodListTmpBuf = ArrayList<String>(Int64(methodListTmpBufLength))
        for (methodListTmpBufBufCounterI in 0..methodListTmpBufLength) {
            methodListTmpBuf[Int64(methodListTmpBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let methodListTmpResult: ArrayList<String> = methodListTmpBuf
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
        let asyncMethodListTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var asyncMethodListTmpBuf: Option<ArrayList<String>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(asyncMethodListTmpBuf_runtimeType))) {
            let asyncMethodListTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var asyncMethodListTmpBuf_: ArrayList<String> = ArrayList<String>(Int64(asyncMethodListTmpBuf_Length))
            asyncMethodListTmpBuf_ = ArrayList<String>(Int64(asyncMethodListTmpBuf_Length))
            for (asyncMethodListTmpBuf_BufCounterI in 0..asyncMethodListTmpBuf_Length) {
                asyncMethodListTmpBuf_[Int64(asyncMethodListTmpBuf_BufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            asyncMethodListTmpBuf = asyncMethodListTmpBuf_
        }
        let asyncMethodListTmpResult: Option<ArrayList<String>> = asyncMethodListTmpBuf
        let permissionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var permissionTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(permissionTmpBuf_runtimeType))) {
            permissionTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let permissionTmpResult: Option<String> = permissionTmpBuf
        var value: JavaScriptProxy = JavaScriptProxy(object_TmpResult, nameTmpResult, methodListTmpResult, controllerTmpResult, asyncMethodListTmpResult, permissionTmpResult)
        return value
    }
}
