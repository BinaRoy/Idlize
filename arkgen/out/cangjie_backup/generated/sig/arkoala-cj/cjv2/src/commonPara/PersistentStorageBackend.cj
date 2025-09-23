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

public class PersistentStorageBackend {
    private  static func get_serialize(key: String): Option<String> {
        let retval = ArkUIGeneratedNativeModule._PersistentStorageBackend_get(key)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<String> = buffer
        return returnResult
    }
    private  static func has_serialize(key: String): Bool {
        let retval = ArkUIGeneratedNativeModule._PersistentStorageBackend_has(key)
        return retval
    }
    private  static func remove_serialize(key: String): Unit {
        ArkUIGeneratedNativeModule._PersistentStorageBackend_remove(key)
    }
    private  static func set_serialize(key: String, value: String): Unit {
        ArkUIGeneratedNativeModule._PersistentStorageBackend_set(key, value)
    }
    private  static func clear_serialize(): Unit {
        ArkUIGeneratedNativeModule._PersistentStorageBackend_clear()
    }
    public  static func get_(key: String): Option<String> {
        let key_casted: String = key
        return PersistentStorageBackend.get_serialize(key_casted)
    }
    public  static func has(key: String): Bool {
        let key_casted: String = key
        return PersistentStorageBackend.has_serialize(key_casted)
    }
    public  static func remove(key: String): Unit {
        let key_casted: String = key
        PersistentStorageBackend.remove_serialize(key_casted)
        return
    }
    public  static func set_(key: String, value: String): Unit {
        let key_casted: String = key
        let value_casted: String = value
        PersistentStorageBackend.set_serialize(key_casted, value_casted)
        return
    }
    public  static func clear(): Unit {
        PersistentStorageBackend.clear_serialize()
        return
    }
}
