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
public open class ArkComponent3DPeer <: ArkCommonMethodPeer {
    protected ArkComponent3DPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkComponent3DPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Component3D_construct(peerId, flags)
        let _peer = ArkComponent3DPeer(_peerPtr, peerId, "Component3D", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setComponent3DOptionsAttribute(sceneOptions: Option<SceneOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (sceneOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sceneOptionsTmpValue = sceneOptions
            SceneOptions_serializer.write(thisSerializer, sceneOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Component3DInterface_setComponent3DOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnvironmentAttribute(uri: ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (uri.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let uriForIdx0 = uri.getValue0()
            thisSerializer.writeString(uriForIdx0);
        } else if (uri.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let uriForIdx1 = uri.getValue1()
            thisSerializer.writeCustomObject("Any", uriForIdx1);
        }
        ArkUIGeneratedNativeModule._Component3DAttribute_setEnvironment(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCustomRenderAttribute(uri: ResourceStr, selfRenderUpdate: Bool): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (uri.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let uriForIdx0 = uri.getValue0()
            thisSerializer.writeString(uriForIdx0);
        } else if (uri.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let uriForIdx1 = uri.getValue1()
            thisSerializer.writeCustomObject("Any", uriForIdx1);
        }
        ArkUIGeneratedNativeModule._Component3DAttribute_setCustomRender(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), if (selfRenderUpdate) { Int32(1) } else { Int32(0) });
        thisSerializer.release();
    }
    public open func setShaderAttribute(uri: ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (uri.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let uriForIdx0 = uri.getValue0()
            thisSerializer.writeString(uriForIdx0);
        } else if (uri.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let uriForIdx1 = uri.getValue1()
            thisSerializer.writeCustomObject("Any", uriForIdx1);
        }
        ArkUIGeneratedNativeModule._Component3DAttribute_setShader(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShaderImageTextureAttribute(uri: ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (uri.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let uriForIdx0 = uri.getValue0()
            thisSerializer.writeString(uriForIdx0);
        } else if (uri.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let uriForIdx1 = uri.getValue1()
            thisSerializer.writeCustomObject("Any", uriForIdx1);
        }
        ArkUIGeneratedNativeModule._Component3DAttribute_setShaderImageTexture(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setShaderInputBufferAttribute(buffer: ArrayList<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(buffer.size));
        for (bufferCounterI in 0..buffer.size) {
            let bufferTmpElement: Float64 = buffer[Int64(bufferCounterI)]
            thisSerializer.writeNumber(bufferTmpElement);
        }
        ArkUIGeneratedNativeModule._Component3DAttribute_setShaderInputBuffer(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRenderWidthAttribute(value: Dimension): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._Component3DAttribute_setRenderWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRenderHeightAttribute(value: Dimension): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._Component3DAttribute_setRenderHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
