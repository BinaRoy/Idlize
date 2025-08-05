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
public open class ScrollerInternal {
    public static func fromPtr(ptr: UInt64): Scroller {
        return Scroller(ptr)
    }
}
public open class Scroller <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    Scroller(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, Scroller.getFinalizer())
    }
    Scroller() {
        super(Scroller.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Scroller_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._Scroller_getFinalizer()
    }
    public open func scrollTo(options: ScrollOptions): Unit {
        let options_casted: ScrollOptions = options
        let thisPeer = this
        thisPeer.scrollTo_serialize(options_casted)
        return
    }
    public open func scrollEdge(value: Edge, options: Option<ScrollEdgeOptions>): Unit {
        let value_casted: Edge = value
        let options_casted: Option<ScrollEdgeOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.scrollEdge_serialize(value_casted, options_casted)
        return
    }
    public open func fling(velocity: Float64): Unit {
        let velocity_casted: Float64 = velocity
        let thisPeer = this
        thisPeer.fling_serialize(velocity_casted)
        return
    }
    public open func scrollPage(value: ScrollPageOptions): Unit {
        let value_casted: ScrollPageOptions = value
        let thisPeer = this
        thisPeer.scrollPage0_serialize(value_casted)
        return
    }
    public open func scrollPage(value: Literal_Boolean_next_Axis_direction): Unit {
        let value_casted: Literal_Boolean_next_Axis_direction = value
        let thisPeer = this
        thisPeer.scrollPage1_serialize(value_casted)
        return
    }
    public open func currentOffset(): OffsetResult {
        return this.currentOffset_serialize()
    }
    public open func scrollToIndex(value: Float64, smooth: Option<Bool>, align: Option<ScrollAlign>, options: Option<ScrollToIndexOptions>): Unit {
        let value_casted: Float64 = value
        let smooth_casted: Option<Bool> = if (let Some(smooth) <- smooth) {smooth} else { throw Exception("Type has to be not None")}
        let align_casted: Option<ScrollAlign> = if (let Some(align) <- align) {align} else { throw Exception("Type has to be not None")}
        let options_casted: Option<ScrollToIndexOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.scrollToIndex_serialize(value_casted, smooth_casted, align_casted, options_casted)
        return
    }
    public open func scrollBy(dx: Length, dy: Length): Unit {
        let dx_casted: Length = dx
        let dy_casted: Length = dy
        let thisPeer = this
        thisPeer.scrollBy_serialize(dx_casted, dy_casted)
        return
    }
    public open func isAtEnd(): Bool {
        return this.isAtEnd_serialize()
    }
    public open func getItemRect(index: Float64): RectResult {
        let index_casted: Float64 = index
        return this.getItemRect_serialize(index_casted)
    }
    public open func getItemIndex(x: Float64, y: Float64): Float64 {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        return this.getItemIndex_serialize(x_casted, y_casted)
    }
    private func scrollTo_serialize(options: ScrollOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ScrollOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._Scroller_scrollTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func scrollEdge_serialize(value: Edge, options: Option<ScrollEdgeOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ScrollEdgeOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Scroller_scrollEdge(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value.value, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func fling_serialize(velocity: Float64): Unit {
        ArkUIGeneratedNativeModule._Scroller_fling(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, velocity);
    }
    private func scrollPage0_serialize(value: ScrollPageOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ScrollPageOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._Scroller_scrollPage0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func scrollPage1_serialize(value: Literal_Boolean_next_Axis_direction): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let valueNext = value.next
        thisSerializer.writeBoolean(valueNext);
        let valueDirection = value.direction
        if (valueDirection.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueDirectionTmpValue = valueDirection
            thisSerializer.writeInt32(valueDirectionTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Scroller_scrollPage1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func currentOffset_serialize(): OffsetResult {
        let retval = ArkUIGeneratedNativeModule._Scroller_currentOffset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: OffsetResult = OffsetResult_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func scrollToIndex_serialize(value: Float64, smooth: Option<Bool>, align: Option<ScrollAlign>, options: Option<ScrollToIndexOptions>): Unit {
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
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            ScrollToIndexOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Scroller_scrollToIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func scrollBy_serialize(dx: Length, dy: Length): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (dx.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dxForIdx0 = dx.getValue0()
            thisSerializer.writeString(dxForIdx0);
        } else if (dx.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dxForIdx1 = dx.getValue1()
            thisSerializer.writeNumber(dxForIdx1);
        } else if (dx.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let dxForIdx2 = dx.getValue2()
            thisSerializer.writeCustomObject("Any", dxForIdx2);
        }
        if (dy.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dyForIdx0 = dy.getValue0()
            thisSerializer.writeString(dyForIdx0);
        } else if (dy.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dyForIdx1 = dy.getValue1()
            thisSerializer.writeNumber(dyForIdx1);
        } else if (dy.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let dyForIdx2 = dy.getValue2()
            thisSerializer.writeCustomObject("Any", dyForIdx2);
        }
        ArkUIGeneratedNativeModule._Scroller_scrollBy(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func isAtEnd_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._Scroller_isAtEnd(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getItemRect_serialize(index: Float64): RectResult {
        let retval = ArkUIGeneratedNativeModule._Scroller_getItemRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: RectResult = RectResult_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getItemIndex_serialize(x: Float64, y: Float64): Float64 {
        let retval = ArkUIGeneratedNativeModule._Scroller_getItemIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y)
        return retval
    }
}
public open class Scroller_serializer {
    public static func write(buffer: SerializerBase, value: Scroller): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): Scroller {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ScrollerInternal.fromPtr(ptr)
    }
}
