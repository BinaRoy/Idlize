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
public open class SwiperControllerInternal {
    public static func fromPtr(ptr: UInt64): SwiperController {
        return SwiperController(ptr)
    }
}
public open class SwiperController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    SwiperController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, SwiperController.getFinalizer())
    }
    SwiperController() {
        super(SwiperController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._SwiperController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._SwiperController_getFinalizer()
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
    public open func changeIndex(index: Float64, animationMode: Option<Union_SwiperAnimationMode_Boolean>): Unit {
        let index_casted: Float64 = index
        let animationMode_casted: Option<Union_SwiperAnimationMode_Boolean> = if (let Some(animationMode) <- animationMode) {animationMode} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.changeIndex_serialize(index_casted, animationMode_casted)
        return
    }
    public open func finishAnimation(callback_: Option<VoidCallback>): Unit {
        let callback__casted: Option<VoidCallback> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.finishAnimation_serialize(callback__casted)
        return
    }
    public open func preloadItems(indices: Option<ArrayList<Float64>>): Any {
        let indices_casted: Option<ArrayList<Float64>> = if (let Some(indices) <- indices) {indices} else { throw Exception("Type has to be not None")}
        return this.preloadItems_serialize(indices_casted)
    }
    private func showNext_serialize(): Unit {
        ArkUIGeneratedNativeModule._SwiperController_showNext(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func showPrevious_serialize(): Unit {
        ArkUIGeneratedNativeModule._SwiperController_showPrevious(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func changeIndex_serialize(index: Float64, animationMode: Option<Union_SwiperAnimationMode_Boolean>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animationMode.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animationModeTmpValue = animationMode
            if (animationModeTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let animationModeTmpValueForIdx0 = animationModeTmpValue.getValue0()
                thisSerializer.writeInt32(animationModeTmpValueForIdx0.value);
            } else if (animationModeTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let animationModeTmpValueForIdx1 = animationModeTmpValue.getValue1()
                thisSerializer.writeBoolean(animationModeTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SwiperController_changeIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func finishAnimation_serialize(callback_: Option<VoidCallback>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SwiperController_finishAnimation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func preloadItems_serialize(indices: Option<ArrayList<Float64>>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (indices.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let indicesTmpValue = indices
            thisSerializer.writeInt32(Int32(indicesTmpValue.size));
            for (indicesTmpValueCounterI in 0..indicesTmpValue.size) {
                let indicesTmpValueTmpElement: Float64 = indicesTmpValue[Int64(indicesTmpValueCounterI)]
                thisSerializer.writeNumber(indicesTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._SwiperController_preloadItems(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
}
public open class SwiperController_serializer {
    public static func write(buffer: SerializerBase, value: SwiperController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): SwiperController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SwiperControllerInternal.fromPtr(ptr)
    }
}
