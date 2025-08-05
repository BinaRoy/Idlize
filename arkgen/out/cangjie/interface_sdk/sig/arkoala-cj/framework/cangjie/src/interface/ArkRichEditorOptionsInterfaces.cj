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
public interface RichEditorOptionsInterfaces <:  {
    public mut open prop controller: RichEditorController
}
public open class RichEditorOptions <: RichEditorOptionsInterfaces {
    private var controller_container: RichEditorController
    public mut open prop controller: RichEditorController
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    RichEditorOptions(controller: RichEditorController) {
        this.controller_container = controller
    }
}
public open class RichEditorOptions_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForController = value.controller
        RichEditorController_serializer.write(valueSerializer, valueHolderForController);
    }
    public static func read(buffer: DeserializerBase): RichEditorOptions {
        var valueDeserializer: DeserializerBase = buffer
        let controllerTmpResult: RichEditorController = match (RichEditorController_serializer.read(valueDeserializer) as RichEditorController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: RichEditorOptions = RichEditorOptions(controllerTmpResult)
        return value
    }
}
