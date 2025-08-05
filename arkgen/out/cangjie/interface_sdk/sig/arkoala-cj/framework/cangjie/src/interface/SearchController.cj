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
public open class SearchControllerInternal {
    public static func fromPtr(ptr: UInt64): SearchController {
        return SearchController(ptr)
    }
}
public open class SearchController <: TextContentControllerBase & MaterializedBase {
    SearchController(peerPtr: UInt64) {
        super(peerPtr)
    }
    SearchController() {
        super(SearchController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._SearchController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._SearchController_getFinalizer()
    }
    public open func caretPosition(value: Float64): Unit {
        let value_casted: Float64 = value
        let thisPeer = this
        thisPeer.caretPosition_serialize(value_casted)
        return
    }
    public open func stopEditing(): Unit {
        let thisPeer = this
        thisPeer.stopEditing_serialize()
        return
    }
    public open func setTextSelection(selectionStart: Float64, selectionEnd: Float64, options: Option<SelectionOptions>): Unit {
        let selectionStart_casted: Float64 = selectionStart
        let selectionEnd_casted: Float64 = selectionEnd
        let options_casted: Option<SelectionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTextSelection_serialize(selectionStart_casted, selectionEnd_casted, options_casted)
        return
    }
    private func caretPosition_serialize(value: Float64): Unit {
        ArkUIGeneratedNativeModule._SearchController_caretPosition(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, value);
    }
    private func stopEditing_serialize(): Unit {
        ArkUIGeneratedNativeModule._SearchController_stopEditing(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func setTextSelection_serialize(selectionStart: Float64, selectionEnd: Float64, options: Option<SelectionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SelectionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._SearchController_setTextSelection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, selectionStart, selectionEnd, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class SearchController_serializer {
    public static func write(buffer: SerializerBase, value: SearchController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): SearchController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return SearchControllerInternal.fromPtr(ptr)
    }
}
