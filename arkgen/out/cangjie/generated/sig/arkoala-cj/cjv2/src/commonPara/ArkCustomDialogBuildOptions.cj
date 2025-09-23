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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class CustomDialogBuildOptions {
    public var controller: Option<CustomDialogController>
    init(controller: Option<CustomDialogController>) {
        this.controller = controller
    }
}
public class CustomDialogBuildOptions_serializer {
    public  static func write(buffer: SerializerBase, value: CustomDialogBuildOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForController = value.controller
        if (let Some(valueHolderForController) <- valueHolderForController) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForControllerTmpValue = valueHolderForController
            CustomDialogController_serializer.write(valueSerializer, valueHolderForControllerTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): CustomDialogBuildOptions {
        var valueDeserializer: DeserializerBase = buffer
        let controllerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var controllerTmpBuf: Option<CustomDialogController> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(controllerTmpBuf_runtimeType))) {
            controllerTmpBuf = match (CustomDialogController_serializer.read(valueDeserializer) as CustomDialogController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let controllerTmpResult: Option<CustomDialogController> = controllerTmpBuf
        var value: CustomDialogBuildOptions = CustomDialogBuildOptions(controllerTmpResult)
        return value
    }
}
