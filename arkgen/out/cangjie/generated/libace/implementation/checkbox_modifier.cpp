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
namespace CheckboxModifier {
Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                Ark_Int32 flags)
{
    return {};
}
} // CheckboxModifier
namespace CheckboxInterfaceModifier {
void SetCheckboxOptionsImpl(Ark_NativePointer node,
                            const Opt_CheckboxOptions* options)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = options ? Converter::OptConvert<type>(*options) : std::nullopt;
    // CheckboxModelNG::SetSetCheckboxOptions(frameNode, convValue);
}
} // CheckboxInterfaceModifier
namespace CheckboxAttributeModifier {
void SetSelectImpl(Ark_NativePointer node,
                   Ark_Boolean value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    auto convValue = Converter::Convert<bool>(value);
    // CheckboxModelNG::SetSetSelect(frameNode, convValue);
}
void SetSelectedColorImpl(Ark_NativePointer node,
                          const Ark_ResourceColor* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // CheckboxModelNG::SetSetSelectedColor(frameNode, convValue);
}
void SetShapeImpl(Ark_NativePointer node,
                  Ark_CheckBoxShape value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(value);
    //auto convValue = Converter::OptConvert<type>(value); // for enums
    // CheckboxModelNG::SetSetShape(frameNode, convValue);
}
void SetUnselectedColorImpl(Ark_NativePointer node,
                            const Ark_ResourceColor* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // CheckboxModelNG::SetSetUnselectedColor(frameNode, convValue);
}
void SetMarkImpl(Ark_NativePointer node,
                 const Ark_MarkStyle* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // CheckboxModelNG::SetSetMark(frameNode, convValue);
}
void SetOnChangeImpl(Ark_NativePointer node,
                     const Callback_Boolean_Void* callback_)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback_);
    //auto convValue = Converter::OptConvert<type_name>(*callback_);
    // CheckboxModelNG::SetSetOnChange(frameNode, convValue);
}
void Set_onChangeEvent_selectImpl(Ark_NativePointer node,
                                  const Callback_Number_Void* callback)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback);
    //auto convValue = Converter::OptConvert<type_name>(*callback);
    // CheckboxModelNG::SetSet_onChangeEvent_select(frameNode, convValue);
}
} // CheckboxAttributeModifier
const GENERATED_ArkUICheckboxModifier* GetCheckboxModifier()
{
    static const GENERATED_ArkUICheckboxModifier ArkUICheckboxModifierImpl {
        CheckboxModifier::ConstructImpl,
        CheckboxInterfaceModifier::SetCheckboxOptionsImpl,
        CheckboxAttributeModifier::SetSelectImpl,
        CheckboxAttributeModifier::SetSelectedColorImpl,
        CheckboxAttributeModifier::SetShapeImpl,
        CheckboxAttributeModifier::SetUnselectedColorImpl,
        CheckboxAttributeModifier::SetMarkImpl,
        CheckboxAttributeModifier::SetOnChangeImpl,
        CheckboxAttributeModifier::Set_onChangeEvent_selectImpl,
    };
    return &ArkUICheckboxModifierImpl;
}

}
