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
public open class ArkSpanPeer <: ArkBaseSpanPeer {
    protected ArkSpanPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkSpanPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Span_construct(peerId, flags)
        let _peer = ArkSpanPeer(_peerPtr, peerId, "Span", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setSpanOptionsAttribute(value: Union_String_Resource): Unit {
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
        ArkUIGeneratedNativeModule._SpanInterface_setSpanOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontAttribute(value: Font): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Font_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SpanAttribute_setFont(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._SpanAttribute_setFontColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontSizeAttribute(value: Union_Number_String_Resource): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeCustomObject("Any", valueForIdx2);
        }
        ArkUIGeneratedNativeModule._SpanAttribute_setFontSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontStyleAttribute(value: FontStyle): Unit {
        ArkUIGeneratedNativeModule._SpanAttribute_setFontStyle(this.peer.ptr, value.value);
    }
    public open func setFontWeight0Attribute(value: Union_Number_FontWeight_ResourceStr): Unit {
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
            if (valueForIdx2.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx2ForIdx0 = valueForIdx2.getValue0()
                thisSerializer.writeString(valueForIdx2ForIdx0);
            } else if (valueForIdx2.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx2ForIdx1 = valueForIdx2.getValue1()
                thisSerializer.writeCustomObject("Any", valueForIdx2ForIdx1);
            }
        }
        ArkUIGeneratedNativeModule._SpanAttribute_setFontWeight0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontWeight1Attribute(value: Union_Number_FontWeight_String): Unit {
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
        ArkUIGeneratedNativeModule._SpanAttribute_setFontWeight1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setFontFamilyAttribute(value: Union_String_Resource): Unit {
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
        ArkUIGeneratedNativeModule._SpanAttribute_setFontFamily(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDecorationAttribute(value: DecorationStyleInterface): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        DecorationStyleInterface_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._SpanAttribute_setDecoration(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLetterSpacing0Attribute(value: Union_Number_ResourceStr): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            if (valueForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx1ForIdx0 = valueForIdx1.getValue0()
                thisSerializer.writeString(valueForIdx1ForIdx0);
            } else if (valueForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx1ForIdx1 = valueForIdx1.getValue1()
                thisSerializer.writeCustomObject("Any", valueForIdx1ForIdx1);
            }
        }
        ArkUIGeneratedNativeModule._SpanAttribute_setLetterSpacing0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLetterSpacing1Attribute(value: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._SpanAttribute_setLetterSpacing1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextCaseAttribute(value: TextCase): Unit {
        ArkUIGeneratedNativeModule._SpanAttribute_setTextCase(this.peer.ptr, value.value);
    }
    public open func setLineHeightAttribute(value: Length): Unit {
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
        ArkUIGeneratedNativeModule._SpanAttribute_setLineHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
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
        ArkUIGeneratedNativeModule._SpanAttribute_setTextShadow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
