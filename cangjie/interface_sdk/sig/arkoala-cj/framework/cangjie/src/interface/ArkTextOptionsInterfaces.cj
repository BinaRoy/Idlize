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
public interface TextOptionsInterfaces <:  {
    public mut open prop controller: TextController
}
public open class TextOptions <: TextOptionsInterfaces {
    private var controller_container: TextController
    public mut open prop controller: TextController
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    TextOptions(controller: TextController) {
        this.controller_container = controller
    }
}
public open class TextOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForController = value.controller
        TextController_serializer.write(valueSerializer, valueHolderForController);
    }
    public static func read(buffer: DeserializerBase): TextOptions {
        var valueDeserializer: DeserializerBase = buffer
        let controllerTmpResult: TextController = match (TextController_serializer.read(valueDeserializer) as TextController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TextOptions = TextOptions(controllerTmpResult)
        return value
    }
}
