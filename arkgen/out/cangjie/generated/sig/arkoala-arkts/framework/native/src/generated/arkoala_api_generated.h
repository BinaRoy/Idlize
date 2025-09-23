
/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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

#ifndef GENERATED_FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_ARKOALA_API_H
#define GENERATED_FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_ARKOALA_API_H

/**
 * THIS FILE IS GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!
 */

/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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

#ifndef _INTEROP_TYPES_H_
#define _INTEROP_TYPES_H_

#ifdef __cplusplus
  #include <cstdint>
#else
  #include <stdint.h>
#endif

#ifdef __cplusplus
extern "C" [[noreturn]]
#endif
void InteropLogFatal(const char* format, ...);
#define INTEROP_FATAL(msg, ...) do { InteropLogFatal(msg, ##__VA_ARGS__); } while (0)

typedef enum InteropTag
{
  INTEROP_TAG_UNDEFINED = 101,
  INTEROP_TAG_INT32 = 102,
  INTEROP_TAG_FLOAT32 = 103,
  INTEROP_TAG_STRING = 104,
  INTEROP_TAG_LENGTH = 105,
  INTEROP_TAG_RESOURCE = 106,
  INTEROP_TAG_OBJECT = 107,
} InteropTag;

typedef enum InteropRuntimeType
{
  INTEROP_RUNTIME_UNEXPECTED = -1,
  INTEROP_RUNTIME_NUMBER = 1,
  INTEROP_RUNTIME_STRING = 2,
  INTEROP_RUNTIME_OBJECT = 3,
  INTEROP_RUNTIME_BOOLEAN = 4,
  INTEROP_RUNTIME_UNDEFINED = 5,
  INTEROP_RUNTIME_BIGINT = 6,
  INTEROP_RUNTIME_FUNCTION = 7,
  INTEROP_RUNTIME_SYMBOL = 8,
  INTEROP_RUNTIME_MATERIALIZED = 9,
} InteropRuntimeType;

typedef float InteropFloat32;
typedef double InteropFloat64;
typedef int32_t InteropInt32;
typedef unsigned int InteropUInt32; // TODO: update unsigned int
typedef int64_t InteropInt64;
typedef uint64_t InteropUInt64;
typedef int8_t InteropInt8;
typedef uint8_t InteropUInt8;
typedef int64_t InteropDate;
typedef int8_t InteropBoolean;
typedef const char* InteropCharPtr;
typedef void* InteropNativePointer;

struct _InteropVMContext;
typedef struct _InteropVMContext* InteropVMContext;
struct _InteropPipelineContext;
typedef struct _InteropPipelineContext* InteropPipelineContext;
struct _InteropVMObject;
typedef struct _InteropVMObject* InteropVMObject;
struct _InteropNode;
typedef struct _InteropNode* InteropNodeHandle;
typedef struct InteropDeferred {
    void* handler;
    void* context;
    void (*resolve)(struct InteropDeferred* thiz, uint8_t* data, int32_t length);
    void (*reject)(struct InteropDeferred* thiz, const char* message);
} InteropDeferred;

// Binary layout of InteropString must match that of KStringPtrImpl.
typedef struct InteropString {
  const char* chars;
  InteropInt32 length;
} InteropString;

typedef struct InteropEmpty {
  InteropInt32 dummy; // Empty structs are forbidden in C.
} InteropEmpty;

typedef struct InteropNumber {
  InteropInt8 tag;
  union {
    InteropFloat32 f32;
    InteropInt32 i32;
  };
} InteropNumber;

// Binary layout of InteropLength must match that of KLength.
typedef struct InteropLength
{
  InteropInt8 type;
  InteropFloat32 value;
  InteropInt32 unit;
  InteropInt32 resource;
} InteropLength;

typedef struct InteropCustomObject {
  char kind[20];
  InteropInt32 id;
  // Data of custom object.
  union {
    InteropInt32 ints[4];
    InteropFloat32 floats[4];
    void* pointers[4];
    InteropString string;
  };
} InteropCustomObject;

typedef struct InteropUndefined {
  InteropInt32 dummy; // Empty structs are forbidden in C.
} InteropUndefined;

typedef struct InteropVoid {
  InteropInt32 dummy; // Empty structs are forbidden in C.
} InteropVoid;

typedef struct InteropFunction {
  InteropInt32 id;
} InteropFunction;
typedef InteropFunction InteropCallback;
typedef InteropFunction InteropErrorCallback;

typedef struct InteropMaterialized {
  InteropNativePointer ptr;
} InteropMaterialized;

typedef struct InteropCallbackResource {
  InteropInt32 resourceId;
  void (*hold)(InteropInt32 resourceId);
  void (*release)(InteropInt32 resourceId);
} InteropCallbackResource;

typedef struct InteropBuffer {
  InteropCallbackResource resource;
  InteropNativePointer data;
  InteropInt64 length;
} InteropBuffer;

typedef struct InteropAsyncWork {
  InteropNativePointer workId;
  void (*queue)(InteropNativePointer workId);
  void (*cancel)(InteropNativePointer workId);
} InteropAsyncWork;

typedef struct InteropAsyncWorker {
  InteropAsyncWork (*createWork)(
    InteropVMContext context,
    InteropNativePointer handle,
    void (*execute)(InteropNativePointer handle),
    void (*complete)(InteropNativePointer handle)
  );
} InteropAsyncWorker;
typedef const InteropAsyncWorker* InteropAsyncWorkerPtr;

typedef struct InteropObject {
  InteropCallbackResource resource;
} InteropObject;

#endif // _INTEROP_TYPES_H_


// The only include allowed in this file! Do not add anything else ever.
#include <stdint.h>

#define GENERATED_ARKUI_FULL_API_VERSION 99
#define GENERATED_ARKUI_NODE_API_VERSION GENERATED_ARKUI_FULL_API_VERSION

#define GENERATED_ARKUI_BASIC_NODE_API_VERSION 1
#define GENERATED_ARKUI_EXTENDED_NODE_API_VERSION 8
#define GENERATED_ARKUI_NODE_GRAPHICS_API_VERSION 5
#define GENERATED_ARKUI_NODE_MODIFIERS_API_VERSION 6

#define GENERATED_ARKUI_AUTO_GENERATE_NODE_ID (-2)

/* clang-format off */

#ifdef __cplusplus
extern "C" {
#endif

typedef InteropTag Ark_Tag;
typedef InteropRuntimeType Ark_RuntimeType;

typedef InteropFloat32 Ark_Float32;
typedef InteropFloat64 Ark_Float64;
typedef InteropInt32 Ark_Int32;
typedef InteropUInt32 Ark_UInt32;
typedef InteropInt64 Ark_Int64;
typedef InteropInt8 Ark_Int8;
typedef InteropBoolean Ark_Boolean;
typedef InteropCharPtr Ark_CharPtr;
typedef InteropNativePointer Ark_NativePointer;
typedef InteropString Ark_String;
typedef InteropCallbackResource Ark_CallbackResource;
typedef InteropNumber Ark_Number;
typedef InteropMaterialized Ark_Materialized;
typedef InteropCustomObject Ark_CustomObject;
typedef InteropUndefined Ark_Undefined;
typedef InteropVMContext Ark_VMContext;
typedef InteropBuffer Ark_Buffer;
typedef InteropNodeHandle Ark_NodeHandle;
typedef InteropPipelineContext Ark_PipelineContext;
typedef InteropCustomObject Ark_CustomObject;
typedef InteropDate Ark_Date;
typedef InteropFunction Ark_Function;
typedef InteropAsyncWork Ark_AsyncWork;
typedef InteropAsyncWorker Ark_AsyncWorker;
typedef InteropAsyncWorkerPtr Ark_AsyncWorkerPtr;
typedef InteropObject Ark_Object;

// Improve: generate!
typedef struct Opt_Ark_Callback {
  Ark_Tag tag;
  Ark_CustomObject value;
} Opt_Ark_Callback;

enum GENERATED_Ark_APIVariantKind {
    GENERATED_BASIC = 10,
    GENERATED_FULL = 11,
    GENERATED_GRAPHICS = 12,
    GENERATED_EXTENDED = 13,
    GENERATED_COUNT = GENERATED_EXTENDED + 1
};

enum Ark_APINodeFlags {
    GENERATED_CUSTOM_NONE = 0,
    GENERATED_CUSTOM_MEASURE = 1 << 0,
    GENERATED_CUSTOM_LAYOUT = 1 << 1,
    GENERATED_CUSTOM_DRAW = 1 << 2,
    GENERATED_CUSTOM_FOREGROUND_DRAW = 1 << 3,
    GENERATED_CUSTOM_OVERLAY_DRAW = 1 << 4,
};
enum Ark_APICustomOp {
    GENERATED_MEASURE = 1,
    GENERATED_LAYOUT = 2,
    GENERATED_DRAW = 3
};

struct _Ark_Canvas;
typedef struct _Ark_Canvas* Ark_CanvasHandle;



typedef struct Opt_Int32 Opt_Int32;
typedef struct BaseShapePeer BaseShapePeer;
typedef struct BaseShapePeer* Ark_BaseShape;
typedef struct Opt_BaseShape Opt_BaseShape;
typedef struct Ark_BlankAttribute Ark_BlankAttribute;
typedef struct Opt_BlankAttribute Opt_BlankAttribute;
typedef struct Opt_Boolean Opt_Boolean;
typedef struct Ark_BooleanInterfaceDTS Ark_BooleanInterfaceDTS;
typedef struct Opt_BooleanInterfaceDTS Opt_BooleanInterfaceDTS;
typedef struct Opt_Buffer Opt_Buffer;
typedef struct BuilderNodeOpsPeer BuilderNodeOpsPeer;
typedef struct BuilderNodeOpsPeer* Ark_BuilderNodeOps;
typedef struct Opt_BuilderNodeOps Opt_BuilderNodeOps;
typedef struct Ark_ButtonAttribute Ark_ButtonAttribute;
typedef struct Opt_ButtonAttribute Opt_ButtonAttribute;
typedef struct Ark_CheckboxAttribute Ark_CheckboxAttribute;
typedef struct Opt_CheckboxAttribute Opt_CheckboxAttribute;
typedef struct ColorFilterPeer ColorFilterPeer;
typedef struct ColorFilterPeer* Ark_ColorFilter;
typedef struct Opt_ColorFilter Opt_ColorFilter;
typedef struct Ark_ColumnAttribute Ark_ColumnAttribute;
typedef struct Opt_ColumnAttribute Opt_ColumnAttribute;
typedef struct CommonShapePeer CommonShapePeer;
typedef struct CommonShapePeer* Ark_CommonShape;
typedef struct Opt_CommonShape Opt_CommonShape;
typedef struct CustomDialogControllerPeer CustomDialogControllerPeer;
typedef struct CustomDialogControllerPeer* Ark_CustomDialogController;
typedef struct Opt_CustomDialogController Opt_CustomDialogController;
typedef struct Opt_CustomObject Opt_CustomObject;
typedef struct Ark_DrawContext Ark_DrawContext;
typedef struct Opt_DrawContext Opt_DrawContext;
typedef struct Opt_Float32 Opt_Float32;
typedef struct ICurvePeer ICurvePeer;
typedef struct ICurvePeer* Ark_ICurve;
typedef struct Opt_ICurve Opt_ICurve;
typedef struct Opt_Int64 Opt_Int64;
typedef struct Ark_ListAttribute Ark_ListAttribute;
typedef struct Opt_ListAttribute Opt_ListAttribute;
typedef struct Opt_NativePointer Opt_NativePointer;
typedef struct Ark_NavigationAttribute Ark_NavigationAttribute;
typedef struct Opt_NavigationAttribute Opt_NavigationAttribute;
typedef struct Ark_NavPathStack Ark_NavPathStack;
typedef struct Opt_NavPathStack Opt_NavPathStack;
typedef struct Opt_Number Opt_Number;
typedef struct Ark_NumberInterfaceDTS Ark_NumberInterfaceDTS;
typedef struct Opt_NumberInterfaceDTS Opt_NumberInterfaceDTS;
typedef struct Opt_Object Opt_Object;
typedef struct Ark_Offset_componentutils Ark_Offset_componentutils;
typedef struct Opt_Offset_componentutils Opt_Offset_componentutils;
typedef struct Ark_RotateResult Ark_RotateResult;
typedef struct Opt_RotateResult Opt_RotateResult;
typedef struct Ark_ScaleResult Ark_ScaleResult;
typedef struct Opt_ScaleResult Opt_ScaleResult;
typedef struct ScenePeer ScenePeer;
typedef struct ScenePeer* Ark_Scene;
typedef struct Opt_Scene Opt_Scene;
typedef struct Ark_SizeResult Ark_SizeResult;
typedef struct Opt_SizeResult Opt_SizeResult;
typedef struct Opt_String Opt_String;
typedef struct Ark_StringInterfaceDTS Ark_StringInterfaceDTS;
typedef struct Opt_StringInterfaceDTS Opt_StringInterfaceDTS;
typedef struct Ark_TestAttribute Ark_TestAttribute;
typedef struct Opt_TestAttribute Opt_TestAttribute;
typedef struct Ark_TextInputAttribute Ark_TextInputAttribute;
typedef struct Opt_TextInputAttribute Opt_TextInputAttribute;
typedef struct Ark_TextPickerAttribute Ark_TextPickerAttribute;
typedef struct Opt_TextPickerAttribute Opt_TextPickerAttribute;
typedef struct Ark_TextPickerResult Ark_TextPickerResult;
typedef struct Opt_TextPickerResult Opt_TextPickerResult;
typedef struct Ark_TranslateResult Ark_TranslateResult;
typedef struct Opt_TranslateResult Opt_TranslateResult;
typedef struct Ark_Tuple_Boolean_Number Ark_Tuple_Boolean_Number;
typedef struct Opt_Tuple_Boolean_Number Opt_Tuple_Boolean_Number;
typedef struct Ark_Union_Number_String Ark_Union_Number_String;
typedef struct Opt_Union_Number_String Opt_Union_Number_String;
typedef struct Ark_UnionInterfaceDTS Ark_UnionInterfaceDTS;
typedef struct Opt_UnionInterfaceDTS Opt_UnionInterfaceDTS;
typedef struct Ark_UnionOptionalInterfaceDTS Ark_UnionOptionalInterfaceDTS;
typedef struct Opt_UnionOptionalInterfaceDTS Opt_UnionOptionalInterfaceDTS;
typedef struct Ark_WorkerEventListener Ark_WorkerEventListener;
typedef struct Opt_WorkerEventListener Opt_WorkerEventListener;
typedef struct Array_Boolean Array_Boolean;
typedef struct Opt_Array_Boolean Opt_Array_Boolean;
typedef struct Array_BooleanInterfaceDTS Array_BooleanInterfaceDTS;
typedef struct Opt_Array_BooleanInterfaceDTS Opt_Array_BooleanInterfaceDTS;
typedef struct Array_Buffer Array_Buffer;
typedef struct Opt_Array_Buffer Opt_Array_Buffer;
typedef struct Array_CustomObject Array_CustomObject;
typedef struct Opt_Array_CustomObject Opt_Array_CustomObject;
typedef struct Array_EnumDTS Array_EnumDTS;
typedef struct Opt_Array_EnumDTS Opt_Array_EnumDTS;
typedef struct Array_Number Array_Number;
typedef struct Opt_Array_Number Opt_Array_Number;
typedef struct Array_Object Array_Object;
typedef struct Opt_Array_Object Opt_Array_Object;
typedef struct Array_String Array_String;
typedef struct Opt_Array_String Opt_Array_String;
typedef struct AsyncCallback_image_PixelMap_Void AsyncCallback_image_PixelMap_Void;
typedef struct Opt_AsyncCallback_image_PixelMap_Void Opt_AsyncCallback_image_PixelMap_Void;
typedef struct ButtonModifierBuilder ButtonModifierBuilder;
typedef struct Opt_ButtonModifierBuilder Opt_ButtonModifierBuilder;
typedef struct Callback_Boolean_Void Callback_Boolean_Void;
typedef struct Opt_Callback_Boolean_Void Opt_Callback_Boolean_Void;
typedef struct Callback_ClickEvent_Void Callback_ClickEvent_Void;
typedef struct Opt_Callback_ClickEvent_Void Opt_Callback_ClickEvent_Void;
typedef struct Callback_CreateItem Callback_CreateItem;
typedef struct Opt_Callback_CreateItem Opt_Callback_CreateItem;
typedef struct Callback_DrawContext_Void Callback_DrawContext_Void;
typedef struct Opt_Callback_DrawContext_Void Opt_Callback_DrawContext_Void;
typedef struct Callback_Extender_OnFinish Callback_Extender_OnFinish;
typedef struct Opt_Callback_Extender_OnFinish Opt_Callback_Extender_OnFinish;
typedef struct Callback_Extender_OnProgress Callback_Extender_OnProgress;
typedef struct Opt_Callback_Extender_OnProgress Opt_Callback_Extender_OnProgress;
typedef struct Callback_NavigationTitleMode_Void Callback_NavigationTitleMode_Void;
typedef struct Opt_Callback_NavigationTitleMode_Void Opt_Callback_NavigationTitleMode_Void;
typedef struct Callback_Number_Void Callback_Number_Void;
typedef struct Opt_Callback_Number_Void Opt_Callback_Number_Void;
typedef struct Callback_onMeasureSize_SizeResult Callback_onMeasureSize_SizeResult;
typedef struct Opt_Callback_onMeasureSize_SizeResult Opt_Callback_onMeasureSize_SizeResult;
typedef struct Callback_onPlaceChildren_Void Callback_onPlaceChildren_Void;
typedef struct Opt_Callback_onPlaceChildren_Void Opt_Callback_onPlaceChildren_Void;
typedef struct Callback_Pointer_Void Callback_Pointer_Void;
typedef struct Opt_Callback_Pointer_Void Opt_Callback_Pointer_Void;
typedef struct Callback_RangeUpdate Callback_RangeUpdate;
typedef struct Opt_Callback_RangeUpdate Opt_Callback_RangeUpdate;
typedef struct Callback_ResourceStr_Void Callback_ResourceStr_Void;
typedef struct Opt_Callback_ResourceStr_Void Opt_Callback_ResourceStr_Void;
typedef struct Callback_SizeResult_Void Callback_SizeResult_Void;
typedef struct Opt_Callback_SizeResult_Void Opt_Callback_SizeResult_Void;
typedef struct Callback_StateStylesChange Callback_StateStylesChange;
typedef struct Opt_Callback_StateStylesChange Opt_Callback_StateStylesChange;
typedef struct Callback_String_Number_Void Callback_String_Number_Void;
typedef struct Opt_Callback_String_Number_Void Opt_Callback_String_Number_Void;
typedef struct Callback_String_Void Callback_String_Void;
typedef struct Opt_Callback_String_Void Opt_Callback_String_Void;
typedef struct Callback_TextPickerResult_Void Callback_TextPickerResult_Void;
typedef struct Opt_Callback_TextPickerResult_Void Opt_Callback_TextPickerResult_Void;
typedef struct Callback_Union_Number_Array_Number_Void Callback_Union_Number_Array_Number_Void;
typedef struct Opt_Callback_Union_Number_Array_Number_Void Opt_Callback_Union_Number_Array_Number_Void;
typedef struct Callback_Union_String_Array_String_Void Callback_Union_String_Array_String_Void;
typedef struct Opt_Callback_Union_String_Array_String_Void Opt_Callback_Union_String_Array_String_Void;
typedef struct Callback_Void Callback_Void;
typedef struct Opt_Callback_Void Opt_Callback_Void;
typedef struct CheckBoxModifierBuilder CheckBoxModifierBuilder;
typedef struct Opt_CheckBoxModifierBuilder Opt_CheckBoxModifierBuilder;
typedef struct CustomNodeBuilder CustomNodeBuilder;
typedef struct Opt_CustomNodeBuilder Opt_CustomNodeBuilder;
typedef struct DataPanelModifierBuilder DataPanelModifierBuilder;
typedef struct Opt_DataPanelModifierBuilder Opt_DataPanelModifierBuilder;
typedef struct GaugeModifierBuilder GaugeModifierBuilder;
typedef struct Opt_GaugeModifierBuilder Opt_GaugeModifierBuilder;
typedef struct LoadingProgressModifierBuilder LoadingProgressModifierBuilder;
typedef struct Opt_LoadingProgressModifierBuilder Opt_LoadingProgressModifierBuilder;
typedef struct MenuItemModifierBuilder MenuItemModifierBuilder;
typedef struct Opt_MenuItemModifierBuilder Opt_MenuItemModifierBuilder;
typedef struct NavExtender_OnUpdateStack NavExtender_OnUpdateStack;
typedef struct Opt_NavExtender_OnUpdateStack Opt_NavExtender_OnUpdateStack;
typedef struct ProgressModifierBuilder ProgressModifierBuilder;
typedef struct Opt_ProgressModifierBuilder Opt_ProgressModifierBuilder;
typedef struct RadioModifierBuilder RadioModifierBuilder;
typedef struct Opt_RadioModifierBuilder Opt_RadioModifierBuilder;
typedef struct RatingModifierBuilder RatingModifierBuilder;
typedef struct Opt_RatingModifierBuilder Opt_RatingModifierBuilder;
typedef struct RestrictedWorker_onerror_Callback RestrictedWorker_onerror_Callback;
typedef struct Opt_RestrictedWorker_onerror_Callback Opt_RestrictedWorker_onerror_Callback;
typedef struct RestrictedWorker_onexit_Callback RestrictedWorker_onexit_Callback;
typedef struct Opt_RestrictedWorker_onexit_Callback Opt_RestrictedWorker_onexit_Callback;
typedef struct RestrictedWorker_onmessage_Callback RestrictedWorker_onmessage_Callback;
typedef struct Opt_RestrictedWorker_onmessage_Callback Opt_RestrictedWorker_onmessage_Callback;
typedef struct SearchValueCallback SearchValueCallback;
typedef struct Opt_SearchValueCallback Opt_SearchValueCallback;
typedef struct SliderModifierBuilder SliderModifierBuilder;
typedef struct Opt_SliderModifierBuilder Opt_SliderModifierBuilder;
typedef struct TextClockModifierBuilder TextClockModifierBuilder;
typedef struct Opt_TextClockModifierBuilder Opt_TextClockModifierBuilder;
typedef struct TextFieldValueCallback TextFieldValueCallback;
typedef struct Opt_TextFieldValueCallback Opt_TextFieldValueCallback;
typedef struct TextPickerScrollStopCallback TextPickerScrollStopCallback;
typedef struct Opt_TextPickerScrollStopCallback Opt_TextPickerScrollStopCallback;
typedef struct TextTimerModifierBuilder TextTimerModifierBuilder;
typedef struct Opt_TextTimerModifierBuilder Opt_TextTimerModifierBuilder;
typedef struct ToggleModifierBuilder ToggleModifierBuilder;
typedef struct Opt_ToggleModifierBuilder Opt_ToggleModifierBuilder;
typedef struct Type_TextPickerAttribute_onChange_callback Type_TextPickerAttribute_onChange_callback;
typedef struct Opt_Type_TextPickerAttribute_onChange_callback Opt_Type_TextPickerAttribute_onChange_callback;
typedef struct Ark_AnimateParam Ark_AnimateParam;
typedef struct Opt_AnimateParam Opt_AnimateParam;
typedef struct Ark_ArrayRefNumberInterfaceDTS Ark_ArrayRefNumberInterfaceDTS;
typedef struct Opt_ArrayRefNumberInterfaceDTS Opt_ArrayRefNumberInterfaceDTS;
typedef struct Ark_ArrayRefTuplesInterfaceDTS Ark_ArrayRefTuplesInterfaceDTS;
typedef struct Opt_ArrayRefTuplesInterfaceDTS Opt_ArrayRefTuplesInterfaceDTS;
typedef struct BaseEventPeer BaseEventPeer;
typedef struct BaseEventPeer* Ark_BaseEvent;
typedef struct Opt_BaseEvent Opt_BaseEvent;
typedef struct Ark_BlurOptions Ark_BlurOptions;
typedef struct Opt_BlurOptions Opt_BlurOptions;
typedef struct Ark_BuilderNodeOptions Ark_BuilderNodeOptions;
typedef struct Opt_BuilderNodeOptions Opt_BuilderNodeOptions;
typedef struct Ark_CheckBoxConfiguration Ark_CheckBoxConfiguration;
typedef struct Opt_CheckBoxConfiguration Opt_CheckBoxConfiguration;
typedef struct Ark_CheckboxOptions Ark_CheckboxOptions;
typedef struct Opt_CheckboxOptions Opt_CheckboxOptions;
typedef struct ClickEventPeer ClickEventPeer;
typedef struct ClickEventPeer* Ark_ClickEvent;
typedef struct Opt_ClickEvent Opt_ClickEvent;
typedef struct Ark_CustomDialogBuildOptions Ark_CustomDialogBuildOptions;
typedef struct Opt_CustomDialogBuildOptions Opt_CustomDialogBuildOptions;
typedef struct Ark_DoubleAnimationParam Ark_DoubleAnimationParam;
typedef struct Opt_DoubleAnimationParam Opt_DoubleAnimationParam;
typedef struct Ark_DragInteractionOptions Ark_DragInteractionOptions;
typedef struct Opt_DragInteractionOptions Opt_DragInteractionOptions;
typedef struct Ark_DragPreviewOptions Ark_DragPreviewOptions;
typedef struct Opt_DragPreviewOptions Opt_DragPreviewOptions;
typedef struct DrawModifierPeer DrawModifierPeer;
typedef struct DrawModifierPeer* Ark_DrawModifier;
typedef struct Opt_DrawModifier Opt_DrawModifier;
typedef struct Ark_EdgeStyles Ark_EdgeStyles;
typedef struct Opt_EdgeStyles Opt_EdgeStyles;
typedef struct Ark_ErrorEvent Ark_ErrorEvent;
typedef struct Opt_ErrorEvent Opt_ErrorEvent;
typedef struct Ark_Event Ark_Event;
typedef struct Opt_Event Opt_Event;
typedef struct Ark_LocalizedBorderRadiuses Ark_LocalizedBorderRadiuses;
typedef struct Opt_LocalizedBorderRadiuses Opt_LocalizedBorderRadiuses;
typedef struct Ark_LocalizedEdgeWidths Ark_LocalizedEdgeWidths;
typedef struct Opt_LocalizedEdgeWidths Opt_LocalizedEdgeWidths;
typedef struct Ark_LocalizedPadding Ark_LocalizedPadding;
typedef struct Opt_LocalizedPadding Opt_LocalizedPadding;
typedef struct Ark_Matrix4Result Ark_Matrix4Result;
typedef struct Opt_Matrix4Result Opt_Matrix4Result;
typedef struct Ark_MessageEvents Ark_MessageEvents;
typedef struct Opt_MessageEvents Opt_MessageEvents;
typedef struct Ark_PostMessageOptions Ark_PostMessageOptions;
typedef struct Opt_PostMessageOptions Opt_PostMessageOptions;
typedef struct Ark_Resource Ark_Resource;
typedef struct Opt_Resource Opt_Resource;
typedef struct Ark_ResourceColor Ark_ResourceColor;
typedef struct Opt_ResourceColor Opt_ResourceColor;
typedef struct Ark_ResourceStr Ark_ResourceStr;
typedef struct Opt_ResourceStr Opt_ResourceStr;
typedef struct Ark_SnapshotOptions Ark_SnapshotOptions;
typedef struct Opt_SnapshotOptions Opt_SnapshotOptions;
typedef struct Ark_TextPickerOptions Ark_TextPickerOptions;
typedef struct Opt_TextPickerOptions Opt_TextPickerOptions;
typedef struct Ark_TranslateOptions Ark_TranslateOptions;
typedef struct Opt_TranslateOptions Opt_TranslateOptions;
typedef struct Ark_TupleInterfaceDTS Ark_TupleInterfaceDTS;
typedef struct Opt_TupleInterfaceDTS Opt_TupleInterfaceDTS;
typedef struct Ark_Union_Number_Array_Number Ark_Union_Number_Array_Number;
typedef struct Opt_Union_Number_Array_Number Opt_Union_Number_Array_Number;
typedef struct Ark_Union_String_Array_String Ark_Union_String_Array_String;
typedef struct Opt_Union_String_Array_String Opt_Union_String_Array_String;
typedef struct Ark_WorkerOptions Ark_WorkerOptions;
typedef struct Opt_WorkerOptions Opt_WorkerOptions;
typedef struct Ark_BackgroundBlurStyleOptions Ark_BackgroundBlurStyleOptions;
typedef struct Opt_BackgroundBlurStyleOptions Opt_BackgroundBlurStyleOptions;
typedef struct Ark_ComponentInfo Ark_ComponentInfo;
typedef struct Opt_ComponentInfo Opt_ComponentInfo;
typedef struct Ark_CustomDialogControllerBuilder Ark_CustomDialogControllerBuilder;
typedef struct Opt_CustomDialogControllerBuilder Opt_CustomDialogControllerBuilder;
typedef struct Ark_Dimension Ark_Dimension;
typedef struct Opt_Dimension Opt_Dimension;
typedef struct Ark_EdgeColors Ark_EdgeColors;
typedef struct Opt_EdgeColors Opt_EdgeColors;
typedef struct Ark_Length Ark_Length;
typedef struct Opt_Length Opt_Length;
typedef struct Ark_Offset Ark_Offset;
typedef struct Opt_Offset Opt_Offset;
typedef struct RestrictedWorkerPeer RestrictedWorkerPeer;
typedef struct RestrictedWorkerPeer* Ark_RestrictedWorker;
typedef struct Opt_RestrictedWorker Opt_RestrictedWorker;
typedef struct Ark_SheetTitleOptions Ark_SheetTitleOptions;
typedef struct Opt_SheetTitleOptions Opt_SheetTitleOptions;
typedef struct Ark_TextInputOptions Ark_TextInputOptions;
typedef struct Opt_TextInputOptions Opt_TextInputOptions;
typedef struct Ark_BorderRadiuses Ark_BorderRadiuses;
typedef struct Opt_BorderRadiuses Opt_BorderRadiuses;
typedef struct Ark_CustomDialogControllerOptions Ark_CustomDialogControllerOptions;
typedef struct Opt_CustomDialogControllerOptions Opt_CustomDialogControllerOptions;
typedef struct Ark_DividerOptions Ark_DividerOptions;
typedef struct Opt_DividerOptions Opt_DividerOptions;
typedef struct Ark_EdgeWidths Ark_EdgeWidths;
typedef struct Opt_EdgeWidths Opt_EdgeWidths;
typedef struct Ark_Font Ark_Font;
typedef struct Opt_Font Opt_Font;
typedef struct Ark_MarkStyle Ark_MarkStyle;
typedef struct Opt_MarkStyle Opt_MarkStyle;
typedef struct Ark_Padding Ark_Padding;
typedef struct Opt_Padding Opt_Padding;
typedef struct Ark_Position Ark_Position;
typedef struct Opt_Position Opt_Position;
typedef struct Ark_Rectangle Ark_Rectangle;
typedef struct Opt_Rectangle Opt_Rectangle;
typedef struct Ark_SheetOptions Ark_SheetOptions;
typedef struct Opt_SheetOptions Opt_SheetOptions;
typedef struct Ark_SizeOptions Ark_SizeOptions;
typedef struct Opt_SizeOptions Opt_SizeOptions;
typedef struct Ark_LabelStyle Ark_LabelStyle;
typedef struct Opt_LabelStyle Opt_LabelStyle;
typedef struct Ark_TextPickerDialogOptions Ark_TextPickerDialogOptions;
typedef struct Opt_TextPickerDialogOptions Opt_TextPickerDialogOptions;
typedef Ark_Object Ark_ContentModifier;
typedef Opt_Object Opt_ContentModifier;
typedef enum Ark_AdaptiveColor {
    ARK_ADAPTIVE_COLOR_DEFAULT = 0,
} Ark_AdaptiveColor;
typedef struct Opt_AdaptiveColor {
    Ark_Tag tag;
    Ark_AdaptiveColor value;
} Opt_AdaptiveColor;
typedef enum Ark_Axis {
    ARK_AXIS_VERTICAL = 0,
    ARK_AXIS_HORIZONTAL = 1,
} Ark_Axis;
typedef struct Opt_Axis {
    Ark_Tag tag;
    Ark_Axis value;
} Opt_Axis;
typedef enum Ark_BlurStyle {
    ARK_BLUR_STYLE_THIN = 0,
} Ark_BlurStyle;
typedef struct Opt_BlurStyle {
    Ark_Tag tag;
    Ark_BlurStyle value;
} Opt_BlurStyle;
typedef enum Ark_BlurStyleActivePolicy {
    ARK_BLUR_STYLE_ACTIVE_POLICY_FOLLOWS_WINDOW_ACTIVE_STATE = 0,
    ARK_BLUR_STYLE_ACTIVE_POLICY_ALWAYS_ACTIVE = 1,
    ARK_BLUR_STYLE_ACTIVE_POLICY_ALWAYS_INACTIVE = 2,
} Ark_BlurStyleActivePolicy;
typedef struct Opt_BlurStyleActivePolicy {
    Ark_Tag tag;
    Ark_BlurStyleActivePolicy value;
} Opt_BlurStyleActivePolicy;
typedef enum Ark_BorderStyle {
    ARK_BORDER_STYLE_DOTTED = 0,
    ARK_BORDER_STYLE_DASHED = 1,
    ARK_BORDER_STYLE_SOLID = 2,
} Ark_BorderStyle;
typedef struct Opt_BorderStyle {
    Ark_Tag tag;
    Ark_BorderStyle value;
} Opt_BorderStyle;
typedef enum Ark_ButtonType {
    ARK_BUTTON_TYPE_CAPSULE = 0,
    ARK_BUTTON_TYPE_CIRCLE = 1,
} Ark_ButtonType;
typedef struct Opt_ButtonType {
    Ark_Tag tag;
    Ark_ButtonType value;
} Opt_ButtonType;
typedef enum Ark_CheckBoxShape {
    ARK_CHECK_BOX_SHAPE_CIRCLE = 0,
    ARK_CHECK_BOX_SHAPE_ROUNDED_SQUARE = 1,
} Ark_CheckBoxShape;
typedef struct Opt_CheckBoxShape {
    Ark_Tag tag;
    Ark_CheckBoxShape value;
} Opt_CheckBoxShape;
typedef enum Ark_Color {
    ARK_COLOR_WHITE = 0,
    ARK_COLOR_BLACK = 1,
} Ark_Color;
typedef struct Opt_Color {
    Ark_Tag tag;
    Ark_Color value;
} Opt_Color;
typedef enum Ark_ColoringStrategy {
    ARK_COLORING_STRATEGY_INVERT,
    ARK_COLORING_STRATEGY_AVERAGE,
    ARK_COLORING_STRATEGY_PRIMARY,
} Ark_ColoringStrategy;
typedef struct Opt_ColoringStrategy {
    Ark_Tag tag;
    Ark_ColoringStrategy value;
} Opt_ColoringStrategy;
typedef enum Ark_ContentType {
    ARK_CONTENT_TYPE_USER_NAME = 0,
    ARK_CONTENT_TYPE_PASSWORD = 1,
} Ark_ContentType;
typedef struct Opt_ContentType {
    Ark_Tag tag;
    Ark_ContentType value;
} Opt_ContentType;
typedef enum Ark_Curve {
    ARK_CURVE_LINEAR = 0,
    ARK_CURVE_EASE = 1,
} Ark_Curve;
typedef struct Opt_Curve {
    Ark_Tag tag;
    Ark_Curve value;
} Opt_Curve;
typedef enum Ark_DragPreviewMode {
    ARK_DRAG_PREVIEW_MODE_AUTO = 1,
    ARK_DRAG_PREVIEW_MODE_DISABLE_SCALE = 2,
    ARK_DRAG_PREVIEW_MODE_ENABLE_DEFAULT_SHADOW = 3,
    ARK_DRAG_PREVIEW_MODE_ENABLE_DEFAULT_RADIUS = 4,
} Ark_DragPreviewMode;
typedef struct Opt_DragPreviewMode {
    Ark_Tag tag;
    Ark_DragPreviewMode value;
} Opt_DragPreviewMode;
typedef enum Ark_EmbeddedType {
    ARK_EMBEDDED_TYPE_EMBEDDED_UI_EXTENSION = 0,
} Ark_EmbeddedType;
typedef struct Opt_EmbeddedType {
    Ark_Tag tag;
    Ark_EmbeddedType value;
} Opt_EmbeddedType;
typedef enum Ark_EnumDTS {
    ARK_ENUM_DTS_ELEM_0 = 0,
    ARK_ENUM_DTS_ELEM_1 = 1,
    ARK_ENUM_DTS_ELEM_2 = 2,
} Ark_EnumDTS;
typedef struct Opt_EnumDTS {
    Ark_Tag tag;
    Ark_EnumDTS value;
} Opt_EnumDTS;
typedef enum Ark_FontStyle {
    ARK_FONT_STYLE_NORMAL = 0,
    ARK_FONT_STYLE_ITALIC = 1,
} Ark_FontStyle;
typedef struct Opt_FontStyle {
    Ark_Tag tag;
    Ark_FontStyle value;
} Opt_FontStyle;
typedef enum Ark_FontWeight {
    ARK_FONT_WEIGHT_LIGHTER = 0,
    ARK_FONT_WEIGHT_NORMAL = 1,
    ARK_FONT_WEIGHT_REGULAR = 2,
    ARK_FONT_WEIGHT_MEDIUM = 3,
    ARK_FONT_WEIGHT_BOLD = 4,
    ARK_FONT_WEIGHT_BOLDER = 5,
} Ark_FontWeight;
typedef struct Opt_FontWeight {
    Ark_Tag tag;
    Ark_FontWeight value;
} Opt_FontWeight;
typedef enum Ark_HorizontalAlign {
    ARK_HORIZONTAL_ALIGN_START = 0,
    ARK_HORIZONTAL_ALIGN_CENTER = 1,
    ARK_HORIZONTAL_ALIGN_END = 2,
} Ark_HorizontalAlign;
typedef struct Opt_HorizontalAlign {
    Ark_Tag tag;
    Ark_HorizontalAlign value;
} Opt_HorizontalAlign;
typedef enum Ark_InputType {
    ARK_INPUT_TYPE_NORMAL = 0,
    ARK_INPUT_TYPE_NUMBER = 1,
} Ark_InputType;
typedef struct Opt_InputType {
    Ark_Tag tag;
    Ark_InputType value;
} Opt_InputType;
typedef enum Ark_LayoutSafeAreaEdge {
    ARK_LAYOUT_SAFE_AREA_EDGE_TOP = 0,
    ARK_LAYOUT_SAFE_AREA_EDGE_BOTTOM = 1,
} Ark_LayoutSafeAreaEdge;
typedef struct Opt_LayoutSafeAreaEdge {
    Ark_Tag tag;
    Ark_LayoutSafeAreaEdge value;
} Opt_LayoutSafeAreaEdge;
typedef enum Ark_LayoutSafeAreaType {
    ARK_LAYOUT_SAFE_AREA_TYPE_SYSTEM = 0,
} Ark_LayoutSafeAreaType;
typedef struct Opt_LayoutSafeAreaType {
    Ark_Tag tag;
    Ark_LayoutSafeAreaType value;
} Opt_LayoutSafeAreaType;
typedef enum Ark_NavigationMode {
    ARK_NAVIGATION_MODE_STACK = 0,
    ARK_NAVIGATION_MODE_SPLIT = 1,
    ARK_NAVIGATION_MODE_AUTO = 2,
} Ark_NavigationMode;
typedef struct Opt_NavigationMode {
    Ark_Tag tag;
    Ark_NavigationMode value;
} Opt_NavigationMode;
typedef enum Ark_NavigationTitleMode {
    ARK_NAVIGATION_TITLE_MODE_FREE = 0,
    ARK_NAVIGATION_TITLE_MODE_FULL = 1,
    ARK_NAVIGATION_TITLE_MODE_MINI = 2,
} Ark_NavigationTitleMode;
typedef struct Opt_NavigationTitleMode {
    Ark_Tag tag;
    Ark_NavigationTitleMode value;
} Opt_NavigationTitleMode;
typedef enum Ark_PerfMonitorActionType {
    ARK_PERF_MONITOR_ACTION_TYPE_LAST_DOWN = 0,
    ARK_PERF_MONITOR_ACTION_TYPE_LAST_UP = 1,
    ARK_PERF_MONITOR_ACTION_TYPE_FIRST_MOVE = 2,
} Ark_PerfMonitorActionType;
typedef struct Opt_PerfMonitorActionType {
    Ark_Tag tag;
    Ark_PerfMonitorActionType value;
} Opt_PerfMonitorActionType;
typedef enum Ark_PerfMonitorSourceType {
    ARK_PERF_MONITOR_SOURCE_TYPE_PERF_TOUCH_EVENT = 0,
    ARK_PERF_MONITOR_SOURCE_TYPE_PERF_MOUSE_EVENT = 1,
    ARK_PERF_MONITOR_SOURCE_TYPE_PERF_TOUCHPAD_EVENT = 2,
    ARK_PERF_MONITOR_SOURCE_TYPE_PERF_JOYSTICK_EVENT = 3,
    ARK_PERF_MONITOR_SOURCE_TYPE_PERF_KEY_EVENT = 4,
} Ark_PerfMonitorSourceType;
typedef struct Opt_PerfMonitorSourceType {
    Ark_Tag tag;
    Ark_PerfMonitorSourceType value;
} Opt_PerfMonitorSourceType;
typedef enum Ark_ShadowStyle {
    ARK_SHADOW_STYLE_OUTER_DEFAULT_XS = 0,
    ARK_SHADOW_STYLE_OUTER_DEFAULT_SM = 1,
    ARK_SHADOW_STYLE_OUTER_DEFAULT_MD = 2,
    ARK_SHADOW_STYLE_OUTER_DEFAULT_LG = 3,
    ARK_SHADOW_STYLE_OUTER_FLOATING_SM = 4,
    ARK_SHADOW_STYLE_OUTER_FLOATING_MD = 5,
} Ark_ShadowStyle;
typedef struct Opt_ShadowStyle {
    Ark_Tag tag;
    Ark_ShadowStyle value;
} Opt_ShadowStyle;
typedef enum Ark_ShadowType {
    ARK_SHADOW_TYPE_COLOR = 0,
    ARK_SHADOW_TYPE_BLUR = 1,
} Ark_ShadowType;
typedef struct Opt_ShadowType {
    Ark_Tag tag;
    Ark_ShadowType value;
} Opt_ShadowType;
typedef enum Ark_SheetMode {
    ARK_SHEET_MODE_OVERLAY = 0,
    ARK_SHEET_MODE_EMBEDDED = 1,
} Ark_SheetMode;
typedef struct Opt_SheetMode {
    Ark_Tag tag;
    Ark_SheetMode value;
} Opt_SheetMode;
typedef enum Ark_SheetSize {
    ARK_SHEET_SIZE_MEDIUM = 0,
    ARK_SHEET_SIZE_LARGE = 1,
    ARK_SHEET_SIZE_FIT_CONTENT = 2,
} Ark_SheetSize;
typedef struct Opt_SheetSize {
    Ark_Tag tag;
    Ark_SheetSize value;
} Opt_SheetSize;
typedef enum Ark_SheetType {
    ARK_SHEET_TYPE_BOTTOM = 0,
    ARK_SHEET_TYPE_CENTER = 1,
    ARK_SHEET_TYPE_POPUP = 2,
} Ark_SheetType;
typedef struct Opt_SheetType {
    Ark_Tag tag;
    Ark_SheetType value;
} Opt_SheetType;
typedef enum Ark_SourceTool {
    ARK_SOURCE_TOOL_UNKNOWN = 0,
    ARK_SOURCE_TOOL_FINGER = 1,
    ARK_SOURCE_TOOL_PEN = 2,
    ARK_SOURCE_TOOL_MOUSE = 3,
    ARK_SOURCE_TOOL_TOUCHPAD = 4,
    ARK_SOURCE_TOOL_JOYSTICK = 5,
} Ark_SourceTool;
typedef struct Opt_SourceTool {
    Ark_Tag tag;
    Ark_SourceTool value;
} Opt_SourceTool;
typedef enum Ark_SourceType {
    ARK_SOURCE_TYPE_UNKNOWN = 0,
    ARK_SOURCE_TYPE_MOUSE = 1,
    ARK_SOURCE_TYPE_TOUCH_SCREEN = 2,
} Ark_SourceType;
typedef struct Opt_SourceType {
    Ark_Tag tag;
    Ark_SourceType value;
} Opt_SourceType;
typedef enum Ark_TextAlign {
    ARK_TEXT_ALIGN_CENTER = 0,
    ARK_TEXT_ALIGN_START = 1,
    ARK_TEXT_ALIGN_END = 2,
    ARK_TEXT_ALIGN_JUSTIFY = 3,
} Ark_TextAlign;
typedef struct Opt_TextAlign {
    Ark_Tag tag;
    Ark_TextAlign value;
} Opt_TextAlign;
typedef enum Ark_TextCase {
    ARK_TEXT_CASE_NORMAL = 0,
    ARK_TEXT_CASE_LOWER_CASE = 1,
    ARK_TEXT_CASE_UPPER_CASE = 2,
} Ark_TextCase;
typedef struct Opt_TextCase {
    Ark_Tag tag;
    Ark_TextCase value;
} Opt_TextCase;
typedef enum Ark_TextHeightAdaptivePolicy {
    ARK_TEXT_HEIGHT_ADAPTIVE_POLICY_MAX_LINES_FIRST = 0,
    ARK_TEXT_HEIGHT_ADAPTIVE_POLICY_MIN_FONT_SIZE_FIRST = 1,
    ARK_TEXT_HEIGHT_ADAPTIVE_POLICY_LAYOUT_CONSTRAINT_FIRST = 2,
} Ark_TextHeightAdaptivePolicy;
typedef struct Opt_TextHeightAdaptivePolicy {
    Ark_Tag tag;
    Ark_TextHeightAdaptivePolicy value;
} Opt_TextHeightAdaptivePolicy;
typedef enum Ark_TextOverflow {
    ARK_TEXT_OVERFLOW_NONE = 0,
    ARK_TEXT_OVERFLOW_CLIP = 1,
    ARK_TEXT_OVERFLOW_ELLIPSIS = 2,
    ARK_TEXT_OVERFLOW_MARQUEE = 3,
} Ark_TextOverflow;
typedef struct Opt_TextOverflow {
    Ark_Tag tag;
    Ark_TextOverflow value;
} Opt_TextOverflow;
typedef enum Ark_ThemeColorMode {
    ARK_THEME_COLOR_MODE_SYSTEM = 0,
    ARK_THEME_COLOR_MODE_LIGHT = 1,
    ARK_THEME_COLOR_MODE_DARK = 2,
} Ark_ThemeColorMode;
typedef struct Opt_ThemeColorMode {
    Ark_Tag tag;
    Ark_ThemeColorMode value;
} Opt_ThemeColorMode;
typedef enum Ark_TitleHeight {
    ARK_TITLE_HEIGHT_MAIN_ONLY = 0,
    ARK_TITLE_HEIGHT_MAIN_WITH_SUB = 1,
} Ark_TitleHeight;
typedef struct Opt_TitleHeight {
    Ark_Tag tag;
    Ark_TitleHeight value;
} Opt_TitleHeight;
typedef enum Ark_VerticalAlign {
    ARK_VERTICAL_ALIGN_TOP = 0,
    ARK_VERTICAL_ALIGN_CENTER = 1,
    ARK_VERTICAL_ALIGN_BOTTOM = 2,
} Ark_VerticalAlign;
typedef struct Opt_VerticalAlign {
    Ark_Tag tag;
    Ark_VerticalAlign value;
} Opt_VerticalAlign;
typedef enum Ark_WordBreak {
    ARK_WORD_BREAK_NORMAL = 0,
    ARK_WORD_BREAK_BREAK_ALL = 1,
    ARK_WORD_BREAK_BREAK_WORD = 2,
    ARK_WORD_BREAK_HYPHENATION = 3,
} Ark_WordBreak;
typedef struct Opt_WordBreak {
    Ark_Tag tag;
    Ark_WordBreak value;
} Opt_WordBreak;
typedef struct Opt_Int32 {
    Ark_Tag tag;
    Ark_Int32 value;
} Opt_Int32;
typedef struct Opt_BaseShape {
    Ark_Tag tag;
    Ark_BaseShape value;
} Opt_BaseShape;
typedef struct Ark_BlankAttribute {
    /* kind: Interface */
    void *handle;
} Ark_BlankAttribute;
typedef struct Opt_BlankAttribute {
    Ark_Tag tag;
    Ark_BlankAttribute value;
} Opt_BlankAttribute;
typedef struct Opt_Boolean {
    Ark_Tag tag;
    Ark_Boolean value;
} Opt_Boolean;
typedef struct Ark_BooleanInterfaceDTS {
    /* kind: Interface */
    Ark_Boolean valBool;
} Ark_BooleanInterfaceDTS;
typedef struct Opt_BooleanInterfaceDTS {
    Ark_Tag tag;
    Ark_BooleanInterfaceDTS value;
} Opt_BooleanInterfaceDTS;
typedef struct Opt_Buffer {
    Ark_Tag tag;
    Ark_Buffer value;
} Opt_Buffer;
typedef struct Opt_BuilderNodeOps {
    Ark_Tag tag;
    Ark_BuilderNodeOps value;
} Opt_BuilderNodeOps;
typedef struct Ark_ButtonAttribute {
    /* kind: Interface */
    void *handle;
} Ark_ButtonAttribute;
typedef struct Opt_ButtonAttribute {
    Ark_Tag tag;
    Ark_ButtonAttribute value;
} Opt_ButtonAttribute;
typedef struct Ark_CheckboxAttribute {
    /* kind: Interface */
    void *handle;
} Ark_CheckboxAttribute;
typedef struct Opt_CheckboxAttribute {
    Ark_Tag tag;
    Ark_CheckboxAttribute value;
} Opt_CheckboxAttribute;
typedef struct Opt_ColorFilter {
    Ark_Tag tag;
    Ark_ColorFilter value;
} Opt_ColorFilter;
typedef struct Ark_ColumnAttribute {
    /* kind: Interface */
    void *handle;
} Ark_ColumnAttribute;
typedef struct Opt_ColumnAttribute {
    Ark_Tag tag;
    Ark_ColumnAttribute value;
} Opt_ColumnAttribute;
typedef struct Opt_CommonShape {
    Ark_Tag tag;
    Ark_CommonShape value;
} Opt_CommonShape;
typedef struct Opt_CustomDialogController {
    Ark_Tag tag;
    Ark_CustomDialogController value;
} Opt_CustomDialogController;
typedef struct Opt_CustomObject {
    Ark_Tag tag;
    Ark_CustomObject value;
} Opt_CustomObject;
typedef struct Ark_DrawContext {
    /* kind: Interface */
    void *handle;
} Ark_DrawContext;
typedef struct Opt_DrawContext {
    Ark_Tag tag;
    Ark_DrawContext value;
} Opt_DrawContext;
typedef struct Opt_Float32 {
    Ark_Tag tag;
    Ark_Float32 value;
} Opt_Float32;
typedef struct Opt_ICurve {
    Ark_Tag tag;
    Ark_ICurve value;
} Opt_ICurve;
typedef struct Opt_Int64 {
    Ark_Tag tag;
    Ark_Int64 value;
} Opt_Int64;
typedef struct Ark_ListAttribute {
    /* kind: Interface */
    void *handle;
} Ark_ListAttribute;
typedef struct Opt_ListAttribute {
    Ark_Tag tag;
    Ark_ListAttribute value;
} Opt_ListAttribute;
typedef struct Opt_NativePointer {
    Ark_Tag tag;
    Ark_NativePointer value;
} Opt_NativePointer;
typedef struct Ark_NavigationAttribute {
    /* kind: Interface */
    void *handle;
} Ark_NavigationAttribute;
typedef struct Opt_NavigationAttribute {
    Ark_Tag tag;
    Ark_NavigationAttribute value;
} Opt_NavigationAttribute;
typedef struct Ark_NavPathStack {
    /* kind: Interface */
    void *handle;
} Ark_NavPathStack;
typedef struct Opt_NavPathStack {
    Ark_Tag tag;
    Ark_NavPathStack value;
} Opt_NavPathStack;
typedef struct Opt_Number {
    Ark_Tag tag;
    Ark_Number value;
} Opt_Number;
typedef struct Ark_NumberInterfaceDTS {
    /* kind: Interface */
    Ark_Int32 valNumber;
} Ark_NumberInterfaceDTS;
typedef struct Opt_NumberInterfaceDTS {
    Ark_Tag tag;
    Ark_NumberInterfaceDTS value;
} Opt_NumberInterfaceDTS;
typedef struct Opt_Object {
    Ark_Tag tag;
    Ark_Object value;
} Opt_Object;
typedef struct Ark_Offset_componentutils {
    /* kind: Interface */
    Ark_Int64 x;
    Ark_Int64 y;
} Ark_Offset_componentutils;
typedef struct Opt_Offset_componentutils {
    Ark_Tag tag;
    Ark_Offset_componentutils value;
} Opt_Offset_componentutils;
typedef struct Ark_RotateResult {
    /* kind: Interface */
    Ark_Int64 x;
    Ark_Int64 y;
    Ark_Int64 z;
    Ark_Int64 centerX;
    Ark_Int64 centerY;
    Ark_Number angle;
} Ark_RotateResult;
typedef struct Opt_RotateResult {
    Ark_Tag tag;
    Ark_RotateResult value;
} Opt_RotateResult;
typedef struct Ark_ScaleResult {
    /* kind: Interface */
    Ark_Int64 x;
    Ark_Int64 y;
    Ark_Int64 z;
    Ark_Int64 centerX;
    Ark_Int64 centerY;
} Ark_ScaleResult;
typedef struct Opt_ScaleResult {
    Ark_Tag tag;
    Ark_ScaleResult value;
} Opt_ScaleResult;
typedef struct Opt_Scene {
    Ark_Tag tag;
    Ark_Scene value;
} Opt_Scene;
typedef struct Ark_SizeResult {
    /* kind: Interface */
    Ark_Number width;
    Ark_Number height;
} Ark_SizeResult;
typedef struct Opt_SizeResult {
    Ark_Tag tag;
    Ark_SizeResult value;
} Opt_SizeResult;
typedef struct Opt_String {
    Ark_Tag tag;
    Ark_String value;
} Opt_String;
typedef struct Ark_StringInterfaceDTS {
    /* kind: Interface */
    Ark_String valString;
} Ark_StringInterfaceDTS;
typedef struct Opt_StringInterfaceDTS {
    Ark_Tag tag;
    Ark_StringInterfaceDTS value;
} Opt_StringInterfaceDTS;
typedef struct Ark_TestAttribute {
    /* kind: Interface */
    void *handle;
} Ark_TestAttribute;
typedef struct Opt_TestAttribute {
    Ark_Tag tag;
    Ark_TestAttribute value;
} Opt_TestAttribute;
typedef struct Ark_TextInputAttribute {
    /* kind: Interface */
    void *handle;
} Ark_TextInputAttribute;
typedef struct Opt_TextInputAttribute {
    Ark_Tag tag;
    Ark_TextInputAttribute value;
} Opt_TextInputAttribute;
typedef struct Ark_TextPickerAttribute {
    /* kind: Interface */
    void *handle;
} Ark_TextPickerAttribute;
typedef struct Opt_TextPickerAttribute {
    Ark_Tag tag;
    Ark_TextPickerAttribute value;
} Opt_TextPickerAttribute;
typedef struct Ark_TextPickerResult {
    /* kind: Interface */
    Ark_String value;
    Ark_Int32 index;
} Ark_TextPickerResult;
typedef struct Opt_TextPickerResult {
    Ark_Tag tag;
    Ark_TextPickerResult value;
} Opt_TextPickerResult;
typedef struct Ark_TranslateResult {
    /* kind: Interface */
    Ark_Int64 x;
    Ark_Int64 y;
    Ark_Int64 z;
} Ark_TranslateResult;
typedef struct Opt_TranslateResult {
    Ark_Tag tag;
    Ark_TranslateResult value;
} Opt_TranslateResult;
typedef struct Ark_Tuple_Boolean_Number {
    /* kind: Interface */
    Ark_Boolean value0;
    Ark_Number value1;
} Ark_Tuple_Boolean_Number;
typedef struct Opt_Tuple_Boolean_Number {
    Ark_Tag tag;
    Ark_Tuple_Boolean_Number value;
} Opt_Tuple_Boolean_Number;
typedef struct Ark_Union_Number_String {
    /* kind: UnionType */
    Ark_Int32 selector;
    union {
        Ark_Number value0;
        Ark_String value1;
    };
} Ark_Union_Number_String;
typedef struct Opt_Union_Number_String {
    Ark_Tag tag;
    Ark_Union_Number_String value;
} Opt_Union_Number_String;
typedef struct Ark_UnionInterfaceDTS {
    /* kind: Interface */
    Ark_Number unionProp;
} Ark_UnionInterfaceDTS;
typedef struct Opt_UnionInterfaceDTS {
    Ark_Tag tag;
    Ark_UnionInterfaceDTS value;
} Opt_UnionInterfaceDTS;
typedef struct Ark_UnionOptionalInterfaceDTS {
    /* kind: Interface */
    Ark_String unionProp;
} Ark_UnionOptionalInterfaceDTS;
typedef struct Opt_UnionOptionalInterfaceDTS {
    Ark_Tag tag;
    Ark_UnionOptionalInterfaceDTS value;
} Opt_UnionOptionalInterfaceDTS;
typedef struct Ark_WorkerEventListener {
    /* kind: Interface */
    void *handle;
} Ark_WorkerEventListener;
typedef struct Opt_WorkerEventListener {
    Ark_Tag tag;
    Ark_WorkerEventListener value;
} Opt_WorkerEventListener;
typedef struct Array_Boolean {
    /* kind: ContainerType */
    Ark_Boolean* array;
    Ark_Int32 length;
} Array_Boolean;
typedef struct Opt_Array_Boolean {
    Ark_Tag tag;
    Array_Boolean value;
} Opt_Array_Boolean;
typedef struct Array_BooleanInterfaceDTS {
    /* kind: ContainerType */
    Ark_BooleanInterfaceDTS* array;
    Ark_Int32 length;
} Array_BooleanInterfaceDTS;
typedef struct Opt_Array_BooleanInterfaceDTS {
    Ark_Tag tag;
    Array_BooleanInterfaceDTS value;
} Opt_Array_BooleanInterfaceDTS;
typedef struct Array_Buffer {
    /* kind: ContainerType */
    Ark_Buffer* array;
    Ark_Int32 length;
} Array_Buffer;
typedef struct Opt_Array_Buffer {
    Ark_Tag tag;
    Array_Buffer value;
} Opt_Array_Buffer;
typedef struct Array_CustomObject {
    /* kind: ContainerType */
    Ark_CustomObject* array;
    Ark_Int32 length;
} Array_CustomObject;
typedef struct Opt_Array_CustomObject {
    Ark_Tag tag;
    Array_CustomObject value;
} Opt_Array_CustomObject;
typedef struct Array_EnumDTS {
    /* kind: ContainerType */
    Ark_EnumDTS* array;
    Ark_Int32 length;
} Array_EnumDTS;
typedef struct Opt_Array_EnumDTS {
    Ark_Tag tag;
    Array_EnumDTS value;
} Opt_Array_EnumDTS;
typedef struct Array_Number {
    /* kind: ContainerType */
    Ark_Number* array;
    Ark_Int32 length;
} Array_Number;
typedef struct Opt_Array_Number {
    Ark_Tag tag;
    Array_Number value;
} Opt_Array_Number;
typedef struct Array_Object {
    /* kind: ContainerType */
    Ark_Object* array;
    Ark_Int32 length;
} Array_Object;
typedef struct Opt_Array_Object {
    Ark_Tag tag;
    Array_Object value;
} Opt_Array_Object;
typedef struct Array_String {
    /* kind: ContainerType */
    Ark_String* array;
    Ark_Int32 length;
} Array_String;
typedef struct Opt_Array_String {
    Ark_Tag tag;
    Array_String value;
} Opt_Array_String;
typedef struct AsyncCallback_image_PixelMap_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_CustomObject result);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject result);
} AsyncCallback_image_PixelMap_Void;
typedef struct Opt_AsyncCallback_image_PixelMap_Void {
    Ark_Tag tag;
    AsyncCallback_image_PixelMap_Void value;
} Opt_AsyncCallback_image_PixelMap_Void;
typedef struct ButtonModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} ButtonModifierBuilder;
typedef struct Opt_ButtonModifierBuilder {
    Ark_Tag tag;
    ButtonModifierBuilder value;
} Opt_ButtonModifierBuilder;
typedef struct Callback_Boolean_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Boolean parameter);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Boolean parameter);
} Callback_Boolean_Void;
typedef struct Opt_Callback_Boolean_Void {
    Ark_Tag tag;
    Callback_Boolean_Void value;
} Opt_Callback_Boolean_Void;
typedef struct Callback_ClickEvent_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_ClickEvent event);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ClickEvent event);
} Callback_ClickEvent_Void;
typedef struct Opt_Callback_ClickEvent_Void {
    Ark_Tag tag;
    Callback_ClickEvent_Void value;
} Opt_Callback_ClickEvent_Void;
typedef struct Callback_CreateItem {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Int32 index, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 index, const Callback_Pointer_Void continuation);
} Callback_CreateItem;
typedef struct Opt_Callback_CreateItem {
    Ark_Tag tag;
    Callback_CreateItem value;
} Opt_Callback_CreateItem;
typedef struct Callback_DrawContext_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_DrawContext drawContext);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext drawContext);
} Callback_DrawContext_Void;
typedef struct Opt_Callback_DrawContext_Void {
    Ark_Tag tag;
    Callback_DrawContext_Void value;
} Opt_Callback_DrawContext_Void;
typedef struct Callback_Extender_OnFinish {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId);
} Callback_Extender_OnFinish;
typedef struct Opt_Callback_Extender_OnFinish {
    Ark_Tag tag;
    Callback_Extender_OnFinish value;
} Opt_Callback_Extender_OnFinish;
typedef struct Callback_Extender_OnProgress {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Float32 value);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Float32 value);
} Callback_Extender_OnProgress;
typedef struct Opt_Callback_Extender_OnProgress {
    Ark_Tag tag;
    Callback_Extender_OnProgress value;
} Opt_Callback_Extender_OnProgress;
typedef struct Callback_NavigationTitleMode_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode);
} Callback_NavigationTitleMode_Void;
typedef struct Opt_Callback_NavigationTitleMode_Void {
    Ark_Tag tag;
    Callback_NavigationTitleMode_Void value;
} Opt_Callback_NavigationTitleMode_Void;
typedef struct Callback_Number_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Number select);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number select);
} Callback_Number_Void;
typedef struct Opt_Callback_Number_Void {
    Ark_Tag tag;
    Callback_Number_Void value;
} Opt_Callback_Number_Void;
typedef struct Callback_onMeasureSize_SizeResult {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint, const Callback_SizeResult_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint, const Callback_SizeResult_Void continuation);
} Callback_onMeasureSize_SizeResult;
typedef struct Opt_Callback_onMeasureSize_SizeResult {
    Ark_Tag tag;
    Callback_onMeasureSize_SizeResult value;
} Opt_Callback_onMeasureSize_SizeResult;
typedef struct Callback_onPlaceChildren_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint);
} Callback_onPlaceChildren_Void;
typedef struct Opt_Callback_onPlaceChildren_Void {
    Ark_Tag tag;
    Callback_onPlaceChildren_Void value;
} Opt_Callback_onPlaceChildren_Void;
typedef struct Callback_Pointer_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer value);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value);
} Callback_Pointer_Void;
typedef struct Opt_Callback_Pointer_Void {
    Ark_Tag tag;
    Callback_Pointer_Void value;
} Opt_Callback_Pointer_Void;
typedef struct Callback_RangeUpdate {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Int32 start, const Ark_Int32 end);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 start, const Ark_Int32 end);
} Callback_RangeUpdate;
typedef struct Opt_Callback_RangeUpdate {
    Ark_Tag tag;
    Callback_RangeUpdate value;
} Opt_Callback_RangeUpdate;
typedef struct Callback_ResourceStr_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_ResourceStr text);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ResourceStr text);
} Callback_ResourceStr_Void;
typedef struct Opt_Callback_ResourceStr_Void {
    Ark_Tag tag;
    Callback_ResourceStr_Void value;
} Opt_Callback_ResourceStr_Void;
typedef struct Callback_SizeResult_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_SizeResult value);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_SizeResult value);
} Callback_SizeResult_Void;
typedef struct Opt_Callback_SizeResult_Void {
    Ark_Tag tag;
    Callback_SizeResult_Void value;
} Opt_Callback_SizeResult_Void;
typedef struct Callback_StateStylesChange {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Int32 currentState);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 currentState);
} Callback_StateStylesChange;
typedef struct Opt_Callback_StateStylesChange {
    Ark_Tag tag;
    Callback_StateStylesChange value;
} Opt_Callback_StateStylesChange;
typedef struct Callback_String_Number_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_String value, const Ark_Number index);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String value, const Ark_Number index);
} Callback_String_Number_Void;
typedef struct Opt_Callback_String_Number_Void {
    Ark_Tag tag;
    Callback_String_Number_Void value;
} Opt_Callback_String_Number_Void;
typedef struct Callback_String_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_String parameter);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String parameter);
} Callback_String_Void;
typedef struct Opt_Callback_String_Void {
    Ark_Tag tag;
    Callback_String_Void value;
} Opt_Callback_String_Void;
typedef struct Callback_TextPickerResult_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_TextPickerResult value);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_TextPickerResult value);
} Callback_TextPickerResult_Void;
typedef struct Opt_Callback_TextPickerResult_Void {
    Ark_Tag tag;
    Callback_TextPickerResult_Void value;
} Opt_Callback_TextPickerResult_Void;
typedef struct Callback_Union_Number_Array_Number_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Union_Number_Array_Number selected);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_Number_Array_Number selected);
} Callback_Union_Number_Array_Number_Void;
typedef struct Opt_Callback_Union_Number_Array_Number_Void {
    Ark_Tag tag;
    Callback_Union_Number_Array_Number_Void value;
} Opt_Callback_Union_Number_Array_Number_Void;
typedef struct Callback_Union_String_Array_String_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value);
} Callback_Union_String_Array_String_Void;
typedef struct Opt_Callback_Union_String_Array_String_Void {
    Ark_Tag tag;
    Callback_Union_String_Array_String_Void value;
} Opt_Callback_Union_String_Array_String_Void;
typedef struct Callback_Void {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId);
} Callback_Void;
typedef struct Opt_Callback_Void {
    Ark_Tag tag;
    Callback_Void value;
} Opt_Callback_Void;
typedef struct CheckBoxModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CheckBoxConfiguration config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CheckBoxConfiguration config, const Callback_Pointer_Void continuation);
} CheckBoxModifierBuilder;
typedef struct Opt_CheckBoxModifierBuilder {
    Ark_Tag tag;
    CheckBoxModifierBuilder value;
} Opt_CheckBoxModifierBuilder;
typedef struct CustomNodeBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Callback_Pointer_Void continuation);
} CustomNodeBuilder;
typedef struct Opt_CustomNodeBuilder {
    Ark_Tag tag;
    CustomNodeBuilder value;
} Opt_CustomNodeBuilder;
typedef struct DataPanelModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} DataPanelModifierBuilder;
typedef struct Opt_DataPanelModifierBuilder {
    Ark_Tag tag;
    DataPanelModifierBuilder value;
} Opt_DataPanelModifierBuilder;
typedef struct GaugeModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} GaugeModifierBuilder;
typedef struct Opt_GaugeModifierBuilder {
    Ark_Tag tag;
    GaugeModifierBuilder value;
} Opt_GaugeModifierBuilder;
typedef struct LoadingProgressModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} LoadingProgressModifierBuilder;
typedef struct Opt_LoadingProgressModifierBuilder {
    Ark_Tag tag;
    LoadingProgressModifierBuilder value;
} Opt_LoadingProgressModifierBuilder;
typedef struct MenuItemModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} MenuItemModifierBuilder;
typedef struct Opt_MenuItemModifierBuilder {
    Ark_Tag tag;
    MenuItemModifierBuilder value;
} Opt_MenuItemModifierBuilder;
typedef struct NavExtender_OnUpdateStack {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId);
} NavExtender_OnUpdateStack;
typedef struct Opt_NavExtender_OnUpdateStack {
    Ark_Tag tag;
    NavExtender_OnUpdateStack value;
} Opt_NavExtender_OnUpdateStack;
typedef struct ProgressModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} ProgressModifierBuilder;
typedef struct Opt_ProgressModifierBuilder {
    Ark_Tag tag;
    ProgressModifierBuilder value;
} Opt_ProgressModifierBuilder;
typedef struct RadioModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} RadioModifierBuilder;
typedef struct Opt_RadioModifierBuilder {
    Ark_Tag tag;
    RadioModifierBuilder value;
} Opt_RadioModifierBuilder;
typedef struct RatingModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} RatingModifierBuilder;
typedef struct Opt_RatingModifierBuilder {
    Ark_Tag tag;
    RatingModifierBuilder value;
} Opt_RatingModifierBuilder;
typedef struct RestrictedWorker_onerror_Callback {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_ErrorEvent ev);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ErrorEvent ev);
} RestrictedWorker_onerror_Callback;
typedef struct Opt_RestrictedWorker_onerror_Callback {
    Ark_Tag tag;
    RestrictedWorker_onerror_Callback value;
} Opt_RestrictedWorker_onerror_Callback;
typedef struct RestrictedWorker_onexit_Callback {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Number code);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number code);
} RestrictedWorker_onexit_Callback;
typedef struct Opt_RestrictedWorker_onexit_Callback {
    Ark_Tag tag;
    RestrictedWorker_onexit_Callback value;
} Opt_RestrictedWorker_onexit_Callback;
typedef struct RestrictedWorker_onmessage_Callback {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_MessageEvents event);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_MessageEvents event);
} RestrictedWorker_onmessage_Callback;
typedef struct Opt_RestrictedWorker_onmessage_Callback {
    Ark_Tag tag;
    RestrictedWorker_onmessage_Callback value;
} Opt_RestrictedWorker_onmessage_Callback;
typedef struct SearchValueCallback {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_String value);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String value);
} SearchValueCallback;
typedef struct Opt_SearchValueCallback {
    Ark_Tag tag;
    SearchValueCallback value;
} Opt_SearchValueCallback;
typedef struct SliderModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} SliderModifierBuilder;
typedef struct Opt_SliderModifierBuilder {
    Ark_Tag tag;
    SliderModifierBuilder value;
} Opt_SliderModifierBuilder;
typedef struct TextClockModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} TextClockModifierBuilder;
typedef struct Opt_TextClockModifierBuilder {
    Ark_Tag tag;
    TextClockModifierBuilder value;
} Opt_TextClockModifierBuilder;
typedef struct TextFieldValueCallback {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_ResourceStr value);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ResourceStr value);
} TextFieldValueCallback;
typedef struct Opt_TextFieldValueCallback {
    Ark_Tag tag;
    TextFieldValueCallback value;
} Opt_TextFieldValueCallback;
typedef struct TextPickerScrollStopCallback {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index);
} TextPickerScrollStopCallback;
typedef struct Opt_TextPickerScrollStopCallback {
    Ark_Tag tag;
    TextPickerScrollStopCallback value;
} Opt_TextPickerScrollStopCallback;
typedef struct TextTimerModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} TextTimerModifierBuilder;
typedef struct Opt_TextTimerModifierBuilder {
    Ark_Tag tag;
    TextTimerModifierBuilder value;
} Opt_TextTimerModifierBuilder;
typedef struct ToggleModifierBuilder {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation);
} ToggleModifierBuilder;
typedef struct Opt_ToggleModifierBuilder {
    Ark_Tag tag;
    ToggleModifierBuilder value;
} Opt_ToggleModifierBuilder;
typedef struct Type_TextPickerAttribute_onChange_callback {
    /* kind: Callback */
    Ark_CallbackResource resource;
    void (*call)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index);
    void (*callSync)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index);
} Type_TextPickerAttribute_onChange_callback;
typedef struct Opt_Type_TextPickerAttribute_onChange_callback {
    Ark_Tag tag;
    Type_TextPickerAttribute_onChange_callback value;
} Opt_Type_TextPickerAttribute_onChange_callback;
typedef struct Ark_AnimateParam {
    /* kind: Interface */
    Opt_Number duration;
} Ark_AnimateParam;
typedef struct Opt_AnimateParam {
    Ark_Tag tag;
    Ark_AnimateParam value;
} Opt_AnimateParam;
typedef struct Ark_ArrayRefNumberInterfaceDTS {
    /* kind: Interface */
    Opt_Array_Number tuple;
} Ark_ArrayRefNumberInterfaceDTS;
typedef struct Opt_ArrayRefNumberInterfaceDTS {
    Ark_Tag tag;
    Ark_ArrayRefNumberInterfaceDTS value;
} Opt_ArrayRefNumberInterfaceDTS;
typedef struct Ark_ArrayRefTuplesInterfaceDTS {
    /* kind: Interface */
    Opt_Array_CustomObject tuple;
} Ark_ArrayRefTuplesInterfaceDTS;
typedef struct Opt_ArrayRefTuplesInterfaceDTS {
    Ark_Tag tag;
    Ark_ArrayRefTuplesInterfaceDTS value;
} Opt_ArrayRefTuplesInterfaceDTS;
typedef struct Opt_BaseEvent {
    Ark_Tag tag;
    Ark_BaseEvent value;
} Opt_BaseEvent;
typedef struct Ark_BlurOptions {
    /* kind: Interface */
    Opt_CustomObject grayscale;
} Ark_BlurOptions;
typedef struct Opt_BlurOptions {
    Ark_Tag tag;
    Ark_BlurOptions value;
} Opt_BlurOptions;
typedef struct Ark_BuilderNodeOptions {
    /* kind: Interface */
    Opt_CustomObject selfIdealSize;
    Opt_Int64 type;
    Opt_String surfaceId;
} Ark_BuilderNodeOptions;
typedef struct Opt_BuilderNodeOptions {
    Ark_Tag tag;
    Ark_BuilderNodeOptions value;
} Opt_BuilderNodeOptions;
typedef struct Ark_CheckBoxConfiguration {
    /* kind: Interface */
    Ark_Boolean enabled;
    Ark_String name;
    Ark_Boolean selected;
    Ark_Boolean triggerChange;
} Ark_CheckBoxConfiguration;
typedef struct Opt_CheckBoxConfiguration {
    Ark_Tag tag;
    Ark_CheckBoxConfiguration value;
} Opt_CheckBoxConfiguration;
typedef struct Ark_CheckboxOptions {
    /* kind: Interface */
    Opt_String name;
    Opt_String group;
} Ark_CheckboxOptions;
typedef struct Opt_CheckboxOptions {
    Ark_Tag tag;
    Ark_CheckboxOptions value;
} Opt_CheckboxOptions;
typedef struct Opt_ClickEvent {
    Ark_Tag tag;
    Ark_ClickEvent value;
} Opt_ClickEvent;
typedef struct Ark_CustomDialogBuildOptions {
    /* kind: Interface */
    Opt_CustomDialogController controller;
} Ark_CustomDialogBuildOptions;
typedef struct Opt_CustomDialogBuildOptions {
    Ark_Tag tag;
    Ark_CustomDialogBuildOptions value;
} Opt_CustomDialogBuildOptions;
typedef struct Ark_DoubleAnimationParam {
    /* kind: Interface */
    Ark_String propertyName;
    Opt_Float32 startValue;
    Opt_Float32 endValue;
    Opt_Int32 duration;
    Opt_Int32 delay;
    Opt_Curve curve;
    Opt_Callback_Extender_OnProgress onProgress;
    Opt_Callback_Extender_OnFinish onFinish;
} Ark_DoubleAnimationParam;
typedef struct Opt_DoubleAnimationParam {
    Ark_Tag tag;
    Ark_DoubleAnimationParam value;
} Opt_DoubleAnimationParam;
typedef struct Ark_DragInteractionOptions {
    /* kind: Interface */
    Opt_Boolean isMultiSelectionEnabled;
    Opt_Boolean defaultAnimationBeforeLifting;
} Ark_DragInteractionOptions;
typedef struct Opt_DragInteractionOptions {
    Ark_Tag tag;
    Ark_DragInteractionOptions value;
} Opt_DragInteractionOptions;
typedef struct Ark_DragPreviewOptions {
    /* kind: Interface */
    Opt_DragPreviewMode mode;
    Opt_CustomObject modifier;
    Opt_Boolean numberBadge;
} Ark_DragPreviewOptions;
typedef struct Opt_DragPreviewOptions {
    Ark_Tag tag;
    Ark_DragPreviewOptions value;
} Opt_DragPreviewOptions;
typedef struct Opt_DrawModifier {
    Ark_Tag tag;
    Ark_DrawModifier value;
} Opt_DrawModifier;
typedef struct Ark_EdgeStyles {
    /* kind: Interface */
    Opt_BorderStyle top;
    Opt_BorderStyle right;
    Opt_BorderStyle bottom;
    Opt_BorderStyle left;
} Ark_EdgeStyles;
typedef struct Opt_EdgeStyles {
    Ark_Tag tag;
    Ark_EdgeStyles value;
} Opt_EdgeStyles;
typedef struct Ark_ErrorEvent {
    /* kind: Interface */
    Ark_String type;
    Opt_Int64 timeStamp;
    Ark_String message;
    Ark_String filename;
    Ark_Number lineno;
    Ark_Number colno;
    Opt_Object error;
} Ark_ErrorEvent;
typedef struct Opt_ErrorEvent {
    Ark_Tag tag;
    Ark_ErrorEvent value;
} Opt_ErrorEvent;
typedef struct Ark_Event {
    /* kind: Interface */
    Ark_String type;
    Opt_Int64 timeStamp;
} Ark_Event;
typedef struct Opt_Event {
    Ark_Tag tag;
    Ark_Event value;
} Opt_Event;
typedef struct Ark_LocalizedBorderRadiuses {
    /* kind: Interface */
    Opt_CustomObject topStart;
    Opt_CustomObject topEnd;
    Opt_CustomObject bottomStart;
    Opt_CustomObject bottomEnd;
} Ark_LocalizedBorderRadiuses;
typedef struct Opt_LocalizedBorderRadiuses {
    Ark_Tag tag;
    Ark_LocalizedBorderRadiuses value;
} Opt_LocalizedBorderRadiuses;
typedef struct Ark_LocalizedEdgeWidths {
    /* kind: Interface */
    Opt_CustomObject top;
    Opt_CustomObject end;
    Opt_CustomObject bottom;
    Opt_CustomObject start;
} Ark_LocalizedEdgeWidths;
typedef struct Opt_LocalizedEdgeWidths {
    Ark_Tag tag;
    Ark_LocalizedEdgeWidths value;
} Opt_LocalizedEdgeWidths;
typedef struct Ark_LocalizedPadding {
    /* kind: Interface */
    Opt_CustomObject top;
    Opt_CustomObject end;
    Opt_CustomObject bottom;
    Opt_CustomObject start;
} Ark_LocalizedPadding;
typedef struct Opt_LocalizedPadding {
    Ark_Tag tag;
    Ark_LocalizedPadding value;
} Opt_LocalizedPadding;
typedef struct Ark_Matrix4Result {
    /* kind: Interface */
    Ark_Number value0;
    Ark_Number value1;
    Ark_Number value2;
    Ark_Number value3;
    Ark_Number value4;
    Ark_Number value5;
    Ark_Number value6;
    Ark_Number value7;
    Ark_Number value8;
    Ark_Number value9;
    Ark_Number value10;
    Ark_Number value11;
    Ark_Number value12;
    Ark_Number value13;
    Ark_Number value14;
    Ark_Number value15;
} Ark_Matrix4Result;
typedef struct Opt_Matrix4Result {
    Ark_Tag tag;
    Ark_Matrix4Result value;
} Opt_Matrix4Result;
typedef struct Ark_MessageEvents {
    /* kind: Interface */
    Ark_String type;
    Opt_Int64 timeStamp;
    Opt_CustomObject data;
} Ark_MessageEvents;
typedef struct Opt_MessageEvents {
    Ark_Tag tag;
    Ark_MessageEvents value;
} Opt_MessageEvents;
typedef struct Ark_PostMessageOptions {
    /* kind: Interface */
    Opt_Array_Object transfer;
} Ark_PostMessageOptions;
typedef struct Opt_PostMessageOptions {
    Ark_Tag tag;
    Ark_PostMessageOptions value;
} Opt_PostMessageOptions;
typedef struct Ark_Resource {
    /* kind: Interface */
    Ark_String bundleName;
    Ark_String moduleName;
    Ark_Int64 id;
    Opt_Array_String params;
    Opt_Int64 type_;
} Ark_Resource;
typedef struct Opt_Resource {
    Ark_Tag tag;
    Ark_Resource value;
} Opt_Resource;
typedef struct Ark_ResourceColor {
    /* kind: UnionType */
    Ark_Int32 selector;
    union {
        Ark_Color value0;
        Ark_Number value1;
        Ark_String value2;
        Ark_Resource value3;
    };
} Ark_ResourceColor;
typedef struct Opt_ResourceColor {
    Ark_Tag tag;
    Ark_ResourceColor value;
} Opt_ResourceColor;
typedef struct Ark_ResourceStr {
    /* kind: UnionType */
    Ark_Int32 selector;
    union {
        Ark_String value0;
        Ark_Resource value1;
    };
} Ark_ResourceStr;
typedef struct Opt_ResourceStr {
    Ark_Tag tag;
    Ark_ResourceStr value;
} Opt_ResourceStr;
typedef struct Ark_SnapshotOptions {
    /* kind: Interface */
    Opt_Number scale;
    Opt_Boolean waitUntilRenderFinished;
} Ark_SnapshotOptions;
typedef struct Opt_SnapshotOptions {
    Ark_Tag tag;
    Ark_SnapshotOptions value;
} Opt_SnapshotOptions;
typedef struct Ark_TextPickerOptions {
    /* kind: Interface */
    Opt_Array_String range;
    Opt_String value;
    Opt_Number selected;
} Ark_TextPickerOptions;
typedef struct Opt_TextPickerOptions {
    Ark_Tag tag;
    Ark_TextPickerOptions value;
} Opt_TextPickerOptions;
typedef struct Ark_TranslateOptions {
    /* kind: Interface */
    Opt_Int64 x;
    Opt_Int64 y;
    Opt_Int64 z;
} Ark_TranslateOptions;
typedef struct Opt_TranslateOptions {
    Ark_Tag tag;
    Ark_TranslateOptions value;
} Opt_TranslateOptions;
typedef struct Ark_TupleInterfaceDTS {
    /* kind: Interface */
    Opt_CustomObject tuple;
} Ark_TupleInterfaceDTS;
typedef struct Opt_TupleInterfaceDTS {
    Ark_Tag tag;
    Ark_TupleInterfaceDTS value;
} Opt_TupleInterfaceDTS;
typedef struct Ark_Union_Number_Array_Number {
    /* kind: UnionType */
    Ark_Int32 selector;
    union {
        Ark_Number value0;
        Array_Number value1;
    };
} Ark_Union_Number_Array_Number;
typedef struct Opt_Union_Number_Array_Number {
    Ark_Tag tag;
    Ark_Union_Number_Array_Number value;
} Opt_Union_Number_Array_Number;
typedef struct Ark_Union_String_Array_String {
    /* kind: UnionType */
    Ark_Int32 selector;
    union {
        Ark_String value0;
        Array_String value1;
    };
} Ark_Union_String_Array_String;
typedef struct Opt_Union_String_Array_String {
    Ark_Tag tag;
    Ark_Union_String_Array_String value;
} Opt_Union_String_Array_String;
typedef struct Ark_WorkerOptions {
    /* kind: Interface */
    Opt_String type;
    Opt_String name;
    Opt_Boolean shared;
} Ark_WorkerOptions;
typedef struct Opt_WorkerOptions {
    Ark_Tag tag;
    Ark_WorkerOptions value;
} Opt_WorkerOptions;
typedef struct Ark_BackgroundBlurStyleOptions {
    /* kind: Interface */
    Opt_ThemeColorMode colorMode;
    Opt_AdaptiveColor adaptiveColor;
    Opt_Number scale;
    Opt_BlurOptions blurOptions;
    Opt_BlurStyleActivePolicy policy;
    Opt_ResourceColor inactiveColor;
} Ark_BackgroundBlurStyleOptions;
typedef struct Opt_BackgroundBlurStyleOptions {
    Ark_Tag tag;
    Ark_BackgroundBlurStyleOptions value;
} Opt_BackgroundBlurStyleOptions;
typedef struct Ark_ComponentInfo {
    /* kind: Interface */
    Opt_CustomObject size;
    Opt_Offset_componentutils localOffset;
    Opt_Offset_componentutils windowOffset;
    Opt_Offset_componentutils screenOffset;
    Opt_TranslateResult translate;
    Opt_ScaleResult scale;
    Opt_RotateResult rotate;
    Opt_Matrix4Result transform;
} Ark_ComponentInfo;
typedef struct Opt_ComponentInfo {
    Ark_Tag tag;
    Ark_ComponentInfo value;
} Opt_ComponentInfo;
typedef struct Ark_CustomDialogControllerBuilder {
    /* kind: Interface */
    Opt_CustomDialogBuildOptions buildOptions;
    Opt_CustomNodeBuilder build;
} Ark_CustomDialogControllerBuilder;
typedef struct Opt_CustomDialogControllerBuilder {
    Ark_Tag tag;
    Ark_CustomDialogControllerBuilder value;
} Opt_CustomDialogControllerBuilder;
typedef struct Ark_Dimension {
    /* kind: UnionType */
    Ark_Int32 selector;
    union {
        Ark_String value0;
        Ark_Number value1;
        Ark_Resource value2;
    };
} Ark_Dimension;
typedef struct Opt_Dimension {
    Ark_Tag tag;
    Ark_Dimension value;
} Opt_Dimension;
typedef struct Ark_EdgeColors {
    /* kind: Interface */
    Opt_ResourceColor top;
    Opt_ResourceColor right;
    Opt_ResourceColor bottom;
    Opt_ResourceColor left;
} Ark_EdgeColors;
typedef struct Opt_EdgeColors {
    Ark_Tag tag;
    Ark_EdgeColors value;
} Opt_EdgeColors;
typedef struct Ark_Length {
    /* kind: UnionType */
    Ark_Int32 selector;
    union {
        Ark_String value0;
        Ark_Number value1;
        Ark_Resource value2;
    };
} Ark_Length;
typedef struct Opt_Length {
    Ark_Tag tag;
    Ark_Length value;
} Opt_Length;
typedef struct Ark_Offset {
    /* kind: Interface */
    Ark_Length dx;
    Ark_Length dy;
} Ark_Offset;
typedef struct Opt_Offset {
    Ark_Tag tag;
    Ark_Offset value;
} Opt_Offset;
typedef struct Opt_RestrictedWorker {
    Ark_Tag tag;
    Ark_RestrictedWorker value;
} Opt_RestrictedWorker;
typedef struct Ark_SheetTitleOptions {
    /* kind: Interface */
    Opt_ResourceStr title;
    Opt_ResourceStr subtitle;
} Ark_SheetTitleOptions;
typedef struct Opt_SheetTitleOptions {
    Ark_Tag tag;
    Ark_SheetTitleOptions value;
} Opt_SheetTitleOptions;
typedef struct Ark_TextInputOptions {
    /* kind: Interface */
    Opt_ResourceStr placeholder;
    Opt_ResourceStr text;
} Ark_TextInputOptions;
typedef struct Opt_TextInputOptions {
    Ark_Tag tag;
    Ark_TextInputOptions value;
} Opt_TextInputOptions;
typedef struct Ark_BorderRadiuses {
    /* kind: Interface */
    Ark_Length topLeft;
    Ark_Length topRight;
    Ark_Length bottomLeft;
    Ark_Length bottomRight;
} Ark_BorderRadiuses;
typedef struct Opt_BorderRadiuses {
    Ark_Tag tag;
    Ark_BorderRadiuses value;
} Opt_BorderRadiuses;
typedef struct Ark_CustomDialogControllerOptions {
    /* kind: Interface */
    Opt_CustomDialogControllerBuilder builder;
} Ark_CustomDialogControllerOptions;
typedef struct Opt_CustomDialogControllerOptions {
    Ark_Tag tag;
    Ark_CustomDialogControllerOptions value;
} Opt_CustomDialogControllerOptions;
typedef struct Ark_DividerOptions {
    /* kind: Interface */
    Opt_Dimension strokeWidth;
    Opt_ResourceColor color;
    Opt_Dimension startMargin;
    Opt_Dimension endMargin;
} Ark_DividerOptions;
typedef struct Opt_DividerOptions {
    Ark_Tag tag;
    Ark_DividerOptions value;
} Opt_DividerOptions;
typedef struct Ark_EdgeWidths {
    /* kind: Interface */
    Opt_Length top;
    Opt_Length right;
    Opt_Length bottom;
    Opt_Length left;
} Ark_EdgeWidths;
typedef struct Opt_EdgeWidths {
    Ark_Tag tag;
    Ark_EdgeWidths value;
} Opt_EdgeWidths;
typedef struct Ark_Font {
    /* kind: Interface */
    Opt_Length size;
    Opt_FontWeight weight;
    Opt_String family;
    Opt_FontStyle style;
} Ark_Font;
typedef struct Opt_Font {
    Ark_Tag tag;
    Ark_Font value;
} Opt_Font;
typedef struct Ark_MarkStyle {
    /* kind: Interface */
    Opt_ResourceColor strokeColor;
    Opt_Length size;
    Opt_Length strokeWidth;
} Ark_MarkStyle;
typedef struct Opt_MarkStyle {
    Ark_Tag tag;
    Ark_MarkStyle value;
} Opt_MarkStyle;
typedef struct Ark_Padding {
    /* kind: Interface */
    Opt_Length top;
    Opt_Length right;
    Opt_Length bottom;
    Opt_Length left;
} Ark_Padding;
typedef struct Opt_Padding {
    Ark_Tag tag;
    Ark_Padding value;
} Opt_Padding;
typedef struct Ark_Position {
    /* kind: Interface */
    Opt_Length x;
    Opt_Length y;
} Ark_Position;
typedef struct Opt_Position {
    Ark_Tag tag;
    Ark_Position value;
} Opt_Position;
typedef struct Ark_Rectangle {
    /* kind: Interface */
    Opt_Length x;
    Opt_Length y;
    Opt_Length width;
    Opt_Length height;
} Ark_Rectangle;
typedef struct Opt_Rectangle {
    Ark_Tag tag;
    Ark_Rectangle value;
} Opt_Rectangle;
typedef struct Ark_SheetOptions {
    /* kind: Interface */
    Opt_ResourceColor backgroundColor;
    Opt_SheetSize height;
    Opt_Boolean dragBar;
    Opt_ResourceColor maskColor;
    Opt_BlurStyle blurStyle;
    Opt_Boolean showClose;
    Opt_SheetType preferType;
    Opt_SheetTitleOptions title;
    Opt_Boolean enableOutsideInteractive;
    Opt_BorderStyle borderStyle;
    Opt_SheetMode mode;
    Opt_CustomObject uiContext;
} Ark_SheetOptions;
typedef struct Opt_SheetOptions {
    Ark_Tag tag;
    Ark_SheetOptions value;
} Opt_SheetOptions;
typedef struct Ark_SizeOptions {
    /* kind: Interface */
    Opt_Length width;
    Opt_Length height;
} Ark_SizeOptions;
typedef struct Opt_SizeOptions {
    Ark_Tag tag;
    Ark_SizeOptions value;
} Opt_SizeOptions;
typedef struct Ark_LabelStyle {
    /* kind: Interface */
    Opt_TextOverflow overflow;
    Opt_Int32 maxLines;
    Opt_Number minFontSize;
    Opt_Number maxFontSize;
    Opt_TextHeightAdaptivePolicy heightAdaptivePolicy;
    Opt_Font font;
} Ark_LabelStyle;
typedef struct Opt_LabelStyle {
    Ark_Tag tag;
    Ark_LabelStyle value;
} Opt_LabelStyle;
typedef struct Ark_TextPickerDialogOptions {
    /* kind: Interface */
    Opt_Array_String range;
    Opt_String value;
    Opt_Number selected;
    Opt_Number defaultPickerItemHeight;
    Opt_Boolean canLoop;
    Opt_CustomObject disappearTextStyle;
    Opt_CustomObject textStyle;
    Opt_CustomObject acceptButtonStyle;
    Opt_CustomObject cancelButtonStyle;
    Opt_CustomObject selectedTextStyle;
    Opt_Callback_TextPickerResult_Void onAccept;
    Opt_Callback_Void onCancel;
    Opt_Callback_TextPickerResult_Void onChange;
    Opt_Callback_TextPickerResult_Void onScrollStop;
    Opt_Rectangle maskRect;
    Opt_CustomObject alignment;
    Opt_Offset offset;
    Opt_ResourceColor backgroundColor;
    Opt_BlurStyle backgroundBlurStyle;
    Opt_Callback_Void onDidAppear;
    Opt_Callback_Void onDidDisappear;
    Opt_Callback_Void onWillAppear;
    Opt_Callback_Void onWillDisappear;
    Opt_CustomObject shadow;
    Opt_Boolean enableHoverMode;
    Opt_CustomObject hoverModeArea;
} Ark_TextPickerDialogOptions;
typedef struct Opt_TextPickerDialogOptions {
    Ark_Tag tag;
    Ark_TextPickerDialogOptions value;
} Opt_TextPickerDialogOptions;



typedef struct GENERATED_ArkUIBlankModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setBlankOptions)(Ark_NativePointer node,
                            const Opt_Number* min);
    void (*setColor)(Ark_NativePointer node,
                     const Ark_ResourceColor* value);
} GENERATED_ArkUIBlankModifier;

typedef struct GENERATED_ArkUIButtonModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setButtonOptions)(Ark_NativePointer node);
    void (*setType)(Ark_NativePointer node,
                    Ark_ButtonType value);
    void (*setFontColor)(Ark_NativePointer node,
                         const Ark_ResourceColor* value);
    void (*setLabelStyle)(Ark_NativePointer node,
                          const Ark_LabelStyle* value);
} GENERATED_ArkUIButtonModifier;

typedef struct GENERATED_ArkUICheckboxModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setCheckboxOptions)(Ark_NativePointer node,
                               const Opt_CheckboxOptions* options);
    void (*setSelect)(Ark_NativePointer node,
                      Ark_Boolean value);
    void (*setSelectedColor)(Ark_NativePointer node,
                             const Ark_ResourceColor* value);
    void (*setShape)(Ark_NativePointer node,
                     Ark_CheckBoxShape value);
    void (*setUnselectedColor)(Ark_NativePointer node,
                               const Ark_ResourceColor* value);
    void (*setMark)(Ark_NativePointer node,
                    const Ark_MarkStyle* value);
    void (*setOnChange)(Ark_NativePointer node,
                        const Callback_Boolean_Void* callback_);
    void (*set_onChangeEvent_select)(Ark_NativePointer node,
                                     const Callback_Number_Void* callback);
} GENERATED_ArkUICheckboxModifier;

typedef struct GENERATED_ArkUIColumnModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setColumnOptions)(Ark_NativePointer node);
    void (*setAlignItems)(Ark_NativePointer node,
                          Ark_HorizontalAlign value);
} GENERATED_ArkUIColumnModifier;

typedef struct GENERATED_ArkUICommonMethodModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setBackdropBlur)(Ark_NativePointer node,
                            const Ark_Number* value,
                            const Opt_BlurOptions* options);
    void (*setWidth)(Ark_NativePointer node,
                     const Ark_Length* value);
    void (*setHeight)(Ark_NativePointer node,
                      const Ark_Length* value);
    void (*setKey)(Ark_NativePointer node,
                   const Ark_String* value);
    void (*setRestoreId)(Ark_NativePointer node,
                         const Ark_Number* value);
    void (*setPadding)(Ark_NativePointer node,
                       const Ark_Padding* value);
    void (*setBindSheet)(Ark_NativePointer node,
                         Ark_Boolean isShow,
                         const Opt_SheetOptions* options);
    void (*setBackgroundBlurStyle)(Ark_NativePointer node,
                                   Ark_BlurStyle value,
                                   const Opt_BackgroundBlurStyleOptions* options);
    void (*setDragPreviewOptions)(Ark_NativePointer node,
                                  const Ark_DragPreviewOptions* value,
                                  const Opt_DragInteractionOptions* options);
    void (*setOnClick0)(Ark_NativePointer node,
                        const Opt_Callback_ClickEvent_Void* event);
    void (*setOnClick1)(Ark_NativePointer node,
                        const Opt_Callback_ClickEvent_Void* event,
                        const Opt_Number* distanceThreshold);
} GENERATED_ArkUICommonMethodModifier;

typedef struct GENERATED_ArkUIComponentRootModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
} GENERATED_ArkUIComponentRootModifier;

typedef struct GENERATED_ArkUICustomLayoutRootModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setSubscribeOnMeasureSize)(Ark_NativePointer node,
                                      const Callback_onMeasureSize_SizeResult* value);
    void (*setSubscribeOnPlaceChildren)(Ark_NativePointer node,
                                        const Callback_onPlaceChildren_Void* value);
} GENERATED_ArkUICustomLayoutRootModifier;

typedef struct GENERATED_ArkUIListModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setListOptions)(Ark_NativePointer node);
    void (*setSomeOptional)(Ark_NativePointer node,
                            const Opt_Boolean* param);
} GENERATED_ArkUIListModifier;

typedef struct GENERATED_ArkUINavigationModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setNavigationOptions)(Ark_NativePointer node);
    void (*setOnTitleModeChange)(Ark_NativePointer node,
                                 const Callback_NavigationTitleMode_Void* callback_);
} GENERATED_ArkUINavigationModifier;

typedef struct GENERATED_ArkUIRootModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
} GENERATED_ArkUIRootModifier;

typedef struct GENERATED_ArkUIScrollableCommonMethodModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setScrollBarWidth)(Ark_NativePointer node,
                              const Ark_Number* value);
    void (*setScrollBarWidth)(Ark_NativePointer node,
                              const Ark_String* value);
} GENERATED_ArkUIScrollableCommonMethodModifier;

typedef struct GENERATED_ArkUITestModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setTestOptions)(Ark_NativePointer node);
    void (*setTestBoolean)(Ark_NativePointer node,
                           Ark_Boolean value);
    void (*setTestNumber)(Ark_NativePointer node,
                          const Ark_Number* value);
    void (*setTestString)(Ark_NativePointer node,
                          const Ark_String* value);
    void (*setTestEnum)(Ark_NativePointer node,
                        Ark_EnumDTS value);
    void (*setTestBasicMix)(Ark_NativePointer node,
                            const Ark_Number* v1,
                            const Ark_String* v2,
                            const Ark_Number* v3);
    void (*setTestBooleanUndefined)(Ark_NativePointer node,
                                    const Opt_Boolean* value);
    void (*setTestNumberUndefined)(Ark_NativePointer node,
                                   const Opt_Number* value);
    void (*setTestStringUndefined)(Ark_NativePointer node,
                                   const Opt_String* value);
    void (*setTestEnumUndefined)(Ark_NativePointer node,
                                 const Opt_EnumDTS* value);
    void (*setTestFunctionNumberVoid)(Ark_NativePointer node,
                                      const Callback_Number_Void* value);
    void (*setTestUnionNumberEnum)(Ark_NativePointer node,
                                   const Ark_Number* val);
    void (*setTestUnionNumberEnum)(Ark_NativePointer node,
                                   Ark_EnumDTS val);
    void (*setTestUnionBooleanString)(Ark_NativePointer node,
                                      Ark_Boolean val);
    void (*setTestUnionBooleanString)(Ark_NativePointer node,
                                      const Ark_String* val);
    void (*setTestUnionStringNumber)(Ark_NativePointer node,
                                     const Ark_Number* val);
    void (*setTestUnionStringNumber)(Ark_NativePointer node,
                                     const Ark_String* val);
    void (*setTestUnionBooleanStringNumberUndefined)(Ark_NativePointer node,
                                                     const Opt_Number* val);
    void (*setTestUnionWithGenericArray)(Ark_NativePointer node,
                                         const Ark_Number* value);
    void (*setTestUnionWithArrayType)(Ark_NativePointer node,
                                      const Ark_Number* value);
    void (*setTestBooleanArray)(Ark_NativePointer node,
                                const Array_Boolean* value);
    void (*setTestNumberArray)(Ark_NativePointer node,
                               const Array_Number* value);
    void (*setTestStringArray)(Ark_NativePointer node,
                               const Array_String* value);
    void (*setTestEnumArray)(Ark_NativePointer node,
                             const Array_EnumDTS* value);
    void (*setTestArrayMix)(Ark_NativePointer node,
                            const Array_Number* v1,
                            const Array_String* v2,
                            const Array_EnumDTS* v3);
    void (*setTestTupleBooleanNumber)(Ark_NativePointer node,
                                      const Ark_CustomObject* value);
    void (*setTestTupleNumberStringEnum)(Ark_NativePointer node,
                                         const Ark_CustomObject* value);
    void (*setTestTupleOptional)(Ark_NativePointer node,
                                 const Ark_CustomObject* value);
    void (*setTestTupleUnion)(Ark_NativePointer node,
                              const Ark_CustomObject* value);
    void (*setTestArrayRefBoolean)(Ark_NativePointer node,
                                   const Array_Boolean* value);
    void (*setTestArrayRefNumber)(Ark_NativePointer node,
                                  const Array_Number* value);
    void (*setTestBooleanInterface)(Ark_NativePointer node,
                                    const Ark_BooleanInterfaceDTS* value);
    void (*setTestNumberInterface)(Ark_NativePointer node,
                                   const Ark_NumberInterfaceDTS* value);
    void (*setTestStringInterface)(Ark_NativePointer node,
                                   const Ark_StringInterfaceDTS* value);
    void (*setTestUnionInterface)(Ark_NativePointer node,
                                  const Ark_UnionInterfaceDTS* value);
    void (*setTestUnionOptional)(Ark_NativePointer node,
                                 const Ark_UnionOptionalInterfaceDTS* value);
    void (*setTestTupleInterface)(Ark_NativePointer node,
                                  const Ark_TupleInterfaceDTS* value);
    void (*setTestArrayRefNumberInterface)(Ark_NativePointer node,
                                           const Ark_ArrayRefNumberInterfaceDTS* value);
    void (*setTestBooleanInterfaceOption)(Ark_NativePointer node,
                                          const Opt_BooleanInterfaceDTS* value);
    void (*setTestBooleanInterfaceArray)(Ark_NativePointer node,
                                         const Array_BooleanInterfaceDTS* value);
    void (*setTestBooleanInterfaceArrayRef)(Ark_NativePointer node,
                                            const Array_BooleanInterfaceDTS* value);
    void (*setTestInterfaceMixed)(Ark_NativePointer node,
                                  const Ark_UnionInterfaceDTS* v1,
                                  const Ark_Number* v2,
                                  const Ark_TupleInterfaceDTS* v3);
} GENERATED_ArkUITestModifier;

typedef struct GENERATED_ArkUITextInputModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setTextInputOptions)(Ark_NativePointer node,
                                const Opt_TextInputOptions* value);
    void (*setType)(Ark_NativePointer node,
                    Ark_InputType value);
    void (*setContentType)(Ark_NativePointer node,
                           Ark_ContentType value);
    void (*setOnCopy)(Ark_NativePointer node,
                      const Callback_String_Void* callback_);
    void (*set_onChangeEvent_text)(Ark_NativePointer node,
                                   const Callback_ResourceStr_Void* callback);
} GENERATED_ArkUITextInputModifier;

typedef struct GENERATED_ArkUITextPickerModifier {
    Ark_NativePointer (*construct)(Ark_Int32 id,
                                   Ark_Int32 flags);
    void (*setTextPickerOptions)(Ark_NativePointer node,
                                 const Opt_TextPickerOptions* options);
    void (*setDefaultPickerItemHeight)(Ark_NativePointer node,
                                       const Ark_Number* value);
    void (*setDefaultPickerItemHeight)(Ark_NativePointer node,
                                       const Ark_String* value);
    void (*setCanLoop)(Ark_NativePointer node,
                       Ark_Boolean value);
    void (*setDisappearTextStyle)(Ark_NativePointer node,
                                  const Ark_CustomObject* value);
    void (*setTextStyle)(Ark_NativePointer node,
                         const Ark_CustomObject* value);
    void (*setSelectedTextStyle)(Ark_NativePointer node,
                                 const Ark_CustomObject* value);
    void (*setOnAccept)(Ark_NativePointer node,
                        const Callback_String_Number_Void* callback_);
    void (*setOnCancel)(Ark_NativePointer node,
                        const Callback_Void* callback_);
    void (*setOnChange)(Ark_NativePointer node,
                        const Type_TextPickerAttribute_onChange_callback* callback_);
    void (*setOnScrollStop)(Ark_NativePointer node,
                            const TextPickerScrollStopCallback* callback_);
    void (*setSelectedIndex)(Ark_NativePointer node,
                             const Ark_Number* value);
    void (*setDivider)(Ark_NativePointer node,
                       const Opt_DividerOptions* value);
    void (*setGradientHeight)(Ark_NativePointer node,
                              const Ark_Dimension* value);
    void (*set_onChangeEvent_selected)(Ark_NativePointer node,
                                       const Callback_Union_Number_Array_Number_Void* callback);
    void (*set_onChangeEvent_value)(Ark_NativePointer node,
                                    const Callback_Union_String_Array_String_Void* callback);
} GENERATED_ArkUITextPickerModifier;

// Accessors

typedef struct GENERATED_ArkUIAnimationExtenderAccessor {
    void (*SetClipRect)(Ark_NativePointer node,
                        Ark_Float32 x,
                        Ark_Float32 y,
                        Ark_Float32 width,
                        Ark_Float32 height);
    void (*OpenImplicitAnimation)(const Ark_AnimateParam* param);
    void (*CloseImplicitAnimation)();
    void (*StartDoubleAnimation)(Ark_NativePointer node,
                                 const Ark_DoubleAnimationParam* param);
    void (*AnimationTranslate)(Ark_NativePointer node,
                               const Ark_TranslateOptions* options);
} GENERATED_ArkUIAnimationExtenderAccessor;

typedef struct GENERATED_ArkUIBaseEventAccessor {
    void (*destroyPeer)(Ark_BaseEvent peer);
    Ark_BaseEvent (*construct)();
    Ark_NativePointer (*getFinalizer)();
    Ark_Boolean (*getModifierKeyState)(Ark_BaseEvent peer,
                                       const Array_String* keys);
    Ark_SourceType (*getSource)(Ark_BaseEvent peer);
    void (*setSource)(Ark_BaseEvent peer,
                      Ark_SourceType source);
    Opt_Number (*getAxisHorizontal)(Ark_BaseEvent peer);
    void (*setAxisHorizontal)(Ark_BaseEvent peer,
                              const Opt_Number* axisHorizontal);
    Opt_Number (*getAxisVertical)(Ark_BaseEvent peer);
    void (*setAxisVertical)(Ark_BaseEvent peer,
                            const Opt_Number* axisVertical);
    Ark_Number (*getPressure)(Ark_BaseEvent peer);
    void (*setPressure)(Ark_BaseEvent peer,
                        const Ark_Number* pressure);
    Ark_Number (*getTiltX)(Ark_BaseEvent peer);
    void (*setTiltX)(Ark_BaseEvent peer,
                     const Ark_Number* tiltX);
    Ark_SourceTool (*getSourceTool)(Ark_BaseEvent peer);
    void (*setSourceTool)(Ark_BaseEvent peer,
                          Ark_SourceTool sourceTool);
    Opt_Number (*getDeviceId)(Ark_BaseEvent peer);
    void (*setDeviceId)(Ark_BaseEvent peer,
                        const Opt_Number* deviceId);
    Opt_Number (*getTargetDisplayId)(Ark_BaseEvent peer);
    void (*setTargetDisplayId)(Ark_BaseEvent peer,
                               const Opt_Number* targetDisplayId);
} GENERATED_ArkUIBaseEventAccessor;

typedef struct GENERATED_ArkUIBaseShapeAccessor {
    void (*destroyPeer)(Ark_BaseShape peer);
    Ark_BaseShape (*construct)();
    Ark_NativePointer (*getFinalizer)();
    Ark_BaseShape (*width)(Ark_BaseShape peer,
                           const Ark_Length* width);
    Ark_BaseShape (*height)(Ark_BaseShape peer,
                            const Ark_Length* height);
    Ark_BaseShape (*size)(Ark_BaseShape peer,
                          const Ark_SizeOptions* size);
} GENERATED_ArkUIBaseShapeAccessor;

typedef struct GENERATED_ArkUIBuilderNodeOpsAccessor {
    void (*destroyPeer)(Ark_BuilderNodeOps peer);
    Ark_BuilderNodeOps (*construct)();
    Ark_NativePointer (*getFinalizer)();
    void (*create)(Ark_BuilderNodeOps peer,
                   const Callback_Void* buildFunc);
    void (*disposeNode)(Ark_BuilderNodeOps peer);
    void (*setUpdateConfigurationCallback)(Ark_BuilderNodeOps peer,
                                           const Callback_Void* configurationUpdateFunc);
    void (*setOptions)(Ark_BuilderNodeOps peer,
                       const Ark_BuilderNodeOptions* options);
    Ark_Boolean (*postTouchEvent)(Ark_BuilderNodeOps peer,
                                  const Ark_CustomObject* event);
    Ark_NativePointer (*setRootFrameNodeInBuilderNode)(Ark_BuilderNodeOps peer,
                                                       Ark_NativePointer node);
} GENERATED_ArkUIBuilderNodeOpsAccessor;

typedef struct GENERATED_ArkUIClickEventAccessor {
    void (*destroyPeer)(Ark_ClickEvent peer);
    Ark_ClickEvent (*construct)();
    Ark_NativePointer (*getFinalizer)();
    Ark_Number (*getDisplayX)(Ark_ClickEvent peer);
    void (*setDisplayX)(Ark_ClickEvent peer,
                        const Ark_Number* displayX);
    Ark_Number (*getDisplayY)(Ark_ClickEvent peer);
    void (*setDisplayY)(Ark_ClickEvent peer,
                        const Ark_Number* displayY);
    Ark_Number (*getWindowX)(Ark_ClickEvent peer);
    void (*setWindowX)(Ark_ClickEvent peer,
                       const Ark_Number* windowX);
    Ark_Number (*getWindowY)(Ark_ClickEvent peer);
    void (*setWindowY)(Ark_ClickEvent peer,
                       const Ark_Number* windowY);
    Ark_Number (*getScreenX)(Ark_ClickEvent peer);
    void (*setScreenX)(Ark_ClickEvent peer,
                       const Ark_Number* screenX);
    Ark_Number (*getScreenY)(Ark_ClickEvent peer);
    void (*setScreenY)(Ark_ClickEvent peer,
                       const Ark_Number* screenY);
    Ark_Number (*getX)(Ark_ClickEvent peer);
    void (*setX)(Ark_ClickEvent peer,
                 const Ark_Number* x);
    Ark_Number (*getY)(Ark_ClickEvent peer);
    void (*setY)(Ark_ClickEvent peer,
                 const Ark_Number* y);
    Callback_Void (*getPreventDefault)(Ark_ClickEvent peer);
    void (*setPreventDefault)(Ark_ClickEvent peer,
                              const Callback_Void* preventDefault);
} GENERATED_ArkUIClickEventAccessor;

typedef struct GENERATED_ArkUIColorFilterAccessor {
    void (*destroyPeer)(Ark_ColorFilter peer);
    Ark_ColorFilter (*construct)(const Array_Number* value);
    Ark_NativePointer (*getFinalizer)();
} GENERATED_ArkUIColorFilterAccessor;

typedef struct GENERATED_ArkUICommonShapeAccessor {
    void (*destroyPeer)(Ark_CommonShape peer);
    Ark_CommonShape (*construct)();
    Ark_NativePointer (*getFinalizer)();
    Ark_CommonShape (*offset)(Ark_CommonShape peer,
                              const Ark_Position* offset);
    Ark_CommonShape (*fill)(Ark_CommonShape peer,
                            const Ark_ResourceColor* color);
    Ark_CommonShape (*position)(Ark_CommonShape peer,
                                const Ark_Position* position);
} GENERATED_ArkUICommonShapeAccessor;

typedef struct GENERATED_ArkUIContentModifierHelperAccessor {
    void (*contentModifierButton)(Ark_NativePointer node,
                                  const Ark_Object* contentModifier,
                                  const ButtonModifierBuilder* builder);
    void (*resetContentModifierButton)(Ark_NativePointer node);
    void (*contentModifierCheckBox)(Ark_NativePointer node,
                                    const Ark_Object* contentModifier,
                                    const CheckBoxModifierBuilder* builder);
    void (*resetContentModifierCheckBox)(Ark_NativePointer node);
    void (*contentModifierDataPanel)(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const DataPanelModifierBuilder* builder);
    void (*resetContentModifierDataPanel)(Ark_NativePointer node);
    void (*contentModifierGauge)(Ark_NativePointer node,
                                 const Ark_Object* contentModifier,
                                 const GaugeModifierBuilder* builder);
    void (*resetContentModifierGauge)(Ark_NativePointer node);
    void (*contentModifierLoadingProgress)(Ark_NativePointer node,
                                           const Ark_Object* contentModifier,
                                           const LoadingProgressModifierBuilder* builder);
    void (*resetContentModifierLoadingProgress)(Ark_NativePointer node);
    void (*contentModifierProgress)(Ark_NativePointer node,
                                    const Ark_Object* contentModifier,
                                    const ProgressModifierBuilder* builder);
    void (*resetContentModifierProgress)(Ark_NativePointer node);
    void (*contentModifierRadio)(Ark_NativePointer node,
                                 const Ark_Object* contentModifier,
                                 const RadioModifierBuilder* builder);
    void (*resetContentModifierRadio)(Ark_NativePointer node);
    void (*contentModifierRating)(Ark_NativePointer node,
                                  const Ark_Object* contentModifier,
                                  const RatingModifierBuilder* builder);
    void (*resetContentModifierRating)(Ark_NativePointer node);
    void (*contentModifierMenuItem)(Ark_NativePointer node,
                                    const Ark_Object* contentModifier,
                                    const MenuItemModifierBuilder* builder);
    void (*resetContentModifierMenuItem)(Ark_NativePointer node);
    void (*contentModifierSlider)(Ark_NativePointer node,
                                  const Ark_Object* contentModifier,
                                  const SliderModifierBuilder* builder);
    void (*resetContentModifierSlider)(Ark_NativePointer node);
    void (*contentModifierTextClock)(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const TextClockModifierBuilder* builder);
    void (*resetContentModifierTextClock)(Ark_NativePointer node);
    void (*contentModifierTextTimer)(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const TextTimerModifierBuilder* builder);
    void (*resetContentModifierTextTimer)(Ark_NativePointer node);
    void (*contentModifierToggle)(Ark_NativePointer node,
                                  const Ark_Object* contentModifier,
                                  const ToggleModifierBuilder* builder);
    void (*resetContentModifierToggle)(Ark_NativePointer node);
} GENERATED_ArkUIContentModifierHelperAccessor;

typedef struct GENERATED_ArkUICustomDialogControllerAccessor {
    void (*destroyPeer)(Ark_CustomDialogController peer);
    Ark_CustomDialogController (*construct)(const Ark_CustomDialogControllerOptions* value);
    Ark_NativePointer (*getFinalizer)();
    void (*open)(Ark_CustomDialogController peer);
    void (*close)(Ark_CustomDialogController peer);
} GENERATED_ArkUICustomDialogControllerAccessor;

typedef struct GENERATED_ArkUIDrawModifierAccessor {
    void (*destroyPeer)(Ark_DrawModifier peer);
    Ark_DrawModifier (*construct)();
    Ark_NativePointer (*getFinalizer)();
    void (*invalidate)(Ark_DrawModifier peer);
    Callback_DrawContext_Void (*getDrawBehind)(Ark_DrawModifier peer);
    void (*setDrawBehind)(Ark_DrawModifier peer,
                          const Callback_DrawContext_Void* drawBehind);
    Callback_DrawContext_Void (*getDrawContent)(Ark_DrawModifier peer);
    void (*setDrawContent)(Ark_DrawModifier peer,
                           const Callback_DrawContext_Void* drawContent);
    Callback_DrawContext_Void (*getDrawFront)(Ark_DrawModifier peer);
    void (*setDrawFront)(Ark_DrawModifier peer,
                         const Callback_DrawContext_Void* drawFront);
} GENERATED_ArkUIDrawModifierAccessor;

typedef struct GENERATED_ArkUIEnvironmentBackendAccessor {
    Ark_Boolean (*isAccessibilityEnabled)();
    Ark_Int32 (*getColorMode)();
    Ark_Float32 (*getFontScale)();
    Ark_Float32 (*getFontWeightScale)();
    Ark_String (*getLayoutDirection)();
    Ark_String (*getLanguageCode)();
} GENERATED_ArkUIEnvironmentBackendAccessor;

typedef struct GENERATED_ArkUIEventEmulatorAccessor {
    void (*emitClickEvent)(Ark_NativePointer node,
                           Ark_ClickEvent event);
    void (*emitTextInputEvent)(Ark_NativePointer node,
                               const Ark_String* text);
} GENERATED_ArkUIEventEmulatorAccessor;

typedef struct GENERATED_ArkUIFocusControllerAccessor {
    void (*requestFocus)(const Ark_String* key);
} GENERATED_ArkUIFocusControllerAccessor;

typedef struct GENERATED_ArkUIGlobalScope_ohos_arkui_componentSnapshotAccessor {
    void (*get)(const Ark_String* id,
                const AsyncCallback_image_PixelMap_Void* callback,
                const Opt_SnapshotOptions* options);
} GENERATED_ArkUIGlobalScope_ohos_arkui_componentSnapshotAccessor;

typedef struct GENERATED_ArkUIGlobalScope_ohos_arkui_performanceMonitorAccessor {
    void (*begin)(const Ark_String* scene,
                  Ark_PerfMonitorActionType startInputType,
                  const Opt_String* note);
    void (*end)(const Ark_String* scene);
    void (*recordInputEventTime)(Ark_PerfMonitorActionType actionType,
                                 Ark_PerfMonitorSourceType sourceType,
                                 Ark_Int64 time);
} GENERATED_ArkUIGlobalScope_ohos_arkui_performanceMonitorAccessor;

typedef struct GENERATED_ArkUIGlobalScope_ohos_fontAccessor {
    void (*registerFont)(const Ark_CustomObject* options);
    Array_String (*getSystemFontList)();
    Ark_CustomObject (*getFontByName)(const Ark_String* fontName);
} GENERATED_ArkUIGlobalScope_ohos_fontAccessor;

typedef struct GENERATED_ArkUIGlobalScope_ohos_measure_utilsAccessor {
    Ark_Number (*measureText)(const Ark_CustomObject* options);
    Ark_SizeOptions (*measureTextSize)(const Ark_CustomObject* options);
} GENERATED_ArkUIGlobalScope_ohos_measure_utilsAccessor;

typedef struct GENERATED_ArkUIICurveAccessor {
    void (*destroyPeer)(Ark_ICurve peer);
    Ark_ICurve (*construct)();
    Ark_NativePointer (*getFinalizer)();
    Ark_Number (*interpolate)(Ark_ICurve peer,
                              const Ark_Number* fraction);
} GENERATED_ArkUIICurveAccessor;

typedef struct GENERATED_ArkUIIUIContextAccessor {
    void (*freezeUINode0)(const Ark_String* id,
                          Ark_Boolean isFrozen);
    void (*freezeUINode1)(const Ark_Number* id,
                          Ark_Boolean isFrozen);
} GENERATED_ArkUIIUIContextAccessor;

typedef struct GENERATED_ArkUILazyForEachOpsAccessor {
    void (*Sync)(Ark_NativePointer node,
                 Ark_Int32 totalCount,
                 const Callback_CreateItem* creator,
                 const Callback_RangeUpdate* updater);
} GENERATED_ArkUILazyForEachOpsAccessor;

typedef struct GENERATED_ArkUINavExtenderAccessor {
    void (*setNavigationOptions)(Ark_NativePointer ptr,
                                 const Ark_NavPathStack* pathStack);
    void (*setUpdateStackCallback)(const Ark_NavPathStack* peer,
                                   const NavExtender_OnUpdateStack* callback);
    void (*syncStack)(const Ark_NavPathStack* peer);
    Ark_Boolean (*checkNeedCreate)(Ark_NativePointer navigation,
                                   Ark_Int32 index);
    void (*setNavDestinationNode)(const Ark_NavPathStack* peer,
                                  Ark_Int32 index,
                                  Ark_NativePointer node);
    void (*pushPath)(const Ark_NavPathStack* pathStack,
                     const Ark_CustomObject* info,
                     const Ark_CustomObject* options);
    void (*replacePath)(const Ark_NavPathStack* pathStack,
                        const Ark_CustomObject* info,
                        const Ark_CustomObject* options);
    Ark_String (*pop)(const Ark_NavPathStack* pathStack,
                      Ark_Boolean animated);
    void (*setOnPopCallback)(const Ark_NavPathStack* pathStack,
                             const Callback_String_Void* popCallback);
    Ark_String (*getIdByIndex)(const Ark_NavPathStack* pathStack,
                               Ark_Int32 index);
    Array_String (*getIdByName)(const Ark_NavPathStack* pathStack,
                                const Ark_String* name);
    void (*popToIndex)(const Ark_NavPathStack* pathStack,
                       Ark_Int32 index,
                       Ark_Boolean animated);
    Ark_Number (*popToName)(const Ark_NavPathStack* pathStack,
                            const Ark_String* name,
                            Ark_Boolean animated);
} GENERATED_ArkUINavExtenderAccessor;

typedef struct GENERATED_ArkUIPersistentStorageBackendAccessor {
    Opt_String (*get)(const Ark_String* key);
    Ark_Boolean (*has)(const Ark_String* key);
    void (*remove)(const Ark_String* key);
    void (*set)(const Ark_String* key,
                const Ark_String* value);
    void (*clear)();
} GENERATED_ArkUIPersistentStorageBackendAccessor;

typedef struct GENERATED_ArkUIRenderServiceNodeAccessor {
    Ark_Int32 (*getNodeId)(const Ark_String* nodeId);
} GENERATED_ArkUIRenderServiceNodeAccessor;

typedef struct GENERATED_ArkUIRestrictedWorkerAccessor {
    void (*destroyPeer)(Ark_RestrictedWorker peer);
    Ark_RestrictedWorker (*construct)(const Ark_String* scriptURL,
                                      const Opt_WorkerOptions* options);
    Ark_NativePointer (*getFinalizer)();
    void (*postMessage0)(Ark_RestrictedWorker peer,
                         const Ark_Object* message,
                         const Array_Buffer* transfer);
    void (*postMessage1)(Ark_RestrictedWorker peer,
                         const Ark_Object* message,
                         const Opt_PostMessageOptions* options);
    void (*postMessageWithSharedSendable)(Ark_RestrictedWorker peer,
                                          const Ark_Object* message,
                                          const Opt_Array_Buffer* transfer);
    void (*on)(Ark_RestrictedWorker peer,
               const Ark_String* Type,
               const Ark_WorkerEventListener* listener);
    void (*once)(Ark_RestrictedWorker peer,
                 const Ark_String* Type,
                 const Ark_WorkerEventListener* listener);
    void (*off)(Ark_RestrictedWorker peer,
                const Ark_String* Type,
                const Opt_WorkerEventListener* listener);
    void (*terminate)(Ark_RestrictedWorker peer);
    void (*addEventListener)(Ark_RestrictedWorker peer,
                             const Ark_String* Type,
                             const Ark_WorkerEventListener* listener);
    Ark_Boolean (*dispatchEvent)(Ark_RestrictedWorker peer,
                                 const Ark_Event* event);
    void (*removeEventListener)(Ark_RestrictedWorker peer,
                                const Ark_String* Type,
                                const Opt_WorkerEventListener* callback_);
    void (*removeAllListener)(Ark_RestrictedWorker peer);
    void (*registerGlobalCallObject)(Ark_RestrictedWorker peer,
                                     const Ark_String* instanceName,
                                     const Ark_Object* globalCallObject);
    void (*unregisterGlobalCallObject)(Ark_RestrictedWorker peer,
                                       const Opt_String* instanceName);
    Opt_RestrictedWorker_onexit_Callback (*getOnexit)(Ark_RestrictedWorker peer);
    void (*setOnexit)(Ark_RestrictedWorker peer,
                      const Opt_RestrictedWorker_onexit_Callback* onexit);
    Opt_RestrictedWorker_onerror_Callback (*getOnerror)(Ark_RestrictedWorker peer);
    void (*setOnerror)(Ark_RestrictedWorker peer,
                       const Opt_RestrictedWorker_onerror_Callback* onerror);
    Opt_RestrictedWorker_onmessage_Callback (*getOnmessage)(Ark_RestrictedWorker peer);
    void (*setOnmessage)(Ark_RestrictedWorker peer,
                         const Opt_RestrictedWorker_onmessage_Callback* onmessage);
    Opt_RestrictedWorker_onmessage_Callback (*getOnmessageerror)(Ark_RestrictedWorker peer);
    void (*setOnmessageerror)(Ark_RestrictedWorker peer,
                              const Opt_RestrictedWorker_onmessage_Callback* onmessageerror);
} GENERATED_ArkUIRestrictedWorkerAccessor;

typedef struct GENERATED_ArkUISceneAccessor {
    void (*destroyPeer)(Ark_Scene peer);
    Ark_Scene (*construct)();
    Ark_NativePointer (*getFinalizer)();
    Ark_Scene (*load)(const Opt_ResourceStr* uri);
    void (*destroy)(Ark_Scene peer);
} GENERATED_ArkUISceneAccessor;

typedef struct GENERATED_ArkUIScreenshotServiceAccessor {
    Ark_Boolean (*requestScreenshot)(const Ark_String* target,
                                     const Ark_String* name);
} GENERATED_ArkUIScreenshotServiceAccessor;

typedef struct GENERATED_ArkUISearchOpsAccessor {
    Ark_NativePointer (*registerSearchValueCallback)(Ark_NativePointer node,
                                                     const Ark_String* value,
                                                     const SearchValueCallback* callback);
} GENERATED_ArkUISearchOpsAccessor;

typedef struct GENERATED_ArkUIStateStylesOpsAccessor {
    void (*onStateStyleChange)(Ark_NativePointer node,
                               const Callback_StateStylesChange* stateStyleChange);
} GENERATED_ArkUIStateStylesOpsAccessor;

typedef struct GENERATED_ArkUISystemOpsAccessor {
    Ark_NativePointer (*StartFrame)();
    void (*EndFrame)(Ark_NativePointer root);
    void (*syncInstanceId)(Ark_Int32 instanceId);
    void (*restoreInstanceId)();
    Ark_Int32 (*getResourceId)(const Ark_String* bundleName,
                               const Ark_String* moduleName,
                               const Array_String* params);
    void (*resourceManagerReset)();
    void (*setFrameCallback)(const Callback_Number_Void* onFrameCallback,
                             const Callback_Number_Void* onIdleCallback,
                             const Ark_Number* delayTime);
    Array_Number (*colorMetricsResourceColor)(const Ark_Resource* color);
} GENERATED_ArkUISystemOpsAccessor;

typedef struct GENERATED_ArkUITextFieldOpsAccessor {
    Ark_NativePointer (*registerTextFieldValueCallback)(Ark_NativePointer node,
                                                        const Ark_ResourceStr* value,
                                                        const TextFieldValueCallback* callback);
    Ark_NativePointer (*textFieldOpsSetWidth)(Ark_NativePointer node,
                                              const Opt_Union_Length_LayoutPolicy* value);
    Ark_NativePointer (*textFieldOpsSetHeight)(Ark_NativePointer node,
                                               const Opt_Union_Length_LayoutPolicy* value);
    Ark_NativePointer (*textFieldOpsSetPadding)(Ark_NativePointer node,
                                                const Opt_Union_Padding_Length_LocalizedPadding* value);
    Ark_NativePointer (*textFieldOpsSetMargin)(Ark_NativePointer node,
                                               const Opt_Union_Padding_Length_LocalizedPadding* value);
    Ark_NativePointer (*textFieldOpsSetBorder)(Ark_NativePointer node,
                                               const Opt_CustomObject* value);
    Ark_NativePointer (*textFieldOpsSetBorderWidth)(Ark_NativePointer node,
                                                    const Opt_Union_Length_EdgeWidths_LocalizedEdgeWidths* value);
    Ark_NativePointer (*textFieldOpsSetBorderColor)(Ark_NativePointer node,
                                                    const Opt_Union_ResourceColor_EdgeColors_LocalizedEdgeColors* value);
    Ark_NativePointer (*textFieldOpsSetBorderStyle)(Ark_NativePointer node,
                                                    const Opt_Union_BorderStyle_EdgeStyles* value);
    Ark_NativePointer (*textFieldOpsSetBorderRadius)(Ark_NativePointer node,
                                                     const Opt_Union_Length_BorderRadiuses_LocalizedBorderRadiuses* value);
    Ark_NativePointer (*textFieldOpsSetBackgroundColor)(Ark_NativePointer node,
                                                        const Opt_ResourceColor* value);
} GENERATED_ArkUITextFieldOpsAccessor;

typedef struct GENERATED_ArkUITextPickerDialogAccessor {
    void (*show)(const Opt_TextPickerDialogOptions* options);
} GENERATED_ArkUITextPickerDialogAccessor;

typedef struct GENERATED_ArkUIUIContextAtomicServiceBarAccessor {
    Ark_CustomObject (*getBarRect)();
} GENERATED_ArkUIUIContextAtomicServiceBarAccessor;

typedef struct GENERATED_ArkUIGlobalScopeAccessor {
    Ark_ComponentInfo (*getRectangleById)(const Ark_String* id);
} GENERATED_ArkUIGlobalScopeAccessor;


/**
 * An API to control an implementation. When making changes modifying binary
 * layout, i.e. adding new events - increase ARKUI_API_VERSION above for binary
 * layout checks.
 */
typedef struct GENERATED_ArkUINodeModifiers {
    const GENERATED_ArkUIBlankModifier* (*getBlankModifier)();
    const GENERATED_ArkUIButtonModifier* (*getButtonModifier)();
    const GENERATED_ArkUICheckboxModifier* (*getCheckboxModifier)();
    const GENERATED_ArkUIColumnModifier* (*getColumnModifier)();
    const GENERATED_ArkUICommonMethodModifier* (*getCommonMethodModifier)();
    const GENERATED_ArkUIComponentRootModifier* (*getComponentRootModifier)();
    const GENERATED_ArkUICustomLayoutRootModifier* (*getCustomLayoutRootModifier)();
    const GENERATED_ArkUIListModifier* (*getListModifier)();
    const GENERATED_ArkUINavigationModifier* (*getNavigationModifier)();
    const GENERATED_ArkUIRootModifier* (*getRootModifier)();
    const GENERATED_ArkUIScrollableCommonMethodModifier* (*getScrollableCommonMethodModifier)();
    const GENERATED_ArkUITestModifier* (*getTestModifier)();
    const GENERATED_ArkUITextInputModifier* (*getTextInputModifier)();
    const GENERATED_ArkUITextPickerModifier* (*getTextPickerModifier)();
} GENERATED_ArkUINodeModifiers;

typedef struct GENERATED_ArkUIAccessors {
    const GENERATED_ArkUIAnimationExtenderAccessor* (*getAnimationExtenderAccessor)();
    const GENERATED_ArkUIBaseEventAccessor* (*getBaseEventAccessor)();
    const GENERATED_ArkUIBaseShapeAccessor* (*getBaseShapeAccessor)();
    const GENERATED_ArkUIBuilderNodeOpsAccessor* (*getBuilderNodeOpsAccessor)();
    const GENERATED_ArkUIClickEventAccessor* (*getClickEventAccessor)();
    const GENERATED_ArkUIColorFilterAccessor* (*getColorFilterAccessor)();
    const GENERATED_ArkUICommonShapeAccessor* (*getCommonShapeAccessor)();
    const GENERATED_ArkUIContentModifierHelperAccessor* (*getContentModifierHelperAccessor)();
    const GENERATED_ArkUICustomDialogControllerAccessor* (*getCustomDialogControllerAccessor)();
    const GENERATED_ArkUIDrawModifierAccessor* (*getDrawModifierAccessor)();
    const GENERATED_ArkUIEnvironmentBackendAccessor* (*getEnvironmentBackendAccessor)();
    const GENERATED_ArkUIEventEmulatorAccessor* (*getEventEmulatorAccessor)();
    const GENERATED_ArkUIFocusControllerAccessor* (*getFocusControllerAccessor)();
    const GENERATED_ArkUIGlobalScope_ohos_arkui_componentSnapshotAccessor* (*getGlobalScope_ohos_arkui_componentSnapshotAccessor)();
    const GENERATED_ArkUIGlobalScope_ohos_arkui_performanceMonitorAccessor* (*getGlobalScope_ohos_arkui_performanceMonitorAccessor)();
    const GENERATED_ArkUIGlobalScope_ohos_fontAccessor* (*getGlobalScope_ohos_fontAccessor)();
    const GENERATED_ArkUIGlobalScope_ohos_measure_utilsAccessor* (*getGlobalScope_ohos_measure_utilsAccessor)();
    const GENERATED_ArkUIICurveAccessor* (*getICurveAccessor)();
    const GENERATED_ArkUIIUIContextAccessor* (*getIUIContextAccessor)();
    const GENERATED_ArkUILazyForEachOpsAccessor* (*getLazyForEachOpsAccessor)();
    const GENERATED_ArkUINavExtenderAccessor* (*getNavExtenderAccessor)();
    const GENERATED_ArkUIPersistentStorageBackendAccessor* (*getPersistentStorageBackendAccessor)();
    const GENERATED_ArkUIRenderServiceNodeAccessor* (*getRenderServiceNodeAccessor)();
    const GENERATED_ArkUIRestrictedWorkerAccessor* (*getRestrictedWorkerAccessor)();
    const GENERATED_ArkUISceneAccessor* (*getSceneAccessor)();
    const GENERATED_ArkUIScreenshotServiceAccessor* (*getScreenshotServiceAccessor)();
    const GENERATED_ArkUISearchOpsAccessor* (*getSearchOpsAccessor)();
    const GENERATED_ArkUIStateStylesOpsAccessor* (*getStateStylesOpsAccessor)();
    const GENERATED_ArkUISystemOpsAccessor* (*getSystemOpsAccessor)();
    const GENERATED_ArkUITextFieldOpsAccessor* (*getTextFieldOpsAccessor)();
    const GENERATED_ArkUITextPickerDialogAccessor* (*getTextPickerDialogAccessor)();
    const GENERATED_ArkUIUIContextAtomicServiceBarAccessor* (*getUIContextAtomicServiceBarAccessor)();
    const GENERATED_ArkUIGlobalScopeAccessor* (*getGlobalScopeAccessor)();
} GENERATED_ArkUIAccessors;

typedef struct GENERATED_ArkUIGraphicsAPI {
    Ark_Int32 version;
} GENERATED_ArkUIGraphicsAPI;

typedef enum GENERATED_Ark_NodeType {
    GENERATED_ARKUI_CUSTOM_NODE,
    GENERATED_ARKUI_BLANK,
    GENERATED_ARKUI_BUTTON,
    GENERATED_ARKUI_CHECKBOX,
    GENERATED_ARKUI_COLUMN,
    GENERATED_ARKUI_COMMON_METHOD,
    GENERATED_ARKUI_COMPONENT_ROOT,
    GENERATED_ARKUI_CUSTOM_LAYOUT_ROOT,
    GENERATED_ARKUI_LIST,
    GENERATED_ARKUI_NAVIGATION,
    GENERATED_ARKUI_ROOT,
    GENERATED_ARKUI_SCROLLABLE_COMMON_METHOD,
    GENERATED_ARKUI_TEST,
    GENERATED_ARKUI_TEXT_INPUT,
    GENERATED_ARKUI_TEXT_PICKER
} GENERATED_Ark_NodeType;

typedef enum {
    GENERATED_ARKUI_DIRTY_FLAG_MEASURE = 0b1,
    GENERATED_ARKUI_DIRTY_FLAG_LAYOUT = 0b10,
    // mark the node need to do attribute diff to drive update.
    GENERATED_ARKUI_DIRTY_FLAG_ATTRIBUTE_DIFF = 0b100,
    GENERATED_ARKUI_DIRTY_FLAG_MEASURE_SELF = 0b1000,
    GENERATED_ARKUI_DIRTY_FLAG_MEASURE_SELF_AND_PARENT = 0b10000,
    GENERATED_ARKUI_DIRTY_FLAG_MEASURE_BY_CHILD_REQUEST = 0b100000,
    GENERATED_ARKUI_DIRTY_FLAG_RENDER = 0b1000000,
    GENERATED_ARKUI_DIRTY_FLAG_MEASURE_SELF_AND_CHILD = 0b1000000000,
} GENERATED_ArkUIDirtyFlag;

union GENERATED_Ark_EventCallbackArg {
    Ark_Int32 i32;
    Ark_Int32 u32;
    Ark_Int32 f32;
};

typedef union GENERATED_Ark_EventCallbackArg GENERATED_Ark_EventCallbackArg;

typedef struct GENERATED_Ark_APICallbackMethod {
    Ark_Int32 (*CallInt) (Ark_VMContext vmContext, Ark_Int32 methodId, Ark_Int32 numArgs, GENERATED_Ark_EventCallbackArg* args);
} GENERATED_Ark_APICallbackMethod;

typedef struct GENERATED_ArkUIBasicNodeAPI {
    Ark_Int32 version;

    /// Tree operations.
    Ark_NodeHandle (*createNode)(GENERATED_Ark_NodeType type,
                                 Ark_Int32 id, Ark_Int32 flags);

    Ark_NodeHandle (*getNodeByViewStack)();
    void (*disposeNode)(Ark_NodeHandle node);

    void (*dumpTreeNode)(Ark_NodeHandle node);

    Ark_Int32 (*addChild)(Ark_NodeHandle parent,
                          Ark_NodeHandle child);
    void (*removeChild)(Ark_NodeHandle parent,
                        Ark_NodeHandle child);
    Ark_Int32 (*insertChildAfter)(Ark_NodeHandle parent,
                                  Ark_NodeHandle child, Ark_NodeHandle sibling);
    Ark_Int32 (*insertChildBefore)(Ark_NodeHandle parent,
                                   Ark_NodeHandle child,
                                   Ark_NodeHandle sibling);
    Ark_Int32 (*insertChildAt)(Ark_NodeHandle parent,
                               Ark_NodeHandle child,
                               Ark_Int32 position);

    // Commit attributes updates for node.
    void (*applyModifierFinish)(Ark_NodeHandle nodePtr);
    // the flag can combine different flag like Ark_DIRTY_FLAG_MEASURE | Ark_DIRTY_FLAG_RENDER
    void (*markDirty)(Ark_NodeHandle nodePtr,
                      Ark_UInt32 dirtyFlag);
    Ark_Boolean (*isBuilderNode)(Ark_NodeHandle node);

    Ark_Float32 (*convertLengthMetricsUnit)(Ark_Float32 value,
                                            Ark_Int32 originUnit,
                                            Ark_Int32 targetUnit);
} GENERATED_ArkUIBasicNodeAPI;

typedef void (*Ark_VsyncCallback)(Ark_PipelineContext);

typedef struct GENERATED_ArkUIExtendedNodeAPI {
    Ark_Int32 version;

    Ark_Float32 (*getDensity) (Ark_Int32 deviceId);
    Ark_Float32 (*getFontScale) (Ark_Int32 deviceId);
    Ark_Float32 (*getDesignWidthScale) (Ark_Int32 deviceId);

    // Improve: remove!
    void (*setCallbackMethod)(GENERATED_Ark_APICallbackMethod* method);

    // the custom node is not set in create.
    void (*setCustomMethodFlag)(Ark_NodeHandle node,
                                Ark_Int32 flag);
    Ark_Int32 (*getCustomMethodFlag)(Ark_NodeHandle node);

    // setCustomCallback is without the context
    void (*setCustomCallback) (Ark_VMContext  vmContext,
                               Ark_NodeHandle node,
                               Ark_Int32 callbackId);
    void (*setCustomNodeDestroyCallback)(void (*destroy)(Ark_NodeHandle nodeId));
    // make void instead return type Ark_Int32
    Ark_Int32 (*measureLayoutAndDraw) (Ark_VMContext  vmContext,
                                       Ark_NodeHandle node);
    Ark_Int32 (*measureNode) (Ark_VMContext  vmContext,
                              Ark_NodeHandle node,
                              Ark_Float32* data);
    Ark_Int32 (*layoutNode) (Ark_VMContext  vmContext,
                             Ark_NodeHandle node,
                             Ark_Float32 (*data)[2]);
    Ark_Int32 (*drawNode) (Ark_VMContext  vmContext,
                           Ark_NodeHandle node,
                           Ark_Float32* data);
    void (*setAttachNodePtr) (Ark_NodeHandle node,
                              void* value);
    void* (*getAttachNodePtr) (Ark_NodeHandle node);

    // may be better to use int in px unit
    void (*setMeasureWidth)(Ark_NodeHandle node,
                            Ark_Int32 value);
    Ark_Int32 (*getMeasureWidth)(Ark_NodeHandle node);
    void (*setMeasureHeight)(Ark_NodeHandle node,
                             Ark_Int32 value);
    Ark_Int32 (*getMeasureHeight)(Ark_NodeHandle node);
    void (*setX)(Ark_NodeHandle node, Ark_Int32 value);
    Ark_Int32 (*getX)(Ark_NodeHandle node);
    void (*setY)(Ark_NodeHandle node,
                 Ark_Int32 value);
    Ark_Int32 (*getY)(Ark_NodeHandle node);

    void (*getLayoutConstraint)(Ark_NodeHandle node,
                                Ark_Int32* value);
    void (*setAlignment)(Ark_NodeHandle node,
                         Ark_Int32 value);
    Ark_Int32 (*getAlignment)(Ark_NodeHandle node);

    Ark_Int32 (*indexerChecker) (Ark_VMContext  vmContext,
                                 Ark_NodeHandle node);
    void (*setRangeUpdater)(Ark_NodeHandle node,
                            Ark_Int32 updatedId);
    void (*setLazyItemIndexer) (Ark_VMContext  vmContext,
                                Ark_NodeHandle node,
                                Ark_Int32 indexerId);

    /// Vsync support
    Ark_PipelineContext (*getPipelineContext)(Ark_NodeHandle node);
    void (*setVsyncCallback)(Ark_PipelineContext pipelineContext,
                             Ark_VsyncCallback callback);
    void (*setChildTotalCount)(Ark_NodeHandle node,
                               Ark_Int32 totalCount);

    /// Error reporting.
    void (*showCrash)(Ark_CharPtr message);
} GENERATED_ArkUIExtendedNodeAPI;

/**
 * An API to control an implementation. When making changes modifying binary
 * layout, i.e. adding new events - increase ARKUI_NODE_API_VERSION above for binary
 * layout checks.
 */
typedef struct GENERATED_ArkUIFullNodeAPI {
    Ark_Int32 version;
    const GENERATED_ArkUINodeModifiers* (*getNodeModifiers)();
    const GENERATED_ArkUIAccessors* (*getAccessors)();
    const GENERATED_ArkUIGraphicsAPI* (*getGraphicsAPI)();
} GENERATED_ArkUIFullNodeAPI;

#ifndef GENERATED_FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_GENERIC_SERVICE_API_H
#define GENERATED_FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_GENERIC_SERVICE_API_H
#include <stdint.h>
#define GENERIC_SERVICE_API_VERSION 1
enum GENERIC_SERVICE_APIKind {
    GENERIC_SERVICE_API_KIND = 14,
};

typedef struct ServiceLogger {
    void (*startGroupedLog)(int kind);
    void (*stopGroupedLog)(int kind);
    void (*appendGroupedLog)(int kind, const char* str);
    const char* (*getGroupedLog)(int kind);
    int (*needGroupedLog)(int kind);
} ServiceLogger;

typedef struct GenericServiceAPI {
    int32_t version;
    void (*setLogger)(const ServiceLogger* logger);
} GenericServiceAPI;
#endif
#ifndef GENERATED_FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_ANY_API_H
#define GENERATED_FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_ANY_API_H
#include <stdint.h>
// Improve: remove after migration to OH_AnyAPI to be consistant between arkoala and ohos apis
struct Ark_AnyAPI {
    int32_t version;
};
struct OH_AnyAPI {
    int32_t version;
};
#endif

#ifdef __cplusplus
};
#endif

/* clang-format on */

#endif  // GENERATED_FOUNDATION_ACE_FRAMEWORKS_CORE_INTERFACES_ARKOALA_API_H

