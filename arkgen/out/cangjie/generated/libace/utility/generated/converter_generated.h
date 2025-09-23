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

/*
 * WARNING! THIS FILE IS AUTO-GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!
 */

#ifndef CONVERTER_GENERATED_H
#define CONVERTER_GENERATED_H

#include <optional>
#include <cstdlib>
#include "arkoala_api_generated.h"
#include "base/log/log_wrapper.h"

#define SELECTOR_ID_0 0
#define SELECTOR_ID_1 1
#define SELECTOR_ID_2 2
#define SELECTOR_ID_3 3
#define SELECTOR_ID_4 4
#define SELECTOR_ID_5 5
#define SELECTOR_ID_6 6
#define SELECTOR_ID_7 7
#define SELECTOR_ID_8 8
#define SELECTOR_ID_9 9
#define SELECTOR_ID_10 10
#define SELECTOR_ID_11 11
#define SELECTOR_ID_12 12
#define SELECTOR_ID_13 13
#define SELECTOR_ID_14 14
#define SELECTOR_ID_15 15

namespace OHOS::Ace::NG::Converter {

template<typename T, typename P>
void AssignTo(std::optional<T>& dst, const P& src);

template<typename T, typename P>
void AssignUnionTo(std::optional<T>& dst, const P& src);

template<typename T, typename P>
void AssignOptionalTo(std::optional<T>& dst, const P& src);

template<typename T>
void AssignUnionTo(std::optional<T>& dst,
                   const Ark_Union_Number_String& src)
{
    switch (src.selector) {
        case SELECTOR_ID_0: AssignTo(dst, src.value0); break;
        case SELECTOR_ID_1: AssignTo(dst, src.value1); break;
        default:
        {
            LOGE("Unexpected src->selector: %{public}d\n", src.selector);
            return;
        }
    }
}

template<typename T>
void AssignUnionTo(std::optional<T>& dst,
                   const Ark_ResourceColor& src)
{
    switch (src.selector) {
        case SELECTOR_ID_0: AssignTo(dst, src.value0); break;
        case SELECTOR_ID_1: AssignTo(dst, src.value1); break;
        case SELECTOR_ID_2: AssignTo(dst, src.value2); break;
        case SELECTOR_ID_3: AssignTo(dst, src.value3); break;
        default:
        {
            LOGE("Unexpected src->selector: %{public}d\n", src.selector);
            return;
        }
    }
}

template<typename T>
void AssignUnionTo(std::optional<T>& dst,
                   const Ark_ResourceStr& src)
{
    switch (src.selector) {
        case SELECTOR_ID_0: AssignTo(dst, src.value0); break;
        case SELECTOR_ID_1: AssignTo(dst, src.value1); break;
        default:
        {
            LOGE("Unexpected src->selector: %{public}d\n", src.selector);
            return;
        }
    }
}

template<typename T>
void AssignUnionTo(std::optional<T>& dst,
                   const Ark_Union_Number_Array_Number& src)
{
    switch (src.selector) {
        case SELECTOR_ID_0: AssignTo(dst, src.value0); break;
        case SELECTOR_ID_1: AssignTo(dst, src.value1); break;
        default:
        {
            LOGE("Unexpected src->selector: %{public}d\n", src.selector);
            return;
        }
    }
}

template<typename T>
void AssignUnionTo(std::optional<T>& dst,
                   const Ark_Union_String_Array_String& src)
{
    switch (src.selector) {
        case SELECTOR_ID_0: AssignTo(dst, src.value0); break;
        case SELECTOR_ID_1: AssignTo(dst, src.value1); break;
        default:
        {
            LOGE("Unexpected src->selector: %{public}d\n", src.selector);
            return;
        }
    }
}

template<typename T>
void AssignUnionTo(std::optional<T>& dst,
                   const Ark_Dimension& src)
{
    switch (src.selector) {
        case SELECTOR_ID_0: AssignTo(dst, src.value0); break;
        case SELECTOR_ID_1: AssignTo(dst, src.value1); break;
        case SELECTOR_ID_2: AssignTo(dst, src.value2); break;
        default:
        {
            LOGE("Unexpected src->selector: %{public}d\n", src.selector);
            return;
        }
    }
}

template<typename T>
void AssignUnionTo(std::optional<T>& dst,
                   const Ark_Length& src)
{
    switch (src.selector) {
        case SELECTOR_ID_0: AssignTo(dst, src.value0); break;
        case SELECTOR_ID_1: AssignTo(dst, src.value1); break;
        case SELECTOR_ID_2: AssignTo(dst, src.value2); break;
        default:
        {
            LOGE("Unexpected src->selector: %{public}d\n", src.selector);
            return;
        }
    }
}

template<typename T, typename P>
void AssignLiteralTo(std::optional<T>& dst, const P& src);

template<typename T>
void AssignLiteralTo(std::optional<T>& dst,
                     const Ark_EdgeStyles& src)
{
    AssignTo(dst, src.top);
}

template<typename T>
void AssignLiteralTo(std::optional<T>& dst,
                     const Ark_EdgeColors& src)
{
    AssignTo(dst, src.top);
}

template<typename T>
void AssignLiteralTo(std::optional<T>& dst,
                     const Ark_Offset& src)
{
    AssignTo(dst, src.dx);
}

template<typename T>
void AssignLiteralTo(std::optional<T>& dst,
                     const Ark_BorderRadiuses& src)
{
    AssignTo(dst, src.topLeft);
}

template<typename T>
void AssignLiteralTo(std::optional<T>& dst,
                     const Ark_EdgeWidths& src)
{
    AssignTo(dst, src.top);
}

template<typename T>
void AssignLiteralTo(std::optional<T>& dst,
                     const Ark_Padding& src)
{
    AssignTo(dst, src.top);
}


#define ASSIGN_OPT(name) \
template<typename T> \
void AssignOptionalTo(std::optional<T>& dst, const name& src) { \
    if (src.tag != INTEROP_TAG_UNDEFINED) { \
        AssignUnionTo(dst, src.value); \
    } \
} \
template<typename T> \
void WithOptional(const name& src, T call) { \
    if (src.tag != INTEROP_TAG_UNDEFINED) { \
        call(src.value); \
    } \
}
ASSIGN_OPT(Opt_Int32)
ASSIGN_OPT(Opt_AdaptiveColor)
ASSIGN_OPT(Opt_Axis)
ASSIGN_OPT(Opt_BaseShape)
ASSIGN_OPT(Opt_BlankAttribute)
ASSIGN_OPT(Opt_BlurStyle)
ASSIGN_OPT(Opt_BlurStyleActivePolicy)
ASSIGN_OPT(Opt_Boolean)
ASSIGN_OPT(Opt_BooleanInterfaceDTS)
ASSIGN_OPT(Opt_BorderStyle)
ASSIGN_OPT(Opt_Buffer)
ASSIGN_OPT(Opt_BuilderNodeOps)
ASSIGN_OPT(Opt_ButtonAttribute)
ASSIGN_OPT(Opt_ButtonType)
ASSIGN_OPT(Opt_CheckboxAttribute)
ASSIGN_OPT(Opt_CheckBoxShape)
ASSIGN_OPT(Opt_Color)
ASSIGN_OPT(Opt_ColorFilter)
ASSIGN_OPT(Opt_ColoringStrategy)
ASSIGN_OPT(Opt_ColumnAttribute)
ASSIGN_OPT(Opt_CommonShape)
ASSIGN_OPT(Opt_ContentType)
ASSIGN_OPT(Opt_Curve)
ASSIGN_OPT(Opt_CustomDialogController)
ASSIGN_OPT(Opt_CustomObject)
ASSIGN_OPT(Opt_DragPreviewMode)
ASSIGN_OPT(Opt_DrawContext)
ASSIGN_OPT(Opt_EmbeddedType)
ASSIGN_OPT(Opt_EnumDTS)
ASSIGN_OPT(Opt_Float32)
ASSIGN_OPT(Opt_FontStyle)
ASSIGN_OPT(Opt_FontWeight)
ASSIGN_OPT(Opt_HorizontalAlign)
ASSIGN_OPT(Opt_ICurve)
ASSIGN_OPT(Opt_InputType)
ASSIGN_OPT(Opt_Int64)
ASSIGN_OPT(Opt_LayoutSafeAreaEdge)
ASSIGN_OPT(Opt_LayoutSafeAreaType)
ASSIGN_OPT(Opt_ListAttribute)
ASSIGN_OPT(Opt_NativePointer)
ASSIGN_OPT(Opt_NavigationAttribute)
ASSIGN_OPT(Opt_NavigationMode)
ASSIGN_OPT(Opt_NavigationTitleMode)
ASSIGN_OPT(Opt_NavPathStack)
ASSIGN_OPT(Opt_Number)
ASSIGN_OPT(Opt_NumberInterfaceDTS)
ASSIGN_OPT(Opt_Object)
ASSIGN_OPT(Opt_Offset_componentutils)
ASSIGN_OPT(Opt_PerfMonitorActionType)
ASSIGN_OPT(Opt_PerfMonitorSourceType)
ASSIGN_OPT(Opt_RotateResult)
ASSIGN_OPT(Opt_ScaleResult)
ASSIGN_OPT(Opt_Scene)
ASSIGN_OPT(Opt_ShadowStyle)
ASSIGN_OPT(Opt_ShadowType)
ASSIGN_OPT(Opt_SheetMode)
ASSIGN_OPT(Opt_SheetSize)
ASSIGN_OPT(Opt_SheetType)
ASSIGN_OPT(Opt_SizeResult)
ASSIGN_OPT(Opt_SourceTool)
ASSIGN_OPT(Opt_SourceType)
ASSIGN_OPT(Opt_String)
ASSIGN_OPT(Opt_StringInterfaceDTS)
ASSIGN_OPT(Opt_TestAttribute)
ASSIGN_OPT(Opt_TextAlign)
ASSIGN_OPT(Opt_TextCase)
ASSIGN_OPT(Opt_TextHeightAdaptivePolicy)
ASSIGN_OPT(Opt_TextInputAttribute)
ASSIGN_OPT(Opt_TextOverflow)
ASSIGN_OPT(Opt_TextPickerAttribute)
ASSIGN_OPT(Opt_TextPickerResult)
ASSIGN_OPT(Opt_ThemeColorMode)
ASSIGN_OPT(Opt_TitleHeight)
ASSIGN_OPT(Opt_TranslateResult)
ASSIGN_OPT(Opt_Tuple_Boolean_Number)
ASSIGN_OPT(Opt_Union_Number_String)
ASSIGN_OPT(Opt_UnionInterfaceDTS)
ASSIGN_OPT(Opt_UnionOptionalInterfaceDTS)
ASSIGN_OPT(Opt_VerticalAlign)
ASSIGN_OPT(Opt_WordBreak)
ASSIGN_OPT(Opt_WorkerEventListener)
ASSIGN_OPT(Opt_Array_Boolean)
ASSIGN_OPT(Opt_Array_BooleanInterfaceDTS)
ASSIGN_OPT(Opt_Array_Buffer)
ASSIGN_OPT(Opt_Array_CustomObject)
ASSIGN_OPT(Opt_Array_EnumDTS)
ASSIGN_OPT(Opt_Array_Number)
ASSIGN_OPT(Opt_Array_Object)
ASSIGN_OPT(Opt_Array_String)
ASSIGN_OPT(Opt_AsyncCallback_image_PixelMap_Void)
ASSIGN_OPT(Opt_ButtonModifierBuilder)
ASSIGN_OPT(Opt_Callback_Boolean_Void)
ASSIGN_OPT(Opt_Callback_ClickEvent_Void)
ASSIGN_OPT(Opt_Callback_CreateItem)
ASSIGN_OPT(Opt_Callback_DrawContext_Void)
ASSIGN_OPT(Opt_Callback_Extender_OnFinish)
ASSIGN_OPT(Opt_Callback_Extender_OnProgress)
ASSIGN_OPT(Opt_Callback_NavigationTitleMode_Void)
ASSIGN_OPT(Opt_Callback_Number_Void)
ASSIGN_OPT(Opt_Callback_onMeasureSize_SizeResult)
ASSIGN_OPT(Opt_Callback_onPlaceChildren_Void)
ASSIGN_OPT(Opt_Callback_Pointer_Void)
ASSIGN_OPT(Opt_Callback_RangeUpdate)
ASSIGN_OPT(Opt_Callback_ResourceStr_Void)
ASSIGN_OPT(Opt_Callback_SizeResult_Void)
ASSIGN_OPT(Opt_Callback_StateStylesChange)
ASSIGN_OPT(Opt_Callback_String_Number_Void)
ASSIGN_OPT(Opt_Callback_String_Void)
ASSIGN_OPT(Opt_Callback_TextPickerResult_Void)
ASSIGN_OPT(Opt_Callback_Union_Number_Array_Number_Void)
ASSIGN_OPT(Opt_Callback_Union_String_Array_String_Void)
ASSIGN_OPT(Opt_Callback_Void)
ASSIGN_OPT(Opt_CheckBoxModifierBuilder)
ASSIGN_OPT(Opt_CustomNodeBuilder)
ASSIGN_OPT(Opt_DataPanelModifierBuilder)
ASSIGN_OPT(Opt_GaugeModifierBuilder)
ASSIGN_OPT(Opt_LoadingProgressModifierBuilder)
ASSIGN_OPT(Opt_MenuItemModifierBuilder)
ASSIGN_OPT(Opt_NavExtender_OnUpdateStack)
ASSIGN_OPT(Opt_ProgressModifierBuilder)
ASSIGN_OPT(Opt_RadioModifierBuilder)
ASSIGN_OPT(Opt_RatingModifierBuilder)
ASSIGN_OPT(Opt_RestrictedWorker_onerror_Callback)
ASSIGN_OPT(Opt_RestrictedWorker_onexit_Callback)
ASSIGN_OPT(Opt_RestrictedWorker_onmessage_Callback)
ASSIGN_OPT(Opt_SearchValueCallback)
ASSIGN_OPT(Opt_SliderModifierBuilder)
ASSIGN_OPT(Opt_TextClockModifierBuilder)
ASSIGN_OPT(Opt_TextFieldValueCallback)
ASSIGN_OPT(Opt_TextPickerScrollStopCallback)
ASSIGN_OPT(Opt_TextTimerModifierBuilder)
ASSIGN_OPT(Opt_ToggleModifierBuilder)
ASSIGN_OPT(Opt_Type_TextPickerAttribute_onChange_callback)
ASSIGN_OPT(Opt_AnimateParam)
ASSIGN_OPT(Opt_ArrayRefNumberInterfaceDTS)
ASSIGN_OPT(Opt_ArrayRefTuplesInterfaceDTS)
ASSIGN_OPT(Opt_BaseEvent)
ASSIGN_OPT(Opt_BlurOptions)
ASSIGN_OPT(Opt_BuilderNodeOptions)
ASSIGN_OPT(Opt_CheckBoxConfiguration)
ASSIGN_OPT(Opt_CheckboxOptions)
ASSIGN_OPT(Opt_ClickEvent)
ASSIGN_OPT(Opt_CustomDialogBuildOptions)
ASSIGN_OPT(Opt_DoubleAnimationParam)
ASSIGN_OPT(Opt_DragInteractionOptions)
ASSIGN_OPT(Opt_DragPreviewOptions)
ASSIGN_OPT(Opt_DrawModifier)
ASSIGN_OPT(Opt_EdgeStyles)
ASSIGN_OPT(Opt_ErrorEvent)
ASSIGN_OPT(Opt_Event)
ASSIGN_OPT(Opt_LocalizedBorderRadiuses)
ASSIGN_OPT(Opt_LocalizedEdgeWidths)
ASSIGN_OPT(Opt_LocalizedPadding)
ASSIGN_OPT(Opt_Matrix4Result)
ASSIGN_OPT(Opt_MessageEvents)
ASSIGN_OPT(Opt_PostMessageOptions)
ASSIGN_OPT(Opt_Resource)
ASSIGN_OPT(Opt_ResourceColor)
ASSIGN_OPT(Opt_ResourceStr)
ASSIGN_OPT(Opt_SnapshotOptions)
ASSIGN_OPT(Opt_TextPickerOptions)
ASSIGN_OPT(Opt_TranslateOptions)
ASSIGN_OPT(Opt_TupleInterfaceDTS)
ASSIGN_OPT(Opt_Union_Number_Array_Number)
ASSIGN_OPT(Opt_Union_String_Array_String)
ASSIGN_OPT(Opt_WorkerOptions)
ASSIGN_OPT(Opt_BackgroundBlurStyleOptions)
ASSIGN_OPT(Opt_ComponentInfo)
ASSIGN_OPT(Opt_CustomDialogControllerBuilder)
ASSIGN_OPT(Opt_Dimension)
ASSIGN_OPT(Opt_EdgeColors)
ASSIGN_OPT(Opt_Length)
ASSIGN_OPT(Opt_Offset)
ASSIGN_OPT(Opt_RestrictedWorker)
ASSIGN_OPT(Opt_SheetTitleOptions)
ASSIGN_OPT(Opt_TextInputOptions)
ASSIGN_OPT(Opt_BorderRadiuses)
ASSIGN_OPT(Opt_CustomDialogControllerOptions)
ASSIGN_OPT(Opt_DividerOptions)
ASSIGN_OPT(Opt_EdgeWidths)
ASSIGN_OPT(Opt_Font)
ASSIGN_OPT(Opt_MarkStyle)
ASSIGN_OPT(Opt_Padding)
ASSIGN_OPT(Opt_Position)
ASSIGN_OPT(Opt_Rectangle)
ASSIGN_OPT(Opt_SheetOptions)
ASSIGN_OPT(Opt_SizeOptions)
ASSIGN_OPT(Opt_LabelStyle)
ASSIGN_OPT(Opt_TextPickerDialogOptions)
#undef ASSIGN_OPT
}

#endif // CONVERTER_GENERATED_H
