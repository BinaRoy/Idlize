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
public interface TextBaseController {
    public open func setSelection(selectionStart: Float64, selectionEnd: Float64, options: Option<SelectionOptions>): Unit
    public open func closeSelectionMenu(): Unit
    public open func getLayoutManager(): LayoutManager
}
public open class TextBaseControllerInternal <: MaterializedBase & TextBaseController {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    TextBaseControllerInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TextBaseControllerInternal.getFinalizer())
    }
    TextBaseControllerInternal() {
        super(TextBaseControllerInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TextBaseController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextBaseController_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): TextBaseControllerInternal {
        return TextBaseControllerInternal(ptr)
    }
    public open func setSelection(selectionStart: Float64, selectionEnd: Float64, options: Option<SelectionOptions>): Unit {
        let selectionStart_casted: Float64 = selectionStart
        let selectionEnd_casted: Float64 = selectionEnd
        let options_casted: Option<SelectionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setSelection_serialize(selectionStart_casted, selectionEnd_casted, options_casted)
        return
    }
    public open func closeSelectionMenu(): Unit {
        let thisPeer = this
        thisPeer.closeSelectionMenu_serialize()
        return
    }
    public open func getLayoutManager(): LayoutManager {
        return this.getLayoutManager_serialize()
    }
    private func setSelection_serialize(selectionStart: Float64, selectionEnd: Float64, options: Option<SelectionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SelectionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextBaseController_setSelection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, selectionStart, selectionEnd, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func closeSelectionMenu_serialize(): Unit {
        ArkUIGeneratedNativeModule._TextBaseController_closeSelectionMenu(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getLayoutManager_serialize(): LayoutManager {
        let retval = ArkUIGeneratedNativeModule._TextBaseController_getLayoutManager(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: LayoutManager = LayoutManagerInternal.fromPtr(retval)
        return obj
    }
}
public open class TextBaseController_serializer {
    public static func write(buffer: SerializerBase, value: TextBaseController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextBaseController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextBaseControllerInternal.fromPtr(ptr)
    }
}
