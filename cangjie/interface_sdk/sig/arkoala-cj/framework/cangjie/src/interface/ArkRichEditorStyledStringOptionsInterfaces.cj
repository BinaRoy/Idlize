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
public interface RichEditorStyledStringOptionsInterfaces <:  {
    public mut open prop controller: RichEditorStyledStringController
}
public open class RichEditorStyledStringOptions <: RichEditorStyledStringOptionsInterfaces {
    private var controller_container: RichEditorStyledStringController
    public mut open prop controller: RichEditorStyledStringController
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    RichEditorStyledStringOptions(controller: RichEditorStyledStringController) {
        this.controller_container = controller
    }
}
public open class RichEditorStyledStringOptions_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorStyledStringOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForController = value.controller
        RichEditorStyledStringController_serializer.write(valueSerializer, valueHolderForController);
    }
    public static func read(buffer: DeserializerBase): RichEditorStyledStringOptions {
        var valueDeserializer: DeserializerBase = buffer
        let controllerTmpResult: RichEditorStyledStringController = match (RichEditorStyledStringController_serializer.read(valueDeserializer) as RichEditorStyledStringController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: RichEditorStyledStringOptions = RichEditorStyledStringOptions(controllerTmpResult)
        return value
    }
}
