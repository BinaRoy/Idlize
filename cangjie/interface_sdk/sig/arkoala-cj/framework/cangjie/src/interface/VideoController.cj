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
public open class VideoControllerInternal {
    public static func fromPtr(ptr: UInt64): VideoController {
        return VideoController(ptr)
    }
}
public open class VideoController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    VideoController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, VideoController.getFinalizer())
    }
    VideoController() {
        super(VideoController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._VideoController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._VideoController_getFinalizer()
    }
    public open func start(): Unit {
        let thisPeer = this
        thisPeer.start_serialize()
        return
    }
    public open func pause(): Unit {
        let thisPeer = this
        thisPeer.pause_serialize()
        return
    }
    public open func stop(): Unit {
        let thisPeer = this
        thisPeer.stop_serialize()
        return
    }
    public open func setCurrentTime(value: Float64): Unit {
        let value_casted: Float64 = value
        let thisPeer = this
        thisPeer.setCurrentTime0_serialize(value_casted)
        return
    }
    public open func setCurrentTime(value: Float64, seekMode: SeekMode): Unit {
        let value_casted: Float64 = value
        let seekMode_casted: SeekMode = seekMode
        let thisPeer = this
        thisPeer.setCurrentTime1_serialize(value_casted, seekMode_casted)
        return
    }
    public open func requestFullscreen(value: Bool): Unit {
        let value_casted: Bool = value
        let thisPeer = this
        thisPeer.requestFullscreen_serialize(value_casted)
        return
    }
    public open func exitFullscreen(): Unit {
        let thisPeer = this
        thisPeer.exitFullscreen_serialize()
        return
    }
    public open func reset(): Unit {
        let thisPeer = this
        thisPeer.reset_serialize()
        return
    }
    private func start_serialize(): Unit {
        ArkUIGeneratedNativeModule._VideoController_start(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func pause_serialize(): Unit {
        ArkUIGeneratedNativeModule._VideoController_pause(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func stop_serialize(): Unit {
        ArkUIGeneratedNativeModule._VideoController_stop(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func setCurrentTime0_serialize(value: Float64): Unit {
        ArkUIGeneratedNativeModule._VideoController_setCurrentTime0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value);
    }
    private func setCurrentTime1_serialize(value: Float64, seekMode: SeekMode): Unit {
        ArkUIGeneratedNativeModule._VideoController_setCurrentTime1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value, seekMode.value);
    }
    private func requestFullscreen_serialize(value: Bool): Unit {
        ArkUIGeneratedNativeModule._VideoController_requestFullscreen(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (value) { Int32(1) } else { Int32(0) });
    }
    private func exitFullscreen_serialize(): Unit {
        ArkUIGeneratedNativeModule._VideoController_exitFullscreen(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func reset_serialize(): Unit {
        ArkUIGeneratedNativeModule._VideoController_reset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class VideoController_serializer {
    public static func write(buffer: SerializerBase, value: VideoController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): VideoController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return VideoControllerInternal.fromPtr(ptr)
    }
}
