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
public open class StateStylesOps {
    static private func onStateStyleChange_serialize(node: UInt64, stateStyleChange: Callback_StateStylesChange): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(stateStyleChange);
        ArkUIGeneratedNativeModule._StateStylesOps_onStateStyleChange(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static public func onStateStyleChange(node: UInt64, stateStyleChange: Callback_StateStylesChange): Unit {
        let node_casted: UInt64 = node
        let stateStyleChange_casted: Callback_StateStylesChange = stateStyleChange
        StateStylesOps.onStateStyleChange_serialize(node_casted, stateStyleChange_casted)
        return
    }
}
