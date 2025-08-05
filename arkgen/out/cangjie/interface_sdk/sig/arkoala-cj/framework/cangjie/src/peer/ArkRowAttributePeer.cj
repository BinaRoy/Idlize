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
public open class ArkRowPeer <: ArkCommonMethodPeer {
    protected ArkRowPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkRowPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Row_construct(peerId, flags)
        let _peer = ArkRowPeer(_peerPtr, peerId, "Row", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setRowOptions0Attribute(options: Option<RowOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            RowOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RowInterface_setRowOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRowOptions1Attribute(options: Option<Union_RowOptions_RowOptionsV2>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            if (optionsTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let optionsTmpValueForIdx0 = optionsTmpValue.getValue0()
                RowOptions_serializer.write(thisSerializer, optionsTmpValueForIdx0);
            } else if (optionsTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let optionsTmpValueForIdx1 = optionsTmpValue.getValue1()
                RowOptionsV2_serializer.write(thisSerializer, optionsTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RowInterface_setRowOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setAlignItemsAttribute(value: VerticalAlign): Unit {
        ArkUIGeneratedNativeModule._RowAttribute_setAlignItems(this.peer.ptr, value.value);
    }
    public open func setJustifyContentAttribute(value: FlexAlign): Unit {
        ArkUIGeneratedNativeModule._RowAttribute_setJustifyContent(this.peer.ptr, value.value);
    }
    public open func setPointLightAttribute(value: PointLightStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        PointLightStyle_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._RowAttribute_setPointLight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setReverseAttribute(isReversed: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (isReversed.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isReversedTmpValue = isReversed
            thisSerializer.writeBoolean(isReversedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RowAttribute_setReverse(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
