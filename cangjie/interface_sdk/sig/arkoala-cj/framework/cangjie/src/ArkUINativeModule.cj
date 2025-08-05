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
        func CreateNode(node_t: Int32, arg0: Int32, arg1: Int32): UInt64
        func GetNodeFinalizer(): UInt64
        func GetNodeByViewStack(): UInt64
        func DisposeNode(ptr0: UInt64): Unit
        func DumpTreeNode(ptr0: UInt64): Unit
        func AddChild(ptr1: UInt64, ptr2: UInt64): Int32
        func RemoveChild(ptr0: UInt64, ptr2: UInt64): Unit
        func InsertChildAfter(ptr0: UInt64, ptr1: UInt64, ptr2: UInt64): Int32
        func InsertChildBefore(ptr0: UInt64, ptr1: UInt64, ptr2: UInt64): Int32
        func InsertChildAt(ptr0: UInt64, ptr1: UInt64, arg: Int32): Int32
        func ApplyModifierFinish(ptr0: UInt64): Unit
        func MarkDirty(ptr0: UInt64, arg: UInt32): Unit
        func IsBuilderNode(ptr0: UInt64): Bool
        func ConvertLengthMetricsUnit(arg0: Float32, arg1: Int32, arg2: Int32): Float32
        func SetCustomCallback(ptr0: UInt64, arg: Int32): Unit
        func MeasureLayoutAndDraw(ptr0: UInt64): Unit
        func MeasureNode(ptr0: UInt64, arr: CPointer<Float32>): Int32
        func LayoutNode(ptr0: UInt64, arr: CPointer<Float32>): Int32
        func DrawNode(ptr0: UInt64, arr: CPointer<Float32>): Int32
        func SetMeasureWidth(ptr0: UInt64, arg: Int32): Unit
        func GetMeasureWidth(ptr0: UInt64): Int32
        func SetMeasureHeight(ptr0: UInt64, arg: Int32): Unit
        func GetMeasureHeight(ptr0: UInt64): Int32
        func SetX(ptr0: UInt64, arg: Int32): Unit
        func GetX(ptr0: UInt64): Int32
        func SetY(ptr0: UInt64, arg: Int32): Unit
        func GetY(ptr0: UInt64): Int32
        func SetAlignment(ptr0: UInt64, arg: Int32): Unit
        func GetAlignment(ptr0: UInt64): Int32
        func IndexerChecker(ptr0: UInt64): Int32
        func SetRangeUpdater(ptr0: UInt64, arg: Int32): Unit
        func SetLazyItemIndexer(ptr0: UInt64, arg: Int32): Unit
        func GetPipelineContext(ptr0: UInt64): UInt64
        func VSyncAwait(pipeline: UInt64): Unit
        func SetVsyncCallback(pipeline: UInt64): Unit
        func UnblockVsyncWait(pipeline: UInt64): Unit
        func SetChildTotalCount(ptr0: UInt64, arg: Int32): Unit
        func ShowCrash(message: CString): Unit
        func StartPerf(str1: CString): Unit
        func EndPerf(str1: CString): Unit
        func DumpPerf(arg: Int32): UInt64
        func CheckCallbackEvent(buffer: KSerializerBuffer, bufferLength: Int32): Int32
        func HoldCallbackResource(resourceId: Int32): Unit
        func ReleaseCallbackResource(resourceId: Int32): Unit
        func LoadUserView(userClass: CString, params: CString): Unit
}

public open class ArkUINativeModule {
    public static func _CreateNode(node_t: Int32, arg0: Int32, arg1: Int32): UInt64 {
        unsafe {
            let result = CreateNode(node_t, arg0, arg1)
            return result
        }
    }
    public static func _GetNodeFinalizer(): UInt64 {
        unsafe {
            let result = GetNodeFinalizer()
            return result
        }
    }
    public static func _GetNodeByViewStack(): UInt64 {
        unsafe {
            let result = GetNodeByViewStack()
            return result
        }
    }
    public static func _DisposeNode(ptr0: UInt64): Unit {
        unsafe {
            DisposeNode(ptr0)
        }
    }
    public static func _DumpTreeNode(ptr0: UInt64): Unit {
        unsafe {
            DumpTreeNode(ptr0)
        }
    }
    public static func _AddChild(ptr1: UInt64, ptr2: UInt64): Int32 {
        unsafe {
            let result = AddChild(ptr1, ptr2)
            return result
        }
    }
    public static func _RemoveChild(ptr0: UInt64, ptr2: UInt64): Unit {
        unsafe {
            RemoveChild(ptr0, ptr2)
        }
    }
    public static func _InsertChildAfter(ptr0: UInt64, ptr1: UInt64, ptr2: UInt64): Int32 {
        unsafe {
            let result = InsertChildAfter(ptr0, ptr1, ptr2)
            return result
        }
    }
    public static func _InsertChildBefore(ptr0: UInt64, ptr1: UInt64, ptr2: UInt64): Int32 {
        unsafe {
            let result = InsertChildBefore(ptr0, ptr1, ptr2)
            return result
        }
    }
    public static func _InsertChildAt(ptr0: UInt64, ptr1: UInt64, arg: Int32): Int32 {
        unsafe {
            let result = InsertChildAt(ptr0, ptr1, arg)
            return result
        }
    }
    public static func _ApplyModifierFinish(ptr0: UInt64): Unit {
        unsafe {
            ApplyModifierFinish(ptr0)
        }
    }
    public static func _MarkDirty(ptr0: UInt64, arg: UInt32): Unit {
        unsafe {
            MarkDirty(ptr0, arg)
        }
    }
    public static func _IsBuilderNode(ptr0: UInt64): Bool {
        unsafe {
            let result = IsBuilderNode(ptr0)
            return result
        }
    }
    public static func _ConvertLengthMetricsUnit(arg0: Float32, arg1: Int32, arg2: Int32): Float32 {
        unsafe {
            let result = ConvertLengthMetricsUnit(arg0, arg1, arg2)
            return result
        }
    }
    public static func _SetCustomCallback(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetCustomCallback(ptr0, arg)
        }
    }
    public static func _MeasureLayoutAndDraw(ptr0: UInt64): Unit {
        unsafe {
            MeasureLayoutAndDraw(ptr0)
        }
    }
    public static func _MeasureNode(ptr0: UInt64, arr: ArrayList<Float32>): Int32 {
        unsafe {
            let handle_1 = acquireArrayRawData(arr.toArray())
            let result = MeasureNode(ptr0, handle_1.pointer)
            releaseArrayRawData(handle_1)
            return result
        }
    }
    public static func _LayoutNode(ptr0: UInt64, arr: ArrayList<Float32>): Int32 {
        unsafe {
            let handle_1 = acquireArrayRawData(arr.toArray())
            let result = LayoutNode(ptr0, handle_1.pointer)
            releaseArrayRawData(handle_1)
            return result
        }
    }
    public static func _DrawNode(ptr0: UInt64, arr: ArrayList<Float32>): Int32 {
        unsafe {
            let handle_1 = acquireArrayRawData(arr.toArray())
            let result = DrawNode(ptr0, handle_1.pointer)
            releaseArrayRawData(handle_1)
            return result
        }
    }
    public static func _SetMeasureWidth(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetMeasureWidth(ptr0, arg)
        }
    }
    public static func _GetMeasureWidth(ptr0: UInt64): Int32 {
        unsafe {
            let result = GetMeasureWidth(ptr0)
            return result
        }
    }
    public static func _SetMeasureHeight(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetMeasureHeight(ptr0, arg)
        }
    }
    public static func _GetMeasureHeight(ptr0: UInt64): Int32 {
        unsafe {
            let result = GetMeasureHeight(ptr0)
            return result
        }
    }
    public static func _SetX(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetX(ptr0, arg)
        }
    }
    public static func _GetX(ptr0: UInt64): Int32 {
        unsafe {
            let result = GetX(ptr0)
            return result
        }
    }
    public static func _SetY(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetY(ptr0, arg)
        }
    }
    public static func _GetY(ptr0: UInt64): Int32 {
        unsafe {
            let result = GetY(ptr0)
            return result
        }
    }
    public static func _SetAlignment(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetAlignment(ptr0, arg)
        }
    }
    public static func _GetAlignment(ptr0: UInt64): Int32 {
        unsafe {
            let result = GetAlignment(ptr0)
            return result
        }
    }
    public static func _IndexerChecker(ptr0: UInt64): Int32 {
        unsafe {
            let result = IndexerChecker(ptr0)
            return result
        }
    }
    public static func _SetRangeUpdater(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetRangeUpdater(ptr0, arg)
        }
    }
    public static func _SetLazyItemIndexer(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetLazyItemIndexer(ptr0, arg)
        }
    }
    public static func _GetPipelineContext(ptr0: UInt64): UInt64 {
        unsafe {
            let result = GetPipelineContext(ptr0)
            return result
        }
    }
    public static func _VSyncAwait(pipeline: UInt64): Any {
        unsafe {
            let result = VSyncAwait(pipeline)
            return result
        }
    }
    public static func _SetVsyncCallback(pipeline: UInt64): Unit {
        unsafe {
            SetVsyncCallback(pipeline)
        }
    }
    public static func _UnblockVsyncWait(pipeline: UInt64): Unit {
        unsafe {
            UnblockVsyncWait(pipeline)
        }
    }
    public static func _SetChildTotalCount(ptr0: UInt64, arg: Int32): Unit {
        unsafe {
            SetChildTotalCount(ptr0, arg)
        }
    }
    public static func _ShowCrash(message: String): Unit {
        unsafe {
            let message = LibC.mallocCString(message)
            ShowCrash(message)
            LibC.free(message)
        }
    }
    public static func _StartPerf(str1: String): Unit {
        unsafe {
            let str1 = LibC.mallocCString(str1)
            StartPerf(str1)
            LibC.free(str1)
        }
    }
    public static func _EndPerf(str1: String): Unit {
        unsafe {
            let str1 = LibC.mallocCString(str1)
            EndPerf(str1)
            LibC.free(str1)
        }
    }
    public static func _DumpPerf(arg: Int32): UInt64 {
        unsafe {
            let result = DumpPerf(arg)
            return result
        }
    }
    public static func _CheckCallbackEvent(buffer: KSerializerBuffer, bufferLength: Int32): Int32 {
        unsafe {
            let result = CheckCallbackEvent(buffer, bufferLength)
            return result
        }
    }
    public static func _HoldCallbackResource(resourceId: Int32): Unit {
        unsafe {
            HoldCallbackResource(resourceId)
        }
    }
    public static func _ReleaseCallbackResource(resourceId: Int32): Unit {
        unsafe {
            ReleaseCallbackResource(resourceId)
        }
    }
    public static func _LoadUserView(userClass: String, params: String): Any {
        unsafe {
            let userClass = LibC.mallocCString(userClass)
            let params = LibC.mallocCString(params)
            let result = LoadUserView(userClass, params)
            LibC.free(userClass)
            LibC.free(userClass)
            return result
        }
    }
}