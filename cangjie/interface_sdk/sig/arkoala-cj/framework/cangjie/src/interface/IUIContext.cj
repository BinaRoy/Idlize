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
public open class IUIContext {
    static private func freezeUINode0_serialize(id: String, isFrozen: Bool): Unit {
        ArkUIGeneratedNativeModule._IUIContext_freezeUINode0(id, if (isFrozen) { Int32(1) } else { Int32(0) });
    }
    static private func freezeUINode1_serialize(id: Float64, isFrozen: Bool): Unit {
        ArkUIGeneratedNativeModule._IUIContext_freezeUINode1(id, if (isFrozen) { Int32(1) } else { Int32(0) });
    }
    static public func freezeUINode(id: String, isFrozen: Bool): Unit {
        let id_casted: String = id
        let isFrozen_casted: Bool = isFrozen
        IUIContext.freezeUINode0_serialize(id_casted, isFrozen_casted)
        return
    }
    static public func freezeUINode(id: Float64, isFrozen: Bool): Unit {
        let id_casted: Float64 = id
        let isFrozen_casted: Bool = isFrozen
        IUIContext.freezeUINode1_serialize(id_casted, isFrozen_casted)
        return
    }
}
