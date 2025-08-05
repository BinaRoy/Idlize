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
public interface SwiperContentTransitionProxy {
    public mut open prop selectedIndex: Float64
    public mut open prop index: Float64
    public mut open prop position: Float64
    public mut open prop mainAxisLength: Float64
    public open func finishTransition(): Unit
}
public open class SwiperContentTransitionProxyInternal <: MaterializedBase & SwiperContentTransitionProxy {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop selectedIndex: Float64
    {
        get() {
            return this.getSelectedIndex()
        }
        set(selectedIndex) {
            this.setSelectedIndex(selectedIndex)
        }
    }
    public mut open prop index: Float64
    {
        get() {
            return this.getIndex()
        }
        set(index) {
            this.setIndex(index)
        }
    }
    public mut open prop position: Float64
    {
        get() {
            return this.getPosition()
        }
        set(position) {
            this.setPosition(position)
        }
    }
    public mut open prop mainAxisLength: Float64
    {
        get() {
            return this.getMainAxisLength()
        }
        set(mainAxisLength) {
            this.setMainAxisLength(mainAxisLength)
        }
    }
    SwiperContentTransitionProxyInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, SwiperContentTransitionProxyInternal.getFinalizer())
    }
    SwiperContentTransitionProxyInternal() {
        super(SwiperContentTransitionProxyInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): SwiperContentTransitionProxyInternal {
        return SwiperContentTransitionProxyInternal(ptr)
    }
    public open func finishTransition(): Unit {
        let thisPeer = this
        thisPeer.finishTransition_serialize()
        return
    }
    private func getSelectedIndex(): Float64 {
        return this.getSelectedIndex_serialize()
    }
    private func setSelectedIndex(selectedIndex: Float64): Unit {
        let selectedIndex_casted: Float64 = selectedIndex
        let thisPeer = this
        thisPeer.setSelectedIndex_serialize(selectedIndex_casted)
        return
    }
    private func getIndex(): Float64 {
        return this.getIndex_serialize()
    }
    private func setIndex(index: Float64): Unit {
        let index_casted: Float64 = index
        let thisPeer = this
        thisPeer.setIndex_serialize(index_casted)
        return
    }
    private func getPosition(): Float64 {
        return this.getPosition_serialize()
    }
    private func setPosition(position: Float64): Unit {
        let position_casted: Float64 = position
        let thisPeer = this
        thisPeer.setPosition_serialize(position_casted)
        return
    }
    private func getMainAxisLength(): Float64 {
        return this.getMainAxisLength_serialize()
    }
    private func setMainAxisLength(mainAxisLength: Float64): Unit {
        let mainAxisLength_casted: Float64 = mainAxisLength
        let thisPeer = this
        thisPeer.setMainAxisLength_serialize(mainAxisLength_casted)
        return
    }
    private func finishTransition_serialize(): Unit {
        ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_finishTransition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getSelectedIndex_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_getSelectedIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setSelectedIndex_serialize(selectedIndex: Float64): Unit {
        ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_setSelectedIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, selectedIndex);
    }
    private func getIndex_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_getIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setIndex_serialize(index: Float64): Unit {
        ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_setIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index);
    }
    private func getPosition_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_getPosition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setPosition_serialize(position: Float64): Unit {
        ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_setPosition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, position);
    }
    private func getMainAxisLength_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_getMainAxisLength(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setMainAxisLength_serialize(mainAxisLength: Float64): Unit {
        ArkUIGeneratedNativeModule._SwiperContentTransitionProxy_setMainAxisLength(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, mainAxisLength);
    }
}
public open class SwiperContentTransitionProxy_serializer {
    public static func write(buffer: SerializerBase, value: SwiperContentTransitionProxy): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): SwiperContentTransitionProxy {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SwiperContentTransitionProxyInternal.fromPtr(ptr)
    }
}
