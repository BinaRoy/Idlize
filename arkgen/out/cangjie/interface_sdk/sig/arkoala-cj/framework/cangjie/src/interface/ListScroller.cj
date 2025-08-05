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
public open class ListScrollerInternal {
    public static func fromPtr(ptr: UInt64): ListScroller {
        return ListScroller(ptr)
    }
}
public open class ListScroller <: Scroller & MaterializedBase {
    ListScroller(peerPtr: UInt64) {
        super(peerPtr)
    }
    ListScroller() {
        super(ListScroller.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ListScroller_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ListScroller_getFinalizer()
    }
    public open func getItemRectInGroup(index: Float64, indexInGroup: Float64): RectResult {
        let index_casted: Float64 = index
        let indexInGroup_casted: Float64 = indexInGroup
        return this.getItemRectInGroup_serialize(index_casted, indexInGroup_casted)
    }
    public open func scrollToItemInGroup(index: Float64, indexInGroup: Float64, smooth: Option<Bool>, align: Option<ScrollAlign>): Unit {
        let index_casted: Float64 = index
        let indexInGroup_casted: Float64 = indexInGroup
        let smooth_casted: Option<Bool> = if (let Some(smooth) <- smooth) {smooth} else { throw Exception("Type has to be not None")}
        let align_casted: Option<ScrollAlign> = if (let Some(align) <- align) {align} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.scrollToItemInGroup_serialize(index_casted, indexInGroup_casted, smooth_casted, align_casted)
        return
    }
    public open func closeAllSwipeActions(options: Option<CloseSwipeActionOptions>): Unit {
        let options_casted: Option<CloseSwipeActionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.closeAllSwipeActions_serialize(options_casted)
        return
    }
    public open func getVisibleListContentInfo(x: Float64, y: Float64): VisibleListContentInfo {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        return this.getVisibleListContentInfo_serialize(x_casted, y_casted)
    }
    private func getItemRectInGroup_serialize(index: Float64, indexInGroup: Float64): RectResult {
        let retval = ArkUIGeneratedNativeModule._ListScroller_getItemRectInGroup(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, indexInGroup)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: RectResult = RectResult_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func scrollToItemInGroup_serialize(index: Float64, indexInGroup: Float64, smooth: Option<Bool>, align: Option<ScrollAlign>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (smooth.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let smoothTmpValue = smooth
            thisSerializer.writeBoolean(smoothTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (align.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let alignTmpValue = align
            thisSerializer.writeInt32(alignTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ListScroller_scrollToItemInGroup(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, indexInGroup, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func closeAllSwipeActions_serialize(options: Option<CloseSwipeActionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            CloseSwipeActionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._ListScroller_closeAllSwipeActions(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getVisibleListContentInfo_serialize(x: Float64, y: Float64): VisibleListContentInfo {
        let retval = ArkUIGeneratedNativeModule._ListScroller_getVisibleListContentInfo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: VisibleListContentInfo = VisibleListContentInfo_serializer.read(retvalDeserializer)
        return returnResult
    }
}
public open class ListScroller_serializer {
    public static func write(buffer: SerializerBase, value: ListScroller): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ListScroller {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ListScrollerInternal.fromPtr(ptr)
    }
}
