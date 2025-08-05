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
public open class ArkStepperPeer <: ArkCommonMethodPeer {
    protected ArkStepperPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkStepperPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Stepper_construct(peerId, flags)
        let _peer = ArkStepperPeer(_peerPtr, peerId, "Stepper", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setStepperOptions0Attribute(value: Option<Literal_Number_index>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            let valueTmpValueIndex = valueTmpValue.index
            if (valueTmpValueIndex.isSome()) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueTmpValueIndexTmpValue = valueTmpValueIndex
                thisSerializer.writeNumber(valueTmpValueIndexTmpValue);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._StepperInterface_setStepperOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setStepperOptions1Attribute(value: Option<StepperOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            StepperOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._StepperInterface_setStepperOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFinishAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._StepperAttribute_setOnFinish(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSkipAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._StepperAttribute_setOnSkip(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChangeAttribute(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._StepperAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNextAttribute(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._StepperAttribute_setOnNext(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPreviousAttribute(callback_: ((xOffset: Float64, yOffset: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._StepperAttribute_setOnPrevious(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_indexAttribute(callback: ((selected: Union_Number_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._StepperAttribute_set_onChangeEvent_index(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
