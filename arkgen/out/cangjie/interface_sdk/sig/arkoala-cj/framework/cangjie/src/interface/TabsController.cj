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
public open class TabsControllerInternal {
    public static func fromPtr(ptr: UInt64): TabsController {
        return TabsController(ptr)
    }
}
public open class TabsController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    TabsController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TabsController.getFinalizer())
    }
    TabsController() {
        super(TabsController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TabsController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TabsController_getFinalizer()
    }
    public open func changeIndex(value: Float64): Unit {
        let value_casted: Float64 = value
        let thisPeer = this
        thisPeer.changeIndex_serialize(value_casted)
        return
    }
    public open func preloadItems(indices: Option<ArrayList<Float64>>): Any {
        let indices_casted: Option<ArrayList<Float64>> = if (let Some(indices) <- indices) {indices} else { throw Exception("Type has to be not None")}
        return this.preloadItems_serialize(indices_casted)
    }
    public open func setTabBarTranslate(translate: TranslateOptions): Unit {
        let translate_casted: TranslateOptions = translate
        let thisPeer = this
        thisPeer.setTabBarTranslate_serialize(translate_casted)
        return
    }
    public open func setTabBarOpacity(opacity: Float64): Unit {
        let opacity_casted: Float64 = opacity
        let thisPeer = this
        thisPeer.setTabBarOpacity_serialize(opacity_casted)
        return
    }
    private func changeIndex_serialize(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TabsController_changeIndex(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value);
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
        ArkUIGeneratedNativeModule._TabsController_preloadItems(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func setTabBarTranslate_serialize(translate: TranslateOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TranslateOptions_serializer.write(thisSerializer, translate);
        ArkUIGeneratedNativeModule._TabsController_setTabBarTranslate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setTabBarOpacity_serialize(opacity: Float64): Unit {
        ArkUIGeneratedNativeModule._TabsController_setTabBarOpacity(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, opacity);
    }
}
public open class TabsController_serializer {
    public static func write(buffer: SerializerBase, value: TabsController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TabsController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TabsControllerInternal.fromPtr(ptr)
    }
}
