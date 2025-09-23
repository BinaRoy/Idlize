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

public open class ArkTestPeer <: ArkCommonMethodPeer {
    init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    public  static func create(component: Option<ComponentBase>, flags!: Int32 = 0): ArkTestPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Test_construct(peerId, flags)
        let _peer = ArkTestPeer(_peerPtr, peerId, "Test", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public func testOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._TestInterface_setTestOptions(this.peer.ptr)
    }
    public func testBooleanAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestBoolean(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) })
    }
    public func testNumberAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestNumber(this.peer.ptr, value)
    }
    public func testStringAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestString(this.peer.ptr, value)
    }
    public func testEnumAttribute(value: EnumDTS): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestEnum(this.peer.ptr, value.get())
    }
    public func testBasicMixAttribute(v1: Float64, v2: String, v3: Float64): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestBasicMix(this.peer.ptr, v1, v2, v3)
    }
    public func testBooleanUndefinedAttribute(value: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeBoolean(valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestBooleanUndefined(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testNumberUndefinedAttribute(value: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeNumber(valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestNumberUndefined(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testStringUndefinedAttribute(value: Option<String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeString(valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestStringUndefined(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testEnumUndefinedAttribute(value: Option<EnumDTS>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeInt32(valueTmpValue.get())
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestEnumUndefined(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testFunctionNumberVoidAttribute(value: ((select: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestFunctionNumberVoid(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testUnionNumberEnumAttribute(val: Float64): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionNumberEnum_number(this.peer.ptr, val)
    }
    public func testUnionNumberEnumAttribute(val: EnumDTS): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionNumberEnum_EnumDTS(this.peer.ptr, val.get())
    }
    public func testUnionBooleanStringAttribute(val: Bool): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionBooleanString_boolean(this.peer.ptr, if (val) { Int32(1) } else { Int32(0) })
    }
    public func testUnionBooleanStringAttribute(val: String): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionBooleanString_String(this.peer.ptr, val)
    }
    public func testUnionStringNumberAttribute(val: Float64): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionStringNumber_number(this.peer.ptr, val)
    }
    public func testUnionStringNumberAttribute(val: String): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionStringNumber_String(this.peer.ptr, val)
    }
    public func testUnionBooleanStringNumberUndefinedAttribute(val: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(val) <- val) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valTmpValue = val
            thisSerializer.writeNumber(valTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionBooleanStringNumberUndefined(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testUnionWithGenericArrayAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionWithGenericArray_number(this.peer.ptr, value)
    }
    public func testUnionWithArrayTypeAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionWithArrayType_number(this.peer.ptr, value)
    }
    public func testBooleanArrayAttribute(value: ArrayList<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size))
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: Bool = value[Int64(valueCounterI)]
            thisSerializer.writeBoolean(valueTmpElement)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestBooleanArray(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testNumberArrayAttribute(value: ArrayList<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size))
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: Float64 = value[Int64(valueCounterI)]
            thisSerializer.writeNumber(valueTmpElement)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestNumberArray(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testStringArrayAttribute(value: ArrayList<String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size))
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: String = value[Int64(valueCounterI)]
            thisSerializer.writeString(valueTmpElement)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestStringArray(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testEnumArrayAttribute(value: ArrayList<EnumDTS>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size))
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: EnumDTS = value[Int64(valueCounterI)]
            thisSerializer.writeInt32(valueTmpElement.get())
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestEnumArray(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testArrayMixAttribute(v1: ArrayList<Float64>, v2: ArrayList<String>, v3: ArrayList<EnumDTS>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(v1.size))
        for (v1CounterI in 0..v1.size) {
            let v1TmpElement: Float64 = v1[Int64(v1CounterI)]
            thisSerializer.writeNumber(v1TmpElement)
        }
        thisSerializer.writeInt32(Int32(v2.size))
        for (v2CounterI in 0..v2.size) {
            let v2TmpElement: String = v2[Int64(v2CounterI)]
            thisSerializer.writeString(v2TmpElement)
        }
        thisSerializer.writeInt32(Int32(v3.size))
        for (v3CounterI in 0..v3.size) {
            let v3TmpElement: EnumDTS = v3[Int64(v3CounterI)]
            thisSerializer.writeInt32(v3TmpElement.get())
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestArrayMix(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testTupleBooleanNumberAttribute(value: (Bool, Float64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let value_0 = value.value0
        thisSerializer.writeBoolean(value_0)
        let value_1 = value.value1
        thisSerializer.writeNumber(value_1)
        ArkUIGeneratedNativeModule._TestAttribute_setTestTupleBooleanNumber(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testTupleNumberStringEnumAttribute(value: (Float64, String, EnumDTS)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let value_0 = value.value0
        thisSerializer.writeNumber(value_0)
        let value_1 = value.value1
        thisSerializer.writeString(value_1)
        let value_2 = value.value2
        thisSerializer.writeInt32(value_2.get())
        ArkUIGeneratedNativeModule._TestAttribute_setTestTupleNumberStringEnum(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testTupleOptionalAttribute(value: (Float64, String, Bool, EnumDTS)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let value_0 = value.value0
        thisSerializer.writeNumber(value_0)
        let value_1 = value.value1
        thisSerializer.writeString(value_1)
        let value_2 = value.value2
        thisSerializer.writeBoolean(value_2)
        let value_3 = value.value3
        thisSerializer.writeInt32(value_3.get())
        ArkUIGeneratedNativeModule._TestAttribute_setTestTupleOptional(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testTupleUnionAttribute(value: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestTupleUnion(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testArrayRefBooleanAttribute(value: ArrayList<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size))
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: Bool = value[Int64(valueCounterI)]
            thisSerializer.writeBoolean(valueTmpElement)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestArrayRefBoolean(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testArrayRefNumberAttribute(value: ArrayList<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size))
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: Float64 = value[Int64(valueCounterI)]
            thisSerializer.writeNumber(valueTmpElement)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestArrayRefNumber(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testBooleanInterfaceAttribute(value: BooleanInterfaceDTS): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        BooleanInterfaceDTS_serializer.write(thisSerializer, value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestBooleanInterface(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testNumberInterfaceAttribute(value: NumberInterfaceDTS): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NumberInterfaceDTS_serializer.write(thisSerializer, value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestNumberInterface(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testStringInterfaceAttribute(value: StringInterfaceDTS): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        StringInterfaceDTS_serializer.write(thisSerializer, value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestStringInterface(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testUnionInterfaceAttribute(value: UnionInterfaceDTS): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        UnionInterfaceDTS_serializer.write(thisSerializer, value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionInterface_UnionInterfaceDTS(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testUnionOptionalAttribute(value: UnionOptionalInterfaceDTS): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        UnionOptionalInterfaceDTS_serializer.write(thisSerializer, value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestUnionOptional_UnionOptionalInterfaceDTS(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testTupleInterfaceAttribute(value: TupleInterfaceDTS): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TupleInterfaceDTS_serializer.write(thisSerializer, value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestTupleInterface(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testArrayRefNumberInterfaceAttribute(value: ArrayRefNumberInterfaceDTS): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ArrayRefNumberInterfaceDTS_serializer.write(thisSerializer, value)
        ArkUIGeneratedNativeModule._TestAttribute_setTestArrayRefNumberInterface(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testBooleanInterfaceOptionAttribute(value: Option<BooleanInterfaceDTS>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            BooleanInterfaceDTS_serializer.write(thisSerializer, valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestBooleanInterfaceOption(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testBooleanInterfaceArrayAttribute(value: ArrayList<BooleanInterfaceDTS>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size))
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: BooleanInterfaceDTS = value[Int64(valueCounterI)]
            BooleanInterfaceDTS_serializer.write(thisSerializer, valueTmpElement)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestBooleanInterfaceArray(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testBooleanInterfaceArrayRefAttribute(value: ArrayList<BooleanInterfaceDTS>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(value.size))
        for (valueCounterI in 0..value.size) {
            let valueTmpElement: BooleanInterfaceDTS = value[Int64(valueCounterI)]
            BooleanInterfaceDTS_serializer.write(thisSerializer, valueTmpElement)
        }
        ArkUIGeneratedNativeModule._TestAttribute_setTestBooleanInterfaceArrayRef(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public func testInterfaceMixedAttribute(v1: UnionInterfaceDTS, v2: Float64, v3: TupleInterfaceDTS): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        UnionInterfaceDTS_serializer.write(thisSerializer, v1)
        TupleInterfaceDTS_serializer.write(thisSerializer, v3)
        ArkUIGeneratedNativeModule._TestAttribute_setTestInterfaceMixed(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), v2)
        thisSerializer.release()
    }
}
