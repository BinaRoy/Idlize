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
public open class LinearIndicatorControllerInternal {
    public static func fromPtr(ptr: UInt64): LinearIndicatorController {
        return LinearIndicatorController(ptr)
    }
}
public open class LinearIndicatorController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    LinearIndicatorController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, LinearIndicatorController.getFinalizer())
    }
    LinearIndicatorController() {
        super(LinearIndicatorController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._LinearIndicatorController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._LinearIndicatorController_getFinalizer()
    }
    public open func setProgress(index: Float64, progress: Float64): Unit {
        let index_casted: Float64 = index
        let progress_casted: Float64 = progress
        let thisPeer = this
        thisPeer.setProgress_serialize(index_casted, progress_casted)
        return
    }
    public open func start(options: Option<LinearIndicatorStartOptions>): Unit {
        let options_casted: Option<LinearIndicatorStartOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.start_serialize(options_casted)
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
    private func setProgress_serialize(index: Float64, progress: Float64): Unit {
        ArkUIGeneratedNativeModule._LinearIndicatorController_setProgress(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, progress);
    }
    private func start_serialize(options: Option<LinearIndicatorStartOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            LinearIndicatorStartOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._LinearIndicatorController_start(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func pause_serialize(): Unit {
        ArkUIGeneratedNativeModule._LinearIndicatorController_pause(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func stop_serialize(): Unit {
        ArkUIGeneratedNativeModule._LinearIndicatorController_stop(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class LinearIndicatorController_serializer {
    public static func write(buffer: SerializerBase, value: LinearIndicatorController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): LinearIndicatorController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return LinearIndicatorControllerInternal.fromPtr(ptr)
    }
}
