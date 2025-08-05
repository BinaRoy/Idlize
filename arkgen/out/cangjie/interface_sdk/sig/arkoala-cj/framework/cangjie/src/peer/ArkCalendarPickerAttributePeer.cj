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
public open class ArkCalendarPickerPeer <: ArkCommonMethodPeer {
    protected ArkCalendarPickerPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCalendarPickerPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._CalendarPicker_construct(peerId, flags)
        let _peer = ArkCalendarPickerPeer(_peerPtr, peerId, "CalendarPicker", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setCalendarPickerOptionsAttribute(options: Option<CalendarOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            CalendarOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CalendarPickerInterface_setCalendarPickerOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEdgeAlignAttribute(alignType: Option<CalendarAlign>, offset: Option<Offset>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (alignType.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let alignTypeTmpValue = alignType
            thisSerializer.writeInt32(alignTypeTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (offset.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let offsetTmpValue = offset
            Offset_serializer.write(thisSerializer, offsetTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CalendarPickerAttribute_setEdgeAlign(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextStyleAttribute(style: Option<PickerTextStyle>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (style.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            PickerTextStyle_serializer.write(thisSerializer, styleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CalendarPickerAttribute_setTextStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChangeAttribute(callback_: Option<((parameter: DateTime) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CalendarPickerAttribute_setOnChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMarkTodayAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._CalendarPickerAttribute_setMarkToday(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
}
