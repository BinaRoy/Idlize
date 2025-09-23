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
namespace TextPickerModifier {
Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                Ark_Int32 flags)
{
    return {};
}
} // TextPickerModifier
namespace TextPickerInterfaceModifier {
void SetTextPickerOptionsImpl(Ark_NativePointer node,
                              const Opt_TextPickerOptions* options)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = options ? Converter::OptConvert<type>(*options) : std::nullopt;
    // TextPickerModelNG::SetSetTextPickerOptions(frameNode, convValue);
}
} // TextPickerInterfaceModifier
namespace TextPickerAttributeModifier {
void SetDefaultPickerItemHeightImpl(Ark_NativePointer node,
                                    const Ark_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TextPickerModelNG::SetSetDefaultPickerItemHeight(frameNode, convValue);
}
void SetDefaultPickerItemHeightImpl(Ark_NativePointer node,
                                    const Ark_String* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    auto convValue = Converter::Convert<std::string>(*value);
    // TextPickerModelNG::SetSetDefaultPickerItemHeight(frameNode, convValue);
}
void SetCanLoopImpl(Ark_NativePointer node,
                    Ark_Boolean value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    auto convValue = Converter::Convert<bool>(value);
    // TextPickerModelNG::SetSetCanLoop(frameNode, convValue);
}
void SetDisappearTextStyleImpl(Ark_NativePointer node,
                               const Ark_CustomObject* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TextPickerModelNG::SetSetDisappearTextStyle(frameNode, convValue);
}
void SetTextStyleImpl(Ark_NativePointer node,
                      const Ark_CustomObject* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TextPickerModelNG::SetSetTextStyle(frameNode, convValue);
}
void SetSelectedTextStyleImpl(Ark_NativePointer node,
                              const Ark_CustomObject* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TextPickerModelNG::SetSetSelectedTextStyle(frameNode, convValue);
}
void SetOnAcceptImpl(Ark_NativePointer node,
                     const Callback_String_Number_Void* callback_)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback_);
    //auto convValue = Converter::OptConvert<type_name>(*callback_);
    // TextPickerModelNG::SetSetOnAccept(frameNode, convValue);
}
void SetOnCancelImpl(Ark_NativePointer node,
                     const Callback_Void* callback_)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback_);
    //auto convValue = Converter::OptConvert<type_name>(*callback_);
    // TextPickerModelNG::SetSetOnCancel(frameNode, convValue);
}
void SetOnChangeImpl(Ark_NativePointer node,
                     const Type_TextPickerAttribute_onChange_callback* callback_)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback_);
    //auto convValue = Converter::OptConvert<type_name>(*callback_);
    // TextPickerModelNG::SetSetOnChange(frameNode, convValue);
}
void SetOnScrollStopImpl(Ark_NativePointer node,
                         const TextPickerScrollStopCallback* callback_)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback_);
    //auto convValue = Converter::OptConvert<type_name>(*callback_);
    // TextPickerModelNG::SetSetOnScrollStop(frameNode, convValue);
}
void SetSelectedIndexImpl(Ark_NativePointer node,
                          const Ark_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TextPickerModelNG::SetSetSelectedIndex(frameNode, convValue);
}
void SetDividerImpl(Ark_NativePointer node,
                    const Opt_DividerOptions* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = value ? Converter::OptConvert<type>(*value) : std::nullopt;
    // TextPickerModelNG::SetSetDivider(frameNode, convValue);
}
void SetGradientHeightImpl(Ark_NativePointer node,
                           const Ark_Dimension* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // TextPickerModelNG::SetSetGradientHeight(frameNode, convValue);
}
void Set_onChangeEvent_selectedImpl(Ark_NativePointer node,
                                    const Callback_Union_Number_Array_Number_Void* callback)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback);
    //auto convValue = Converter::OptConvert<type_name>(*callback);
    // TextPickerModelNG::SetSet_onChangeEvent_selected(frameNode, convValue);
}
void Set_onChangeEvent_valueImpl(Ark_NativePointer node,
                                 const Callback_Union_String_Array_String_Void* callback)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback);
    //auto convValue = Converter::OptConvert<type_name>(*callback);
    // TextPickerModelNG::SetSet_onChangeEvent_value(frameNode, convValue);
}
} // TextPickerAttributeModifier
const GENERATED_ArkUITextPickerModifier* GetTextPickerModifier()
{
    static const GENERATED_ArkUITextPickerModifier ArkUITextPickerModifierImpl {
        TextPickerModifier::ConstructImpl,
        TextPickerInterfaceModifier::SetTextPickerOptionsImpl,
        TextPickerAttributeModifier::SetDefaultPickerItemHeightImpl,
        TextPickerAttributeModifier::SetDefaultPickerItemHeightImpl,
        TextPickerAttributeModifier::SetCanLoopImpl,
        TextPickerAttributeModifier::SetDisappearTextStyleImpl,
        TextPickerAttributeModifier::SetTextStyleImpl,
        TextPickerAttributeModifier::SetSelectedTextStyleImpl,
        TextPickerAttributeModifier::SetOnAcceptImpl,
        TextPickerAttributeModifier::SetOnCancelImpl,
        TextPickerAttributeModifier::SetOnChangeImpl,
        TextPickerAttributeModifier::SetOnScrollStopImpl,
        TextPickerAttributeModifier::SetSelectedIndexImpl,
        TextPickerAttributeModifier::SetDividerImpl,
        TextPickerAttributeModifier::SetGradientHeightImpl,
        TextPickerAttributeModifier::Set_onChangeEvent_selectedImpl,
        TextPickerAttributeModifier::Set_onChangeEvent_valueImpl,
    };
    return &ArkUITextPickerModifierImpl;
}

}
