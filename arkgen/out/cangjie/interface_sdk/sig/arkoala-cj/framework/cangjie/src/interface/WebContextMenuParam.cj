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
public open class WebContextMenuParamInternal {
    public static func fromPtr(ptr: UInt64): WebContextMenuParam {
        return WebContextMenuParam(ptr)
    }
}
public open class WebContextMenuParam <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    WebContextMenuParam(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, WebContextMenuParam.getFinalizer())
    }
    WebContextMenuParam() {
        super(WebContextMenuParam.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._WebContextMenuParam_getFinalizer()
    }
    public open func x(): Int32 {
        return this.x_serialize()
    }
    public open func y(): Int32 {
        return this.y_serialize()
    }
    public open func getLinkUrl(): String {
        return this.getLinkUrl_serialize()
    }
    public open func getUnfilteredLinkUrl(): String {
        return this.getUnfilteredLinkUrl_serialize()
    }
    public open func getSourceUrl(): String {
        return this.getSourceUrl_serialize()
    }
    public open func existsImageContents(): Bool {
        return this.existsImageContents_serialize()
    }
    public open func getMediaType(): ContextMenuMediaType {
        return this.getMediaType_serialize()
    }
    public open func getSelectionText(): String {
        return this.getSelectionText_serialize()
    }
    public open func getSourceType(): ContextMenuSourceType {
        return this.getSourceType_serialize()
    }
    public open func getInputFieldType(): ContextMenuInputFieldType {
        return this.getInputFieldType_serialize()
    }
    public open func isEditable(): Bool {
        return this.isEditable_serialize()
    }
    public open func getEditStateFlags(): Int32 {
        return this.getEditStateFlags_serialize()
    }
    public open func getPreviewWidth(): Int32 {
        return this.getPreviewWidth_serialize()
    }
    public open func getPreviewHeight(): Int32 {
        return this.getPreviewHeight_serialize()
    }
    private func x_serialize(): Int32 {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_x(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func y_serialize(): Int32 {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_y(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getLinkUrl_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getLinkUrl(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getUnfilteredLinkUrl_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getUnfilteredLinkUrl(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getSourceUrl_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getSourceUrl(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func existsImageContents_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_existsImageContents(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getMediaType_serialize(): ContextMenuMediaType {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getMediaType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return ContextMenuMediaType(retval)
    }
    private func getSelectionText_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getSelectionText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getSourceType_serialize(): ContextMenuSourceType {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getSourceType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return ContextMenuSourceType(retval)
    }
    private func getInputFieldType_serialize(): ContextMenuInputFieldType {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getInputFieldType(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return ContextMenuInputFieldType(retval)
    }
    private func isEditable_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_isEditable(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getEditStateFlags_serialize(): Int32 {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getEditStateFlags(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getPreviewWidth_serialize(): Int32 {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getPreviewWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getPreviewHeight_serialize(): Int32 {
        let retval = ArkUIGeneratedNativeModule._WebContextMenuParam_getPreviewHeight(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
}
public open class WebContextMenuParam_serializer {
    public static func write(buffer: SerializerBase, value: WebContextMenuParam): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): WebContextMenuParam {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return WebContextMenuParamInternal.fromPtr(ptr)
    }
}
