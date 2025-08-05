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
public open class IndicatorComponentControllerInternal {
    public static func fromPtr(ptr: UInt64): IndicatorComponentController {
        return IndicatorComponentController(ptr)
    }
}
public open class IndicatorComponentController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    IndicatorComponentController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, IndicatorComponentController.getFinalizer())
    }
    IndicatorComponentController() {
        super(IndicatorComponentController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._IndicatorComponentController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._IndicatorComponentController_getFinalizer()
    }
    public open func showNext(): Unit {
        let thisPeer = this
        thisPeer.showNext_serialize()
        return
    }
    public open func showPrevious(): Unit {
        let thisPeer = this
        thisPeer.showPrevious_serialize()
        return
    }
    public open func changeIndex(index: Float64, useAnimation: Option<Bool>): Unit {
        let index_casted: Float64 = index
        let useAnimation_casted: Option<Bool> = if (let Some(useAnimation) <- useAnimation) {useAnimation} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.changeIndex_serialize(index_casted, useAnimation_casted)
        return
    }
    private func showNext_serialize(): Unit {
        ArkUIGeneratedNativeModule._IndicatorComponentController_showNext(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func showPrevious_serialize(): Unit {
        ArkUIGeneratedNativeModule._IndicatorComponentController_showPrevious(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func changeIndex_serialize(index: Float64, useAnimation: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (useAnimation.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let useAnimationTmpValue = useAnimation
            thisSerializer.writeBoolean(useAnimationTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._IndicatorComponentController_changeIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class IndicatorComponentController_serializer {
    public static func write(buffer: SerializerBase, value: IndicatorComponentController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): IndicatorComponentController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return IndicatorComponentControllerInternal.fromPtr(ptr)
    }
}
