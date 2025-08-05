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
public interface TabContentTransitionProxy {
    public mut open prop from_: Float64
    public mut open prop to: Float64
    public open func finishTransition(): Unit
}
public open class TabContentTransitionProxyInternal <: MaterializedBase & TabContentTransitionProxy {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop from_: Float64
    {
        get() {
            return this.getFrom()
        }
        set(from_) {
            this.setFrom(from_)
        }
    }
    public mut open prop to: Float64
    {
        get() {
            return this.getTo()
        }
        set(to) {
            this.setTo(to)
        }
    }
    TabContentTransitionProxyInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TabContentTransitionProxyInternal.getFinalizer())
    }
    TabContentTransitionProxyInternal() {
        super(TabContentTransitionProxyInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TabContentTransitionProxy_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TabContentTransitionProxy_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): TabContentTransitionProxyInternal {
        return TabContentTransitionProxyInternal(ptr)
    }
    public open func finishTransition(): Unit {
        let thisPeer = this
        thisPeer.finishTransition_serialize()
        return
    }
    private func getFrom(): Float64 {
        return this.getFrom_serialize()
    }
    private func setFrom(from_: Float64): Unit {
        let from_casted: Float64 = from_
        let thisPeer = this
        thisPeer.setFrom_serialize(from_casted)
        return
    }
    private func getTo(): Float64 {
        return this.getTo_serialize()
    }
    private func setTo(to: Float64): Unit {
        let to_casted: Float64 = to
        let thisPeer = this
        thisPeer.setTo_serialize(to_casted)
        return
    }
    private func finishTransition_serialize(): Unit {
        ArkUIGeneratedNativeModule._TabContentTransitionProxy_finishTransition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getFrom_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._TabContentTransitionProxy_getFrom(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setFrom_serialize(from_: Float64): Unit {
        ArkUIGeneratedNativeModule._TabContentTransitionProxy_setFrom(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, from_);
    }
    private func getTo_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._TabContentTransitionProxy_getTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setTo_serialize(to: Float64): Unit {
        ArkUIGeneratedNativeModule._TabContentTransitionProxy_setTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, to);
    }
}
public open class TabContentTransitionProxy_serializer {
    public static func write(buffer: SerializerBase, value: TabContentTransitionProxy): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TabContentTransitionProxy {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TabContentTransitionProxyInternal.fromPtr(ptr)
    }
}
