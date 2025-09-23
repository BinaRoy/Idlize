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
namespace CommonMethodModifier {
Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                Ark_Int32 flags)
{
    return {};
}
void SetBackdropBlurImpl(Ark_NativePointer node,
                         const Ark_Number* value,
                         const Opt_BlurOptions* options)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(value);
    //auto convValue = Converter::OptConvert<type>(value); // for enums
    // CommonMethodModelNG::SetSetBackdropBlur(frameNode, convValue);
}
void SetWidthImpl(Ark_NativePointer node,
                  const Ark_Length* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // CommonMethodModelNG::SetSetWidth(frameNode, convValue);
}
void SetHeightImpl(Ark_NativePointer node,
                   const Ark_Length* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // CommonMethodModelNG::SetSetHeight(frameNode, convValue);
}
void SetKeyImpl(Ark_NativePointer node,
                const Ark_String* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    auto convValue = Converter::Convert<std::string>(*value);
    // CommonMethodModelNG::SetSetKey(frameNode, convValue);
}
void SetRestoreIdImpl(Ark_NativePointer node,
                      const Ark_Number* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // CommonMethodModelNG::SetSetRestoreId(frameNode, convValue);
}
void SetPaddingImpl(Ark_NativePointer node,
                    const Ark_Padding* value)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    CHECK_NULL_VOID(value);
    //auto convValue = Converter::OptConvert<type_name>(*value);
    // CommonMethodModelNG::SetSetPadding(frameNode, convValue);
}
void SetBindSheetImpl(Ark_NativePointer node,
                      Ark_Boolean isShow,
                      const Opt_SheetOptions* options)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(isShow);
    //auto convValue = Converter::OptConvert<type>(isShow); // for enums
    // CommonMethodModelNG::SetSetBindSheet(frameNode, convValue);
}
void SetBackgroundBlurStyleImpl(Ark_NativePointer node,
                                Ark_BlurStyle value,
                                const Opt_BackgroundBlurStyleOptions* options)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(value);
    //auto convValue = Converter::OptConvert<type>(value); // for enums
    // CommonMethodModelNG::SetSetBackgroundBlurStyle(frameNode, convValue);
}
void SetDragPreviewOptionsImpl(Ark_NativePointer node,
                               const Ark_DragPreviewOptions* value,
                               const Opt_DragInteractionOptions* options)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(value);
    //auto convValue = Converter::OptConvert<type>(value); // for enums
    // CommonMethodModelNG::SetSetDragPreviewOptions(frameNode, convValue);
}
void SetOnClick0Impl(Ark_NativePointer node,
                     const Opt_Callback_ClickEvent_Void* event)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = event ? Converter::OptConvert<type>(*event) : std::nullopt;
    // CommonMethodModelNG::SetSetOnClick0(frameNode, convValue);
}
void SetOnClick1Impl(Ark_NativePointer node,
                     const Opt_Callback_ClickEvent_Void* event,
                     const Opt_Number* distanceThreshold)
{
    auto frameNode = reinterpret_cast<FrameNode *>(node);
    CHECK_NULL_VOID(frameNode);
    //auto convValue = Converter::Convert<type>(event);
    //auto convValue = Converter::OptConvert<type>(event); // for enums
    // CommonMethodModelNG::SetSetOnClick1(frameNode, convValue);
}
} // CommonMethodModifier
const GENERATED_ArkUICommonMethodModifier* GetCommonMethodModifier()
{
    static const GENERATED_ArkUICommonMethodModifier ArkUICommonMethodModifierImpl {
        CommonMethodModifier::ConstructImpl,
        CommonMethodModifier::SetBackdropBlurImpl,
        CommonMethodModifier::SetWidthImpl,
        CommonMethodModifier::SetHeightImpl,
        CommonMethodModifier::SetKeyImpl,
        CommonMethodModifier::SetRestoreIdImpl,
        CommonMethodModifier::SetPaddingImpl,
        CommonMethodModifier::SetBindSheetImpl,
        CommonMethodModifier::SetBackgroundBlurStyleImpl,
        CommonMethodModifier::SetDragPreviewOptionsImpl,
        CommonMethodModifier::SetOnClick0Impl,
        CommonMethodModifier::SetOnClick1Impl,
    };
    return &ArkUICommonMethodModifierImpl;
}

}
