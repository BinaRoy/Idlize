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

public open class CheckBoxConfiguration <: CommonConfiguration {
    public var name: String
    public var selected: Bool
    public var triggerChange: Bool
    init(name: String, selected: Bool, triggerChange: Bool, enabled: Bool) {
        super(enabled)
        this.name = name
        this.selected = selected
        this.triggerChange = triggerChange
        this.enabled = enabled
    }
}
public class CheckBoxConfiguration_serializer {
    public  static func write(buffer: SerializerBase, value: CheckBoxConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled)
        let valueHolderForName = value.name
        valueSerializer.writeString(valueHolderForName)
        let valueHolderForSelected = value.selected
        valueSerializer.writeBoolean(valueHolderForSelected)
        let valueHolderForTriggerChange = value.triggerChange
        valueSerializer.writeBoolean(valueHolderForTriggerChange)
    }
    public  static func read(buffer: DeserializerBase): CheckBoxConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let nameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let selectedTmpResult: Bool = valueDeserializer.readBoolean()
        let triggerChangeTmpResult: Bool = valueDeserializer.readBoolean()
        var value: CheckBoxConfiguration = CheckBoxConfiguration(nameTmpResult, selectedTmpResult, triggerChangeTmpResult, enabledTmpResult)
        return value
    }
}
