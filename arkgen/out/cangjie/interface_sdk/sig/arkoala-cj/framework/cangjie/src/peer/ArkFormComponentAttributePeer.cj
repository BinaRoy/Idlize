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
public open class ArkFormComponentPeer <: ArkCommonMethodPeer {
    protected ArkFormComponentPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkFormComponentPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._FormComponent_construct(peerId, flags)
        let _peer = ArkFormComponentPeer(_peerPtr, peerId, "FormComponent", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setFormComponentOptionsAttribute(value: FormInfo): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        FormInfo_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._FormComponentInterface_setFormComponentOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSizeAttribute(formSize: FormSize): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        FormSize_serializer.write(thisSerializer, formSize);
        ArkUIGeneratedNativeModule._FormComponentAttribute_setSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setModuleNameAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._FormComponentAttribute_setModuleName(this.peer.ptr, value);
    }
    public open func setDimensionAttribute(value: FormDimension): Unit {
        ArkUIGeneratedNativeModule._FormComponentAttribute_setDimension(this.peer.ptr, value.value);
    }
    public open func setAllowUpdateAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._FormComponentAttribute_setAllowUpdate(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setVisibilityAttribute(value: Visibility): Unit {
        ArkUIGeneratedNativeModule._FormComponentAttribute_setVisibility(this.peer.ptr, value.value);
    }
    public open func setOnAcquiredAttribute(callback_: ((parameter: FormCallbackInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._FormComponentAttribute_setOnAcquired(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnErrorAttribute(callback_: ((parameter: ErrorInformation) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._FormComponentAttribute_setOnError(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRouterAttribute(callback: ((info: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._FormComponentAttribute_setOnRouter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnUninstallAttribute(callback_: ((parameter: FormCallbackInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._FormComponentAttribute_setOnUninstall(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnLoadAttribute(callback_: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._FormComponentAttribute_setOnLoad(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnUpdateAttribute(callback_: ((parameter: FormCallbackInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._FormComponentAttribute_setOnUpdate(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
