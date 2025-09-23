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

#define KOALA_INTEROP_MODULE NotSpecifiedInteropModule
#include "callback_kind.h"
#include "Serializers.h"
#include "common-interop.h"
#include "callbacks.h"
#include "arkoala_api_generated.h"

void callManagedAsyncCallback_image_PixelMap_Void(Ark_Int32 resourceId, Ark_CustomObject result)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_AsyncCallback_image_PixelMap_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeCustomObject("Any", result);
    enqueueCallback(&callbackBuffer);
}
void callManagedAsyncCallback_image_PixelMap_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_CustomObject result)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_AsyncCallback_image_PixelMap_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeCustomObject("Any", result);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedButtonModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_ButtonModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedButtonModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_ButtonModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_Boolean_Void(Ark_Int32 resourceId, Ark_Boolean parameter)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_Boolean_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeBoolean(parameter);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_Boolean_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Boolean parameter)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_Boolean_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeBoolean(parameter);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_ClickEvent_Void(Ark_Int32 resourceId, Ark_ClickEvent event)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_ClickEvent_Void);
    argsSerializer.writeInt32(resourceId);
    ClickEvent_serializer::write(argsSerializer, event);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_ClickEvent_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_ClickEvent event)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_ClickEvent_Void);
    argsSerializer.writeInt32(resourceId);
    ClickEvent_serializer::write(argsSerializer, event);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_CreateItem(Ark_Int32 resourceId, Ark_Int32 index, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_CreateItem);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeInt32(index);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_CreateItemSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Int32 index, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_CreateItem);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeInt32(index);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_DrawContext_Void(Ark_Int32 resourceId, Ark_DrawContext drawContext)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_DrawContext_Void);
    argsSerializer.writeInt32(resourceId);
    DrawContext_serializer::write(argsSerializer, drawContext);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_DrawContext_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_DrawContext drawContext)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_DrawContext_Void);
    argsSerializer.writeInt32(resourceId);
    DrawContext_serializer::write(argsSerializer, drawContext);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_Extender_OnFinish(Ark_Int32 resourceId)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_Extender_OnFinish);
    argsSerializer.writeInt32(resourceId);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_Extender_OnFinishSync(Ark_VMContext vmContext, Ark_Int32 resourceId)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_Extender_OnFinish);
    argsSerializer.writeInt32(resourceId);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_Extender_OnProgress(Ark_Int32 resourceId, Ark_Float32 value)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_Extender_OnProgress);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeFloat32(value);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_Extender_OnProgressSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Float32 value)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_Extender_OnProgress);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeFloat32(value);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_NavigationTitleMode_Void(Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_NavigationTitleMode_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeInt32(static_cast<Ark_NavigationTitleMode>(titleMode));
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_NavigationTitleMode_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_NavigationTitleMode_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeInt32(static_cast<Ark_NavigationTitleMode>(titleMode));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_Number_Void(Ark_Int32 resourceId, Ark_Number select)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_Number_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeNumber(select);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_Number_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Number select)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_Number_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeNumber(select);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_onMeasureSize_SizeResult(Ark_Int32 resourceId, Ark_CustomObject selfLayoutInfo, Array_CustomObject children, Ark_CustomObject constraint, Callback_SizeResult_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_onMeasureSize_SizeResult);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeCustomObject("Any", selfLayoutInfo);
    argsSerializer.writeInt32(children.length);
    for (int childrenCounterI = 0; childrenCounterI < children.length; childrenCounterI++) {
        const Ark_CustomObject childrenTmpElement = children.array[childrenCounterI];
        argsSerializer.writeCustomObject("Any", childrenTmpElement);
    }
    argsSerializer.writeCustomObject("Any", constraint);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_onMeasureSize_SizeResultSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_CustomObject selfLayoutInfo, Array_CustomObject children, Ark_CustomObject constraint, Callback_SizeResult_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_onMeasureSize_SizeResult);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeCustomObject("Any", selfLayoutInfo);
    argsSerializer.writeInt32(children.length);
    for (int childrenCounterI = 0; childrenCounterI < children.length; childrenCounterI++) {
        const Ark_CustomObject childrenTmpElement = children.array[childrenCounterI];
        argsSerializer.writeCustomObject("Any", childrenTmpElement);
    }
    argsSerializer.writeCustomObject("Any", constraint);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_onPlaceChildren_Void(Ark_Int32 resourceId, Ark_CustomObject selfLayoutInfo, Array_CustomObject children, Ark_CustomObject constraint)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_onPlaceChildren_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeCustomObject("Any", selfLayoutInfo);
    argsSerializer.writeInt32(children.length);
    for (int childrenCounterI = 0; childrenCounterI < children.length; childrenCounterI++) {
        const Ark_CustomObject childrenTmpElement = children.array[childrenCounterI];
        argsSerializer.writeCustomObject("Any", childrenTmpElement);
    }
    argsSerializer.writeCustomObject("Any", constraint);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_onPlaceChildren_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_CustomObject selfLayoutInfo, Array_CustomObject children, Ark_CustomObject constraint)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_onPlaceChildren_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeCustomObject("Any", selfLayoutInfo);
    argsSerializer.writeInt32(children.length);
    for (int childrenCounterI = 0; childrenCounterI < children.length; childrenCounterI++) {
        const Ark_CustomObject childrenTmpElement = children.array[childrenCounterI];
        argsSerializer.writeCustomObject("Any", childrenTmpElement);
    }
    argsSerializer.writeCustomObject("Any", constraint);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_Pointer_Void(Ark_Int32 resourceId, Ark_NativePointer value)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_Pointer_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(value);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_Pointer_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer value)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_Pointer_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(value);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_RangeUpdate(Ark_Int32 resourceId, Ark_Int32 start, Ark_Int32 end)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_RangeUpdate);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeInt32(start);
    argsSerializer.writeInt32(end);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_RangeUpdateSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Int32 start, Ark_Int32 end)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_RangeUpdate);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeInt32(start);
    argsSerializer.writeInt32(end);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_ResourceStr_Void(Ark_Int32 resourceId, Ark_ResourceStr text)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_ResourceStr_Void);
    argsSerializer.writeInt32(resourceId);
    if (text.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto textForIdx0 = text.value0;
        argsSerializer.writeString(textForIdx0);
    } else if (text.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto textForIdx1 = text.value1;
        Resource_serializer::write(argsSerializer, textForIdx1);
    } else {
        INTEROP_FATAL("One of the branches for text has to be chosen for serialisation.");
    }
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_ResourceStr_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_ResourceStr text)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_ResourceStr_Void);
    argsSerializer.writeInt32(resourceId);
    if (text.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto textForIdx0 = text.value0;
        argsSerializer.writeString(textForIdx0);
    } else if (text.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto textForIdx1 = text.value1;
        Resource_serializer::write(argsSerializer, textForIdx1);
    } else {
        INTEROP_FATAL("One of the branches for text has to be chosen for serialisation.");
    }
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_SizeResult_Void(Ark_Int32 resourceId, Ark_SizeResult value)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_SizeResult_Void);
    argsSerializer.writeInt32(resourceId);
    SizeResult_serializer::write(argsSerializer, value);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_SizeResult_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_SizeResult value)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_SizeResult_Void);
    argsSerializer.writeInt32(resourceId);
    SizeResult_serializer::write(argsSerializer, value);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_StateStylesChange(Ark_Int32 resourceId, Ark_Int32 currentState)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_StateStylesChange);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeInt32(currentState);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_StateStylesChangeSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Int32 currentState)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_StateStylesChange);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeInt32(currentState);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_String_Number_Void(Ark_Int32 resourceId, Ark_String value, Ark_Number index)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_String_Number_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeString(value);
    argsSerializer.writeNumber(index);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_String_Number_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_String value, Ark_Number index)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_String_Number_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeString(value);
    argsSerializer.writeNumber(index);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_String_Void(Ark_Int32 resourceId, Ark_String parameter)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_String_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeString(parameter);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_String_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_String parameter)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_String_Void);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeString(parameter);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_TextPickerResult_Void(Ark_Int32 resourceId, Ark_TextPickerResult value)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_TextPickerResult_Void);
    argsSerializer.writeInt32(resourceId);
    TextPickerResult_serializer::write(argsSerializer, value);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_TextPickerResult_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_TextPickerResult value)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_TextPickerResult_Void);
    argsSerializer.writeInt32(resourceId);
    TextPickerResult_serializer::write(argsSerializer, value);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_Union_Number_Array_Number_Void(Ark_Int32 resourceId, Ark_Union_Number_Array_Number selected)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_Union_Number_Array_Number_Void);
    argsSerializer.writeInt32(resourceId);
    if (selected.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto selectedForIdx0 = selected.value0;
        argsSerializer.writeNumber(selectedForIdx0);
    } else if (selected.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto selectedForIdx1 = selected.value1;
        argsSerializer.writeInt32(selectedForIdx1.length);
        for (int selectedForIdx1CounterI = 0; selectedForIdx1CounterI < selectedForIdx1.length; selectedForIdx1CounterI++) {
            const Ark_Number selectedForIdx1TmpElement = selectedForIdx1.array[selectedForIdx1CounterI];
            argsSerializer.writeNumber(selectedForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for selected has to be chosen for serialisation.");
    }
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_Union_Number_Array_Number_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Union_Number_Array_Number selected)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_Union_Number_Array_Number_Void);
    argsSerializer.writeInt32(resourceId);
    if (selected.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto selectedForIdx0 = selected.value0;
        argsSerializer.writeNumber(selectedForIdx0);
    } else if (selected.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto selectedForIdx1 = selected.value1;
        argsSerializer.writeInt32(selectedForIdx1.length);
        for (int selectedForIdx1CounterI = 0; selectedForIdx1CounterI < selectedForIdx1.length; selectedForIdx1CounterI++) {
            const Ark_Number selectedForIdx1TmpElement = selectedForIdx1.array[selectedForIdx1CounterI];
            argsSerializer.writeNumber(selectedForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for selected has to be chosen for serialisation.");
    }
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_Union_String_Array_String_Void(Ark_Int32 resourceId, Ark_Union_String_Array_String value)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_Union_String_Array_String_Void);
    argsSerializer.writeInt32(resourceId);
    if (value.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto valueForIdx0 = value.value0;
        argsSerializer.writeString(valueForIdx0);
    } else if (value.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto valueForIdx1 = value.value1;
        argsSerializer.writeInt32(valueForIdx1.length);
        for (int valueForIdx1CounterI = 0; valueForIdx1CounterI < valueForIdx1.length; valueForIdx1CounterI++) {
            const Ark_String valueForIdx1TmpElement = valueForIdx1.array[valueForIdx1CounterI];
            argsSerializer.writeString(valueForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for value has to be chosen for serialisation.");
    }
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_Union_String_Array_String_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Union_String_Array_String value)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_Union_String_Array_String_Void);
    argsSerializer.writeInt32(resourceId);
    if (value.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto valueForIdx0 = value.value0;
        argsSerializer.writeString(valueForIdx0);
    } else if (value.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto valueForIdx1 = value.value1;
        argsSerializer.writeInt32(valueForIdx1.length);
        for (int valueForIdx1CounterI = 0; valueForIdx1CounterI < valueForIdx1.length; valueForIdx1CounterI++) {
            const Ark_String valueForIdx1TmpElement = valueForIdx1.array[valueForIdx1CounterI];
            argsSerializer.writeString(valueForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for value has to be chosen for serialisation.");
    }
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCallback_Void(Ark_Int32 resourceId)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Callback_Void);
    argsSerializer.writeInt32(resourceId);
    enqueueCallback(&callbackBuffer);
}
void callManagedCallback_VoidSync(Ark_VMContext vmContext, Ark_Int32 resourceId)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Callback_Void);
    argsSerializer.writeInt32(resourceId);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCheckBoxModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CheckBoxConfiguration config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_CheckBoxModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    CheckBoxConfiguration_serializer::write(argsSerializer, config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedCheckBoxModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CheckBoxConfiguration config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_CheckBoxModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    CheckBoxConfiguration_serializer::write(argsSerializer, config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedCustomNodeBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_CustomNodeBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedCustomNodeBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_CustomNodeBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedDataPanelModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_DataPanelModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedDataPanelModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_DataPanelModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedGaugeModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_GaugeModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedGaugeModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_GaugeModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedLoadingProgressModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_LoadingProgressModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedLoadingProgressModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_LoadingProgressModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedMenuItemModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_MenuItemModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedMenuItemModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_MenuItemModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedNavExtender_OnUpdateStack(Ark_Int32 resourceId)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_NavExtender_OnUpdateStack);
    argsSerializer.writeInt32(resourceId);
    enqueueCallback(&callbackBuffer);
}
void callManagedNavExtender_OnUpdateStackSync(Ark_VMContext vmContext, Ark_Int32 resourceId)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_NavExtender_OnUpdateStack);
    argsSerializer.writeInt32(resourceId);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedProgressModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_ProgressModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedProgressModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_ProgressModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedRadioModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_RadioModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedRadioModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_RadioModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedRatingModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_RatingModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedRatingModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_RatingModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedRestrictedWorker_onerror_Callback(Ark_Int32 resourceId, Ark_ErrorEvent ev)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_RestrictedWorker_onerror_Callback);
    argsSerializer.writeInt32(resourceId);
    ErrorEvent_serializer::write(argsSerializer, ev);
    enqueueCallback(&callbackBuffer);
}
void callManagedRestrictedWorker_onerror_CallbackSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_ErrorEvent ev)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_RestrictedWorker_onerror_Callback);
    argsSerializer.writeInt32(resourceId);
    ErrorEvent_serializer::write(argsSerializer, ev);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedRestrictedWorker_onexit_Callback(Ark_Int32 resourceId, Ark_Number code)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_RestrictedWorker_onexit_Callback);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeNumber(code);
    enqueueCallback(&callbackBuffer);
}
void callManagedRestrictedWorker_onexit_CallbackSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Number code)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_RestrictedWorker_onexit_Callback);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeNumber(code);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedRestrictedWorker_onmessage_Callback(Ark_Int32 resourceId, Ark_MessageEvents event)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_RestrictedWorker_onmessage_Callback);
    argsSerializer.writeInt32(resourceId);
    MessageEvents_serializer::write(argsSerializer, event);
    enqueueCallback(&callbackBuffer);
}
void callManagedRestrictedWorker_onmessage_CallbackSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_MessageEvents event)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_RestrictedWorker_onmessage_Callback);
    argsSerializer.writeInt32(resourceId);
    MessageEvents_serializer::write(argsSerializer, event);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedSearchValueCallback(Ark_Int32 resourceId, Ark_String value)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_SearchValueCallback);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeString(value);
    enqueueCallback(&callbackBuffer);
}
void callManagedSearchValueCallbackSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_String value)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_SearchValueCallback);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writeString(value);
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedSliderModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_SliderModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedSliderModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_SliderModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedTextClockModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_TextClockModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedTextClockModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_TextClockModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedTextFieldValueCallback(Ark_Int32 resourceId, Ark_ResourceStr value)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_TextFieldValueCallback);
    argsSerializer.writeInt32(resourceId);
    if (value.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto valueForIdx0 = value.value0;
        argsSerializer.writeString(valueForIdx0);
    } else if (value.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto valueForIdx1 = value.value1;
        Resource_serializer::write(argsSerializer, valueForIdx1);
    } else {
        INTEROP_FATAL("One of the branches for value has to be chosen for serialisation.");
    }
    enqueueCallback(&callbackBuffer);
}
void callManagedTextFieldValueCallbackSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_ResourceStr value)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_TextFieldValueCallback);
    argsSerializer.writeInt32(resourceId);
    if (value.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto valueForIdx0 = value.value0;
        argsSerializer.writeString(valueForIdx0);
    } else if (value.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto valueForIdx1 = value.value1;
        Resource_serializer::write(argsSerializer, valueForIdx1);
    } else {
        INTEROP_FATAL("One of the branches for value has to be chosen for serialisation.");
    }
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedTextPickerScrollStopCallback(Ark_Int32 resourceId, Ark_Union_String_Array_String value, Ark_Union_Number_Array_Number index)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_TextPickerScrollStopCallback);
    argsSerializer.writeInt32(resourceId);
    if (value.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto valueForIdx0 = value.value0;
        argsSerializer.writeString(valueForIdx0);
    } else if (value.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto valueForIdx1 = value.value1;
        argsSerializer.writeInt32(valueForIdx1.length);
        for (int valueForIdx1CounterI = 0; valueForIdx1CounterI < valueForIdx1.length; valueForIdx1CounterI++) {
            const Ark_String valueForIdx1TmpElement = valueForIdx1.array[valueForIdx1CounterI];
            argsSerializer.writeString(valueForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for value has to be chosen for serialisation.");
    }
    if (index.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto indexForIdx0 = index.value0;
        argsSerializer.writeNumber(indexForIdx0);
    } else if (index.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto indexForIdx1 = index.value1;
        argsSerializer.writeInt32(indexForIdx1.length);
        for (int indexForIdx1CounterI = 0; indexForIdx1CounterI < indexForIdx1.length; indexForIdx1CounterI++) {
            const Ark_Number indexForIdx1TmpElement = indexForIdx1.array[indexForIdx1CounterI];
            argsSerializer.writeNumber(indexForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for index has to be chosen for serialisation.");
    }
    enqueueCallback(&callbackBuffer);
}
void callManagedTextPickerScrollStopCallbackSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Union_String_Array_String value, Ark_Union_Number_Array_Number index)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_TextPickerScrollStopCallback);
    argsSerializer.writeInt32(resourceId);
    if (value.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto valueForIdx0 = value.value0;
        argsSerializer.writeString(valueForIdx0);
    } else if (value.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto valueForIdx1 = value.value1;
        argsSerializer.writeInt32(valueForIdx1.length);
        for (int valueForIdx1CounterI = 0; valueForIdx1CounterI < valueForIdx1.length; valueForIdx1CounterI++) {
            const Ark_String valueForIdx1TmpElement = valueForIdx1.array[valueForIdx1CounterI];
            argsSerializer.writeString(valueForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for value has to be chosen for serialisation.");
    }
    if (index.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto indexForIdx0 = index.value0;
        argsSerializer.writeNumber(indexForIdx0);
    } else if (index.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto indexForIdx1 = index.value1;
        argsSerializer.writeInt32(indexForIdx1.length);
        for (int indexForIdx1CounterI = 0; indexForIdx1CounterI < indexForIdx1.length; indexForIdx1CounterI++) {
            const Ark_Number indexForIdx1TmpElement = indexForIdx1.array[indexForIdx1CounterI];
            argsSerializer.writeNumber(indexForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for index has to be chosen for serialisation.");
    }
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedTextTimerModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_TextTimerModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedTextTimerModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_TextTimerModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedToggleModifierBuilder(Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_ToggleModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    enqueueCallback(&callbackBuffer);
}
void callManagedToggleModifierBuilderSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_NativePointer parentNode, Ark_CustomObject config, Callback_Pointer_Void continuation)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_ToggleModifierBuilder);
    argsSerializer.writeInt32(resourceId);
    argsSerializer.writePointer(parentNode);
    argsSerializer.writeCustomObject("Any", config);
    argsSerializer.writeCallbackResource(continuation.resource);
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.call));
    argsSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(continuation.callSync));
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
void callManagedType_TextPickerAttribute_onChange_callback(Ark_Int32 resourceId, Ark_Union_String_Array_String value, Ark_Union_Number_Array_Number index)
{
    CallbackBuffer callbackBuffer = {{}, {}};
    const Ark_CallbackResource callbackResourceSelf = {resourceId, holdManagedCallbackResource, releaseManagedCallbackResource};
    callbackBuffer.resourceHolder.holdCallbackResource(&callbackResourceSelf);
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&(callbackBuffer.buffer), sizeof(callbackBuffer.buffer), &(callbackBuffer.resourceHolder));
    argsSerializer.writeInt32(Kind_Type_TextPickerAttribute_onChange_callback);
    argsSerializer.writeInt32(resourceId);
    if (value.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto valueForIdx0 = value.value0;
        argsSerializer.writeString(valueForIdx0);
    } else if (value.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto valueForIdx1 = value.value1;
        argsSerializer.writeInt32(valueForIdx1.length);
        for (int valueForIdx1CounterI = 0; valueForIdx1CounterI < valueForIdx1.length; valueForIdx1CounterI++) {
            const Ark_String valueForIdx1TmpElement = valueForIdx1.array[valueForIdx1CounterI];
            argsSerializer.writeString(valueForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for value has to be chosen for serialisation.");
    }
    if (index.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto indexForIdx0 = index.value0;
        argsSerializer.writeNumber(indexForIdx0);
    } else if (index.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto indexForIdx1 = index.value1;
        argsSerializer.writeInt32(indexForIdx1.length);
        for (int indexForIdx1CounterI = 0; indexForIdx1CounterI < indexForIdx1.length; indexForIdx1CounterI++) {
            const Ark_Number indexForIdx1TmpElement = indexForIdx1.array[indexForIdx1CounterI];
            argsSerializer.writeNumber(indexForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for index has to be chosen for serialisation.");
    }
    enqueueCallback(&callbackBuffer);
}
void callManagedType_TextPickerAttribute_onChange_callbackSync(Ark_VMContext vmContext, Ark_Int32 resourceId, Ark_Union_String_Array_String value, Ark_Union_Number_Array_Number index)
{
    uint8_t dataBuffer[4096];
    SerializerBase argsSerializer = SerializerBase((KSerializerBuffer)&dataBuffer, sizeof(dataBuffer), nullptr);
    argsSerializer.writeInt32(Kind_Type_TextPickerAttribute_onChange_callback);
    argsSerializer.writeInt32(resourceId);
    if (value.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto valueForIdx0 = value.value0;
        argsSerializer.writeString(valueForIdx0);
    } else if (value.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto valueForIdx1 = value.value1;
        argsSerializer.writeInt32(valueForIdx1.length);
        for (int valueForIdx1CounterI = 0; valueForIdx1CounterI < valueForIdx1.length; valueForIdx1CounterI++) {
            const Ark_String valueForIdx1TmpElement = valueForIdx1.array[valueForIdx1CounterI];
            argsSerializer.writeString(valueForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for value has to be chosen for serialisation.");
    }
    if (index.selector == 0) {
        argsSerializer.writeInt8(0);
        const auto indexForIdx0 = index.value0;
        argsSerializer.writeNumber(indexForIdx0);
    } else if (index.selector == 1) {
        argsSerializer.writeInt8(1);
        const auto indexForIdx1 = index.value1;
        argsSerializer.writeInt32(indexForIdx1.length);
        for (int indexForIdx1CounterI = 0; indexForIdx1CounterI < indexForIdx1.length; indexForIdx1CounterI++) {
            const Ark_Number indexForIdx1TmpElement = indexForIdx1.array[indexForIdx1CounterI];
            argsSerializer.writeNumber(indexForIdx1TmpElement);
        }
    } else {
        INTEROP_FATAL("One of the branches for index has to be chosen for serialisation.");
    }
    KOALA_INTEROP_CALL_VOID(vmContext, 1, sizeof(dataBuffer), dataBuffer);
}
Ark_NativePointer getManagedCallbackCaller(CallbackKind kind)
{
    switch (kind) {
        case Kind_AsyncCallback_image_PixelMap_Void: return reinterpret_cast<Ark_NativePointer>(callManagedAsyncCallback_image_PixelMap_Void);
        case Kind_ButtonModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedButtonModifierBuilder);
        case Kind_Callback_Boolean_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Boolean_Void);
        case Kind_Callback_ClickEvent_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_ClickEvent_Void);
        case Kind_Callback_CreateItem: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_CreateItem);
        case Kind_Callback_DrawContext_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_DrawContext_Void);
        case Kind_Callback_Extender_OnFinish: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Extender_OnFinish);
        case Kind_Callback_Extender_OnProgress: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Extender_OnProgress);
        case Kind_Callback_NavigationTitleMode_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_NavigationTitleMode_Void);
        case Kind_Callback_Number_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Number_Void);
        case Kind_Callback_onMeasureSize_SizeResult: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_onMeasureSize_SizeResult);
        case Kind_Callback_onPlaceChildren_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_onPlaceChildren_Void);
        case Kind_Callback_Pointer_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Pointer_Void);
        case Kind_Callback_RangeUpdate: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_RangeUpdate);
        case Kind_Callback_ResourceStr_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_ResourceStr_Void);
        case Kind_Callback_SizeResult_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_SizeResult_Void);
        case Kind_Callback_StateStylesChange: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_StateStylesChange);
        case Kind_Callback_String_Number_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_String_Number_Void);
        case Kind_Callback_String_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_String_Void);
        case Kind_Callback_TextPickerResult_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_TextPickerResult_Void);
        case Kind_Callback_Union_Number_Array_Number_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Union_Number_Array_Number_Void);
        case Kind_Callback_Union_String_Array_String_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Union_String_Array_String_Void);
        case Kind_Callback_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Void);
        case Kind_CheckBoxModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedCheckBoxModifierBuilder);
        case Kind_CustomNodeBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedCustomNodeBuilder);
        case Kind_DataPanelModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedDataPanelModifierBuilder);
        case Kind_GaugeModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedGaugeModifierBuilder);
        case Kind_LoadingProgressModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedLoadingProgressModifierBuilder);
        case Kind_MenuItemModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedMenuItemModifierBuilder);
        case Kind_NavExtender_OnUpdateStack: return reinterpret_cast<Ark_NativePointer>(callManagedNavExtender_OnUpdateStack);
        case Kind_ProgressModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedProgressModifierBuilder);
        case Kind_RadioModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedRadioModifierBuilder);
        case Kind_RatingModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedRatingModifierBuilder);
        case Kind_RestrictedWorker_onerror_Callback: return reinterpret_cast<Ark_NativePointer>(callManagedRestrictedWorker_onerror_Callback);
        case Kind_RestrictedWorker_onexit_Callback: return reinterpret_cast<Ark_NativePointer>(callManagedRestrictedWorker_onexit_Callback);
        case Kind_RestrictedWorker_onmessage_Callback: return reinterpret_cast<Ark_NativePointer>(callManagedRestrictedWorker_onmessage_Callback);
        case Kind_SearchValueCallback: return reinterpret_cast<Ark_NativePointer>(callManagedSearchValueCallback);
        case Kind_SliderModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedSliderModifierBuilder);
        case Kind_TextClockModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedTextClockModifierBuilder);
        case Kind_TextFieldValueCallback: return reinterpret_cast<Ark_NativePointer>(callManagedTextFieldValueCallback);
        case Kind_TextPickerScrollStopCallback: return reinterpret_cast<Ark_NativePointer>(callManagedTextPickerScrollStopCallback);
        case Kind_TextTimerModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedTextTimerModifierBuilder);
        case Kind_ToggleModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedToggleModifierBuilder);
        case Kind_Type_TextPickerAttribute_onChange_callback: return reinterpret_cast<Ark_NativePointer>(callManagedType_TextPickerAttribute_onChange_callback);
    }
    return nullptr;
}
Ark_NativePointer getManagedCallbackCallerSync(CallbackKind kind)
{
    switch (kind) {
        case Kind_AsyncCallback_image_PixelMap_Void: return reinterpret_cast<Ark_NativePointer>(callManagedAsyncCallback_image_PixelMap_VoidSync);
        case Kind_ButtonModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedButtonModifierBuilderSync);
        case Kind_Callback_Boolean_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Boolean_VoidSync);
        case Kind_Callback_ClickEvent_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_ClickEvent_VoidSync);
        case Kind_Callback_CreateItem: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_CreateItemSync);
        case Kind_Callback_DrawContext_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_DrawContext_VoidSync);
        case Kind_Callback_Extender_OnFinish: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Extender_OnFinishSync);
        case Kind_Callback_Extender_OnProgress: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Extender_OnProgressSync);
        case Kind_Callback_NavigationTitleMode_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_NavigationTitleMode_VoidSync);
        case Kind_Callback_Number_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Number_VoidSync);
        case Kind_Callback_onMeasureSize_SizeResult: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_onMeasureSize_SizeResultSync);
        case Kind_Callback_onPlaceChildren_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_onPlaceChildren_VoidSync);
        case Kind_Callback_Pointer_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Pointer_VoidSync);
        case Kind_Callback_RangeUpdate: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_RangeUpdateSync);
        case Kind_Callback_ResourceStr_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_ResourceStr_VoidSync);
        case Kind_Callback_SizeResult_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_SizeResult_VoidSync);
        case Kind_Callback_StateStylesChange: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_StateStylesChangeSync);
        case Kind_Callback_String_Number_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_String_Number_VoidSync);
        case Kind_Callback_String_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_String_VoidSync);
        case Kind_Callback_TextPickerResult_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_TextPickerResult_VoidSync);
        case Kind_Callback_Union_Number_Array_Number_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Union_Number_Array_Number_VoidSync);
        case Kind_Callback_Union_String_Array_String_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_Union_String_Array_String_VoidSync);
        case Kind_Callback_Void: return reinterpret_cast<Ark_NativePointer>(callManagedCallback_VoidSync);
        case Kind_CheckBoxModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedCheckBoxModifierBuilderSync);
        case Kind_CustomNodeBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedCustomNodeBuilderSync);
        case Kind_DataPanelModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedDataPanelModifierBuilderSync);
        case Kind_GaugeModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedGaugeModifierBuilderSync);
        case Kind_LoadingProgressModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedLoadingProgressModifierBuilderSync);
        case Kind_MenuItemModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedMenuItemModifierBuilderSync);
        case Kind_NavExtender_OnUpdateStack: return reinterpret_cast<Ark_NativePointer>(callManagedNavExtender_OnUpdateStackSync);
        case Kind_ProgressModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedProgressModifierBuilderSync);
        case Kind_RadioModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedRadioModifierBuilderSync);
        case Kind_RatingModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedRatingModifierBuilderSync);
        case Kind_RestrictedWorker_onerror_Callback: return reinterpret_cast<Ark_NativePointer>(callManagedRestrictedWorker_onerror_CallbackSync);
        case Kind_RestrictedWorker_onexit_Callback: return reinterpret_cast<Ark_NativePointer>(callManagedRestrictedWorker_onexit_CallbackSync);
        case Kind_RestrictedWorker_onmessage_Callback: return reinterpret_cast<Ark_NativePointer>(callManagedRestrictedWorker_onmessage_CallbackSync);
        case Kind_SearchValueCallback: return reinterpret_cast<Ark_NativePointer>(callManagedSearchValueCallbackSync);
        case Kind_SliderModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedSliderModifierBuilderSync);
        case Kind_TextClockModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedTextClockModifierBuilderSync);
        case Kind_TextFieldValueCallback: return reinterpret_cast<Ark_NativePointer>(callManagedTextFieldValueCallbackSync);
        case Kind_TextPickerScrollStopCallback: return reinterpret_cast<Ark_NativePointer>(callManagedTextPickerScrollStopCallbackSync);
        case Kind_TextTimerModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedTextTimerModifierBuilderSync);
        case Kind_ToggleModifierBuilder: return reinterpret_cast<Ark_NativePointer>(callManagedToggleModifierBuilderSync);
        case Kind_Type_TextPickerAttribute_onChange_callback: return reinterpret_cast<Ark_NativePointer>(callManagedType_TextPickerAttribute_onChange_callbackSync);
    }
    return nullptr;
}