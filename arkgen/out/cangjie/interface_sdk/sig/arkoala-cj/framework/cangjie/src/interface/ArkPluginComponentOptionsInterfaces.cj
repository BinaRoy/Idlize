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
public interface PluginComponentOptionsInterfaces <:  {
    public mut open prop template: PluginComponentTemplate
    public mut open prop data: String
}
public open class PluginComponentOptions <: PluginComponentOptionsInterfaces {
    private var template_container: PluginComponentTemplate
    public mut open prop template: PluginComponentTemplate
    {
        get() {
            return template_container
        }
        set(template) {
            template_container = template
        }
    }
    private var data_container: String
    public mut open prop data: String
    {
        get() {
            return data_container
        }
        set(data) {
            data_container = data
        }
    }
    PluginComponentOptions(template: PluginComponentTemplate, data: String) {
        this.template_container = template
        this.data_container = data
    }
}
public open class PluginComponentOptions_serializer {
    public static func write(buffer: SerializerBase, value: PluginComponentOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTemplate = value.template
        PluginComponentTemplate_serializer.write(valueSerializer, valueHolderForTemplate);
        let valueHolderForData = value.data
        valueSerializer.writeString(valueHolderForData);
    }
    public static func read(buffer: DeserializerBase): PluginComponentOptions {
        var valueDeserializer: DeserializerBase = buffer
        let templateTmpResult: PluginComponentTemplate = PluginComponentTemplate_serializer.read(valueDeserializer)
        let dataTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: PluginComponentOptions = PluginComponentOptions(templateTmpResult, dataTmpResult)
        return value
    }
}
