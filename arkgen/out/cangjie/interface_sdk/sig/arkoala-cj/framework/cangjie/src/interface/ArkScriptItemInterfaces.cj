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
public interface ScriptItemInterfaces <:  {
    public mut open prop script: String
    public mut open prop scriptRules: ArrayList<String>
}
public open class ScriptItem <: ScriptItemInterfaces {
    private var script_container: String
    public mut open prop script: String
    {
        get() {
            return script_container
        }
        set(script) {
            script_container = script
        }
    }
    private var scriptRules_container: ArrayList<String>
    public mut open prop scriptRules: ArrayList<String>
    {
        get() {
            return scriptRules_container
        }
        set(scriptRules) {
            scriptRules_container = scriptRules
        }
    }
    ScriptItem(script: String, scriptRules: ArrayList<String>) {
        this.script_container = script
        this.scriptRules_container = scriptRules
    }
}
public open class ScriptItem_serializer {
    public static func write(buffer: SerializerBase, value: ScriptItem): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForScript = value.script
        valueSerializer.writeString(valueHolderForScript);
        let valueHolderForScriptRules = value.scriptRules
        valueSerializer.writeInt32(Int32(valueHolderForScriptRules.size));
        for (valueHolderForScriptRulesCounterI in 0..valueHolderForScriptRules.size) {
            let valueHolderForScriptRulesTmpElement: String = valueHolderForScriptRules[Int64(valueHolderForScriptRulesCounterI)]
            valueSerializer.writeString(valueHolderForScriptRulesTmpElement);
        }
    }
    public static func read(buffer: DeserializerBase): ScriptItem {
        var valueDeserializer: DeserializerBase = buffer
        let scriptTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let scriptRulesTmpBufLength: Int32 = valueDeserializer.readInt32()
        var scriptRulesTmpBuf: ArrayList<String> = ArrayList<String>(Int64(scriptRulesTmpBufLength))
        scriptRulesTmpBuf = ArrayList<String>(Int64(scriptRulesTmpBufLength))
        for (scriptRulesTmpBufBufCounterI in 0..scriptRulesTmpBufLength) {
            scriptRulesTmpBuf[Int64(scriptRulesTmpBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scriptRulesTmpResult: ArrayList<String> = scriptRulesTmpBuf
        var value: ScriptItem = ScriptItem(scriptTmpResult, scriptRulesTmpResult)
        return value
    }
}
