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
namespace TextInputModifier {
Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                Ark_Int32 flags)
{
    return {};
}
} // TextInputModifier
namespace TextInputInterfaceModifier {
void SetTextInputOptionsImpl(Ark_NativePointer node,
                             const Opt_TextInputOptions* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = value ? Converter::OptConvert<type>(*value) : std::nullopt;
    // TextInputModelNG::SetSetTextInputOptions(frameNode, convValue);
}
} // TextInputInterfaceModifier
namespace TextInputAttributeModifier {
void SetTypeImpl(Ark_NativePointer node,
                 Ark_InputType value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(value);
    //auto convValue = Converter::OptConvert<type>(value); // for enums
    // TextInputModelNG::SetSetType(frameNode, convValue);
}
void SetContentTypeImpl(Ark_NativePointer node,
                        Ark_ContentType value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(value);
    //auto convValue = Converter::OptConvert<type>(value); // for enums
    // TextInputModelNG::SetSetContentType(frameNode, convValue);
}
void SetOnCopyImpl(Ark_NativePointer node,
                   const Callback_String_Void* callback_)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback_);
    //auto convValue = Converter::OptConvert<type_name>(*callback_);
    // TextInputModelNG::SetSetOnCopy(frameNode, convValue);
}
void Set_onChangeEvent_textImpl(Ark_NativePointer node,
                                const Callback_ResourceStr_Void* callback)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(callback);
    //auto convValue = Converter::OptConvert<type_name>(*callback);
    // TextInputModelNG::SetSet_onChangeEvent_text(frameNode, convValue);
}
} // TextInputAttributeModifier
const GENERATED_ArkUITextInputModifier* GetTextInputModifier()
{
    static const GENERATED_ArkUITextInputModifier ArkUITextInputModifierImpl {
        TextInputModifier::ConstructImpl,
        TextInputInterfaceModifier::SetTextInputOptionsImpl,
        TextInputAttributeModifier::SetTypeImpl,
        TextInputAttributeModifier::SetContentTypeImpl,
        TextInputAttributeModifier::SetOnCopyImpl,
        TextInputAttributeModifier::Set_onChangeEvent_textImpl,
    };
    return &ArkUITextInputModifierImpl;
}

}
