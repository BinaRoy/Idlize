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

package idlize.peers
import idlize.commonPara.*


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public open class ArkCommonMethodPeer <: PeerNode {
    init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    public  static func create(component: Option<ComponentBase>, flags!: Int32 = 0): ArkCommonMethodPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._CommonMethod_construct(peerId, flags)
        let _peer = ArkCommonMethodPeer(_peerPtr, peerId, "CommonMethod", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public func backdropBlurAttribute(value: Float64, options: Option<BlurOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let optionsTmpValue = options
            BlurOptions_serializer.write(thisSerializer, optionsTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackdropBlur(this.peer.ptr, value, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func widthAttribute(value: Length): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0))
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0)
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1))
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1)
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2))
            let valueForIdx2 = value.getValue2()
            Resource_serializer.write(thisSerializer, valueForIdx2)
        } else {
            throw Exception("One of the branches for value has to be chosen for serialisation.")
        }
        ArkUIGeneratedNativeModule._CommonMethod_setWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func heightAttribute(value: Length): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0))
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0)
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1))
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1)
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2))
            let valueForIdx2 = value.getValue2()
            Resource_serializer.write(thisSerializer, valueForIdx2)
        } else {
            throw Exception("One of the branches for value has to be chosen for serialisation.")
        }
        ArkUIGeneratedNativeModule._CommonMethod_setHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func keyAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setKey(this.peer.ptr, value)
    }
    public func restoreIdAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setRestoreId(this.peer.ptr, value)
    }
    public func paddingAttribute(value: Padding): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let valueTop = value.top
        if (let Some(valueTop) <- valueTop) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTopTmpValue = valueTop
            if (valueTopTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTopTmpValueForIdx0 = valueTopTmpValue.getValue0()
                thisSerializer.writeString(valueTopTmpValueForIdx0)
            } else if (valueTopTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTopTmpValueForIdx1 = valueTopTmpValue.getValue1()
                thisSerializer.writeNumber(valueTopTmpValueForIdx1)
            } else if (valueTopTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTopTmpValueForIdx2 = valueTopTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueTopTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueTopTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueRight = value.right
        if (let Some(valueRight) <- valueRight) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueRightTmpValue = valueRight
            if (valueRightTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueRightTmpValueForIdx0 = valueRightTmpValue.getValue0()
                thisSerializer.writeString(valueRightTmpValueForIdx0)
            } else if (valueRightTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueRightTmpValueForIdx1 = valueRightTmpValue.getValue1()
                thisSerializer.writeNumber(valueRightTmpValueForIdx1)
            } else if (valueRightTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueRightTmpValueForIdx2 = valueRightTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueRightTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueRightTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueBottom = value.bottom
        if (let Some(valueBottom) <- valueBottom) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueBottomTmpValue = valueBottom
            if (valueBottomTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueBottomTmpValueForIdx0 = valueBottomTmpValue.getValue0()
                thisSerializer.writeString(valueBottomTmpValueForIdx0)
            } else if (valueBottomTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueBottomTmpValueForIdx1 = valueBottomTmpValue.getValue1()
                thisSerializer.writeNumber(valueBottomTmpValueForIdx1)
            } else if (valueBottomTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueBottomTmpValueForIdx2 = valueBottomTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueBottomTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueBottomTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueLeft = value.left
        if (let Some(valueLeft) <- valueLeft) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueLeftTmpValue = valueLeft
            if (valueLeftTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueLeftTmpValueForIdx0 = valueLeftTmpValue.getValue0()
                thisSerializer.writeString(valueLeftTmpValueForIdx0)
            } else if (valueLeftTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueLeftTmpValueForIdx1 = valueLeftTmpValue.getValue1()
                thisSerializer.writeNumber(valueLeftTmpValueForIdx1)
            } else if (valueLeftTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueLeftTmpValueForIdx2 = valueLeftTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueLeftTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueLeftTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._CommonMethod_setPadding(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func bindSheetAttribute(isShow: Bool, options: Option<SheetOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let optionsTmpValue = options
            SheetOptions_serializer.write(thisSerializer, optionsTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindSheet(this.peer.ptr, if (isShow) { Int32(1) } else { Int32(0) }, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func backgroundBlurStyleAttribute(value: BlurStyle, options: Option<BackgroundBlurStyleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let optionsTmpValue = options
            BackgroundBlurStyleOptions_serializer.write(thisSerializer, optionsTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundBlurStyle(this.peer.ptr, value.get(), thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func dragPreviewOptionsAttribute(value: DragPreviewOptions, options: Option<DragInteractionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        DragPreviewOptions_serializer.write(thisSerializer, value)
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let optionsTmpValue = options
            DragInteractionOptions_serializer.write(thisSerializer, optionsTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._CommonMethod_setDragPreviewOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func onClickAttribute(event: Option<((event: ClickEvent) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(event) <- event) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let eventTmpValue = event
            thisSerializer.holdAndWriteCallback(eventTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOnClick0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func onClickAttribute(event: Option<((event: ClickEvent) -> Unit)>, distanceThreshold: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(event) <- event) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let eventTmpValue = event
            thisSerializer.holdAndWriteCallback(eventTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        if (let Some(distanceThreshold) <- distanceThreshold) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let distanceThresholdTmpValue = distanceThreshold
            thisSerializer.writeNumber(distanceThresholdTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._CommonMethod_setOnClick1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
}
