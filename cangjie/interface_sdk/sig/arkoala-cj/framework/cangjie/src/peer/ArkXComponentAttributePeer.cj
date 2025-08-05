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
public open class ArkXComponentPeer <: ArkCommonMethodPeer {
    protected ArkXComponentPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkXComponentPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._XComponent_construct(peerId, flags)
        let _peer = ArkXComponentPeer(_peerPtr, peerId, "XComponent", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setXComponentOptions0Attribute(value: Type_XComponentInterface_callable0_value): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let valueId = value.id
        thisSerializer.writeString(valueId);
        let valueType = value.type_
        thisSerializer.writeString(valueType);
        let valueLibraryname = value.libraryname
        if (valueLibraryname.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueLibrarynameTmpValue = valueLibraryname
            thisSerializer.writeString(valueLibrarynameTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueController = value.controller
        if (valueController.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueControllerTmpValue = valueController
            XComponentController_serializer.write(thisSerializer, valueControllerTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._XComponentInterface_setXComponentOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setXComponentOptions1Attribute(value: Type_XComponentInterface_callable1_value): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let valueId = value.id
        thisSerializer.writeString(valueId);
        let valueType = value.type_
        thisSerializer.writeInt32(valueType.value);
        let valueLibraryname = value.libraryname
        if (valueLibraryname.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueLibrarynameTmpValue = valueLibraryname
            thisSerializer.writeString(valueLibrarynameTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueController = value.controller
        if (valueController.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueControllerTmpValue = valueController
            XComponentController_serializer.write(thisSerializer, valueControllerTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._XComponentInterface_setXComponentOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setXComponentOptions2Attribute(options: XComponentOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        XComponentOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._XComponentInterface_setXComponentOptions2(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setXComponentOptions3Attribute(params: NativeXComponentParameters): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NativeXComponentParameters_serializer.write(thisSerializer, params);
        ArkUIGeneratedNativeModule._XComponentInterface_setXComponentOptions3(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnLoadAttribute(callback_: OnNativeLoadCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._XComponentAttribute_setOnLoad(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDestroyAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._XComponentAttribute_setOnDestroy(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableAnalyzerAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._XComponentAttribute_setEnableAnalyzer(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableSecureAttribute(isSecure: Bool): Unit {
        ArkUIGeneratedNativeModule._XComponentAttribute_setEnableSecure(this.peer.ptr, if (isSecure) { Int32(1) } else { Int32(0) });
    }
    public open func setHdrBrightnessAttribute(brightness: Float64): Unit {
        ArkUIGeneratedNativeModule._XComponentAttribute_setHdrBrightness(this.peer.ptr, brightness);
    }
    public open func setEnableTransparentLayerAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._XComponentAttribute_setEnableTransparentLayer(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
}
