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

#include "core/components_ng/base/frame_node.h"
#include "core/interfaces/native/utility/converter.h"
#include "arkoala_api_generated.h"

namespace OHOS::Ace::NG::GeneratedModifier {
namespace TestModifier {
Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                Ark_Int32 flags)
{
    return {};
}
} // TestModifier
namespace TestInterfaceModifier {
void SetTestOptionsImpl(Ark_NativePointer node)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(undefined);
    //auto convValue = Converter::OptConvert<type>(undefined); // for enums
    // TestModelNG::SetSetTestOptions(frameNode, convValue);
}
} // TestInterfaceModifier
namespace TestAttributeModifier {
void SetTestBooleanImpl(Ark_NativePointer node,
                        Ark_Boolean value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    auto convValue = Converter::Convert<bool>(value);
    // TestModelNG::SetSetTestBoolean(frameNode, convValue);
}
void SetTestNumberImpl(Ark_NativePointer node,
                       const Ark_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestNumber(frameNode, convValue);
}
void SetTestStringImpl(Ark_NativePointer node,
                       const Ark_String* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    auto convValue = Converter::Convert<std::string>(*value);
    // TestModelNG::SetSetTestString(frameNode, convValue);
}
void SetTestEnumImpl(Ark_NativePointer node,
                     Ark_EnumDTS value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(value);
    //auto convValue = Converter::OptConvert<type>(value); // for enums
    // TestModelNG::SetSetTestEnum(frameNode, convValue);
}
void SetTestBasicMixImpl(Ark_NativePointer node,
                         const Ark_Number* v1,
                         const Ark_String* v2,
                         const Ark_Number* v3)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(v1);
    //auto convValue = Converter::OptConvert<type>(v1); // for enums
    // TestModelNG::SetSetTestBasicMix(frameNode, convValue);
}
void SetTestBooleanUndefinedImpl(Ark_NativePointer node,
                                 const Opt_Boolean* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = value ? Converter::OptConvert<type>(*value) : std::nullopt;
    // TestModelNG::SetSetTestBooleanUndefined(frameNode, convValue);
}
void SetTestNumberUndefinedImpl(Ark_NativePointer node,
                                const Opt_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = value ? Converter::OptConvert<type>(*value) : std::nullopt;
    // TestModelNG::SetSetTestNumberUndefined(frameNode, convValue);
}
void SetTestStringUndefinedImpl(Ark_NativePointer node,
                                const Opt_String* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = value ? Converter::OptConvert<type>(*value) : std::nullopt;
    // TestModelNG::SetSetTestStringUndefined(frameNode, convValue);
}
void SetTestEnumUndefinedImpl(Ark_NativePointer node,
                              const Opt_EnumDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = value ? Converter::OptConvert<type>(*value) : std::nullopt;
    // TestModelNG::SetSetTestEnumUndefined(frameNode, convValue);
}
void SetTestFunctionNumberVoidImpl(Ark_NativePointer node,
                                   const Callback_Number_Void* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestFunctionNumberVoid(frameNode, convValue);
}
void SetTestUnionNumberEnumImpl(Ark_NativePointer node,
                                const Ark_Number* val)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(val);
    //auto convValue = Converter::OptConvert<type_name>(*val);
    // TestModelNG::SetSetTestUnionNumberEnum(frameNode, convValue);
}
void SetTestUnionNumberEnumImpl(Ark_NativePointer node,
                                Ark_EnumDTS val)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(val);
    //auto convValue = Converter::OptConvert<type>(val); // for enums
    // TestModelNG::SetSetTestUnionNumberEnum(frameNode, convValue);
}
void SetTestUnionBooleanStringImpl(Ark_NativePointer node,
                                   Ark_Boolean val)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    auto convValue = Converter::Convert<bool>(val);
    // TestModelNG::SetSetTestUnionBooleanString(frameNode, convValue);
}
void SetTestUnionBooleanStringImpl(Ark_NativePointer node,
                                   const Ark_String* val)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(val);
    auto convValue = Converter::Convert<std::string>(*val);
    // TestModelNG::SetSetTestUnionBooleanString(frameNode, convValue);
}
void SetTestUnionStringNumberImpl(Ark_NativePointer node,
                                  const Ark_Number* val)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(val);
    //auto convValue = Converter::OptConvert<type_name>(*val);
    // TestModelNG::SetSetTestUnionStringNumber(frameNode, convValue);
}
void SetTestUnionStringNumberImpl(Ark_NativePointer node,
                                  const Ark_String* val)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(val);
    auto convValue = Converter::Convert<std::string>(*val);
    // TestModelNG::SetSetTestUnionStringNumber(frameNode, convValue);
}
void SetTestUnionBooleanStringNumberUndefinedImpl(Ark_NativePointer node,
                                                  const Opt_Number* val)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = val ? Converter::OptConvert<type>(*val) : std::nullopt;
    // TestModelNG::SetSetTestUnionBooleanStringNumberUndefined(frameNode, convValue);
}
void SetTestUnionWithGenericArrayImpl(Ark_NativePointer node,
                                      const Ark_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestUnionWithGenericArray(frameNode, convValue);
}
void SetTestUnionWithArrayTypeImpl(Ark_NativePointer node,
                                   const Ark_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestUnionWithArrayType(frameNode, convValue);
}
void SetTestBooleanArrayImpl(Ark_NativePointer node,
                             const Array_Boolean* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestBooleanArray(frameNode, convValue);
}
void SetTestNumberArrayImpl(Ark_NativePointer node,
                            const Array_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestNumberArray(frameNode, convValue);
}
void SetTestStringArrayImpl(Ark_NativePointer node,
                            const Array_String* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestStringArray(frameNode, convValue);
}
void SetTestEnumArrayImpl(Ark_NativePointer node,
                          const Array_EnumDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestEnumArray(frameNode, convValue);
}
void SetTestArrayMixImpl(Ark_NativePointer node,
                         const Array_Number* v1,
                         const Array_String* v2,
                         const Array_EnumDTS* v3)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(v1);
    //auto convValue = Converter::OptConvert<type>(v1); // for enums
    // TestModelNG::SetSetTestArrayMix(frameNode, convValue);
}
void SetTestTupleBooleanNumberImpl(Ark_NativePointer node,
                                   const Ark_CustomObject* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestTupleBooleanNumber(frameNode, convValue);
}
void SetTestTupleNumberStringEnumImpl(Ark_NativePointer node,
                                      const Ark_CustomObject* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestTupleNumberStringEnum(frameNode, convValue);
}
void SetTestTupleOptionalImpl(Ark_NativePointer node,
                              const Ark_CustomObject* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestTupleOptional(frameNode, convValue);
}
void SetTestTupleUnionImpl(Ark_NativePointer node,
                           const Ark_CustomObject* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestTupleUnion(frameNode, convValue);
}
void SetTestArrayRefBooleanImpl(Ark_NativePointer node,
                                const Array_Boolean* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestArrayRefBoolean(frameNode, convValue);
}
void SetTestArrayRefNumberImpl(Ark_NativePointer node,
                               const Array_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestArrayRefNumber(frameNode, convValue);
}
void SetTestBooleanInterfaceImpl(Ark_NativePointer node,
                                 const Ark_BooleanInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestBooleanInterface(frameNode, convValue);
}
void SetTestNumberInterfaceImpl(Ark_NativePointer node,
                                const Ark_NumberInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestNumberInterface(frameNode, convValue);
}
void SetTestStringInterfaceImpl(Ark_NativePointer node,
                                const Ark_StringInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestStringInterface(frameNode, convValue);
}
void SetTestUnionInterfaceImpl(Ark_NativePointer node,
                               const Ark_UnionInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestUnionInterface(frameNode, convValue);
}
void SetTestUnionOptionalImpl(Ark_NativePointer node,
                              const Ark_UnionOptionalInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestUnionOptional(frameNode, convValue);
}
void SetTestTupleInterfaceImpl(Ark_NativePointer node,
                               const Ark_TupleInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestTupleInterface(frameNode, convValue);
}
void SetTestArrayRefNumberInterfaceImpl(Ark_NativePointer node,
                                        const Ark_ArrayRefNumberInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestArrayRefNumberInterface(frameNode, convValue);
}
void SetTestBooleanInterfaceOptionImpl(Ark_NativePointer node,
                                       const Opt_BooleanInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = value ? Converter::OptConvert<type>(*value) : std::nullopt;
    // TestModelNG::SetSetTestBooleanInterfaceOption(frameNode, convValue);
}
void SetTestBooleanInterfaceArrayImpl(Ark_NativePointer node,
                                      const Array_BooleanInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestBooleanInterfaceArray(frameNode, convValue);
}
void SetTestBooleanInterfaceArrayRefImpl(Ark_NativePointer node,
                                         const Array_BooleanInterfaceDTS* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TestModelNG::SetSetTestBooleanInterfaceArrayRef(frameNode, convValue);
}
void SetTestInterfaceMixedImpl(Ark_NativePointer node,
                               const Ark_UnionInterfaceDTS* v1,
                               const Ark_Number* v2,
                               const Ark_TupleInterfaceDTS* v3)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(v1);
    //auto convValue = Converter::OptConvert<type>(v1); // for enums
    // TestModelNG::SetSetTestInterfaceMixed(frameNode, convValue);
}
} // TestAttributeModifier
const GENERATED_ArkUITestModifier* GetTestModifier()
{
    static const GENERATED_ArkUITestModifier ArkUITestModifierImpl {
        TestModifier::ConstructImpl,
        TestInterfaceModifier::SetTestOptionsImpl,
        TestAttributeModifier::SetTestBooleanImpl,
        TestAttributeModifier::SetTestNumberImpl,
        TestAttributeModifier::SetTestStringImpl,
        TestAttributeModifier::SetTestEnumImpl,
        TestAttributeModifier::SetTestBasicMixImpl,
        TestAttributeModifier::SetTestBooleanUndefinedImpl,
        TestAttributeModifier::SetTestNumberUndefinedImpl,
        TestAttributeModifier::SetTestStringUndefinedImpl,
        TestAttributeModifier::SetTestEnumUndefinedImpl,
        TestAttributeModifier::SetTestFunctionNumberVoidImpl,
        TestAttributeModifier::SetTestUnionNumberEnumImpl,
        TestAttributeModifier::SetTestUnionNumberEnumImpl,
        TestAttributeModifier::SetTestUnionBooleanStringImpl,
        TestAttributeModifier::SetTestUnionBooleanStringImpl,
        TestAttributeModifier::SetTestUnionStringNumberImpl,
        TestAttributeModifier::SetTestUnionStringNumberImpl,
        TestAttributeModifier::SetTestUnionBooleanStringNumberUndefinedImpl,
        TestAttributeModifier::SetTestUnionWithGenericArrayImpl,
        TestAttributeModifier::SetTestUnionWithArrayTypeImpl,
        TestAttributeModifier::SetTestBooleanArrayImpl,
        TestAttributeModifier::SetTestNumberArrayImpl,
        TestAttributeModifier::SetTestStringArrayImpl,
        TestAttributeModifier::SetTestEnumArrayImpl,
        TestAttributeModifier::SetTestArrayMixImpl,
        TestAttributeModifier::SetTestTupleBooleanNumberImpl,
        TestAttributeModifier::SetTestTupleNumberStringEnumImpl,
        TestAttributeModifier::SetTestTupleOptionalImpl,
        TestAttributeModifier::SetTestTupleUnionImpl,
        TestAttributeModifier::SetTestArrayRefBooleanImpl,
        TestAttributeModifier::SetTestArrayRefNumberImpl,
        TestAttributeModifier::SetTestBooleanInterfaceImpl,
        TestAttributeModifier::SetTestNumberInterfaceImpl,
        TestAttributeModifier::SetTestStringInterfaceImpl,
        TestAttributeModifier::SetTestUnionInterfaceImpl,
        TestAttributeModifier::SetTestUnionOptionalImpl,
        TestAttributeModifier::SetTestTupleInterfaceImpl,
        TestAttributeModifier::SetTestArrayRefNumberInterfaceImpl,
        TestAttributeModifier::SetTestBooleanInterfaceOptionImpl,
        TestAttributeModifier::SetTestBooleanInterfaceArrayImpl,
        TestAttributeModifier::SetTestBooleanInterfaceArrayRefImpl,
        TestAttributeModifier::SetTestInterfaceMixedImpl,
    };
    return &ArkUITestModifierImpl;
}

}
