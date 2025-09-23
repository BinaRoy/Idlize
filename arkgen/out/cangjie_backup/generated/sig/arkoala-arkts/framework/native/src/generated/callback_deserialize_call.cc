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
#define KOALA_INTEROP_MODULE NotSpecifiedInteropModule
#include "callback_kind.h"
#include "Serializers.h"
#include "callbacks.h"
#include "common-interop.h"
#include "arkoala_api_generated.h"
void deserializeAndCallAsyncCallback_image_PixelMap_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_CustomObject result)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_CustomObject result = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    _call(_resourceId, result);
}
void deserializeAndCallSyncAsyncCallback_image_PixelMap_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject result)>(thisDeserializer.readPointer());
    Ark_CustomObject result = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    callSyncMethod(vmContext, resourceId, result);
}
void deserializeAndCallButtonModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncButtonModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallCallback_Boolean_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Boolean parameter)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_Boolean parameter = thisDeserializer.readBoolean();
    _call(_resourceId, parameter);
}
void deserializeAndCallSyncCallback_Boolean_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Boolean parameter)>(thisDeserializer.readPointer());
    Ark_Boolean parameter = thisDeserializer.readBoolean();
    callSyncMethod(vmContext, resourceId, parameter);
}
void deserializeAndCallCallback_ClickEvent_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ClickEvent event)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_ClickEvent event = static_cast<Ark_ClickEvent>(ClickEvent_serializer::read(thisDeserializer));
    _call(_resourceId, event);
}
void deserializeAndCallSyncCallback_ClickEvent_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ClickEvent event)>(thisDeserializer.readPointer());
    Ark_ClickEvent event = static_cast<Ark_ClickEvent>(ClickEvent_serializer::read(thisDeserializer));
    callSyncMethod(vmContext, resourceId, event);
}
void deserializeAndCallCallback_CreateItem(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Int32 index, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_Int32 index = thisDeserializer.readInt32();
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, index, continuationResult);
}
void deserializeAndCallSyncCallback_CreateItem(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 index, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_Int32 index = thisDeserializer.readInt32();
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, index, continuationResult);
}
void deserializeAndCallCallback_DrawContext_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_DrawContext drawContext = DrawContext_serializer::read(thisDeserializer);
    _call(_resourceId, drawContext);
}
void deserializeAndCallSyncCallback_DrawContext_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointer());
    Ark_DrawContext drawContext = DrawContext_serializer::read(thisDeserializer);
    callSyncMethod(vmContext, resourceId, drawContext);
}
void deserializeAndCallCallback_Extender_OnFinish(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    _call(_resourceId);
}
void deserializeAndCallSyncCallback_Extender_OnFinish(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointer());
    callSyncMethod(vmContext, resourceId);
}
void deserializeAndCallCallback_Extender_OnProgress(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Float32 value)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_Float32 value = thisDeserializer.readFloat32();
    _call(_resourceId, value);
}
void deserializeAndCallSyncCallback_Extender_OnProgress(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Float32 value)>(thisDeserializer.readPointer());
    Ark_Float32 value = thisDeserializer.readFloat32();
    callSyncMethod(vmContext, resourceId, value);
}
void deserializeAndCallCallback_NavigationTitleMode_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NavigationTitleMode titleMode = static_cast<Ark_NavigationTitleMode>(thisDeserializer.readInt32());
    _call(_resourceId, titleMode);
}
void deserializeAndCallSyncCallback_NavigationTitleMode_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode)>(thisDeserializer.readPointer());
    Ark_NavigationTitleMode titleMode = static_cast<Ark_NavigationTitleMode>(thisDeserializer.readInt32());
    callSyncMethod(vmContext, resourceId, titleMode);
}
void deserializeAndCallCallback_Number_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_Number select = static_cast<Ark_Number>(thisDeserializer.readNumber());
    _call(_resourceId, select);
}
void deserializeAndCallSyncCallback_Number_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointer());
    Ark_Number select = static_cast<Ark_Number>(thisDeserializer.readNumber());
    callSyncMethod(vmContext, resourceId, select);
}
void deserializeAndCallCallback_onMeasureSize_SizeResult(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint, const Callback_SizeResult_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_CustomObject selfLayoutInfo = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    const Ark_Int32 childrenTmpBufLength = thisDeserializer.readInt32();
    Array_CustomObject childrenTmpBuf = {};
    thisDeserializer.resizeArray<std::decay<decltype(childrenTmpBuf)>::type,
        std::decay<decltype(*childrenTmpBuf.array)>::type>(&childrenTmpBuf, childrenTmpBufLength);
    for (int childrenTmpBufBufCounterI = 0; childrenTmpBufBufCounterI < childrenTmpBufLength; childrenTmpBufBufCounterI++) {
        childrenTmpBuf.array[childrenTmpBufBufCounterI] = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    }
    Array_CustomObject children = childrenTmpBuf;
    Ark_CustomObject constraint = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_SizeResult_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_SizeResult value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_SizeResult_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_SizeResult value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_SizeResult_Void))))};
    _call(_resourceId, selfLayoutInfo, children, constraint, continuationResult);
}
void deserializeAndCallSyncCallback_onMeasureSize_SizeResult(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint, const Callback_SizeResult_Void continuation)>(thisDeserializer.readPointer());
    Ark_CustomObject selfLayoutInfo = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    const Ark_Int32 childrenTmpBufLength = thisDeserializer.readInt32();
    Array_CustomObject childrenTmpBuf = {};
    thisDeserializer.resizeArray<std::decay<decltype(childrenTmpBuf)>::type,
        std::decay<decltype(*childrenTmpBuf.array)>::type>(&childrenTmpBuf, childrenTmpBufLength);
    for (int childrenTmpBufBufCounterI = 0; childrenTmpBufBufCounterI < childrenTmpBufLength; childrenTmpBufBufCounterI++) {
        childrenTmpBuf.array[childrenTmpBufBufCounterI] = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    }
    Array_CustomObject children = childrenTmpBuf;
    Ark_CustomObject constraint = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_SizeResult_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_SizeResult value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_SizeResult_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_SizeResult value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_SizeResult_Void))))};
    callSyncMethod(vmContext, resourceId, selfLayoutInfo, children, constraint, continuationResult);
}
void deserializeAndCallCallback_onPlaceChildren_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_CustomObject selfLayoutInfo = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    const Ark_Int32 childrenTmpBufLength = thisDeserializer.readInt32();
    Array_CustomObject childrenTmpBuf = {};
    thisDeserializer.resizeArray<std::decay<decltype(childrenTmpBuf)>::type,
        std::decay<decltype(*childrenTmpBuf.array)>::type>(&childrenTmpBuf, childrenTmpBufLength);
    for (int childrenTmpBufBufCounterI = 0; childrenTmpBufBufCounterI < childrenTmpBufLength; childrenTmpBufBufCounterI++) {
        childrenTmpBuf.array[childrenTmpBufBufCounterI] = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    }
    Array_CustomObject children = childrenTmpBuf;
    Ark_CustomObject constraint = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    _call(_resourceId, selfLayoutInfo, children, constraint);
}
void deserializeAndCallSyncCallback_onPlaceChildren_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint)>(thisDeserializer.readPointer());
    Ark_CustomObject selfLayoutInfo = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    const Ark_Int32 childrenTmpBufLength = thisDeserializer.readInt32();
    Array_CustomObject childrenTmpBuf = {};
    thisDeserializer.resizeArray<std::decay<decltype(childrenTmpBuf)>::type,
        std::decay<decltype(*childrenTmpBuf.array)>::type>(&childrenTmpBuf, childrenTmpBufLength);
    for (int childrenTmpBufBufCounterI = 0; childrenTmpBufBufCounterI < childrenTmpBufLength; childrenTmpBufBufCounterI++) {
        childrenTmpBuf.array[childrenTmpBufBufCounterI] = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    }
    Array_CustomObject children = childrenTmpBuf;
    Ark_CustomObject constraint = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    callSyncMethod(vmContext, resourceId, selfLayoutInfo, children, constraint);
}
void deserializeAndCallCallback_Pointer_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer value = thisDeserializer.readPointer();
    _call(_resourceId, value);
}
void deserializeAndCallSyncCallback_Pointer_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointer());
    Ark_NativePointer value = thisDeserializer.readPointer();
    callSyncMethod(vmContext, resourceId, value);
}
void deserializeAndCallCallback_RangeUpdate(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Int32 start, const Ark_Int32 end)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_Int32 start = thisDeserializer.readInt32();
    Ark_Int32 end = thisDeserializer.readInt32();
    _call(_resourceId, start, end);
}
void deserializeAndCallSyncCallback_RangeUpdate(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 start, const Ark_Int32 end)>(thisDeserializer.readPointer());
    Ark_Int32 start = thisDeserializer.readInt32();
    Ark_Int32 end = thisDeserializer.readInt32();
    callSyncMethod(vmContext, resourceId, start, end);
}
void deserializeAndCallCallback_ResourceStr_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ResourceStr text)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    const Ark_Int8 textTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_ResourceStr textTmpBuf = {};
    textTmpBuf.selector = textTmpBufUnionSelector;
    if (textTmpBufUnionSelector == 0) {
        textTmpBuf.selector = 0;
        textTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (textTmpBufUnionSelector == 1) {
        textTmpBuf.selector = 1;
        textTmpBuf.value1 = Resource_serializer::read(thisDeserializer);
    } else {
        INTEROP_FATAL("One of the branches for textTmpBuf has to be chosen through deserialisation.");
    }
    Ark_ResourceStr text = static_cast<Ark_ResourceStr>(textTmpBuf);
    _call(_resourceId, text);
}
void deserializeAndCallSyncCallback_ResourceStr_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ResourceStr text)>(thisDeserializer.readPointer());
    const Ark_Int8 textTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_ResourceStr textTmpBuf = {};
    textTmpBuf.selector = textTmpBufUnionSelector;
    if (textTmpBufUnionSelector == 0) {
        textTmpBuf.selector = 0;
        textTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (textTmpBufUnionSelector == 1) {
        textTmpBuf.selector = 1;
        textTmpBuf.value1 = Resource_serializer::read(thisDeserializer);
    } else {
        INTEROP_FATAL("One of the branches for textTmpBuf has to be chosen through deserialisation.");
    }
    Ark_ResourceStr text = static_cast<Ark_ResourceStr>(textTmpBuf);
    callSyncMethod(vmContext, resourceId, text);
}
void deserializeAndCallCallback_SizeResult_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_SizeResult value)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_SizeResult value = SizeResult_serializer::read(thisDeserializer);
    _call(_resourceId, value);
}
void deserializeAndCallSyncCallback_SizeResult_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_SizeResult value)>(thisDeserializer.readPointer());
    Ark_SizeResult value = SizeResult_serializer::read(thisDeserializer);
    callSyncMethod(vmContext, resourceId, value);
}
void deserializeAndCallCallback_StateStylesChange(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Int32 currentState)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_Int32 currentState = thisDeserializer.readInt32();
    _call(_resourceId, currentState);
}
void deserializeAndCallSyncCallback_StateStylesChange(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 currentState)>(thisDeserializer.readPointer());
    Ark_Int32 currentState = thisDeserializer.readInt32();
    callSyncMethod(vmContext, resourceId, currentState);
}
void deserializeAndCallCallback_String_Number_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String value, const Ark_Number index)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_String value = static_cast<Ark_String>(thisDeserializer.readString());
    Ark_Number index = static_cast<Ark_Number>(thisDeserializer.readNumber());
    _call(_resourceId, value, index);
}
void deserializeAndCallSyncCallback_String_Number_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String value, const Ark_Number index)>(thisDeserializer.readPointer());
    Ark_String value = static_cast<Ark_String>(thisDeserializer.readString());
    Ark_Number index = static_cast<Ark_Number>(thisDeserializer.readNumber());
    callSyncMethod(vmContext, resourceId, value, index);
}
void deserializeAndCallCallback_String_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String parameter)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_String parameter = static_cast<Ark_String>(thisDeserializer.readString());
    _call(_resourceId, parameter);
}
void deserializeAndCallSyncCallback_String_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String parameter)>(thisDeserializer.readPointer());
    Ark_String parameter = static_cast<Ark_String>(thisDeserializer.readString());
    callSyncMethod(vmContext, resourceId, parameter);
}
void deserializeAndCallCallback_TextPickerResult_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_TextPickerResult value)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_TextPickerResult value = TextPickerResult_serializer::read(thisDeserializer);
    _call(_resourceId, value);
}
void deserializeAndCallSyncCallback_TextPickerResult_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_TextPickerResult value)>(thisDeserializer.readPointer());
    Ark_TextPickerResult value = TextPickerResult_serializer::read(thisDeserializer);
    callSyncMethod(vmContext, resourceId, value);
}
void deserializeAndCallCallback_Union_Number_Array_Number_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_Number_Array_Number selected)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    const Ark_Int8 selectedTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_Number_Array_Number selectedTmpBuf = {};
    selectedTmpBuf.selector = selectedTmpBufUnionSelector;
    if (selectedTmpBufUnionSelector == 0) {
        selectedTmpBuf.selector = 0;
        selectedTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
    } else if (selectedTmpBufUnionSelector == 1) {
        selectedTmpBuf.selector = 1;
        const Ark_Int32 selectedTmpBufBufULength = thisDeserializer.readInt32();
        Array_Number selectedTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(selectedTmpBufBufU)>::type,
        std::decay<decltype(*selectedTmpBufBufU.array)>::type>(&selectedTmpBufBufU, selectedTmpBufBufULength);
        for (int selectedTmpBufBufUBufCounterI = 0; selectedTmpBufBufUBufCounterI < selectedTmpBufBufULength; selectedTmpBufBufUBufCounterI++) {
            selectedTmpBufBufU.array[selectedTmpBufBufUBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        selectedTmpBuf.value1 = selectedTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for selectedTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_Number_Array_Number selected = static_cast<Ark_Union_Number_Array_Number>(selectedTmpBuf);
    _call(_resourceId, selected);
}
void deserializeAndCallSyncCallback_Union_Number_Array_Number_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_Number_Array_Number selected)>(thisDeserializer.readPointer());
    const Ark_Int8 selectedTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_Number_Array_Number selectedTmpBuf = {};
    selectedTmpBuf.selector = selectedTmpBufUnionSelector;
    if (selectedTmpBufUnionSelector == 0) {
        selectedTmpBuf.selector = 0;
        selectedTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
    } else if (selectedTmpBufUnionSelector == 1) {
        selectedTmpBuf.selector = 1;
        const Ark_Int32 selectedTmpBufBufULength = thisDeserializer.readInt32();
        Array_Number selectedTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(selectedTmpBufBufU)>::type,
        std::decay<decltype(*selectedTmpBufBufU.array)>::type>(&selectedTmpBufBufU, selectedTmpBufBufULength);
        for (int selectedTmpBufBufUBufCounterI = 0; selectedTmpBufBufUBufCounterI < selectedTmpBufBufULength; selectedTmpBufBufUBufCounterI++) {
            selectedTmpBufBufU.array[selectedTmpBufBufUBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        selectedTmpBuf.value1 = selectedTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for selectedTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_Number_Array_Number selected = static_cast<Ark_Union_Number_Array_Number>(selectedTmpBuf);
    callSyncMethod(vmContext, resourceId, selected);
}
void deserializeAndCallCallback_Union_String_Array_String_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    const Ark_Int8 valueTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_String_Array_String valueTmpBuf = {};
    valueTmpBuf.selector = valueTmpBufUnionSelector;
    if (valueTmpBufUnionSelector == 0) {
        valueTmpBuf.selector = 0;
        valueTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (valueTmpBufUnionSelector == 1) {
        valueTmpBuf.selector = 1;
        const Ark_Int32 valueTmpBufBufULength = thisDeserializer.readInt32();
        Array_String valueTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueTmpBufBufU)>::type,
        std::decay<decltype(*valueTmpBufBufU.array)>::type>(&valueTmpBufBufU, valueTmpBufBufULength);
        for (int valueTmpBufBufUBufCounterI = 0; valueTmpBufBufUBufCounterI < valueTmpBufBufULength; valueTmpBufBufUBufCounterI++) {
            valueTmpBufBufU.array[valueTmpBufBufUBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        valueTmpBuf.value1 = valueTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for valueTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_String_Array_String value = static_cast<Ark_Union_String_Array_String>(valueTmpBuf);
    _call(_resourceId, value);
}
void deserializeAndCallSyncCallback_Union_String_Array_String_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value)>(thisDeserializer.readPointer());
    const Ark_Int8 valueTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_String_Array_String valueTmpBuf = {};
    valueTmpBuf.selector = valueTmpBufUnionSelector;
    if (valueTmpBufUnionSelector == 0) {
        valueTmpBuf.selector = 0;
        valueTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (valueTmpBufUnionSelector == 1) {
        valueTmpBuf.selector = 1;
        const Ark_Int32 valueTmpBufBufULength = thisDeserializer.readInt32();
        Array_String valueTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueTmpBufBufU)>::type,
        std::decay<decltype(*valueTmpBufBufU.array)>::type>(&valueTmpBufBufU, valueTmpBufBufULength);
        for (int valueTmpBufBufUBufCounterI = 0; valueTmpBufBufUBufCounterI < valueTmpBufBufULength; valueTmpBufBufUBufCounterI++) {
            valueTmpBufBufU.array[valueTmpBufBufUBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        valueTmpBuf.value1 = valueTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for valueTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_String_Array_String value = static_cast<Ark_Union_String_Array_String>(valueTmpBuf);
    callSyncMethod(vmContext, resourceId, value);
}
void deserializeAndCallCallback_Void(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    _call(_resourceId);
}
void deserializeAndCallSyncCallback_Void(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointer());
    callSyncMethod(vmContext, resourceId);
}
void deserializeAndCallCheckBoxModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CheckBoxConfiguration config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CheckBoxConfiguration config = CheckBoxConfiguration_serializer::read(thisDeserializer);
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncCheckBoxModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CheckBoxConfiguration config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CheckBoxConfiguration config = CheckBoxConfiguration_serializer::read(thisDeserializer);
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallCustomNodeBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, continuationResult);
}
void deserializeAndCallSyncCustomNodeBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, continuationResult);
}
void deserializeAndCallDataPanelModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncDataPanelModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallGaugeModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncGaugeModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallLoadingProgressModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncLoadingProgressModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallMenuItemModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncMenuItemModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallNavExtender_OnUpdateStack(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    _call(_resourceId);
}
void deserializeAndCallSyncNavExtender_OnUpdateStack(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointer());
    callSyncMethod(vmContext, resourceId);
}
void deserializeAndCallProgressModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncProgressModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallRadioModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncRadioModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallRatingModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncRatingModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallRestrictedWorker_onerror_Callback(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ErrorEvent ev)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_ErrorEvent ev = ErrorEvent_serializer::read(thisDeserializer);
    _call(_resourceId, ev);
}
void deserializeAndCallSyncRestrictedWorker_onerror_Callback(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ErrorEvent ev)>(thisDeserializer.readPointer());
    Ark_ErrorEvent ev = ErrorEvent_serializer::read(thisDeserializer);
    callSyncMethod(vmContext, resourceId, ev);
}
void deserializeAndCallRestrictedWorker_onexit_Callback(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number code)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_Number code = static_cast<Ark_Number>(thisDeserializer.readNumber());
    _call(_resourceId, code);
}
void deserializeAndCallSyncRestrictedWorker_onexit_Callback(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number code)>(thisDeserializer.readPointer());
    Ark_Number code = static_cast<Ark_Number>(thisDeserializer.readNumber());
    callSyncMethod(vmContext, resourceId, code);
}
void deserializeAndCallRestrictedWorker_onmessage_Callback(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_MessageEvents event)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_MessageEvents event = MessageEvents_serializer::read(thisDeserializer);
    _call(_resourceId, event);
}
void deserializeAndCallSyncRestrictedWorker_onmessage_Callback(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_MessageEvents event)>(thisDeserializer.readPointer());
    Ark_MessageEvents event = MessageEvents_serializer::read(thisDeserializer);
    callSyncMethod(vmContext, resourceId, event);
}
void deserializeAndCallSearchValueCallback(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String value)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_String value = static_cast<Ark_String>(thisDeserializer.readString());
    _call(_resourceId, value);
}
void deserializeAndCallSyncSearchValueCallback(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String value)>(thisDeserializer.readPointer());
    Ark_String value = static_cast<Ark_String>(thisDeserializer.readString());
    callSyncMethod(vmContext, resourceId, value);
}
void deserializeAndCallSliderModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncSliderModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallTextClockModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncTextClockModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallTextFieldValueCallback(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ResourceStr value)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    const Ark_Int8 valueTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_ResourceStr valueTmpBuf = {};
    valueTmpBuf.selector = valueTmpBufUnionSelector;
    if (valueTmpBufUnionSelector == 0) {
        valueTmpBuf.selector = 0;
        valueTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (valueTmpBufUnionSelector == 1) {
        valueTmpBuf.selector = 1;
        valueTmpBuf.value1 = Resource_serializer::read(thisDeserializer);
    } else {
        INTEROP_FATAL("One of the branches for valueTmpBuf has to be chosen through deserialisation.");
    }
    Ark_ResourceStr value = static_cast<Ark_ResourceStr>(valueTmpBuf);
    _call(_resourceId, value);
}
void deserializeAndCallSyncTextFieldValueCallback(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ResourceStr value)>(thisDeserializer.readPointer());
    const Ark_Int8 valueTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_ResourceStr valueTmpBuf = {};
    valueTmpBuf.selector = valueTmpBufUnionSelector;
    if (valueTmpBufUnionSelector == 0) {
        valueTmpBuf.selector = 0;
        valueTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (valueTmpBufUnionSelector == 1) {
        valueTmpBuf.selector = 1;
        valueTmpBuf.value1 = Resource_serializer::read(thisDeserializer);
    } else {
        INTEROP_FATAL("One of the branches for valueTmpBuf has to be chosen through deserialisation.");
    }
    Ark_ResourceStr value = static_cast<Ark_ResourceStr>(valueTmpBuf);
    callSyncMethod(vmContext, resourceId, value);
}
void deserializeAndCallTextPickerScrollStopCallback(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    const Ark_Int8 valueTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_String_Array_String valueTmpBuf = {};
    valueTmpBuf.selector = valueTmpBufUnionSelector;
    if (valueTmpBufUnionSelector == 0) {
        valueTmpBuf.selector = 0;
        valueTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (valueTmpBufUnionSelector == 1) {
        valueTmpBuf.selector = 1;
        const Ark_Int32 valueTmpBufBufULength = thisDeserializer.readInt32();
        Array_String valueTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueTmpBufBufU)>::type,
        std::decay<decltype(*valueTmpBufBufU.array)>::type>(&valueTmpBufBufU, valueTmpBufBufULength);
        for (int valueTmpBufBufUBufCounterI = 0; valueTmpBufBufUBufCounterI < valueTmpBufBufULength; valueTmpBufBufUBufCounterI++) {
            valueTmpBufBufU.array[valueTmpBufBufUBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        valueTmpBuf.value1 = valueTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for valueTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_String_Array_String value = static_cast<Ark_Union_String_Array_String>(valueTmpBuf);
    const Ark_Int8 indexTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_Number_Array_Number indexTmpBuf = {};
    indexTmpBuf.selector = indexTmpBufUnionSelector;
    if (indexTmpBufUnionSelector == 0) {
        indexTmpBuf.selector = 0;
        indexTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
    } else if (indexTmpBufUnionSelector == 1) {
        indexTmpBuf.selector = 1;
        const Ark_Int32 indexTmpBufBufULength = thisDeserializer.readInt32();
        Array_Number indexTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(indexTmpBufBufU)>::type,
        std::decay<decltype(*indexTmpBufBufU.array)>::type>(&indexTmpBufBufU, indexTmpBufBufULength);
        for (int indexTmpBufBufUBufCounterI = 0; indexTmpBufBufUBufCounterI < indexTmpBufBufULength; indexTmpBufBufUBufCounterI++) {
            indexTmpBufBufU.array[indexTmpBufBufUBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        indexTmpBuf.value1 = indexTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for indexTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_Number_Array_Number index = static_cast<Ark_Union_Number_Array_Number>(indexTmpBuf);
    _call(_resourceId, value, index);
}
void deserializeAndCallSyncTextPickerScrollStopCallback(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointer());
    const Ark_Int8 valueTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_String_Array_String valueTmpBuf = {};
    valueTmpBuf.selector = valueTmpBufUnionSelector;
    if (valueTmpBufUnionSelector == 0) {
        valueTmpBuf.selector = 0;
        valueTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (valueTmpBufUnionSelector == 1) {
        valueTmpBuf.selector = 1;
        const Ark_Int32 valueTmpBufBufULength = thisDeserializer.readInt32();
        Array_String valueTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueTmpBufBufU)>::type,
        std::decay<decltype(*valueTmpBufBufU.array)>::type>(&valueTmpBufBufU, valueTmpBufBufULength);
        for (int valueTmpBufBufUBufCounterI = 0; valueTmpBufBufUBufCounterI < valueTmpBufBufULength; valueTmpBufBufUBufCounterI++) {
            valueTmpBufBufU.array[valueTmpBufBufUBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        valueTmpBuf.value1 = valueTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for valueTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_String_Array_String value = static_cast<Ark_Union_String_Array_String>(valueTmpBuf);
    const Ark_Int8 indexTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_Number_Array_Number indexTmpBuf = {};
    indexTmpBuf.selector = indexTmpBufUnionSelector;
    if (indexTmpBufUnionSelector == 0) {
        indexTmpBuf.selector = 0;
        indexTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
    } else if (indexTmpBufUnionSelector == 1) {
        indexTmpBuf.selector = 1;
        const Ark_Int32 indexTmpBufBufULength = thisDeserializer.readInt32();
        Array_Number indexTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(indexTmpBufBufU)>::type,
        std::decay<decltype(*indexTmpBufBufU.array)>::type>(&indexTmpBufBufU, indexTmpBufBufULength);
        for (int indexTmpBufBufUBufCounterI = 0; indexTmpBufBufUBufCounterI < indexTmpBufBufULength; indexTmpBufBufUBufCounterI++) {
            indexTmpBufBufU.array[indexTmpBufBufUBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        indexTmpBuf.value1 = indexTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for indexTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_Number_Array_Number index = static_cast<Ark_Union_Number_Array_Number>(indexTmpBuf);
    callSyncMethod(vmContext, resourceId, value, index);
}
void deserializeAndCallTextTimerModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncTextTimerModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallToggleModifierBuilder(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    _call(_resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallSyncToggleModifierBuilder(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointer());
    Ark_NativePointer parentNode = thisDeserializer.readPointer();
    Ark_CustomObject config = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
    Callback_Pointer_Void continuationResult = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Pointer_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Pointer_Void))))};
    callSyncMethod(vmContext, resourceId, parentNode, config, continuationResult);
}
void deserializeAndCallType_TextPickerAttribute_onChange_callback(KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 _resourceId = thisDeserializer.readInt32();
    const auto _call = reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointer());
    thisDeserializer.readPointer();
    const Ark_Int8 valueTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_String_Array_String valueTmpBuf = {};
    valueTmpBuf.selector = valueTmpBufUnionSelector;
    if (valueTmpBufUnionSelector == 0) {
        valueTmpBuf.selector = 0;
        valueTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (valueTmpBufUnionSelector == 1) {
        valueTmpBuf.selector = 1;
        const Ark_Int32 valueTmpBufBufULength = thisDeserializer.readInt32();
        Array_String valueTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueTmpBufBufU)>::type,
        std::decay<decltype(*valueTmpBufBufU.array)>::type>(&valueTmpBufBufU, valueTmpBufBufULength);
        for (int valueTmpBufBufUBufCounterI = 0; valueTmpBufBufUBufCounterI < valueTmpBufBufULength; valueTmpBufBufUBufCounterI++) {
            valueTmpBufBufU.array[valueTmpBufBufUBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        valueTmpBuf.value1 = valueTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for valueTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_String_Array_String value = static_cast<Ark_Union_String_Array_String>(valueTmpBuf);
    const Ark_Int8 indexTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_Number_Array_Number indexTmpBuf = {};
    indexTmpBuf.selector = indexTmpBufUnionSelector;
    if (indexTmpBufUnionSelector == 0) {
        indexTmpBuf.selector = 0;
        indexTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
    } else if (indexTmpBufUnionSelector == 1) {
        indexTmpBuf.selector = 1;
        const Ark_Int32 indexTmpBufBufULength = thisDeserializer.readInt32();
        Array_Number indexTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(indexTmpBufBufU)>::type,
        std::decay<decltype(*indexTmpBufBufU.array)>::type>(&indexTmpBufBufU, indexTmpBufBufULength);
        for (int indexTmpBufBufUBufCounterI = 0; indexTmpBufBufUBufCounterI < indexTmpBufBufULength; indexTmpBufBufUBufCounterI++) {
            indexTmpBufBufU.array[indexTmpBufBufUBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        indexTmpBuf.value1 = indexTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for indexTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_Number_Array_Number index = static_cast<Ark_Union_Number_Array_Number>(indexTmpBuf);
    _call(_resourceId, value, index);
}
void deserializeAndCallSyncType_TextPickerAttribute_onChange_callback(Ark_VMContext vmContext, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    DeserializerBase thisDeserializer = DeserializerBase(thisArray, thisLength);
    const Ark_Int32 resourceId = thisDeserializer.readInt32();
    thisDeserializer.readPointer();
    const auto callSyncMethod = reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointer());
    const Ark_Int8 valueTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_String_Array_String valueTmpBuf = {};
    valueTmpBuf.selector = valueTmpBufUnionSelector;
    if (valueTmpBufUnionSelector == 0) {
        valueTmpBuf.selector = 0;
        valueTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
    } else if (valueTmpBufUnionSelector == 1) {
        valueTmpBuf.selector = 1;
        const Ark_Int32 valueTmpBufBufULength = thisDeserializer.readInt32();
        Array_String valueTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueTmpBufBufU)>::type,
        std::decay<decltype(*valueTmpBufBufU.array)>::type>(&valueTmpBufBufU, valueTmpBufBufULength);
        for (int valueTmpBufBufUBufCounterI = 0; valueTmpBufBufUBufCounterI < valueTmpBufBufULength; valueTmpBufBufUBufCounterI++) {
            valueTmpBufBufU.array[valueTmpBufBufUBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        valueTmpBuf.value1 = valueTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for valueTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_String_Array_String value = static_cast<Ark_Union_String_Array_String>(valueTmpBuf);
    const Ark_Int8 indexTmpBufUnionSelector = thisDeserializer.readInt8();
    Ark_Union_Number_Array_Number indexTmpBuf = {};
    indexTmpBuf.selector = indexTmpBufUnionSelector;
    if (indexTmpBufUnionSelector == 0) {
        indexTmpBuf.selector = 0;
        indexTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
    } else if (indexTmpBufUnionSelector == 1) {
        indexTmpBuf.selector = 1;
        const Ark_Int32 indexTmpBufBufULength = thisDeserializer.readInt32();
        Array_Number indexTmpBufBufU = {};
        thisDeserializer.resizeArray<std::decay<decltype(indexTmpBufBufU)>::type,
        std::decay<decltype(*indexTmpBufBufU.array)>::type>(&indexTmpBufBufU, indexTmpBufBufULength);
        for (int indexTmpBufBufUBufCounterI = 0; indexTmpBufBufUBufCounterI < indexTmpBufBufULength; indexTmpBufBufUBufCounterI++) {
            indexTmpBufBufU.array[indexTmpBufBufUBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        indexTmpBuf.value1 = indexTmpBufBufU;
    } else {
        INTEROP_FATAL("One of the branches for indexTmpBuf has to be chosen through deserialisation.");
    }
    Ark_Union_Number_Array_Number index = static_cast<Ark_Union_Number_Array_Number>(indexTmpBuf);
    callSyncMethod(vmContext, resourceId, value, index);
}
void deserializeAndCallCallback(Ark_Int32 kind, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    switch (static_cast<CallbackKind>(kind)) {
        case Kind_AsyncCallback_image_PixelMap_Void: return deserializeAndCallAsyncCallback_image_PixelMap_Void(thisArray, thisLength);
        case Kind_ButtonModifierBuilder: return deserializeAndCallButtonModifierBuilder(thisArray, thisLength);
        case Kind_Callback_Boolean_Void: return deserializeAndCallCallback_Boolean_Void(thisArray, thisLength);
        case Kind_Callback_ClickEvent_Void: return deserializeAndCallCallback_ClickEvent_Void(thisArray, thisLength);
        case Kind_Callback_CreateItem: return deserializeAndCallCallback_CreateItem(thisArray, thisLength);
        case Kind_Callback_DrawContext_Void: return deserializeAndCallCallback_DrawContext_Void(thisArray, thisLength);
        case Kind_Callback_Extender_OnFinish: return deserializeAndCallCallback_Extender_OnFinish(thisArray, thisLength);
        case Kind_Callback_Extender_OnProgress: return deserializeAndCallCallback_Extender_OnProgress(thisArray, thisLength);
        case Kind_Callback_NavigationTitleMode_Void: return deserializeAndCallCallback_NavigationTitleMode_Void(thisArray, thisLength);
        case Kind_Callback_Number_Void: return deserializeAndCallCallback_Number_Void(thisArray, thisLength);
        case Kind_Callback_onMeasureSize_SizeResult: return deserializeAndCallCallback_onMeasureSize_SizeResult(thisArray, thisLength);
        case Kind_Callback_onPlaceChildren_Void: return deserializeAndCallCallback_onPlaceChildren_Void(thisArray, thisLength);
        case Kind_Callback_Pointer_Void: return deserializeAndCallCallback_Pointer_Void(thisArray, thisLength);
        case Kind_Callback_RangeUpdate: return deserializeAndCallCallback_RangeUpdate(thisArray, thisLength);
        case Kind_Callback_ResourceStr_Void: return deserializeAndCallCallback_ResourceStr_Void(thisArray, thisLength);
        case Kind_Callback_SizeResult_Void: return deserializeAndCallCallback_SizeResult_Void(thisArray, thisLength);
        case Kind_Callback_StateStylesChange: return deserializeAndCallCallback_StateStylesChange(thisArray, thisLength);
        case Kind_Callback_String_Number_Void: return deserializeAndCallCallback_String_Number_Void(thisArray, thisLength);
        case Kind_Callback_String_Void: return deserializeAndCallCallback_String_Void(thisArray, thisLength);
        case Kind_Callback_TextPickerResult_Void: return deserializeAndCallCallback_TextPickerResult_Void(thisArray, thisLength);
        case Kind_Callback_Union_Number_Array_Number_Void: return deserializeAndCallCallback_Union_Number_Array_Number_Void(thisArray, thisLength);
        case Kind_Callback_Union_String_Array_String_Void: return deserializeAndCallCallback_Union_String_Array_String_Void(thisArray, thisLength);
        case Kind_Callback_Void: return deserializeAndCallCallback_Void(thisArray, thisLength);
        case Kind_CheckBoxModifierBuilder: return deserializeAndCallCheckBoxModifierBuilder(thisArray, thisLength);
        case Kind_CustomNodeBuilder: return deserializeAndCallCustomNodeBuilder(thisArray, thisLength);
        case Kind_DataPanelModifierBuilder: return deserializeAndCallDataPanelModifierBuilder(thisArray, thisLength);
        case Kind_GaugeModifierBuilder: return deserializeAndCallGaugeModifierBuilder(thisArray, thisLength);
        case Kind_LoadingProgressModifierBuilder: return deserializeAndCallLoadingProgressModifierBuilder(thisArray, thisLength);
        case Kind_MenuItemModifierBuilder: return deserializeAndCallMenuItemModifierBuilder(thisArray, thisLength);
        case Kind_NavExtender_OnUpdateStack: return deserializeAndCallNavExtender_OnUpdateStack(thisArray, thisLength);
        case Kind_ProgressModifierBuilder: return deserializeAndCallProgressModifierBuilder(thisArray, thisLength);
        case Kind_RadioModifierBuilder: return deserializeAndCallRadioModifierBuilder(thisArray, thisLength);
        case Kind_RatingModifierBuilder: return deserializeAndCallRatingModifierBuilder(thisArray, thisLength);
        case Kind_RestrictedWorker_onerror_Callback: return deserializeAndCallRestrictedWorker_onerror_Callback(thisArray, thisLength);
        case Kind_RestrictedWorker_onexit_Callback: return deserializeAndCallRestrictedWorker_onexit_Callback(thisArray, thisLength);
        case Kind_RestrictedWorker_onmessage_Callback: return deserializeAndCallRestrictedWorker_onmessage_Callback(thisArray, thisLength);
        case Kind_SearchValueCallback: return deserializeAndCallSearchValueCallback(thisArray, thisLength);
        case Kind_SliderModifierBuilder: return deserializeAndCallSliderModifierBuilder(thisArray, thisLength);
        case Kind_TextClockModifierBuilder: return deserializeAndCallTextClockModifierBuilder(thisArray, thisLength);
        case Kind_TextFieldValueCallback: return deserializeAndCallTextFieldValueCallback(thisArray, thisLength);
        case Kind_TextPickerScrollStopCallback: return deserializeAndCallTextPickerScrollStopCallback(thisArray, thisLength);
        case Kind_TextTimerModifierBuilder: return deserializeAndCallTextTimerModifierBuilder(thisArray, thisLength);
        case Kind_ToggleModifierBuilder: return deserializeAndCallToggleModifierBuilder(thisArray, thisLength);
        case Kind_Type_TextPickerAttribute_onChange_callback: return deserializeAndCallType_TextPickerAttribute_onChange_callback(thisArray, thisLength);
    }
    printf("Unknown callback kind\n");
}
KOALA_EXECUTE(deserializeAndCallCallback, setCallbackCaller(static_cast<Callback_Caller_t>(deserializeAndCallCallback)))
void deserializeAndCallCallbackSync(Ark_VMContext vmContext, Ark_Int32 kind, KSerializerBuffer thisArray, Ark_Int32 thisLength)
{
    switch (kind) {
        case Kind_AsyncCallback_image_PixelMap_Void: return deserializeAndCallSyncAsyncCallback_image_PixelMap_Void(vmContext, thisArray, thisLength);
        case Kind_ButtonModifierBuilder: return deserializeAndCallSyncButtonModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_Callback_Boolean_Void: return deserializeAndCallSyncCallback_Boolean_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_ClickEvent_Void: return deserializeAndCallSyncCallback_ClickEvent_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_CreateItem: return deserializeAndCallSyncCallback_CreateItem(vmContext, thisArray, thisLength);
        case Kind_Callback_DrawContext_Void: return deserializeAndCallSyncCallback_DrawContext_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_Extender_OnFinish: return deserializeAndCallSyncCallback_Extender_OnFinish(vmContext, thisArray, thisLength);
        case Kind_Callback_Extender_OnProgress: return deserializeAndCallSyncCallback_Extender_OnProgress(vmContext, thisArray, thisLength);
        case Kind_Callback_NavigationTitleMode_Void: return deserializeAndCallSyncCallback_NavigationTitleMode_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_Number_Void: return deserializeAndCallSyncCallback_Number_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_onMeasureSize_SizeResult: return deserializeAndCallSyncCallback_onMeasureSize_SizeResult(vmContext, thisArray, thisLength);
        case Kind_Callback_onPlaceChildren_Void: return deserializeAndCallSyncCallback_onPlaceChildren_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_Pointer_Void: return deserializeAndCallSyncCallback_Pointer_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_RangeUpdate: return deserializeAndCallSyncCallback_RangeUpdate(vmContext, thisArray, thisLength);
        case Kind_Callback_ResourceStr_Void: return deserializeAndCallSyncCallback_ResourceStr_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_SizeResult_Void: return deserializeAndCallSyncCallback_SizeResult_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_StateStylesChange: return deserializeAndCallSyncCallback_StateStylesChange(vmContext, thisArray, thisLength);
        case Kind_Callback_String_Number_Void: return deserializeAndCallSyncCallback_String_Number_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_String_Void: return deserializeAndCallSyncCallback_String_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_TextPickerResult_Void: return deserializeAndCallSyncCallback_TextPickerResult_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_Union_Number_Array_Number_Void: return deserializeAndCallSyncCallback_Union_Number_Array_Number_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_Union_String_Array_String_Void: return deserializeAndCallSyncCallback_Union_String_Array_String_Void(vmContext, thisArray, thisLength);
        case Kind_Callback_Void: return deserializeAndCallSyncCallback_Void(vmContext, thisArray, thisLength);
        case Kind_CheckBoxModifierBuilder: return deserializeAndCallSyncCheckBoxModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_CustomNodeBuilder: return deserializeAndCallSyncCustomNodeBuilder(vmContext, thisArray, thisLength);
        case Kind_DataPanelModifierBuilder: return deserializeAndCallSyncDataPanelModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_GaugeModifierBuilder: return deserializeAndCallSyncGaugeModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_LoadingProgressModifierBuilder: return deserializeAndCallSyncLoadingProgressModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_MenuItemModifierBuilder: return deserializeAndCallSyncMenuItemModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_NavExtender_OnUpdateStack: return deserializeAndCallSyncNavExtender_OnUpdateStack(vmContext, thisArray, thisLength);
        case Kind_ProgressModifierBuilder: return deserializeAndCallSyncProgressModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_RadioModifierBuilder: return deserializeAndCallSyncRadioModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_RatingModifierBuilder: return deserializeAndCallSyncRatingModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_RestrictedWorker_onerror_Callback: return deserializeAndCallSyncRestrictedWorker_onerror_Callback(vmContext, thisArray, thisLength);
        case Kind_RestrictedWorker_onexit_Callback: return deserializeAndCallSyncRestrictedWorker_onexit_Callback(vmContext, thisArray, thisLength);
        case Kind_RestrictedWorker_onmessage_Callback: return deserializeAndCallSyncRestrictedWorker_onmessage_Callback(vmContext, thisArray, thisLength);
        case Kind_SearchValueCallback: return deserializeAndCallSyncSearchValueCallback(vmContext, thisArray, thisLength);
        case Kind_SliderModifierBuilder: return deserializeAndCallSyncSliderModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_TextClockModifierBuilder: return deserializeAndCallSyncTextClockModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_TextFieldValueCallback: return deserializeAndCallSyncTextFieldValueCallback(vmContext, thisArray, thisLength);
        case Kind_TextPickerScrollStopCallback: return deserializeAndCallSyncTextPickerScrollStopCallback(vmContext, thisArray, thisLength);
        case Kind_TextTimerModifierBuilder: return deserializeAndCallSyncTextTimerModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_ToggleModifierBuilder: return deserializeAndCallSyncToggleModifierBuilder(vmContext, thisArray, thisLength);
        case Kind_Type_TextPickerAttribute_onChange_callback: return deserializeAndCallSyncType_TextPickerAttribute_onChange_callback(vmContext, thisArray, thisLength);
    }
    printf("Unknown callback kind\n");
}
KOALA_EXECUTE(deserializeAndCallCallbackSync, setCallbackCallerSync(static_cast<Callback_Caller_Sync_t>(deserializeAndCallCallbackSync)))