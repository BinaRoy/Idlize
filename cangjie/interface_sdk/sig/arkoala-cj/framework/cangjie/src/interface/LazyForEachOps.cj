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
public open class LazyForEachOps {
    static private func Sync_serialize(node: UInt64, totalCount: Int32, creator: Callback_CreateItem, updater: Callback_RangeUpdate): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(creator);
        thisSerializer.holdAndWriteCallback(updater);
        ArkUIGeneratedNativeModule._LazyForEachOps_Sync(node, totalCount, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static public func Sync(node: UInt64, totalCount: Int32, creator: Callback_CreateItem, updater: Callback_RangeUpdate): Unit {
        let node_casted: UInt64 = node
        let totalCount_casted: Int32 = totalCount
        let creator_casted: Callback_CreateItem = creator
        let updater_casted: Callback_RangeUpdate = updater
        LazyForEachOps.Sync_serialize(node_casted, totalCount_casted, creator_casted, updater_casted)
        return
    }
}
