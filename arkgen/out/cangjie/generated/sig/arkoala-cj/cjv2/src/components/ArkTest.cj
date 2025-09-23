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

package idlize.components
import idlize.commonPara.*

import idlize.peers.*

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public type OnTestStyleCallback = (attributes: ArkTestComponent) -> Unit
public type OnTestContentCallback = () -> Unit
public open class ArkTestComponent <: ArkCommonMethodComponent {
    protected  func getPeer(): ArkTestPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTestPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public func setTestOptions(): This {
        this.getPeer().testOptionsAttribute()
        return this
    }
    public func testBoolean(value: Bool): This {
        this.getPeer().testBooleanAttribute(value)
        return this
    }
    public func testNumber(value: Float64): This {
        this.getPeer().testNumberAttribute(value)
        return this
    }
    public func testString(value: String): This {
        this.getPeer().testStringAttribute(value)
        return this
    }
    public func testEnum(value: EnumDTS): This {
        this.getPeer().testEnumAttribute(value)
        return this
    }
    public func testBasicMix(v1: Float64, v2: String, v3: Float64): This {
        this.getPeer().testBasicMixAttribute(v1, v2, v3)
        return this
    }
    public func testBooleanUndefined(value: Bool): This {
        this.getPeer().testBooleanUndefinedAttribute(value)
        return this
    }
    public func testNumberUndefined(value: Float64): This {
        this.getPeer().testNumberUndefinedAttribute(value)
        return this
    }
    public func testStringUndefined(value: String): This {
        this.getPeer().testStringUndefinedAttribute(value)
        return this
    }
    public func testEnumUndefined(value: EnumDTS): This {
        this.getPeer().testEnumUndefinedAttribute(value)
        return this
    }
    // public func testFunctionNumberVoid(value: ValueCallback): This {
    //     this.getPeer().testFunctionNumberVoidAttribute(Some(value))
    //     return this
    // }
    public func testUnionNumberEnum(val: Float64): This {
        this.getPeer().testUnionNumberEnumAttribute(val)
        return this
    }
    public func testUnionNumberEnum(val: EnumDTS): This {
        this.getPeer().testUnionNumberEnumAttribute(val)
        return this
    }
    public func testUnionBooleanString(val: Bool): This {
        this.getPeer().testUnionBooleanStringAttribute(val)
        return this
    }
    public func testUnionBooleanString(val: String): This {
        this.getPeer().testUnionBooleanStringAttribute(val)
        return this
    }
    public func testUnionStringNumber(val: Float64): This {
        this.getPeer().testUnionStringNumberAttribute(val)
        return this
    }
    public func testUnionStringNumber(val: String): This {
        this.getPeer().testUnionStringNumberAttribute(val)
        return this
    }
    // public func testUnionBooleanStringNumberUndefined(val: Float64): This {
    //     this.getPeer().testUnionBooleanStringNumberUndefinedAttribute(val)
    //     return this
    // }
    public func testUnionWithGenericArray(value: Float64): This {
        this.getPeer().testUnionWithGenericArrayAttribute(value)
        return this
    }
    public func testUnionWithArrayType(value: Float64): This {
        this.getPeer().testUnionWithArrayTypeAttribute(value)
        return this
    }
    public func testBooleanArray(value: ArrayList<Bool>): This {
        this.getPeer().testBooleanArrayAttribute(value)
        return this
    }
    public func testNumberArray(value: ArrayList<Float64>): This {
        this.getPeer().testNumberArrayAttribute(value)
        return this
    }
    public func testStringArray(value: ArrayList<String>): This {
        this.getPeer().testStringArrayAttribute(value)
        return this
    }
    public func testEnumArray(value: ArrayList<EnumDTS>): This {
        this.getPeer().testEnumArrayAttribute(value)
        return this
    }
    public func testArrayMix(v1: ArrayList<Float64>, v2: ArrayList<String>, v3: ArrayList<EnumDTS>): This {
        this.getPeer().testArrayMixAttribute(v1, v2, v3)
        return this
    }
    public func testTupleBooleanNumber(value: (Bool, Float64)): This {
        this.getPeer().testTupleBooleanNumberAttribute(value)
        return this
    }
    public func testTupleNumberStringEnum(value: (Float64, String, EnumDTS)): This {
        this.getPeer().testTupleNumberStringEnumAttribute(value)
        return this
    }
    public func testTupleOptional(value: (Float64, String, Bool, EnumDTS)): This {
        this.getPeer().testTupleOptionalAttribute(value)
        return this
    }
    public func testTupleUnion(value: String): This {
        this.getPeer().testTupleUnionAttribute(value)
        return this
    }
    public func testArrayRefBoolean(value: ArrayList<Bool>): This {
        this.getPeer().testArrayRefBooleanAttribute(value)
        return this
    }
    public func testArrayRefNumber(value: ArrayList<Float64>): This {
        this.getPeer().testArrayRefNumberAttribute(value)
        return this
    }
    public func testBooleanInterface(value: BooleanInterfaceDTS): This {
        this.getPeer().testBooleanInterfaceAttribute(value)
        return this
    }
    public func testNumberInterface(value: NumberInterfaceDTS): This {
        this.getPeer().testNumberInterfaceAttribute(value)
        return this
    }
    public func testStringInterface(value: StringInterfaceDTS): This {
        this.getPeer().testStringInterfaceAttribute(value)
        return this
    }
    public func testUnionInterface(value: UnionInterfaceDTS): This {
        this.getPeer().testUnionInterfaceAttribute(value)
        return this
    }
    public func testUnionOptional(value: UnionOptionalInterfaceDTS): This {
        this.getPeer().testUnionOptionalAttribute(value)
        return this
    }
    public func testTupleInterface(value: TupleInterfaceDTS): This {
        this.getPeer().testTupleInterfaceAttribute(value)
        return this
    }
    public func testArrayRefNumberInterface(value: ArrayRefNumberInterfaceDTS): This {
        this.getPeer().testArrayRefNumberInterfaceAttribute(value)
        return this
    }
    public func testBooleanInterfaceOption(value: Option<BooleanInterfaceDTS>): This {
        this.getPeer().testBooleanInterfaceOptionAttribute(value)
        return this
    }
    public func testBooleanInterfaceArray(value: ArrayList<BooleanInterfaceDTS>): This {
        this.getPeer().testBooleanInterfaceArrayAttribute(value)
        return this
    }
    public func testBooleanInterfaceArrayRef(value: ArrayList<BooleanInterfaceDTS>): This {
        this.getPeer().testBooleanInterfaceArrayRefAttribute(value)
        return this
    }
    public func testInterfaceMixed(v1: UnionInterfaceDTS, v2: Float64, v3: TupleInterfaceDTS): This {
        this.getPeer().testInterfaceMixedAttribute(v1, v2, v3)
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
@Memo
public func ArkTest(
    style: Option<OnTestStyleCallback>,
    content_: Option<OnTestContentCallback>
): Unit {
    let receiver = remember<ArkTestComponent>({ => 
        ArkTestComponent()
    })
    NodeAttach<ArkTestPeer>(
        { => ArkTestPeer.create(receiver, flags: 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        }
    )
}

