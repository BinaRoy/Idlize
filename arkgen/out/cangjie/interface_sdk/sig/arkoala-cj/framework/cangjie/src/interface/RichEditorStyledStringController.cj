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
public open class RichEditorStyledStringControllerInternal {
    public static func fromPtr(ptr: UInt64): RichEditorStyledStringController {
        return RichEditorStyledStringController(ptr)
    }
}
public open class RichEditorStyledStringController <: RichEditorBaseController & MaterializedBase {
    RichEditorStyledStringController(peerPtr: UInt64) {
        super(peerPtr)
    }
    RichEditorStyledStringController() {
        super(RichEditorStyledStringController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._RichEditorStyledStringController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._RichEditorStyledStringController_getFinalizer()
    }
    public open func setStyledString(styledString: StyledString): Unit {
        let styledString_casted: StyledString = styledString
        let thisPeer = this
        thisPeer.setStyledString_serialize(styledString_casted)
        return
    }
    public open func getStyledString(): MutableStyledString {
        return this.getStyledString_serialize()
    }
    public open func getSelection(): RichEditorRange {
        return this.getSelection_serialize()
    }
    public open func onContentChanged(listener: StyledStringChangedListener): Unit {
        let listener_casted: StyledStringChangedListener = listener
        let thisPeer = this
        thisPeer.onContentChanged_serialize(listener_casted)
        return
    }
    private func setStyledString_serialize(styledString: StyledString): Unit {
        ArkUIGeneratedNativeModule._RichEditorStyledStringController_setStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(styledString));
    }
    private func getStyledString_serialize(): MutableStyledString {
        let retval = ArkUIGeneratedNativeModule._RichEditorStyledStringController_getStyledString(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: MutableStyledString = MutableStyledStringInternal.fromPtr(retval)
        return obj
    }
    private func getSelection_serialize(): RichEditorRange {
        let retval = ArkUIGeneratedNativeModule._RichEditorStyledStringController_getSelection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: RichEditorRange = RichEditorRange_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func onContentChanged_serialize(listener: StyledStringChangedListener): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        StyledStringChangedListener_serializer.write(thisSerializer, listener);
        ArkUIGeneratedNativeModule._RichEditorStyledStringController_onContentChanged(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class RichEditorStyledStringController_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorStyledStringController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): RichEditorStyledStringController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return RichEditorStyledStringControllerInternal.fromPtr(ptr)
    }
}
