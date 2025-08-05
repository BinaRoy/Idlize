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
public open class ArkTextClockPeer <: ArkCommonMethodPeer {
    protected ArkTextClockPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkTextClockPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._TextClock_construct(peerId, flags)
        let _peer = ArkTextClockPeer(_peerPtr, peerId, "TextClock", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setTextClockOptionsAttribute(options: Option<TextClockOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            TextClockOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextClockInterface_setTextClockOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFormatAttribute(value: ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        }
        ArkUIGeneratedNativeModule._TextClockAttribute_setFormat(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDateChangeAttribute(event: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._TextClockAttribute_setOnDateChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            thisSerializer.writeCustomObject("Any", valueForIdx3);
        }
        ArkUIGeneratedNativeModule._TextClockAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontSizeAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._TextClockAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontStyleAttribute(value: FontStyle): Unit {
        ArkUIGeneratedNativeModule._TextClockAttribute_setFontStyle(this.peer.ptr, value.value);
    }
    public open func setFontWeightAttribute(value: Union_Number_FontWeight_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(valueForIdx1.value);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        }
        ArkUIGeneratedNativeModule._TextClockAttribute_setFontWeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontFamilyAttribute(value: ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        }
        ArkUIGeneratedNativeModule._TextClockAttribute_setFontFamily(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextShadowAttribute(value: Union_ShadowOptions_Array_ShadowOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            ShadowOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeInt32(Int32(valueForIdx1.size));
            for (valueForIdx1CounterI in 0..valueForIdx1.size) {
                let valueForIdx1TmpElement: ShadowOptions = valueForIdx1[Int64(valueForIdx1CounterI)]
                ShadowOptions_serializer.write(thisSerializer, valueForIdx1TmpElement);
            }
        }
        ArkUIGeneratedNativeModule._TextClockAttribute_setTextShadow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontFeatureAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._TextClockAttribute_setFontFeature(this.peer.ptr, value);
    }
    public open func setContentModifierAttribute(modifier: ContentModifier<TextClockConfiguration>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(modifier);
        ArkUIGeneratedNativeModule._TextClockAttribute_setContentModifier(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDateTimeOptionsAttribute(dateTimeOptions: Option<DateTimeOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (dateTimeOptions.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let dateTimeOptionsTmpValue = dateTimeOptions
            thisSerializer.writeCustomObject("Any", dateTimeOptionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._TextClockAttribute_setDateTimeOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
