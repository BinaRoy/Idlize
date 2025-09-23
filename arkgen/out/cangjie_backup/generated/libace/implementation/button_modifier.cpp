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
namespace ButtonModifier {
Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                Ark_Int32 flags)
{
    return {};
}
} // ButtonModifier
namespace ButtonInterfaceModifier {
void SetButtonOptionsImpl(Ark_NativePointer node)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(undefined);
    //auto convValue = Converter::OptConvert<type>(undefined); // for enums
    // ButtonModelNG::SetSetButtonOptions(frameNode, convValue);
}
} // ButtonInterfaceModifier
namespace ButtonAttributeModifier {
void SetTypeImpl(Ark_NativePointer node,
                 Ark_ButtonType value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(value);
    //auto convValue = Converter::OptConvert<type>(value); // for enums
    // ButtonModelNG::SetSetType(frameNode, convValue);
}
void SetFontColorImpl(Ark_NativePointer node,
                      const Ark_ResourceColor* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // ButtonModelNG::SetSetFontColor(frameNode, convValue);
}
void SetLabelStyleImpl(Ark_NativePointer node,
                       const Ark_LabelStyle* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // ButtonModelNG::SetSetLabelStyle(frameNode, convValue);
}
} // ButtonAttributeModifier
const GENERATED_ArkUIButtonModifier* GetButtonModifier()
{
    static const GENERATED_ArkUIButtonModifier ArkUIButtonModifierImpl {
        ButtonModifier::ConstructImpl,
        ButtonInterfaceModifier::SetButtonOptionsImpl,
        ButtonAttributeModifier::SetTypeImpl,
        ButtonAttributeModifier::SetFontColorImpl,
        ButtonAttributeModifier::SetLabelStyleImpl,
    };
    return &ArkUIButtonModifierImpl;
}

}
