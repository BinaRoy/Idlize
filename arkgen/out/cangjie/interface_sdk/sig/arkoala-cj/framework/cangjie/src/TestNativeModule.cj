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

package idlize

import std.collection.*
import Interop.*

foreign {
        func TestCallIntNoArgs(arg0: Int32): Int32
        func TestCallIntIntArraySum(arg0: Int32, arg1: CPointer<Int32>, arg2: Int32): Int32
        func TestCallVoidIntArrayPrefixSum(arg0: Int32, arr: CPointer<Int32>, arg2: Int32): Unit
        func TestCallIntRecursiveCallback(arg0: Int32, arr: KSerializerBuffer, arg2: Int32): Int32
        func TestCallIntMemory(arg0: Int32, arg1: Int32): Int32
        func TestWithBuffer(buffer: CPointer<UInt8>): Unit
        func TestGetManagedCaller(kind: Int32): UInt64
        func TestGetManagedCallerSync(kind: Int32): UInt64
        func TestGetManagedHolder(): UInt64
        func TestGetManagedReleaser(): UInt64
        func TestReadAndMutateManagedBuffer(arr: CPointer<UInt8>, len: Int32): Unit
}

public open class TestNativeModule {
    public static func _TestCallIntNoArgs(arg0: Int32): Int32 {
        unsafe {
            let result = TestCallIntNoArgs(arg0)
            return result
        }
    }
    public static func _TestCallIntIntArraySum(arg0: Int32, arg1: ArrayList<Int32>, arg2: Int32): Int32 {
        unsafe {
            let handle_1 = acquireArrayRawData(arg1.toArray())
            let result = TestCallIntIntArraySum(arg0, handle_1.pointer, arg2)
            releaseArrayRawData(handle_1)
            return result
        }
    }
    public static func _TestCallVoidIntArrayPrefixSum(arg0: Int32, arr: ArrayList<Int32>, arg2: Int32): Unit {
        unsafe {
            let handle_1 = acquireArrayRawData(arr.toArray())
            TestCallVoidIntArrayPrefixSum(arg0, handle_1.pointer, arg2)
            releaseArrayRawData(handle_1)
        }
    }
    public static func _TestCallIntRecursiveCallback(arg0: Int32, arr: KSerializerBuffer, arg2: Int32): Int32 {
        unsafe {
            let result = TestCallIntRecursiveCallback(arg0, arr, arg2)
            return result
        }
    }
    public static func _TestCallIntMemory(arg0: Int32, arg1: Int32): Int32 {
        unsafe {
            let result = TestCallIntMemory(arg0, arg1)
            return result
        }
    }
    public static func _TestWithBuffer(buffer: Array<UInt8>): Unit {
        unsafe {
            let handle_0 = acquireArrayRawData(buffer)
            TestWithBuffer(handle_0.pointer)
            releaseArrayRawData(handle_0)
        }
    }
    public static func _TestGetManagedCaller(kind: Int32): UInt64 {
        unsafe {
            let result = TestGetManagedCaller(kind)
            return result
        }
    }
    public static func _TestGetManagedCallerSync(kind: Int32): UInt64 {
        unsafe {
            let result = TestGetManagedCallerSync(kind)
            return result
        }
    }
    public static func _TestGetManagedHolder(): UInt64 {
        unsafe {
            let result = TestGetManagedHolder()
            return result
        }
    }
    public static func _TestGetManagedReleaser(): UInt64 {
        unsafe {
            let result = TestGetManagedReleaser()
            return result
        }
    }
    public static func _TestReadAndMutateManagedBuffer(arr: ArrayList<UInt8>, len: Int32): Unit {
        unsafe {
            let handle_0 = acquireArrayRawData(arr.toArray())
            TestReadAndMutateManagedBuffer(handle_0.pointer, len)
            releaseArrayRawData(handle_0)
        }
    }
}