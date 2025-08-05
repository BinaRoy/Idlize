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
public open class ScreenCaptureHandlerInternal {
    public static func fromPtr(ptr: UInt64): ScreenCaptureHandler {
        return ScreenCaptureHandler(ptr)
    }
}
public open class ScreenCaptureHandler <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    ScreenCaptureHandler(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ScreenCaptureHandler.getFinalizer())
    }
    ScreenCaptureHandler() {
        super(ScreenCaptureHandler.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ScreenCaptureHandler_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ScreenCaptureHandler_getFinalizer()
    }
    public open func getOrigin(): String {
        return this.getOrigin_serialize()
    }
    public open func grant(config: ScreenCaptureConfig): Unit {
        let config_casted: ScreenCaptureConfig = config
        let thisPeer = this
        thisPeer.grant_serialize(config_casted)
        return
    }
    public open func deny(): Unit {
        let thisPeer = this
        thisPeer.deny_serialize()
        return
    }
    private func getOrigin_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._ScreenCaptureHandler_getOrigin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func grant_serialize(config: ScreenCaptureConfig): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ScreenCaptureConfig_serializer.write(thisSerializer, config);
        ArkUIGeneratedNativeModule._ScreenCaptureHandler_grant(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func deny_serialize(): Unit {
        ArkUIGeneratedNativeModule._ScreenCaptureHandler_deny(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
}
public open class ScreenCaptureHandler_serializer {
    public static func write(buffer: SerializerBase, value: ScreenCaptureHandler): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ScreenCaptureHandler {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ScreenCaptureHandlerInternal.fromPtr(ptr)
    }
}
