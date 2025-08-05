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
public open class SearchOps {
    static private func registerSearchValueCallback_serialize(node: UInt64, value: String, callback: SearchValueCallback): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        let retval = ArkUIGeneratedNativeModule._SearchOps_registerSearchValueCallback(node, value, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static public func registerSearchValueCallback(node: UInt64, value: String, callback: SearchValueCallback): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: String = value
        let callback_casted: SearchValueCallback = callback
        return SearchOps.registerSearchValueCallback_serialize(node_casted, value_casted, callback_casted)
    }
}
