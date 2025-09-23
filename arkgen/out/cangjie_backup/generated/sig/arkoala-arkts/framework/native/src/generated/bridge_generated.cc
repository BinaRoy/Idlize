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
#include <vector>
#include <string>

#define KOALA_INTEROP_MODULE ArkUIGeneratedNativeModule
#include "common-interop.h"
#include "arkoala_api_generated.h"
#include "Serializers.h"
#include "callbacks.h"

const OH_AnyAPI* GetAnyImpl(int kind, int version, std::string* result = nullptr);

static const GENERATED_ArkUIFullNodeAPI* GetFullImpl() {
    return reinterpret_cast<const GENERATED_ArkUIFullNodeAPI*>(
        GetAnyImpl(static_cast<int>(GENERATED_Ark_APIVariantKind::GENERATED_FULL),
        GENERATED_ARKUI_FULL_API_VERSION, nullptr));
}

static const GENERATED_ArkUINodeModifiers* GetNodeModifiers() {
    return GetFullImpl()->getNodeModifiers();
}

static const GENERATED_ArkUIAccessors* GetAccessors() {
    return GetFullImpl()->getAccessors();
}

Ark_NativePointer impl_ComponentRoot_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getComponentRootModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(ComponentRoot_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
Ark_NativePointer impl_CustomLayoutRoot_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCustomLayoutRootModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(CustomLayoutRoot_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CustomLayoutRoot_setSubscribeOnMeasureSize(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_onMeasureSize_SizeResult valueValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint, const Callback_SizeResult_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_onMeasureSize_SizeResult)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint, const Callback_SizeResult_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_onMeasureSize_SizeResult))))};;
        GetNodeModifiers()->getCustomLayoutRootModifier()->setSubscribeOnMeasureSize(self, static_cast<Callback_onMeasureSize_SizeResult*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CustomLayoutRoot_setSubscribeOnMeasureSize, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CustomLayoutRoot_setSubscribeOnPlaceChildren(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_onPlaceChildren_Void valueValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_onPlaceChildren_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject selfLayoutInfo, const Array_CustomObject children, const Ark_CustomObject constraint)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_onPlaceChildren_Void))))};;
        GetNodeModifiers()->getCustomLayoutRootModifier()->setSubscribeOnPlaceChildren(self, static_cast<Callback_onPlaceChildren_Void*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CustomLayoutRoot_setSubscribeOnPlaceChildren, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Root_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getRootModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Root_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
Ark_NativePointer impl_Blank_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getBlankModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Blank_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_BlankInterface_setBlankOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto minValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number minValueTempTmpBuf = {};
        minValueTempTmpBuf.tag = minValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((minValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            minValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number minValueTemp = minValueTempTmpBuf;;
        GetNodeModifiers()->getBlankModifier()->setBlankOptions(self, static_cast<Opt_Number*>(&minValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BlankInterface_setBlankOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_BlankAttribute_setColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getBlankModifier()->setColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BlankAttribute_setColor, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Button_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getButtonModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Button_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ButtonInterface_setButtonOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getButtonModifier()->setButtonOptions(self);
}
KOALA_INTEROP_DIRECT_V1(ButtonInterface_setButtonOptions, Ark_NativePointer)
void impl_ButtonAttribute_setType(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getButtonModifier()->setType(self, static_cast<Ark_ButtonType>(value));
}
KOALA_INTEROP_DIRECT_V2(ButtonAttribute_setType, Ark_NativePointer, Ark_Int32)
void impl_ButtonAttribute_setFontColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getButtonModifier()->setFontColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ButtonAttribute_setFontColor, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ButtonAttribute_setLabelStyle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_LabelStyle valueValueTemp = LabelStyle_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getButtonModifier()->setLabelStyle(self, static_cast<Ark_LabelStyle*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ButtonAttribute_setLabelStyle, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Checkbox_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCheckboxModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Checkbox_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CheckboxInterface_setCheckboxOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_CheckboxOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = CheckboxOptions_serializer::read(thisDeserializer);
        }
        Opt_CheckboxOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCheckboxModifier()->setCheckboxOptions(self, static_cast<Opt_CheckboxOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CheckboxInterface_setCheckboxOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CheckboxAttribute_setSelect(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getCheckboxModifier()->setSelect(self, value);
}
KOALA_INTEROP_DIRECT_V2(CheckboxAttribute_setSelect, Ark_NativePointer, Ark_Boolean)
void impl_CheckboxAttribute_setSelectedColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getCheckboxModifier()->setSelectedColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CheckboxAttribute_setSelectedColor, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CheckboxAttribute_setShape(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getCheckboxModifier()->setShape(self, static_cast<Ark_CheckBoxShape>(value));
}
KOALA_INTEROP_DIRECT_V2(CheckboxAttribute_setShape, Ark_NativePointer, Ark_Int32)
void impl_CheckboxAttribute_setUnselectedColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getCheckboxModifier()->setUnselectedColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CheckboxAttribute_setUnselectedColor, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CheckboxAttribute_setMark(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_MarkStyle valueValueTemp = MarkStyle_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getCheckboxModifier()->setMark(self, static_cast<Ark_MarkStyle*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CheckboxAttribute_setMark, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CheckboxAttribute_setOnChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Boolean_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Boolean parameter)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Boolean_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Boolean parameter)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Boolean_Void))))};;
        GetNodeModifiers()->getCheckboxModifier()->setOnChange(self, static_cast<Callback_Boolean_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CheckboxAttribute_setOnChange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CheckboxAttribute_set_onChangeEvent_select(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void callbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Number_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Number_Void))))};;
        GetNodeModifiers()->getCheckboxModifier()->set_onChangeEvent_select(self, static_cast<Callback_Number_Void*>(&callbackValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CheckboxAttribute_set_onChangeEvent_select, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Column_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getColumnModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Column_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ColumnInterface_setColumnOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getColumnModifier()->setColumnOptions(self);
}
KOALA_INTEROP_DIRECT_V1(ColumnInterface_setColumnOptions, Ark_NativePointer)
void impl_ColumnAttribute_setAlignItems(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getColumnModifier()->setAlignItems(self, static_cast<Ark_HorizontalAlign>(value));
}
KOALA_INTEROP_DIRECT_V2(ColumnAttribute_setAlignItems, Ark_NativePointer, Ark_Int32)
Ark_NativePointer impl_CommonMethod_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCommonMethodModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(CommonMethod_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CommonMethod_setBackdropBlur(Ark_NativePointer thisPtr, KInteropNumber value, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_BlurOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = BlurOptions_serializer::read(thisDeserializer);
        }
        Opt_BlurOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setBackdropBlur(self, (const Ark_Number*) (&value), static_cast<Opt_BlurOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_V4(CommonMethod_setBackdropBlur, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
void impl_CommonMethod_setWidth(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Length valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Length valueValueTemp = static_cast<Ark_Length>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getCommonMethodModifier()->setWidth(self, static_cast<Ark_Length*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setWidth, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setHeight(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Length valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Length valueValueTemp = static_cast<Ark_Length>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getCommonMethodModifier()->setHeight(self, static_cast<Ark_Length*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setHeight, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setKey(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getCommonMethodModifier()->setKey(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(CommonMethod_setKey, Ark_NativePointer, KStringPtr)
void impl_CommonMethod_setRestoreId(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getCommonMethodModifier()->setRestoreId(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(CommonMethod_setRestoreId, Ark_NativePointer, KInteropNumber)
void impl_CommonMethod_setPadding(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Padding valueValueTempTmpBuf = {};
        const auto valueValueTempTmpBufTopTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Length valueValueTempTmpBufTopTempBuf = {};
        valueValueTempTmpBufTopTempBuf.tag = valueValueTempTmpBufTopTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBufTopTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBufTopTempBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Length valueValueTempTmpBufTopTempBuf_ = {};
            valueValueTempTmpBufTopTempBuf_.selector = valueValueTempTmpBufTopTempBuf_UnionSelector;
            if (valueValueTempTmpBufTopTempBuf_UnionSelector == 0) {
                valueValueTempTmpBufTopTempBuf_.selector = 0;
                valueValueTempTmpBufTopTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBufTopTempBuf_UnionSelector == 1) {
                valueValueTempTmpBufTopTempBuf_.selector = 1;
                valueValueTempTmpBufTopTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (valueValueTempTmpBufTopTempBuf_UnionSelector == 2) {
                valueValueTempTmpBufTopTempBuf_.selector = 2;
                valueValueTempTmpBufTopTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufTopTempBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBufTopTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBufTopTempBuf_);
        }
        valueValueTempTmpBuf.top = valueValueTempTmpBufTopTempBuf;
        const auto valueValueTempTmpBufRightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Length valueValueTempTmpBufRightTempBuf = {};
        valueValueTempTmpBufRightTempBuf.tag = valueValueTempTmpBufRightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBufRightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBufRightTempBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Length valueValueTempTmpBufRightTempBuf_ = {};
            valueValueTempTmpBufRightTempBuf_.selector = valueValueTempTmpBufRightTempBuf_UnionSelector;
            if (valueValueTempTmpBufRightTempBuf_UnionSelector == 0) {
                valueValueTempTmpBufRightTempBuf_.selector = 0;
                valueValueTempTmpBufRightTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBufRightTempBuf_UnionSelector == 1) {
                valueValueTempTmpBufRightTempBuf_.selector = 1;
                valueValueTempTmpBufRightTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (valueValueTempTmpBufRightTempBuf_UnionSelector == 2) {
                valueValueTempTmpBufRightTempBuf_.selector = 2;
                valueValueTempTmpBufRightTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufRightTempBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBufRightTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBufRightTempBuf_);
        }
        valueValueTempTmpBuf.right = valueValueTempTmpBufRightTempBuf;
        const auto valueValueTempTmpBufBottomTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Length valueValueTempTmpBufBottomTempBuf = {};
        valueValueTempTmpBufBottomTempBuf.tag = valueValueTempTmpBufBottomTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBufBottomTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBufBottomTempBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Length valueValueTempTmpBufBottomTempBuf_ = {};
            valueValueTempTmpBufBottomTempBuf_.selector = valueValueTempTmpBufBottomTempBuf_UnionSelector;
            if (valueValueTempTmpBufBottomTempBuf_UnionSelector == 0) {
                valueValueTempTmpBufBottomTempBuf_.selector = 0;
                valueValueTempTmpBufBottomTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBufBottomTempBuf_UnionSelector == 1) {
                valueValueTempTmpBufBottomTempBuf_.selector = 1;
                valueValueTempTmpBufBottomTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (valueValueTempTmpBufBottomTempBuf_UnionSelector == 2) {
                valueValueTempTmpBufBottomTempBuf_.selector = 2;
                valueValueTempTmpBufBottomTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufBottomTempBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBufBottomTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBufBottomTempBuf_);
        }
        valueValueTempTmpBuf.bottom = valueValueTempTmpBufBottomTempBuf;
        const auto valueValueTempTmpBufLeftTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Length valueValueTempTmpBufLeftTempBuf = {};
        valueValueTempTmpBufLeftTempBuf.tag = valueValueTempTmpBufLeftTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBufLeftTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBufLeftTempBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Length valueValueTempTmpBufLeftTempBuf_ = {};
            valueValueTempTmpBufLeftTempBuf_.selector = valueValueTempTmpBufLeftTempBuf_UnionSelector;
            if (valueValueTempTmpBufLeftTempBuf_UnionSelector == 0) {
                valueValueTempTmpBufLeftTempBuf_.selector = 0;
                valueValueTempTmpBufLeftTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBufLeftTempBuf_UnionSelector == 1) {
                valueValueTempTmpBufLeftTempBuf_.selector = 1;
                valueValueTempTmpBufLeftTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (valueValueTempTmpBufLeftTempBuf_UnionSelector == 2) {
                valueValueTempTmpBufLeftTempBuf_.selector = 2;
                valueValueTempTmpBufLeftTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufLeftTempBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBufLeftTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBufLeftTempBuf_);
        }
        valueValueTempTmpBuf.left = valueValueTempTmpBufLeftTempBuf;
        Ark_Padding valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setPadding(self, static_cast<Ark_Padding*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setPadding, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setBindSheet(Ark_NativePointer thisPtr, Ark_Boolean isShow, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_SheetOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = SheetOptions_serializer::read(thisDeserializer);
        }
        Opt_SheetOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setBindSheet(self, isShow, static_cast<Opt_SheetOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V4(CommonMethod_setBindSheet, Ark_NativePointer, Ark_Boolean, KSerializerBuffer, int32_t)
void impl_CommonMethod_setBackgroundBlurStyle(Ark_NativePointer thisPtr, Ark_Int32 value, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_BackgroundBlurStyleOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = BackgroundBlurStyleOptions_serializer::read(thisDeserializer);
        }
        Opt_BackgroundBlurStyleOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setBackgroundBlurStyle(self, static_cast<Ark_BlurStyle>(value), static_cast<Opt_BackgroundBlurStyleOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V4(CommonMethod_setBackgroundBlurStyle, Ark_NativePointer, Ark_Int32, KSerializerBuffer, int32_t)
void impl_CommonMethod_setDragPreviewOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_DragPreviewOptions valueValueTemp = DragPreviewOptions_serializer::read(thisDeserializer);;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_DragInteractionOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = DragInteractionOptions_serializer::read(thisDeserializer);
        }
        Opt_DragInteractionOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setDragPreviewOptions(self, static_cast<Ark_DragPreviewOptions*>(&valueValueTemp), static_cast<Opt_DragInteractionOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setDragPreviewOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setOnClick0(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto eventValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_ClickEvent_Void eventValueTempTmpBuf = {};
        eventValueTempTmpBuf.tag = eventValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((eventValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            eventValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ClickEvent event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_ClickEvent_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ClickEvent event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_ClickEvent_Void))))};
        }
        Opt_Callback_ClickEvent_Void eventValueTemp = eventValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setOnClick0(self, static_cast<Opt_Callback_ClickEvent_Void*>(&eventValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setOnClick0, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setOnClick1(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto eventValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_ClickEvent_Void eventValueTempTmpBuf = {};
        eventValueTempTmpBuf.tag = eventValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((eventValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            eventValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ClickEvent event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_ClickEvent_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ClickEvent event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_ClickEvent_Void))))};
        }
        Opt_Callback_ClickEvent_Void eventValueTemp = eventValueTempTmpBuf;;
        const auto distanceThresholdValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number distanceThresholdValueTempTmpBuf = {};
        distanceThresholdValueTempTmpBuf.tag = distanceThresholdValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((distanceThresholdValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            distanceThresholdValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number distanceThresholdValueTemp = distanceThresholdValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setOnClick1(self, static_cast<Opt_Callback_ClickEvent_Void*>(&eventValueTemp), static_cast<Opt_Number*>(&distanceThresholdValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setOnClick1, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ScrollableCommonMethod_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getScrollableCommonMethodModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(ScrollableCommonMethod_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ScrollableCommonMethod_setScrollBarWidth(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getScrollableCommonMethodModifier()->setScrollBarWidth(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(ScrollableCommonMethod_setScrollBarWidth, Ark_NativePointer, KInteropNumber)
void impl_ScrollableCommonMethod_setScrollBarWidth(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getScrollableCommonMethodModifier()->setScrollBarWidth(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(ScrollableCommonMethod_setScrollBarWidth, Ark_NativePointer, KStringPtr)
Ark_NativePointer impl_List_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getListModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(List_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ListInterface_setListOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getListModifier()->setListOptions(self);
}
KOALA_INTEROP_DIRECT_V1(ListInterface_setListOptions, Ark_NativePointer)
void impl_ListAttribute_setSomeOptional(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto paramValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean paramValueTempTmpBuf = {};
        paramValueTempTmpBuf.tag = paramValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((paramValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            paramValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean paramValueTemp = paramValueTempTmpBuf;;
        GetNodeModifiers()->getListModifier()->setSomeOptional(self, static_cast<Opt_Boolean*>(&paramValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ListAttribute_setSomeOptional, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Navigation_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getNavigationModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Navigation_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_NavigationInterface_setNavigationOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setNavigationOptions(self);
}
KOALA_INTEROP_DIRECT_V1(NavigationInterface_setNavigationOptions, Ark_NativePointer)
void impl_NavigationAttribute_setOnTitleModeChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_NavigationTitleMode_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_NavigationTitleMode_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_NavigationTitleMode_Void))))};;
        GetNodeModifiers()->getNavigationModifier()->setOnTitleModeChange(self, static_cast<Callback_NavigationTitleMode_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setOnTitleModeChange, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Test_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTestModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Test_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TestInterface_setTestOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestOptions(self);
}
KOALA_INTEROP_DIRECT_V1(TestInterface_setTestOptions, Ark_NativePointer)
void impl_TestAttribute_setTestBoolean(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestBoolean(self, value);
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestBoolean, Ark_NativePointer, Ark_Boolean)
void impl_TestAttribute_setTestNumber(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestNumber(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(TestAttribute_setTestNumber, Ark_NativePointer, KInteropNumber)
void impl_TestAttribute_setTestString(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestString(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(TestAttribute_setTestString, Ark_NativePointer, KStringPtr)
void impl_TestAttribute_setTestEnum(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestEnum(self, static_cast<Ark_EnumDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestEnum, Ark_NativePointer, Ark_Int32)
void impl_TestAttribute_setTestBasicMix(Ark_NativePointer thisPtr, KInteropNumber v1, const KStringPtr& v2, KInteropNumber v3) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestBasicMix(self, (const Ark_Number*) (&v1), (const Ark_String*) (&v2), (const Ark_Number*) (&v3));
}
KOALA_INTEROP_V4(TestAttribute_setTestBasicMix, Ark_NativePointer, KInteropNumber, KStringPtr, KInteropNumber)
void impl_TestAttribute_setTestBooleanUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanUndefined(self, static_cast<Opt_Boolean*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestNumberUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestNumberUndefined(self, static_cast<Opt_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestNumberUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestStringUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestStringUndefined(self, static_cast<Opt_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestStringUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestEnumUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_EnumDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        }
        Opt_EnumDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestEnumUndefined(self, static_cast<Opt_EnumDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestEnumUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestFunctionNumberVoid(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void valueValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Number_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Number_Void))))};;
        GetNodeModifiers()->getTestModifier()->setTestFunctionNumberVoid(self, static_cast<Callback_Number_Void*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestFunctionNumberVoid, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionNumberEnum(Ark_NativePointer thisPtr, KInteropNumber val) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestUnionNumberEnum(self, (const Ark_Number*) (&val));
}
KOALA_INTEROP_V2(TestAttribute_setTestUnionNumberEnum, Ark_NativePointer, KInteropNumber)
void impl_TestAttribute_setTestUnionNumberEnum(Ark_NativePointer thisPtr, Ark_Int32 val) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestUnionNumberEnum(self, static_cast<Ark_EnumDTS>(val));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestUnionNumberEnum, Ark_NativePointer, Ark_Int32)
void impl_TestAttribute_setTestUnionBooleanString(Ark_NativePointer thisPtr, Ark_Boolean val) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestUnionBooleanString(self, val);
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestUnionBooleanString, Ark_NativePointer, Ark_Boolean)
void impl_TestAttribute_setTestUnionBooleanString(Ark_NativePointer thisPtr, const KStringPtr& val) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestUnionBooleanString(self, (const Ark_String*) (&val));
}
KOALA_INTEROP_V2(TestAttribute_setTestUnionBooleanString, Ark_NativePointer, KStringPtr)
void impl_TestAttribute_setTestUnionStringNumber(Ark_NativePointer thisPtr, KInteropNumber val) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestUnionStringNumber(self, (const Ark_Number*) (&val));
}
KOALA_INTEROP_V2(TestAttribute_setTestUnionStringNumber, Ark_NativePointer, KInteropNumber)
void impl_TestAttribute_setTestUnionStringNumber(Ark_NativePointer thisPtr, const KStringPtr& val) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestUnionStringNumber(self, (const Ark_String*) (&val));
}
KOALA_INTEROP_V2(TestAttribute_setTestUnionStringNumber, Ark_NativePointer, KStringPtr)
void impl_TestAttribute_setTestUnionBooleanStringNumberUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number valValueTempTmpBuf = {};
        valValueTempTmpBuf.tag = valValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number valValueTemp = valValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestUnionBooleanStringNumberUndefined(self, static_cast<Opt_Number*>(&valValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionBooleanStringNumberUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionWithGenericArray(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestUnionWithGenericArray(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(TestAttribute_setTestUnionWithGenericArray, Ark_NativePointer, KInteropNumber)
void impl_TestAttribute_setTestUnionWithArrayType(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestUnionWithArrayType(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(TestAttribute_setTestUnionWithArrayType, Ark_NativePointer, KInteropNumber)
void impl_TestAttribute_setTestBooleanArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Boolean valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = thisDeserializer.readBoolean();
        }
        Array_Boolean valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanArray(self, static_cast<Array_Boolean*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestNumberArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestNumberArray(self, static_cast<Array_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestNumberArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestStringArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_String valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Array_String valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestStringArray(self, static_cast<Array_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestStringArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestEnumArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_EnumDTS valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        }
        Array_EnumDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestEnumArray(self, static_cast<Array_EnumDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestEnumArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestArrayMix(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 v1ValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number v1ValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(v1ValueTempTmpBuf)>::type,
        std::decay<decltype(*v1ValueTempTmpBuf.array)>::type>(&v1ValueTempTmpBuf, v1ValueTempTmpBufLength);
        for (int v1ValueTempTmpBufBufCounterI = 0; v1ValueTempTmpBufBufCounterI < v1ValueTempTmpBufLength; v1ValueTempTmpBufBufCounterI++) {
            v1ValueTempTmpBuf.array[v1ValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number v1ValueTemp = v1ValueTempTmpBuf;;
        const Ark_Int32 v2ValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_String v2ValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(v2ValueTempTmpBuf)>::type,
        std::decay<decltype(*v2ValueTempTmpBuf.array)>::type>(&v2ValueTempTmpBuf, v2ValueTempTmpBufLength);
        for (int v2ValueTempTmpBufBufCounterI = 0; v2ValueTempTmpBufBufCounterI < v2ValueTempTmpBufLength; v2ValueTempTmpBufBufCounterI++) {
            v2ValueTempTmpBuf.array[v2ValueTempTmpBufBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Array_String v2ValueTemp = v2ValueTempTmpBuf;;
        const Ark_Int32 v3ValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_EnumDTS v3ValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(v3ValueTempTmpBuf)>::type,
        std::decay<decltype(*v3ValueTempTmpBuf.array)>::type>(&v3ValueTempTmpBuf, v3ValueTempTmpBufLength);
        for (int v3ValueTempTmpBufBufCounterI = 0; v3ValueTempTmpBufBufCounterI < v3ValueTempTmpBufLength; v3ValueTempTmpBufBufCounterI++) {
            v3ValueTempTmpBuf.array[v3ValueTempTmpBufBufCounterI] = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        }
        Array_EnumDTS v3ValueTemp = v3ValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestArrayMix(self, static_cast<Array_Number*>(&v1ValueTemp), static_cast<Array_String*>(&v2ValueTemp), static_cast<Array_EnumDTS*>(&v3ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestArrayMix, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleBooleanNumber(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Tuple_Boolean_Number valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.value0 = thisDeserializer.readBoolean();
        valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        Ark_CustomObject valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestTupleBooleanNumber(self, static_cast<Ark_CustomObject*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleBooleanNumber, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleNumberStringEnum(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Tuple_Number_String_EnumDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        valueValueTempTmpBuf.value2 = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        Ark_CustomObject valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestTupleNumberStringEnum(self, static_cast<Ark_CustomObject*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleNumberStringEnum, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleOptional(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Tuple_Number_String_Boolean_EnumDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        valueValueTempTmpBuf.value2 = thisDeserializer.readBoolean();
        valueValueTempTmpBuf.value3 = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        Ark_CustomObject valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestTupleOptional(self, static_cast<Ark_CustomObject*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleOptional, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleUnion(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomObject valueValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        GetNodeModifiers()->getTestModifier()->setTestTupleUnion(self, static_cast<Ark_CustomObject*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleUnion, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestArrayRefBoolean(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Boolean valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = thisDeserializer.readBoolean();
        }
        Array_Boolean valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestArrayRefBoolean(self, static_cast<Array_Boolean*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestArrayRefBoolean, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestArrayRefNumber(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestArrayRefNumber(self, static_cast<Array_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestArrayRefNumber, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_BooleanInterfaceDTS valueValueTemp = BooleanInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterface(self, static_cast<Ark_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestNumberInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NumberInterfaceDTS valueValueTemp = NumberInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestNumberInterface(self, static_cast<Ark_NumberInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestNumberInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestStringInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_StringInterfaceDTS valueValueTemp = StringInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestStringInterface(self, static_cast<Ark_StringInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestStringInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_UnionInterfaceDTS valueValueTemp = UnionInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestUnionInterface(self, static_cast<Ark_UnionInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionOptional(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_UnionOptionalInterfaceDTS valueValueTemp = UnionOptionalInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestUnionOptional(self, static_cast<Ark_UnionOptionalInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionOptional, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_TupleInterfaceDTS valueValueTemp = TupleInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestTupleInterface(self, static_cast<Ark_TupleInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestArrayRefNumberInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_ArrayRefNumberInterfaceDTS valueValueTemp = ArrayRefNumberInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestArrayRefNumberInterface(self, static_cast<Ark_ArrayRefNumberInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestArrayRefNumberInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterfaceOption(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_BooleanInterfaceDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = BooleanInterfaceDTS_serializer::read(thisDeserializer);
        }
        Opt_BooleanInterfaceDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterfaceOption(self, static_cast<Opt_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterfaceOption, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterfaceArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_BooleanInterfaceDTS valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = BooleanInterfaceDTS_serializer::read(thisDeserializer);
        }
        Array_BooleanInterfaceDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterfaceArray(self, static_cast<Array_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterfaceArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterfaceArrayRef(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_BooleanInterfaceDTS valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = BooleanInterfaceDTS_serializer::read(thisDeserializer);
        }
        Array_BooleanInterfaceDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterfaceArrayRef(self, static_cast<Array_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterfaceArrayRef, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestInterfaceMixed(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength, KInteropNumber v2) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_UnionInterfaceDTS v1ValueTemp = UnionInterfaceDTS_serializer::read(thisDeserializer);;
        Ark_TupleInterfaceDTS v3ValueTemp = TupleInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestInterfaceMixed(self, static_cast<Ark_UnionInterfaceDTS*>(&v1ValueTemp), (const Ark_Number*) (&v2), static_cast<Ark_TupleInterfaceDTS*>(&v3ValueTemp));
}
KOALA_INTEROP_V4(TestAttribute_setTestInterfaceMixed, Ark_NativePointer, KSerializerBuffer, int32_t, KInteropNumber)
Ark_NativePointer impl_TextInput_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTextInputModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(TextInput_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TextInputInterface_setTextInputOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_TextInputOptions valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = TextInputOptions_serializer::read(thisDeserializer);
        }
        Opt_TextInputOptions valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTextInputModifier()->setTextInputOptions(self, static_cast<Opt_TextInputOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextInputInterface_setTextInputOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextInputAttribute_setType(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextInputModifier()->setType(self, static_cast<Ark_InputType>(value));
}
KOALA_INTEROP_DIRECT_V2(TextInputAttribute_setType, Ark_NativePointer, Ark_Int32)
void impl_TextInputAttribute_setContentType(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextInputModifier()->setContentType(self, static_cast<Ark_ContentType>(value));
}
KOALA_INTEROP_DIRECT_V2(TextInputAttribute_setContentType, Ark_NativePointer, Ark_Int32)
void impl_TextInputAttribute_setOnCopy(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_String_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String parameter)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_String_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String parameter)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_String_Void))))};;
        GetNodeModifiers()->getTextInputModifier()->setOnCopy(self, static_cast<Callback_String_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextInputAttribute_setOnCopy, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextInputAttribute_set_onChangeEvent_text(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_ResourceStr_Void callbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ResourceStr text)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_ResourceStr_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ResourceStr text)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_ResourceStr_Void))))};;
        GetNodeModifiers()->getTextInputModifier()->set_onChangeEvent_text(self, static_cast<Callback_ResourceStr_Void*>(&callbackValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextInputAttribute_set_onChangeEvent_text, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextPicker_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTextPickerModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(TextPicker_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TextPickerInterface_setTextPickerOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_TextPickerOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = TextPickerOptions_serializer::read(thisDeserializer);
        }
        Opt_TextPickerOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getTextPickerModifier()->setTextPickerOptions(self, static_cast<Opt_TextPickerOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerInterface_setTextPickerOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setDefaultPickerItemHeight(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextPickerModifier()->setDefaultPickerItemHeight(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(TextPickerAttribute_setDefaultPickerItemHeight, Ark_NativePointer, KInteropNumber)
void impl_TextPickerAttribute_setDefaultPickerItemHeight(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextPickerModifier()->setDefaultPickerItemHeight(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(TextPickerAttribute_setDefaultPickerItemHeight, Ark_NativePointer, KStringPtr)
void impl_TextPickerAttribute_setCanLoop(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextPickerModifier()->setCanLoop(self, value);
}
KOALA_INTEROP_DIRECT_V2(TextPickerAttribute_setCanLoop, Ark_NativePointer, Ark_Boolean)
void impl_TextPickerAttribute_setDisappearTextStyle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomObject valueValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        GetNodeModifiers()->getTextPickerModifier()->setDisappearTextStyle(self, static_cast<Ark_CustomObject*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setDisappearTextStyle, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setTextStyle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomObject valueValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        GetNodeModifiers()->getTextPickerModifier()->setTextStyle(self, static_cast<Ark_CustomObject*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setTextStyle, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setSelectedTextStyle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomObject valueValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        GetNodeModifiers()->getTextPickerModifier()->setSelectedTextStyle(self, static_cast<Ark_CustomObject*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setSelectedTextStyle, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setOnAccept(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_String_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String value, const Ark_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_String_Number_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String value, const Ark_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_String_Number_Void))))};;
        GetNodeModifiers()->getTextPickerModifier()->setOnAccept(self, static_cast<Callback_String_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setOnAccept, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setOnCancel(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};;
        GetNodeModifiers()->getTextPickerModifier()->setOnCancel(self, static_cast<Callback_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setOnCancel, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setOnChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Type_TextPickerAttribute_onChange_callback callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Type_TextPickerAttribute_onChange_callback)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Type_TextPickerAttribute_onChange_callback))))};;
        GetNodeModifiers()->getTextPickerModifier()->setOnChange(self, static_cast<Type_TextPickerAttribute_onChange_callback*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setOnChange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setOnScrollStop(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        TextPickerScrollStopCallback callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_TextPickerScrollStopCallback)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_TextPickerScrollStopCallback))))};;
        GetNodeModifiers()->getTextPickerModifier()->setOnScrollStop(self, static_cast<TextPickerScrollStopCallback*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setOnScrollStop, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setSelectedIndex(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextPickerModifier()->setSelectedIndex(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(TextPickerAttribute_setSelectedIndex, Ark_NativePointer, KInteropNumber)
void impl_TextPickerAttribute_setDivider(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_DividerOptions valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = DividerOptions_serializer::read(thisDeserializer);
        }
        Opt_DividerOptions valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTextPickerModifier()->setDivider(self, static_cast<Opt_DividerOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setDivider, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setGradientHeight(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Dimension valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Dimension valueValueTemp = static_cast<Ark_Dimension>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTextPickerModifier()->setGradientHeight(self, static_cast<Ark_Dimension*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setGradientHeight, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_set_onChangeEvent_selected(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Union_Number_Array_Number_Void callbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_Number_Array_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Union_Number_Array_Number_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_Number_Array_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Union_Number_Array_Number_Void))))};;
        GetNodeModifiers()->getTextPickerModifier()->set_onChangeEvent_selected(self, static_cast<Callback_Union_Number_Array_Number_Void*>(&callbackValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_set_onChangeEvent_selected, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_set_onChangeEvent_value(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Union_String_Array_String_Void callbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Union_String_Array_String_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Union_String_Array_String_Void))))};;
        GetNodeModifiers()->getTextPickerModifier()->set_onChangeEvent_value(self, static_cast<Callback_Union_String_Array_String_Void*>(&callbackValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_set_onChangeEvent_value, Ark_NativePointer, KSerializerBuffer, int32_t)

// Accessors

void impl_AnimationExtender_SetClipRect(Ark_NativePointer node, KFloat x, KFloat y, KFloat width, KFloat height) {
        GetAccessors()->getAnimationExtenderAccessor()->SetClipRect(node, x, y, width, height);
}
KOALA_INTEROP_DIRECT_V5(AnimationExtender_SetClipRect, Ark_NativePointer, KFloat, KFloat, KFloat, KFloat)
void impl_AnimationExtender_OpenImplicitAnimation(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_AnimateParam paramValueTemp = AnimateParam_serializer::read(thisDeserializer);;
        GetAccessors()->getAnimationExtenderAccessor()->OpenImplicitAnimation(static_cast<Ark_AnimateParam*>(&paramValueTemp));
}
KOALA_INTEROP_DIRECT_V2(AnimationExtender_OpenImplicitAnimation, KSerializerBuffer, int32_t)
void impl_AnimationExtender_CloseImplicitAnimation() {
        GetAccessors()->getAnimationExtenderAccessor()->CloseImplicitAnimation();
}
KOALA_INTEROP_DIRECT_V0(AnimationExtender_CloseImplicitAnimation)
void impl_AnimationExtender_StartDoubleAnimation(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_DoubleAnimationParam paramValueTemp = DoubleAnimationParam_serializer::read(thisDeserializer);;
        GetAccessors()->getAnimationExtenderAccessor()->StartDoubleAnimation(node, static_cast<Ark_DoubleAnimationParam*>(&paramValueTemp));
}
KOALA_INTEROP_DIRECT_V3(AnimationExtender_StartDoubleAnimation, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_AnimationExtender_AnimationTranslate(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_TranslateOptions optionsValueTemp = TranslateOptions_serializer::read(thisDeserializer);;
        GetAccessors()->getAnimationExtenderAccessor()->AnimationTranslate(node, static_cast<Ark_TranslateOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(AnimationExtender_AnimationTranslate, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_BaseEvent_construct() {
        return GetAccessors()->getBaseEventAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(BaseEvent_construct, Ark_NativePointer)
Ark_NativePointer impl_BaseEvent_getFinalizer() {
        return GetAccessors()->getBaseEventAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(BaseEvent_getFinalizer, Ark_NativePointer)
Ark_Boolean impl_BaseEvent_getModifierKeyState(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 keysValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_String keysValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(keysValueTempTmpBuf)>::type,
        std::decay<decltype(*keysValueTempTmpBuf.array)>::type>(&keysValueTempTmpBuf, keysValueTempTmpBufLength);
        for (int keysValueTempTmpBufBufCounterI = 0; keysValueTempTmpBufBufCounterI < keysValueTempTmpBufLength; keysValueTempTmpBufBufCounterI++) {
            keysValueTempTmpBuf.array[keysValueTempTmpBufBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Array_String keysValueTemp = keysValueTempTmpBuf;;
        return GetAccessors()->getBaseEventAccessor()->getModifierKeyState(self, static_cast<Array_String*>(&keysValueTemp));
}
KOALA_INTEROP_DIRECT_3(BaseEvent_getModifierKeyState, Ark_Boolean, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Int32 impl_BaseEvent_getSource(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        return GetAccessors()->getBaseEventAccessor()->getSource(self);
}
KOALA_INTEROP_DIRECT_1(BaseEvent_getSource, Ark_Int32, Ark_NativePointer)
void impl_BaseEvent_setSource(Ark_NativePointer thisPtr, Ark_Int32 source) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        GetAccessors()->getBaseEventAccessor()->setSource(self, static_cast<Ark_SourceType>(source));
}
KOALA_INTEROP_DIRECT_V2(BaseEvent_setSource, Ark_NativePointer, Ark_Int32)
KInteropReturnBuffer impl_BaseEvent_getAxisHorizontal(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseEventAccessor()->getAxisHorizontal(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseEvent_getAxisHorizontal, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseEvent_setAxisHorizontal(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto axisHorizontalValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number axisHorizontalValueTempTmpBuf = {};
        axisHorizontalValueTempTmpBuf.tag = axisHorizontalValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((axisHorizontalValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            axisHorizontalValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number axisHorizontalValueTemp = axisHorizontalValueTempTmpBuf;;
        GetAccessors()->getBaseEventAccessor()->setAxisHorizontal(self, static_cast<Opt_Number*>(&axisHorizontalValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseEvent_setAxisHorizontal, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_BaseEvent_getAxisVertical(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseEventAccessor()->getAxisVertical(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseEvent_getAxisVertical, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseEvent_setAxisVertical(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto axisVerticalValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number axisVerticalValueTempTmpBuf = {};
        axisVerticalValueTempTmpBuf.tag = axisVerticalValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((axisVerticalValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            axisVerticalValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number axisVerticalValueTemp = axisVerticalValueTempTmpBuf;;
        GetAccessors()->getBaseEventAccessor()->setAxisVertical(self, static_cast<Opt_Number*>(&axisVerticalValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseEvent_setAxisVertical, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Number impl_BaseEvent_getPressure(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        return GetAccessors()->getBaseEventAccessor()->getPressure(self);
}
KOALA_INTEROP_DIRECT_1(BaseEvent_getPressure, KInteropNumber, Ark_NativePointer)
void impl_BaseEvent_setPressure(Ark_NativePointer thisPtr, KInteropNumber pressure) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        GetAccessors()->getBaseEventAccessor()->setPressure(self, (const Ark_Number*) (&pressure));
}
KOALA_INTEROP_V2(BaseEvent_setPressure, Ark_NativePointer, KInteropNumber)
Ark_Number impl_BaseEvent_getTiltX(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        return GetAccessors()->getBaseEventAccessor()->getTiltX(self);
}
KOALA_INTEROP_DIRECT_1(BaseEvent_getTiltX, KInteropNumber, Ark_NativePointer)
void impl_BaseEvent_setTiltX(Ark_NativePointer thisPtr, KInteropNumber tiltX) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        GetAccessors()->getBaseEventAccessor()->setTiltX(self, (const Ark_Number*) (&tiltX));
}
KOALA_INTEROP_V2(BaseEvent_setTiltX, Ark_NativePointer, KInteropNumber)
Ark_Int32 impl_BaseEvent_getSourceTool(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        return GetAccessors()->getBaseEventAccessor()->getSourceTool(self);
}
KOALA_INTEROP_DIRECT_1(BaseEvent_getSourceTool, Ark_Int32, Ark_NativePointer)
void impl_BaseEvent_setSourceTool(Ark_NativePointer thisPtr, Ark_Int32 sourceTool) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        GetAccessors()->getBaseEventAccessor()->setSourceTool(self, static_cast<Ark_SourceTool>(sourceTool));
}
KOALA_INTEROP_DIRECT_V2(BaseEvent_setSourceTool, Ark_NativePointer, Ark_Int32)
KInteropReturnBuffer impl_BaseEvent_getDeviceId(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseEventAccessor()->getDeviceId(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseEvent_getDeviceId, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseEvent_setDeviceId(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto deviceIdValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number deviceIdValueTempTmpBuf = {};
        deviceIdValueTempTmpBuf.tag = deviceIdValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((deviceIdValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            deviceIdValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number deviceIdValueTemp = deviceIdValueTempTmpBuf;;
        GetAccessors()->getBaseEventAccessor()->setDeviceId(self, static_cast<Opt_Number*>(&deviceIdValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseEvent_setDeviceId, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_BaseEvent_getTargetDisplayId(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseEventAccessor()->getTargetDisplayId(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseEvent_getTargetDisplayId, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseEvent_setTargetDisplayId(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto targetDisplayIdValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number targetDisplayIdValueTempTmpBuf = {};
        targetDisplayIdValueTempTmpBuf.tag = targetDisplayIdValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((targetDisplayIdValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            targetDisplayIdValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number targetDisplayIdValueTemp = targetDisplayIdValueTempTmpBuf;;
        GetAccessors()->getBaseEventAccessor()->setTargetDisplayId(self, static_cast<Opt_Number*>(&targetDisplayIdValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseEvent_setTargetDisplayId, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_BaseShape_construct() {
        return GetAccessors()->getBaseShapeAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(BaseShape_construct, Ark_NativePointer)
Ark_NativePointer impl_BaseShape_getFinalizer() {
        return GetAccessors()->getBaseShapeAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(BaseShape_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_BaseShape_width(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseShape self = reinterpret_cast<Ark_BaseShape>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 widthValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Length widthValueTempTmpBuf = {};
        widthValueTempTmpBuf.selector = widthValueTempTmpBufUnionSelector;
        if (widthValueTempTmpBufUnionSelector == 0) {
            widthValueTempTmpBuf.selector = 0;
            widthValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (widthValueTempTmpBufUnionSelector == 1) {
            widthValueTempTmpBuf.selector = 1;
            widthValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (widthValueTempTmpBufUnionSelector == 2) {
            widthValueTempTmpBuf.selector = 2;
            widthValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for widthValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Length widthValueTemp = static_cast<Ark_Length>(widthValueTempTmpBuf);;
        return GetAccessors()->getBaseShapeAccessor()->width(self, static_cast<Ark_Length*>(&widthValueTemp));
}
KOALA_INTEROP_DIRECT_3(BaseShape_width, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_BaseShape_height(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseShape self = reinterpret_cast<Ark_BaseShape>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 heightValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Length heightValueTempTmpBuf = {};
        heightValueTempTmpBuf.selector = heightValueTempTmpBufUnionSelector;
        if (heightValueTempTmpBufUnionSelector == 0) {
            heightValueTempTmpBuf.selector = 0;
            heightValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (heightValueTempTmpBufUnionSelector == 1) {
            heightValueTempTmpBuf.selector = 1;
            heightValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (heightValueTempTmpBufUnionSelector == 2) {
            heightValueTempTmpBuf.selector = 2;
            heightValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for heightValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Length heightValueTemp = static_cast<Ark_Length>(heightValueTempTmpBuf);;
        return GetAccessors()->getBaseShapeAccessor()->height(self, static_cast<Ark_Length*>(&heightValueTemp));
}
KOALA_INTEROP_DIRECT_3(BaseShape_height, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_BaseShape_size(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseShape self = reinterpret_cast<Ark_BaseShape>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_SizeOptions sizeValueTemp = SizeOptions_serializer::read(thisDeserializer);;
        return GetAccessors()->getBaseShapeAccessor()->size(self, static_cast<Ark_SizeOptions*>(&sizeValueTemp));
}
KOALA_INTEROP_DIRECT_3(BaseShape_size, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_BuilderNodeOps_construct() {
        return GetAccessors()->getBuilderNodeOpsAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(BuilderNodeOps_construct, Ark_NativePointer)
Ark_NativePointer impl_BuilderNodeOps_getFinalizer() {
        return GetAccessors()->getBuilderNodeOpsAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(BuilderNodeOps_getFinalizer, Ark_NativePointer)
void impl_BuilderNodeOps_create(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BuilderNodeOps self = reinterpret_cast<Ark_BuilderNodeOps>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void buildFuncValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};;
        GetAccessors()->getBuilderNodeOpsAccessor()->create(self, static_cast<Callback_Void*>(&buildFuncValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BuilderNodeOps_create, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_BuilderNodeOps_disposeNode(Ark_NativePointer thisPtr) {
        Ark_BuilderNodeOps self = reinterpret_cast<Ark_BuilderNodeOps>(thisPtr);
        GetAccessors()->getBuilderNodeOpsAccessor()->disposeNode(self);
}
KOALA_INTEROP_DIRECT_V1(BuilderNodeOps_disposeNode, Ark_NativePointer)
void impl_BuilderNodeOps_setUpdateConfigurationCallback(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BuilderNodeOps self = reinterpret_cast<Ark_BuilderNodeOps>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void configurationUpdateFuncValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};;
        GetAccessors()->getBuilderNodeOpsAccessor()->setUpdateConfigurationCallback(self, static_cast<Callback_Void*>(&configurationUpdateFuncValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BuilderNodeOps_setUpdateConfigurationCallback, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_BuilderNodeOps_setOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BuilderNodeOps self = reinterpret_cast<Ark_BuilderNodeOps>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_BuilderNodeOptions optionsValueTemp = BuilderNodeOptions_serializer::read(thisDeserializer);;
        GetAccessors()->getBuilderNodeOpsAccessor()->setOptions(self, static_cast<Ark_BuilderNodeOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BuilderNodeOps_setOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Boolean impl_BuilderNodeOps_postTouchEvent(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BuilderNodeOps self = reinterpret_cast<Ark_BuilderNodeOps>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomObject eventValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        return GetAccessors()->getBuilderNodeOpsAccessor()->postTouchEvent(self, static_cast<Ark_CustomObject*>(&eventValueTemp));
}
KOALA_INTEROP_DIRECT_3(BuilderNodeOps_postTouchEvent, Ark_Boolean, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_BuilderNodeOps_setRootFrameNodeInBuilderNode(Ark_NativePointer thisPtr, Ark_NativePointer node) {
        Ark_BuilderNodeOps self = reinterpret_cast<Ark_BuilderNodeOps>(thisPtr);
        return GetAccessors()->getBuilderNodeOpsAccessor()->setRootFrameNodeInBuilderNode(self, node);
}
KOALA_INTEROP_DIRECT_2(BuilderNodeOps_setRootFrameNodeInBuilderNode, Ark_NativePointer, Ark_NativePointer, Ark_NativePointer)
Ark_NativePointer impl_ClickEvent_construct() {
        return GetAccessors()->getClickEventAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(ClickEvent_construct, Ark_NativePointer)
Ark_NativePointer impl_ClickEvent_getFinalizer() {
        return GetAccessors()->getClickEventAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClickEvent_getFinalizer, Ark_NativePointer)
Ark_Number impl_ClickEvent_getDisplayX(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getDisplayX(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getDisplayX, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setDisplayX(Ark_NativePointer thisPtr, KInteropNumber displayX) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setDisplayX(self, (const Ark_Number*) (&displayX));
}
KOALA_INTEROP_V2(ClickEvent_setDisplayX, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getDisplayY(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getDisplayY(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getDisplayY, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setDisplayY(Ark_NativePointer thisPtr, KInteropNumber displayY) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setDisplayY(self, (const Ark_Number*) (&displayY));
}
KOALA_INTEROP_V2(ClickEvent_setDisplayY, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getWindowX(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getWindowX(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getWindowX, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setWindowX(Ark_NativePointer thisPtr, KInteropNumber windowX) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setWindowX(self, (const Ark_Number*) (&windowX));
}
KOALA_INTEROP_V2(ClickEvent_setWindowX, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getWindowY(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getWindowY(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getWindowY, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setWindowY(Ark_NativePointer thisPtr, KInteropNumber windowY) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setWindowY(self, (const Ark_Number*) (&windowY));
}
KOALA_INTEROP_V2(ClickEvent_setWindowY, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getScreenX(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getScreenX(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getScreenX, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setScreenX(Ark_NativePointer thisPtr, KInteropNumber screenX) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setScreenX(self, (const Ark_Number*) (&screenX));
}
KOALA_INTEROP_V2(ClickEvent_setScreenX, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getScreenY(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getScreenY(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getScreenY, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setScreenY(Ark_NativePointer thisPtr, KInteropNumber screenY) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setScreenY(self, (const Ark_Number*) (&screenY));
}
KOALA_INTEROP_V2(ClickEvent_setScreenY, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getX(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getX(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getX, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setX(Ark_NativePointer thisPtr, KInteropNumber x) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setX(self, (const Ark_Number*) (&x));
}
KOALA_INTEROP_V2(ClickEvent_setX, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getY(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getY(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getY, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setY(Ark_NativePointer thisPtr, KInteropNumber y) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setY(self, (const Ark_Number*) (&y));
}
KOALA_INTEROP_V2(ClickEvent_setY, Ark_NativePointer, KInteropNumber)
Ark_NativePointer impl_ClickEvent_getPreventDefault(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getClickEventAccessor()->getPreventDefault(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getPreventDefault, Ark_NativePointer, Ark_NativePointer)
void impl_ClickEvent_setPreventDefault(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void preventDefaultValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};;
        GetAccessors()->getClickEventAccessor()->setPreventDefault(self, static_cast<Callback_Void*>(&preventDefaultValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ClickEvent_setPreventDefault, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ColorFilter_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getColorFilterAccessor()->construct(static_cast<Array_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_2(ColorFilter_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ColorFilter_getFinalizer() {
        return GetAccessors()->getColorFilterAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ColorFilter_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_CommonShape_construct() {
        return GetAccessors()->getCommonShapeAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(CommonShape_construct, Ark_NativePointer)
Ark_NativePointer impl_CommonShape_getFinalizer() {
        return GetAccessors()->getCommonShapeAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CommonShape_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_CommonShape_offset(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CommonShape self = reinterpret_cast<Ark_CommonShape>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Position offsetValueTemp = Position_serializer::read(thisDeserializer);;
        return GetAccessors()->getCommonShapeAccessor()->offset(self, static_cast<Ark_Position*>(&offsetValueTemp));
}
KOALA_INTEROP_DIRECT_3(CommonShape_offset, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CommonShape_fill(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CommonShape self = reinterpret_cast<Ark_CommonShape>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 colorValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor colorValueTempTmpBuf = {};
        colorValueTempTmpBuf.selector = colorValueTempTmpBufUnionSelector;
        if (colorValueTempTmpBufUnionSelector == 0) {
            colorValueTempTmpBuf.selector = 0;
            colorValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (colorValueTempTmpBufUnionSelector == 1) {
            colorValueTempTmpBuf.selector = 1;
            colorValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (colorValueTempTmpBufUnionSelector == 2) {
            colorValueTempTmpBuf.selector = 2;
            colorValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (colorValueTempTmpBufUnionSelector == 3) {
            colorValueTempTmpBuf.selector = 3;
            colorValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for colorValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor colorValueTemp = static_cast<Ark_ResourceColor>(colorValueTempTmpBuf);;
        return GetAccessors()->getCommonShapeAccessor()->fill(self, static_cast<Ark_ResourceColor*>(&colorValueTemp));
}
KOALA_INTEROP_DIRECT_3(CommonShape_fill, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CommonShape_position(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CommonShape self = reinterpret_cast<Ark_CommonShape>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Position positionValueTemp = Position_serializer::read(thisDeserializer);;
        return GetAccessors()->getCommonShapeAccessor()->position(self, static_cast<Ark_Position*>(&positionValueTemp));
}
KOALA_INTEROP_DIRECT_3(CommonShape_position, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_contentModifierButton(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        ButtonModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_ButtonModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_ButtonModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierButton(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<ButtonModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierButton, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierButton(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierButton(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierButton, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierCheckBox(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        CheckBoxModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CheckBoxConfiguration config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_CheckBoxModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CheckBoxConfiguration config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_CheckBoxModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierCheckBox(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<CheckBoxModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierCheckBox, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierCheckBox(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierCheckBox(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierCheckBox, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierDataPanel(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        DataPanelModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_DataPanelModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_DataPanelModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierDataPanel(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<DataPanelModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierDataPanel, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierDataPanel(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierDataPanel(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierDataPanel, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierGauge(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        GaugeModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_GaugeModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_GaugeModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierGauge(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<GaugeModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierGauge, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierGauge(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierGauge(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierGauge, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierLoadingProgress(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        LoadingProgressModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_LoadingProgressModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_LoadingProgressModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierLoadingProgress(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<LoadingProgressModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierLoadingProgress, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierLoadingProgress(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierLoadingProgress(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierLoadingProgress, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierProgress(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        ProgressModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_ProgressModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_ProgressModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierProgress(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<ProgressModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierProgress, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierProgress(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierProgress(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierProgress, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierRadio(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        RadioModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_RadioModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_RadioModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierRadio(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<RadioModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierRadio, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierRadio(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierRadio(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierRadio, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierRating(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        RatingModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_RatingModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_RatingModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierRating(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<RatingModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierRating, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierRating(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierRating(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierRating, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierMenuItem(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        MenuItemModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_MenuItemModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_MenuItemModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierMenuItem(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<MenuItemModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierMenuItem, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierMenuItem(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierMenuItem(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierMenuItem, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierSlider(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        SliderModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_SliderModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_SliderModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierSlider(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<SliderModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierSlider, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierSlider(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierSlider(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierSlider, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierTextClock(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        TextClockModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_TextClockModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_TextClockModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierTextClock(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<TextClockModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierTextClock, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierTextClock(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierTextClock(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierTextClock, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierTextTimer(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        TextTimerModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_TextTimerModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_TextTimerModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierTextTimer(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<TextTimerModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierTextTimer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierTextTimer(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierTextTimer(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierTextTimer, Ark_NativePointer)
void impl_ContentModifierHelper_contentModifierToggle(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object contentModifierValueTemp = static_cast<Ark_ContentModifier>(thisDeserializer.readObject());;
        ToggleModifierBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_ToggleModifierBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Ark_CustomObject config, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_ToggleModifierBuilder))))};;
        GetAccessors()->getContentModifierHelperAccessor()->contentModifierToggle(node, static_cast<Ark_Object*>(&contentModifierValueTemp), static_cast<ToggleModifierBuilder*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ContentModifierHelper_contentModifierToggle, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ContentModifierHelper_resetContentModifierToggle(Ark_NativePointer node) {
        GetAccessors()->getContentModifierHelperAccessor()->resetContentModifierToggle(node);
}
KOALA_INTEROP_DIRECT_V1(ContentModifierHelper_resetContentModifierToggle, Ark_NativePointer)
Ark_NativePointer impl_CustomDialogController_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomDialogControllerOptions valueValueTemp = CustomDialogControllerOptions_serializer::read(thisDeserializer);;
        return GetAccessors()->getCustomDialogControllerAccessor()->construct(static_cast<Ark_CustomDialogControllerOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_2(CustomDialogController_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CustomDialogController_getFinalizer() {
        return GetAccessors()->getCustomDialogControllerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CustomDialogController_getFinalizer, Ark_NativePointer)
void impl_CustomDialogController_open(Ark_NativePointer thisPtr) {
        Ark_CustomDialogController self = reinterpret_cast<Ark_CustomDialogController>(thisPtr);
        GetAccessors()->getCustomDialogControllerAccessor()->open(self);
}
KOALA_INTEROP_DIRECT_V1(CustomDialogController_open, Ark_NativePointer)
void impl_CustomDialogController_close(Ark_NativePointer thisPtr) {
        Ark_CustomDialogController self = reinterpret_cast<Ark_CustomDialogController>(thisPtr);
        GetAccessors()->getCustomDialogControllerAccessor()->close(self);
}
KOALA_INTEROP_DIRECT_V1(CustomDialogController_close, Ark_NativePointer)
Ark_NativePointer impl_DrawModifier_construct() {
        return GetAccessors()->getDrawModifierAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(DrawModifier_construct, Ark_NativePointer)
Ark_NativePointer impl_DrawModifier_getFinalizer() {
        return GetAccessors()->getDrawModifierAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(DrawModifier_getFinalizer, Ark_NativePointer)
void impl_DrawModifier_invalidate(Ark_NativePointer thisPtr) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        GetAccessors()->getDrawModifierAccessor()->invalidate(self);
}
KOALA_INTEROP_DIRECT_V1(DrawModifier_invalidate, Ark_NativePointer)
Ark_NativePointer impl_DrawModifier_getDrawBehind(Ark_NativePointer thisPtr) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getDrawModifierAccessor()->getDrawBehind(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(DrawModifier_getDrawBehind, Ark_NativePointer, Ark_NativePointer)
void impl_DrawModifier_setDrawBehind(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_DrawContext_Void drawBehindValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_DrawContext_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_DrawContext_Void))))};;
        GetAccessors()->getDrawModifierAccessor()->setDrawBehind(self, static_cast<Callback_DrawContext_Void*>(&drawBehindValueTemp));
}
KOALA_INTEROP_DIRECT_V3(DrawModifier_setDrawBehind, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_DrawModifier_getDrawContent(Ark_NativePointer thisPtr) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getDrawModifierAccessor()->getDrawContent(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(DrawModifier_getDrawContent, Ark_NativePointer, Ark_NativePointer)
void impl_DrawModifier_setDrawContent(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_DrawContext_Void drawContentValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_DrawContext_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_DrawContext_Void))))};;
        GetAccessors()->getDrawModifierAccessor()->setDrawContent(self, static_cast<Callback_DrawContext_Void*>(&drawContentValueTemp));
}
KOALA_INTEROP_DIRECT_V3(DrawModifier_setDrawContent, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_DrawModifier_getDrawFront(Ark_NativePointer thisPtr) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getDrawModifierAccessor()->getDrawFront(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(DrawModifier_getDrawFront, Ark_NativePointer, Ark_NativePointer)
void impl_DrawModifier_setDrawFront(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_DrawContext_Void drawFrontValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_DrawContext_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_DrawContext_Void))))};;
        GetAccessors()->getDrawModifierAccessor()->setDrawFront(self, static_cast<Callback_DrawContext_Void*>(&drawFrontValueTemp));
}
KOALA_INTEROP_DIRECT_V3(DrawModifier_setDrawFront, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Boolean impl_EnvironmentBackend_isAccessibilityEnabled() {
        return GetAccessors()->getEnvironmentBackendAccessor()->isAccessibilityEnabled();
}
KOALA_INTEROP_DIRECT_0(EnvironmentBackend_isAccessibilityEnabled, Ark_Boolean)
Ark_Int32 impl_EnvironmentBackend_getColorMode() {
        return GetAccessors()->getEnvironmentBackendAccessor()->getColorMode();
}
KOALA_INTEROP_DIRECT_0(EnvironmentBackend_getColorMode, Ark_Int32)
Ark_Int32 impl_EnvironmentBackend_getFontScale() {
        return GetAccessors()->getEnvironmentBackendAccessor()->getFontScale();
}
KOALA_INTEROP_DIRECT_0(EnvironmentBackend_getFontScale, Ark_Int32)
Ark_Int32 impl_EnvironmentBackend_getFontWeightScale() {
        return GetAccessors()->getEnvironmentBackendAccessor()->getFontWeightScale();
}
KOALA_INTEROP_DIRECT_0(EnvironmentBackend_getFontWeightScale, Ark_Int32)
Ark_String impl_EnvironmentBackend_getLayoutDirection() {
        return GetAccessors()->getEnvironmentBackendAccessor()->getLayoutDirection();
}
KOALA_INTEROP_0(EnvironmentBackend_getLayoutDirection, KStringPtr)
Ark_String impl_EnvironmentBackend_getLanguageCode() {
        return GetAccessors()->getEnvironmentBackendAccessor()->getLanguageCode();
}
KOALA_INTEROP_0(EnvironmentBackend_getLanguageCode, KStringPtr)
void impl_EventEmulator_emitClickEvent(Ark_NativePointer node, Ark_NativePointer event) {
        GetAccessors()->getEventEmulatorAccessor()->emitClickEvent(node, static_cast<Ark_ClickEvent>(event));
}
KOALA_INTEROP_DIRECT_V2(EventEmulator_emitClickEvent, Ark_NativePointer, Ark_NativePointer)
void impl_EventEmulator_emitTextInputEvent(Ark_NativePointer node, const KStringPtr& text) {
        GetAccessors()->getEventEmulatorAccessor()->emitTextInputEvent(node, (const Ark_String*) (&text));
}
KOALA_INTEROP_V2(EventEmulator_emitTextInputEvent, Ark_NativePointer, KStringPtr)
void impl_FocusController_requestFocus(const KStringPtr& key) {
        GetAccessors()->getFocusControllerAccessor()->requestFocus((const Ark_String*) (&key));
}
KOALA_INTEROP_V1(FocusController_requestFocus, KStringPtr)
void impl_GlobalScope_ohos_arkui_componentSnapshot_get(const KStringPtr& id, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        AsyncCallback_image_PixelMap_Void callbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_CustomObject result)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_AsyncCallback_image_PixelMap_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomObject result)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_AsyncCallback_image_PixelMap_Void))))};;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_SnapshotOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = SnapshotOptions_serializer::read(thisDeserializer);
        }
        Opt_SnapshotOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetAccessors()->getGlobalScope_ohos_arkui_componentSnapshotAccessor()->get((const Ark_String*) (&id), static_cast<AsyncCallback_image_PixelMap_Void*>(&callbackValueTemp), static_cast<Opt_SnapshotOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_V3(GlobalScope_ohos_arkui_componentSnapshot_get, KStringPtr, KSerializerBuffer, int32_t)
void impl_GlobalScope_ohos_arkui_performanceMonitor_begin(const KStringPtr& scene, Ark_Int32 startInputType, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto noteValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String noteValueTempTmpBuf = {};
        noteValueTempTmpBuf.tag = noteValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((noteValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            noteValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String noteValueTemp = noteValueTempTmpBuf;;
        GetAccessors()->getGlobalScope_ohos_arkui_performanceMonitorAccessor()->begin((const Ark_String*) (&scene), static_cast<Ark_PerfMonitorActionType>(startInputType), static_cast<Opt_String*>(&noteValueTemp));
}
KOALA_INTEROP_V4(GlobalScope_ohos_arkui_performanceMonitor_begin, KStringPtr, Ark_Int32, KSerializerBuffer, int32_t)
void impl_GlobalScope_ohos_arkui_performanceMonitor_end(const KStringPtr& scene) {
        GetAccessors()->getGlobalScope_ohos_arkui_performanceMonitorAccessor()->end((const Ark_String*) (&scene));
}
KOALA_INTEROP_V1(GlobalScope_ohos_arkui_performanceMonitor_end, KStringPtr)
void impl_GlobalScope_ohos_arkui_performanceMonitor_recordInputEventTime(Ark_Int32 actionType, Ark_Int32 sourceType, KLong time) {
        GetAccessors()->getGlobalScope_ohos_arkui_performanceMonitorAccessor()->recordInputEventTime(static_cast<Ark_PerfMonitorActionType>(actionType), static_cast<Ark_PerfMonitorSourceType>(sourceType), time);
}
KOALA_INTEROP_DIRECT_V3(GlobalScope_ohos_arkui_performanceMonitor_recordInputEventTime, Ark_Int32, Ark_Int32, KLong)
void impl_GlobalScope_ohos_font_registerFont(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomObject optionsValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        GetAccessors()->getGlobalScope_ohos_fontAccessor()->registerFont(static_cast<Ark_CustomObject*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V2(GlobalScope_ohos_font_registerFont, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_GlobalScope_ohos_font_getSystemFontList() {
        const auto &retValue = GetAccessors()->getGlobalScope_ohos_fontAccessor()->getSystemFontList();
        SerializerBase _retSerializer {};
        _retSerializer.writeInt32(retValue.length);
        for (int retValueCounterI = 0; retValueCounterI < retValue.length; retValueCounterI++) {
            const Ark_String retValueTmpElement = retValue.array[retValueCounterI];
            _retSerializer.writeString(retValueTmpElement);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_0(GlobalScope_ohos_font_getSystemFontList, KInteropReturnBuffer)
void impl_GlobalScope_ohos_font_getFontByName(const KStringPtr& fontName) {
        GetAccessors()->getGlobalScope_ohos_fontAccessor()->getFontByName((const Ark_String*) (&fontName));
}
KOALA_INTEROP_V1(GlobalScope_ohos_font_getFontByName, KStringPtr)
Ark_Number impl_GlobalScope_ohos_measure_utils_measureText(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomObject optionsValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        return GetAccessors()->getGlobalScope_ohos_measure_utilsAccessor()->measureText(static_cast<Ark_CustomObject*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_2(GlobalScope_ohos_measure_utils_measureText, KInteropNumber, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_GlobalScope_ohos_measure_utils_measureTextSize(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomObject optionsValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        const auto &retValue = GetAccessors()->getGlobalScope_ohos_measure_utilsAccessor()->measureTextSize(static_cast<Ark_CustomObject*>(&optionsValueTemp));
        SerializerBase _retSerializer {};
        SizeOptions_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_2(GlobalScope_ohos_measure_utils_measureTextSize, KInteropReturnBuffer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ICurve_construct() {
        return GetAccessors()->getICurveAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(ICurve_construct, Ark_NativePointer)
Ark_NativePointer impl_ICurve_getFinalizer() {
        return GetAccessors()->getICurveAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ICurve_getFinalizer, Ark_NativePointer)
Ark_Number impl_ICurve_interpolate(Ark_NativePointer thisPtr, KInteropNumber fraction) {
        Ark_ICurve self = reinterpret_cast<Ark_ICurve>(thisPtr);
        return GetAccessors()->getICurveAccessor()->interpolate(self, (const Ark_Number*) (&fraction));
}
KOALA_INTEROP_2(ICurve_interpolate, KInteropNumber, Ark_NativePointer, KInteropNumber)
void impl_IUIContext_freezeUINode0(const KStringPtr& id, Ark_Boolean isFrozen) {
        GetAccessors()->getIUIContextAccessor()->freezeUINode0((const Ark_String*) (&id), isFrozen);
}
KOALA_INTEROP_V2(IUIContext_freezeUINode0, KStringPtr, Ark_Boolean)
void impl_IUIContext_freezeUINode1(KInteropNumber id, Ark_Boolean isFrozen) {
        GetAccessors()->getIUIContextAccessor()->freezeUINode1((const Ark_Number*) (&id), isFrozen);
}
KOALA_INTEROP_V2(IUIContext_freezeUINode1, KInteropNumber, Ark_Boolean)
void impl_LazyForEachOps_Sync(Ark_NativePointer node, Ark_Int32 totalCount, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_CreateItem creatorValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Int32 index, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_CreateItem)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 index, const Callback_Pointer_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_CreateItem))))};;
        Callback_RangeUpdate updaterValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Int32 start, const Ark_Int32 end)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_RangeUpdate)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 start, const Ark_Int32 end)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_RangeUpdate))))};;
        GetAccessors()->getLazyForEachOpsAccessor()->Sync(node, totalCount, static_cast<Callback_CreateItem*>(&creatorValueTemp), static_cast<Callback_RangeUpdate*>(&updaterValueTemp));
}
KOALA_INTEROP_DIRECT_V4(LazyForEachOps_Sync, Ark_NativePointer, Ark_Int32, KSerializerBuffer, int32_t)
void impl_NavExtender_setNavigationOptions(Ark_NativePointer ptr, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        GetAccessors()->getNavExtenderAccessor()->setNavigationOptions(ptr, static_cast<Ark_NavPathStack*>(&pathStackValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavExtender_setNavigationOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavExtender_setUpdateStackCallback(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack peerValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        NavExtender_OnUpdateStack callbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_NavExtender_OnUpdateStack)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_NavExtender_OnUpdateStack))))};;
        GetAccessors()->getNavExtenderAccessor()->setUpdateStackCallback(static_cast<Ark_NavPathStack*>(&peerValueTemp), static_cast<NavExtender_OnUpdateStack*>(&callbackValueTemp));
}
KOALA_INTEROP_DIRECT_V2(NavExtender_setUpdateStackCallback, KSerializerBuffer, int32_t)
void impl_NavExtender_syncStack(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack peerValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        GetAccessors()->getNavExtenderAccessor()->syncStack(static_cast<Ark_NavPathStack*>(&peerValueTemp));
}
KOALA_INTEROP_DIRECT_V2(NavExtender_syncStack, KSerializerBuffer, int32_t)
Ark_Boolean impl_NavExtender_checkNeedCreate(Ark_NativePointer navigation, Ark_Int32 index) {
        return GetAccessors()->getNavExtenderAccessor()->checkNeedCreate(navigation, index);
}
KOALA_INTEROP_DIRECT_2(NavExtender_checkNeedCreate, Ark_Boolean, Ark_NativePointer, Ark_Int32)
void impl_NavExtender_setNavDestinationNode(KSerializerBuffer thisArray, int32_t thisLength, Ark_Int32 index, Ark_NativePointer node) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack peerValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        GetAccessors()->getNavExtenderAccessor()->setNavDestinationNode(static_cast<Ark_NavPathStack*>(&peerValueTemp), index, node);
}
KOALA_INTEROP_DIRECT_V4(NavExtender_setNavDestinationNode, KSerializerBuffer, int32_t, Ark_Int32, Ark_NativePointer)
void impl_NavExtender_pushPath(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        Ark_CustomObject infoValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        Ark_CustomObject optionsValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        GetAccessors()->getNavExtenderAccessor()->pushPath(static_cast<Ark_NavPathStack*>(&pathStackValueTemp), static_cast<Ark_CustomObject*>(&infoValueTemp), static_cast<Ark_CustomObject*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V2(NavExtender_pushPath, KSerializerBuffer, int32_t)
void impl_NavExtender_replacePath(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        Ark_CustomObject infoValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        Ark_CustomObject optionsValueTemp = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));;
        GetAccessors()->getNavExtenderAccessor()->replacePath(static_cast<Ark_NavPathStack*>(&pathStackValueTemp), static_cast<Ark_CustomObject*>(&infoValueTemp), static_cast<Ark_CustomObject*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V2(NavExtender_replacePath, KSerializerBuffer, int32_t)
Ark_String impl_NavExtender_pop(KSerializerBuffer thisArray, int32_t thisLength, Ark_Boolean animated) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        return GetAccessors()->getNavExtenderAccessor()->pop(static_cast<Ark_NavPathStack*>(&pathStackValueTemp), animated);
}
KOALA_INTEROP_3(NavExtender_pop, KStringPtr, KSerializerBuffer, int32_t, Ark_Boolean)
void impl_NavExtender_setOnPopCallback(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        Callback_String_Void popCallbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String parameter)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_String_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String parameter)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_String_Void))))};;
        GetAccessors()->getNavExtenderAccessor()->setOnPopCallback(static_cast<Ark_NavPathStack*>(&pathStackValueTemp), static_cast<Callback_String_Void*>(&popCallbackValueTemp));
}
KOALA_INTEROP_DIRECT_V2(NavExtender_setOnPopCallback, KSerializerBuffer, int32_t)
Ark_String impl_NavExtender_getIdByIndex(KSerializerBuffer thisArray, int32_t thisLength, Ark_Int32 index) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        return GetAccessors()->getNavExtenderAccessor()->getIdByIndex(static_cast<Ark_NavPathStack*>(&pathStackValueTemp), index);
}
KOALA_INTEROP_3(NavExtender_getIdByIndex, KStringPtr, KSerializerBuffer, int32_t, Ark_Int32)
KInteropReturnBuffer impl_NavExtender_getIdByName(KSerializerBuffer thisArray, int32_t thisLength, const KStringPtr& name) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        const auto &retValue = GetAccessors()->getNavExtenderAccessor()->getIdByName(static_cast<Ark_NavPathStack*>(&pathStackValueTemp), (const Ark_String*) (&name));
        SerializerBase _retSerializer {};
        _retSerializer.writeInt32(retValue.length);
        for (int retValueCounterI = 0; retValueCounterI < retValue.length; retValueCounterI++) {
            const Ark_String retValueTmpElement = retValue.array[retValueCounterI];
            _retSerializer.writeString(retValueTmpElement);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_3(NavExtender_getIdByName, KInteropReturnBuffer, KSerializerBuffer, int32_t, KStringPtr)
void impl_NavExtender_popToIndex(KSerializerBuffer thisArray, int32_t thisLength, Ark_Int32 index, Ark_Boolean animated) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        GetAccessors()->getNavExtenderAccessor()->popToIndex(static_cast<Ark_NavPathStack*>(&pathStackValueTemp), index, animated);
}
KOALA_INTEROP_DIRECT_V4(NavExtender_popToIndex, KSerializerBuffer, int32_t, Ark_Int32, Ark_Boolean)
Ark_Number impl_NavExtender_popToName(KSerializerBuffer thisArray, int32_t thisLength, const KStringPtr& name, Ark_Boolean animated) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavPathStack pathStackValueTemp = NavPathStack_serializer::read(thisDeserializer);;
        return GetAccessors()->getNavExtenderAccessor()->popToName(static_cast<Ark_NavPathStack*>(&pathStackValueTemp), (const Ark_String*) (&name), animated);
}
KOALA_INTEROP_4(NavExtender_popToName, KInteropNumber, KSerializerBuffer, int32_t, KStringPtr, Ark_Boolean)
KInteropReturnBuffer impl_PersistentStorageBackend_get(const KStringPtr& key) {
        const auto &retValue = GetAccessors()->getPersistentStorageBackendAccessor()->get((const Ark_String*) (&key));
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeString(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(PersistentStorageBackend_get, KInteropReturnBuffer, KStringPtr)
Ark_Boolean impl_PersistentStorageBackend_has(const KStringPtr& key) {
        return GetAccessors()->getPersistentStorageBackendAccessor()->has((const Ark_String*) (&key));
}
KOALA_INTEROP_1(PersistentStorageBackend_has, Ark_Boolean, KStringPtr)
void impl_PersistentStorageBackend_remove(const KStringPtr& key) {
        GetAccessors()->getPersistentStorageBackendAccessor()->remove((const Ark_String*) (&key));
}
KOALA_INTEROP_V1(PersistentStorageBackend_remove, KStringPtr)
void impl_PersistentStorageBackend_set(const KStringPtr& key, const KStringPtr& value) {
        GetAccessors()->getPersistentStorageBackendAccessor()->set((const Ark_String*) (&key), (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(PersistentStorageBackend_set, KStringPtr, KStringPtr)
void impl_PersistentStorageBackend_clear() {
        GetAccessors()->getPersistentStorageBackendAccessor()->clear();
}
KOALA_INTEROP_DIRECT_V0(PersistentStorageBackend_clear)
Ark_Int32 impl_RenderServiceNode_getNodeId(const KStringPtr& nodeId) {
        return GetAccessors()->getRenderServiceNodeAccessor()->getNodeId((const Ark_String*) (&nodeId));
}
KOALA_INTEROP_1(RenderServiceNode_getNodeId, Ark_Int32, KStringPtr)
Ark_NativePointer impl_RestrictedWorker_construct(const KStringPtr& scriptURL, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_WorkerOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = WorkerOptions_serializer::read(thisDeserializer);
        }
        Opt_WorkerOptions optionsValueTemp = optionsValueTempTmpBuf;;
        return GetAccessors()->getRestrictedWorkerAccessor()->construct((const Ark_String*) (&scriptURL), static_cast<Opt_WorkerOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_3(RestrictedWorker_construct, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
Ark_NativePointer impl_RestrictedWorker_getFinalizer() {
        return GetAccessors()->getRestrictedWorkerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(RestrictedWorker_getFinalizer, Ark_NativePointer)
void impl_RestrictedWorker_postMessage0(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object messageValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const Ark_Int32 transferValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Buffer transferValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(transferValueTempTmpBuf)>::type,
        std::decay<decltype(*transferValueTempTmpBuf.array)>::type>(&transferValueTempTmpBuf, transferValueTempTmpBufLength);
        for (int transferValueTempTmpBufBufCounterI = 0; transferValueTempTmpBufBufCounterI < transferValueTempTmpBufLength; transferValueTempTmpBufBufCounterI++) {
            transferValueTempTmpBuf.array[transferValueTempTmpBufBufCounterI] = static_cast<Ark_Buffer>(thisDeserializer.readBuffer());
        }
        Array_Buffer transferValueTemp = transferValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->postMessage0(self, static_cast<Ark_Object*>(&messageValueTemp), static_cast<Array_Buffer*>(&transferValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RestrictedWorker_postMessage0, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_postMessage1(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object messageValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_PostMessageOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = PostMessageOptions_serializer::read(thisDeserializer);
        }
        Opt_PostMessageOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->postMessage1(self, static_cast<Ark_Object*>(&messageValueTemp), static_cast<Opt_PostMessageOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RestrictedWorker_postMessage1, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_postMessageWithSharedSendable(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object messageValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto transferValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Array_Buffer transferValueTempTmpBuf = {};
        transferValueTempTmpBuf.tag = transferValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((transferValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int32 transferValueTempTmpBuf_Length = thisDeserializer.readInt32();
            Array_Buffer transferValueTempTmpBuf_ = {};
            thisDeserializer.resizeArray<std::decay<decltype(transferValueTempTmpBuf_)>::type,
        std::decay<decltype(*transferValueTempTmpBuf_.array)>::type>(&transferValueTempTmpBuf_, transferValueTempTmpBuf_Length);
            for (int transferValueTempTmpBuf_BufCounterI = 0; transferValueTempTmpBuf_BufCounterI < transferValueTempTmpBuf_Length; transferValueTempTmpBuf_BufCounterI++) {
                transferValueTempTmpBuf_.array[transferValueTempTmpBuf_BufCounterI] = static_cast<Ark_Buffer>(thisDeserializer.readBuffer());
            }
            transferValueTempTmpBuf.value = transferValueTempTmpBuf_;
        }
        Opt_Array_Buffer transferValueTemp = transferValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->postMessageWithSharedSendable(self, static_cast<Ark_Object*>(&messageValueTemp), static_cast<Opt_Array_Buffer*>(&transferValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RestrictedWorker_postMessageWithSharedSendable, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_on(Ark_NativePointer thisPtr, const KStringPtr& Type, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_WorkerEventListener listenerValueTemp = WorkerEventListener_serializer::read(thisDeserializer);;
        GetAccessors()->getRestrictedWorkerAccessor()->on(self, (const Ark_String*) (&Type), static_cast<Ark_WorkerEventListener*>(&listenerValueTemp));
}
KOALA_INTEROP_V4(RestrictedWorker_on, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_once(Ark_NativePointer thisPtr, const KStringPtr& Type, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_WorkerEventListener listenerValueTemp = WorkerEventListener_serializer::read(thisDeserializer);;
        GetAccessors()->getRestrictedWorkerAccessor()->once(self, (const Ark_String*) (&Type), static_cast<Ark_WorkerEventListener*>(&listenerValueTemp));
}
KOALA_INTEROP_V4(RestrictedWorker_once, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_off(Ark_NativePointer thisPtr, const KStringPtr& Type, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto listenerValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_WorkerEventListener listenerValueTempTmpBuf = {};
        listenerValueTempTmpBuf.tag = listenerValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((listenerValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            listenerValueTempTmpBuf.value = WorkerEventListener_serializer::read(thisDeserializer);
        }
        Opt_WorkerEventListener listenerValueTemp = listenerValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->off(self, (const Ark_String*) (&Type), static_cast<Opt_WorkerEventListener*>(&listenerValueTemp));
}
KOALA_INTEROP_V4(RestrictedWorker_off, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_terminate(Ark_NativePointer thisPtr) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        GetAccessors()->getRestrictedWorkerAccessor()->terminate(self);
}
KOALA_INTEROP_DIRECT_V1(RestrictedWorker_terminate, Ark_NativePointer)
void impl_RestrictedWorker_addEventListener(Ark_NativePointer thisPtr, const KStringPtr& Type, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_WorkerEventListener listenerValueTemp = WorkerEventListener_serializer::read(thisDeserializer);;
        GetAccessors()->getRestrictedWorkerAccessor()->addEventListener(self, (const Ark_String*) (&Type), static_cast<Ark_WorkerEventListener*>(&listenerValueTemp));
}
KOALA_INTEROP_V4(RestrictedWorker_addEventListener, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
Ark_Boolean impl_RestrictedWorker_dispatchEvent(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Event eventValueTemp = Event_serializer::read(thisDeserializer);;
        return GetAccessors()->getRestrictedWorkerAccessor()->dispatchEvent(self, static_cast<Ark_Event*>(&eventValueTemp));
}
KOALA_INTEROP_DIRECT_3(RestrictedWorker_dispatchEvent, Ark_Boolean, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_removeEventListener(Ark_NativePointer thisPtr, const KStringPtr& Type, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto callback_ValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_WorkerEventListener callback_ValueTempTmpBuf = {};
        callback_ValueTempTmpBuf.tag = callback_ValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((callback_ValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            callback_ValueTempTmpBuf.value = WorkerEventListener_serializer::read(thisDeserializer);
        }
        Opt_WorkerEventListener callback_ValueTemp = callback_ValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->removeEventListener(self, (const Ark_String*) (&Type), static_cast<Opt_WorkerEventListener*>(&callback_ValueTemp));
}
KOALA_INTEROP_V4(RestrictedWorker_removeEventListener, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_removeAllListener(Ark_NativePointer thisPtr) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        GetAccessors()->getRestrictedWorkerAccessor()->removeAllListener(self);
}
KOALA_INTEROP_DIRECT_V1(RestrictedWorker_removeAllListener, Ark_NativePointer)
void impl_RestrictedWorker_registerGlobalCallObject(Ark_NativePointer thisPtr, const KStringPtr& instanceName, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object globalCallObjectValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        GetAccessors()->getRestrictedWorkerAccessor()->registerGlobalCallObject(self, (const Ark_String*) (&instanceName), static_cast<Ark_Object*>(&globalCallObjectValueTemp));
}
KOALA_INTEROP_V4(RestrictedWorker_registerGlobalCallObject, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_RestrictedWorker_unregisterGlobalCallObject(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto instanceNameValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String instanceNameValueTempTmpBuf = {};
        instanceNameValueTempTmpBuf.tag = instanceNameValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((instanceNameValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            instanceNameValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String instanceNameValueTemp = instanceNameValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->unregisterGlobalCallObject(self, static_cast<Opt_String*>(&instanceNameValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RestrictedWorker_unregisterGlobalCallObject, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_RestrictedWorker_getOnexit(Ark_NativePointer thisPtr) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        const auto &retValue = GetAccessors()->getRestrictedWorkerAccessor()->getOnexit(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeCallbackResource(retValueTmpValue.resource);
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.call));
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.callSync));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(RestrictedWorker_getOnexit, KInteropReturnBuffer, Ark_NativePointer)
void impl_RestrictedWorker_setOnexit(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto onexitValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_RestrictedWorker_onexit_Callback onexitValueTempTmpBuf = {};
        onexitValueTempTmpBuf.tag = onexitValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((onexitValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            onexitValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number code)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_RestrictedWorker_onexit_Callback)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number code)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_RestrictedWorker_onexit_Callback))))};
        }
        Opt_RestrictedWorker_onexit_Callback onexitValueTemp = onexitValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->setOnexit(self, static_cast<Opt_RestrictedWorker_onexit_Callback*>(&onexitValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RestrictedWorker_setOnexit, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_RestrictedWorker_getOnerror(Ark_NativePointer thisPtr) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        const auto &retValue = GetAccessors()->getRestrictedWorkerAccessor()->getOnerror(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeCallbackResource(retValueTmpValue.resource);
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.call));
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.callSync));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(RestrictedWorker_getOnerror, KInteropReturnBuffer, Ark_NativePointer)
void impl_RestrictedWorker_setOnerror(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto onerrorValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_RestrictedWorker_onerror_Callback onerrorValueTempTmpBuf = {};
        onerrorValueTempTmpBuf.tag = onerrorValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((onerrorValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            onerrorValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ErrorEvent ev)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_RestrictedWorker_onerror_Callback)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ErrorEvent ev)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_RestrictedWorker_onerror_Callback))))};
        }
        Opt_RestrictedWorker_onerror_Callback onerrorValueTemp = onerrorValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->setOnerror(self, static_cast<Opt_RestrictedWorker_onerror_Callback*>(&onerrorValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RestrictedWorker_setOnerror, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_RestrictedWorker_getOnmessage(Ark_NativePointer thisPtr) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        const auto &retValue = GetAccessors()->getRestrictedWorkerAccessor()->getOnmessage(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeCallbackResource(retValueTmpValue.resource);
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.call));
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.callSync));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(RestrictedWorker_getOnmessage, KInteropReturnBuffer, Ark_NativePointer)
void impl_RestrictedWorker_setOnmessage(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto onmessageValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_RestrictedWorker_onmessage_Callback onmessageValueTempTmpBuf = {};
        onmessageValueTempTmpBuf.tag = onmessageValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((onmessageValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            onmessageValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_MessageEvents event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_RestrictedWorker_onmessage_Callback)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_MessageEvents event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_RestrictedWorker_onmessage_Callback))))};
        }
        Opt_RestrictedWorker_onmessage_Callback onmessageValueTemp = onmessageValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->setOnmessage(self, static_cast<Opt_RestrictedWorker_onmessage_Callback*>(&onmessageValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RestrictedWorker_setOnmessage, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_RestrictedWorker_getOnmessageerror(Ark_NativePointer thisPtr) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        const auto &retValue = GetAccessors()->getRestrictedWorkerAccessor()->getOnmessageerror(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeCallbackResource(retValueTmpValue.resource);
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.call));
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.callSync));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(RestrictedWorker_getOnmessageerror, KInteropReturnBuffer, Ark_NativePointer)
void impl_RestrictedWorker_setOnmessageerror(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RestrictedWorker self = reinterpret_cast<Ark_RestrictedWorker>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto onmessageerrorValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_RestrictedWorker_onmessage_Callback onmessageerrorValueTempTmpBuf = {};
        onmessageerrorValueTempTmpBuf.tag = onmessageerrorValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((onmessageerrorValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            onmessageerrorValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_MessageEvents event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_RestrictedWorker_onmessage_Callback)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_MessageEvents event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_RestrictedWorker_onmessage_Callback))))};
        }
        Opt_RestrictedWorker_onmessage_Callback onmessageerrorValueTemp = onmessageerrorValueTempTmpBuf;;
        GetAccessors()->getRestrictedWorkerAccessor()->setOnmessageerror(self, static_cast<Opt_RestrictedWorker_onmessage_Callback*>(&onmessageerrorValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RestrictedWorker_setOnmessageerror, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Scene_construct() {
        return GetAccessors()->getSceneAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(Scene_construct, Ark_NativePointer)
Ark_NativePointer impl_Scene_getFinalizer() {
        return GetAccessors()->getSceneAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(Scene_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_Scene_load(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto uriValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_ResourceStr uriValueTempTmpBuf = {};
        uriValueTempTmpBuf.tag = uriValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((uriValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 uriValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_ResourceStr uriValueTempTmpBuf_ = {};
            uriValueTempTmpBuf_.selector = uriValueTempTmpBuf_UnionSelector;
            if (uriValueTempTmpBuf_UnionSelector == 0) {
                uriValueTempTmpBuf_.selector = 0;
                uriValueTempTmpBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (uriValueTempTmpBuf_UnionSelector == 1) {
                uriValueTempTmpBuf_.selector = 1;
                uriValueTempTmpBuf_.value1 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for uriValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            uriValueTempTmpBuf.value = static_cast<Ark_ResourceStr>(uriValueTempTmpBuf_);
        }
        Opt_ResourceStr uriValueTemp = uriValueTempTmpBuf;;
        return GetAccessors()->getSceneAccessor()->load(static_cast<Opt_ResourceStr*>(&uriValueTemp));
}
KOALA_INTEROP_DIRECT_2(Scene_load, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_Scene_destroy(Ark_NativePointer thisPtr) {
        Ark_Scene self = reinterpret_cast<Ark_Scene>(thisPtr);
        GetAccessors()->getSceneAccessor()->destroy(self);
}
KOALA_INTEROP_DIRECT_V1(Scene_destroy, Ark_NativePointer)
Ark_Boolean impl_ScreenshotService_requestScreenshot(const KStringPtr& target, const KStringPtr& name) {
        return GetAccessors()->getScreenshotServiceAccessor()->requestScreenshot((const Ark_String*) (&target), (const Ark_String*) (&name));
}
KOALA_INTEROP_2(ScreenshotService_requestScreenshot, Ark_Boolean, KStringPtr, KStringPtr)
Ark_NativePointer impl_SearchOps_registerSearchValueCallback(Ark_NativePointer node, const KStringPtr& value, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        SearchValueCallback callbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_SearchValueCallback)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_SearchValueCallback))))};;
        return GetAccessors()->getSearchOpsAccessor()->registerSearchValueCallback(node, (const Ark_String*) (&value), static_cast<SearchValueCallback*>(&callbackValueTemp));
}
KOALA_INTEROP_4(SearchOps_registerSearchValueCallback, Ark_NativePointer, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_StateStylesOps_onStateStyleChange(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_StateStylesChange stateStyleChangeValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Int32 currentState)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_StateStylesChange)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Int32 currentState)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_StateStylesChange))))};;
        GetAccessors()->getStateStylesOpsAccessor()->onStateStyleChange(node, static_cast<Callback_StateStylesChange*>(&stateStyleChangeValueTemp));
}
KOALA_INTEROP_DIRECT_V3(StateStylesOps_onStateStyleChange, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_SystemOps_StartFrame() {
        return GetAccessors()->getSystemOpsAccessor()->StartFrame();
}
KOALA_INTEROP_DIRECT_0(SystemOps_StartFrame, Ark_NativePointer)
void impl_SystemOps_EndFrame(Ark_NativePointer root) {
        GetAccessors()->getSystemOpsAccessor()->EndFrame(root);
}
KOALA_INTEROP_DIRECT_V1(SystemOps_EndFrame, Ark_NativePointer)
void impl_SystemOps_syncInstanceId(Ark_Int32 instanceId) {
        GetAccessors()->getSystemOpsAccessor()->syncInstanceId(instanceId);
}
KOALA_INTEROP_DIRECT_V1(SystemOps_syncInstanceId, Ark_Int32)
void impl_SystemOps_restoreInstanceId() {
        GetAccessors()->getSystemOpsAccessor()->restoreInstanceId();
}
KOALA_INTEROP_DIRECT_V0(SystemOps_restoreInstanceId)
Ark_Int32 impl_SystemOps_getResourceId(const KStringPtr& bundleName, const KStringPtr& moduleName, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 paramsValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_String paramsValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(paramsValueTempTmpBuf)>::type,
        std::decay<decltype(*paramsValueTempTmpBuf.array)>::type>(&paramsValueTempTmpBuf, paramsValueTempTmpBufLength);
        for (int paramsValueTempTmpBufBufCounterI = 0; paramsValueTempTmpBufBufCounterI < paramsValueTempTmpBufLength; paramsValueTempTmpBufBufCounterI++) {
            paramsValueTempTmpBuf.array[paramsValueTempTmpBufBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Array_String paramsValueTemp = paramsValueTempTmpBuf;;
        return GetAccessors()->getSystemOpsAccessor()->getResourceId((const Ark_String*) (&bundleName), (const Ark_String*) (&moduleName), static_cast<Array_String*>(&paramsValueTemp));
}
KOALA_INTEROP_4(SystemOps_getResourceId, Ark_Int32, KStringPtr, KStringPtr, KSerializerBuffer, int32_t)
void impl_SystemOps_resourceManagerReset() {
        GetAccessors()->getSystemOpsAccessor()->resourceManagerReset();
}
KOALA_INTEROP_DIRECT_V0(SystemOps_resourceManagerReset)
void impl_SystemOps_setFrameCallback(KSerializerBuffer thisArray, int32_t thisLength, KInteropNumber delayTime) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void onFrameCallbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Number_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Number_Void))))};;
        Callback_Number_Void onIdleCallbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Number_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number select)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Number_Void))))};;
        GetAccessors()->getSystemOpsAccessor()->setFrameCallback(static_cast<Callback_Number_Void*>(&onFrameCallbackValueTemp), static_cast<Callback_Number_Void*>(&onIdleCallbackValueTemp), (const Ark_Number*) (&delayTime));
}
KOALA_INTEROP_V3(SystemOps_setFrameCallback, KSerializerBuffer, int32_t, KInteropNumber)
KInteropReturnBuffer impl_SystemOps_colorMetricsResourceColor(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Resource colorValueTemp = Resource_serializer::read(thisDeserializer);;
        const auto &retValue = GetAccessors()->getSystemOpsAccessor()->colorMetricsResourceColor(static_cast<Ark_Resource*>(&colorValueTemp));
        SerializerBase _retSerializer {};
        _retSerializer.writeInt32(retValue.length);
        for (int retValueCounterI = 0; retValueCounterI < retValue.length; retValueCounterI++) {
            const Ark_Number retValueTmpElement = retValue.array[retValueCounterI];
            _retSerializer.writeNumber(retValueTmpElement);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_2(SystemOps_colorMetricsResourceColor, KInteropReturnBuffer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_registerTextFieldValueCallback(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceStr valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceStr valueValueTemp = static_cast<Ark_ResourceStr>(valueValueTempTmpBuf);;
        TextFieldValueCallback callbackValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ResourceStr value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_TextFieldValueCallback)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ResourceStr value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_TextFieldValueCallback))))};;
        return GetAccessors()->getTextFieldOpsAccessor()->registerTextFieldValueCallback(node, static_cast<Ark_ResourceStr*>(&valueValueTemp), static_cast<TextFieldValueCallback*>(&callbackValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_registerTextFieldValueCallback, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetWidth(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Length_LayoutPolicy valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Union_Length_LayoutPolicy valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                const Ark_Int8 valueValueTempTmpBuf_BufUUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufU = {};
                valueValueTempTmpBuf_BufU.selector = valueValueTempTmpBuf_BufUUnionSelector;
                if (valueValueTempTmpBuf_BufUUnionSelector == 0) {
                    valueValueTempTmpBuf_BufU.selector = 0;
                    valueValueTempTmpBuf_BufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 1) {
                    valueValueTempTmpBuf_BufU.selector = 1;
                    valueValueTempTmpBuf_BufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 2) {
                    valueValueTempTmpBuf_BufU.selector = 2;
                    valueValueTempTmpBuf_BufU.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufU has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_.value0 = static_cast<Ark_Length>(valueValueTempTmpBuf_BufU);
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                valueValueTempTmpBuf_.value1 = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_Length_LayoutPolicy>(valueValueTempTmpBuf_);
        }
        Opt_Union_Length_LayoutPolicy valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetWidth(node, static_cast<Opt_Union_Length_LayoutPolicy*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetWidth, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetHeight(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Length_LayoutPolicy valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Union_Length_LayoutPolicy valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                const Ark_Int8 valueValueTempTmpBuf_BufUUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufU = {};
                valueValueTempTmpBuf_BufU.selector = valueValueTempTmpBuf_BufUUnionSelector;
                if (valueValueTempTmpBuf_BufUUnionSelector == 0) {
                    valueValueTempTmpBuf_BufU.selector = 0;
                    valueValueTempTmpBuf_BufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 1) {
                    valueValueTempTmpBuf_BufU.selector = 1;
                    valueValueTempTmpBuf_BufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 2) {
                    valueValueTempTmpBuf_BufU.selector = 2;
                    valueValueTempTmpBuf_BufU.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufU has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_.value0 = static_cast<Ark_Length>(valueValueTempTmpBuf_BufU);
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                valueValueTempTmpBuf_.value1 = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_Length_LayoutPolicy>(valueValueTempTmpBuf_);
        }
        Opt_Union_Length_LayoutPolicy valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetHeight(node, static_cast<Opt_Union_Length_LayoutPolicy*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetHeight, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetPadding(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Padding_Length_LocalizedPadding valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Union_Padding_Length_LocalizedPadding valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                Ark_Padding valueValueTempTmpBuf_BufU = {};
                const auto valueValueTempTmpBuf_BufUTopTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufUTopTempBuf = {};
                valueValueTempTmpBuf_BufUTopTempBuf.tag = valueValueTempTmpBuf_BufUTopTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUTopTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufUTopTempBuf_ = {};
                    valueValueTempTmpBuf_BufUTopTempBuf_.selector = valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUTopTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufUTopTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUTopTempBuf_);
                }
                valueValueTempTmpBuf_BufU.top = valueValueTempTmpBuf_BufUTopTempBuf;
                const auto valueValueTempTmpBuf_BufURightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufURightTempBuf = {};
                valueValueTempTmpBuf_BufURightTempBuf.tag = valueValueTempTmpBuf_BufURightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufURightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufURightTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufURightTempBuf_ = {};
                    valueValueTempTmpBuf_BufURightTempBuf_.selector = valueValueTempTmpBuf_BufURightTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufURightTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufURightTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufURightTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufURightTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufURightTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufURightTempBuf_);
                }
                valueValueTempTmpBuf_BufU.right = valueValueTempTmpBuf_BufURightTempBuf;
                const auto valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufUBottomTempBuf = {};
                valueValueTempTmpBuf_BufUBottomTempBuf.tag = valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufUBottomTempBuf_ = {};
                    valueValueTempTmpBuf_BufUBottomTempBuf_.selector = valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUBottomTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufUBottomTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUBottomTempBuf_);
                }
                valueValueTempTmpBuf_BufU.bottom = valueValueTempTmpBuf_BufUBottomTempBuf;
                const auto valueValueTempTmpBuf_BufULeftTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufULeftTempBuf = {};
                valueValueTempTmpBuf_BufULeftTempBuf.tag = valueValueTempTmpBuf_BufULeftTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufULeftTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufULeftTempBuf_ = {};
                    valueValueTempTmpBuf_BufULeftTempBuf_.selector = valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufULeftTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufULeftTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufULeftTempBuf_);
                }
                valueValueTempTmpBuf_BufU.left = valueValueTempTmpBuf_BufULeftTempBuf;
                valueValueTempTmpBuf_.value0 = valueValueTempTmpBuf_BufU;
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                const Ark_Int8 valueValueTempTmpBuf_BufUUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufU = {};
                valueValueTempTmpBuf_BufU.selector = valueValueTempTmpBuf_BufUUnionSelector;
                if (valueValueTempTmpBuf_BufUUnionSelector == 0) {
                    valueValueTempTmpBuf_BufU.selector = 0;
                    valueValueTempTmpBuf_BufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 1) {
                    valueValueTempTmpBuf_BufU.selector = 1;
                    valueValueTempTmpBuf_BufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 2) {
                    valueValueTempTmpBuf_BufU.selector = 2;
                    valueValueTempTmpBuf_BufU.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufU has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_.value1 = static_cast<Ark_Length>(valueValueTempTmpBuf_BufU);
            } else if (valueValueTempTmpBuf_UnionSelector == 2) {
                valueValueTempTmpBuf_.selector = 2;
                valueValueTempTmpBuf_.value2 = LocalizedPadding_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_Padding_Length_LocalizedPadding>(valueValueTempTmpBuf_);
        }
        Opt_Union_Padding_Length_LocalizedPadding valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetPadding(node, static_cast<Opt_Union_Padding_Length_LocalizedPadding*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetPadding, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetMargin(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Padding_Length_LocalizedPadding valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Union_Padding_Length_LocalizedPadding valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                Ark_Padding valueValueTempTmpBuf_BufU = {};
                const auto valueValueTempTmpBuf_BufUTopTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufUTopTempBuf = {};
                valueValueTempTmpBuf_BufUTopTempBuf.tag = valueValueTempTmpBuf_BufUTopTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUTopTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufUTopTempBuf_ = {};
                    valueValueTempTmpBuf_BufUTopTempBuf_.selector = valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUTopTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufUTopTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUTopTempBuf_);
                }
                valueValueTempTmpBuf_BufU.top = valueValueTempTmpBuf_BufUTopTempBuf;
                const auto valueValueTempTmpBuf_BufURightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufURightTempBuf = {};
                valueValueTempTmpBuf_BufURightTempBuf.tag = valueValueTempTmpBuf_BufURightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufURightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufURightTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufURightTempBuf_ = {};
                    valueValueTempTmpBuf_BufURightTempBuf_.selector = valueValueTempTmpBuf_BufURightTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufURightTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufURightTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufURightTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufURightTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufURightTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufURightTempBuf_);
                }
                valueValueTempTmpBuf_BufU.right = valueValueTempTmpBuf_BufURightTempBuf;
                const auto valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufUBottomTempBuf = {};
                valueValueTempTmpBuf_BufUBottomTempBuf.tag = valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufUBottomTempBuf_ = {};
                    valueValueTempTmpBuf_BufUBottomTempBuf_.selector = valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUBottomTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufUBottomTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUBottomTempBuf_);
                }
                valueValueTempTmpBuf_BufU.bottom = valueValueTempTmpBuf_BufUBottomTempBuf;
                const auto valueValueTempTmpBuf_BufULeftTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufULeftTempBuf = {};
                valueValueTempTmpBuf_BufULeftTempBuf.tag = valueValueTempTmpBuf_BufULeftTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufULeftTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufULeftTempBuf_ = {};
                    valueValueTempTmpBuf_BufULeftTempBuf_.selector = valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufULeftTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufULeftTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufULeftTempBuf_);
                }
                valueValueTempTmpBuf_BufU.left = valueValueTempTmpBuf_BufULeftTempBuf;
                valueValueTempTmpBuf_.value0 = valueValueTempTmpBuf_BufU;
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                const Ark_Int8 valueValueTempTmpBuf_BufUUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufU = {};
                valueValueTempTmpBuf_BufU.selector = valueValueTempTmpBuf_BufUUnionSelector;
                if (valueValueTempTmpBuf_BufUUnionSelector == 0) {
                    valueValueTempTmpBuf_BufU.selector = 0;
                    valueValueTempTmpBuf_BufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 1) {
                    valueValueTempTmpBuf_BufU.selector = 1;
                    valueValueTempTmpBuf_BufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 2) {
                    valueValueTempTmpBuf_BufU.selector = 2;
                    valueValueTempTmpBuf_BufU.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufU has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_.value1 = static_cast<Ark_Length>(valueValueTempTmpBuf_BufU);
            } else if (valueValueTempTmpBuf_UnionSelector == 2) {
                valueValueTempTmpBuf_.selector = 2;
                valueValueTempTmpBuf_.value2 = LocalizedPadding_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_Padding_Length_LocalizedPadding>(valueValueTempTmpBuf_);
        }
        Opt_Union_Padding_Length_LocalizedPadding valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetMargin(node, static_cast<Opt_Union_Padding_Length_LocalizedPadding*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetMargin, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetBorder(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_CustomObject valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
        }
        Opt_CustomObject valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetBorder(node, static_cast<Opt_CustomObject*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetBorder, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetBorderWidth(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Length_EdgeWidths_LocalizedEdgeWidths valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Union_Length_EdgeWidths_LocalizedEdgeWidths valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                const Ark_Int8 valueValueTempTmpBuf_BufUUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufU = {};
                valueValueTempTmpBuf_BufU.selector = valueValueTempTmpBuf_BufUUnionSelector;
                if (valueValueTempTmpBuf_BufUUnionSelector == 0) {
                    valueValueTempTmpBuf_BufU.selector = 0;
                    valueValueTempTmpBuf_BufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 1) {
                    valueValueTempTmpBuf_BufU.selector = 1;
                    valueValueTempTmpBuf_BufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 2) {
                    valueValueTempTmpBuf_BufU.selector = 2;
                    valueValueTempTmpBuf_BufU.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufU has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_.value0 = static_cast<Ark_Length>(valueValueTempTmpBuf_BufU);
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                Ark_EdgeWidths valueValueTempTmpBuf_BufU = {};
                const auto valueValueTempTmpBuf_BufUTopTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufUTopTempBuf = {};
                valueValueTempTmpBuf_BufUTopTempBuf.tag = valueValueTempTmpBuf_BufUTopTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUTopTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufUTopTempBuf_ = {};
                    valueValueTempTmpBuf_BufUTopTempBuf_.selector = valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUTopTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufUTopTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUTopTempBuf_);
                }
                valueValueTempTmpBuf_BufU.top = valueValueTempTmpBuf_BufUTopTempBuf;
                const auto valueValueTempTmpBuf_BufURightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufURightTempBuf = {};
                valueValueTempTmpBuf_BufURightTempBuf.tag = valueValueTempTmpBuf_BufURightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufURightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufURightTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufURightTempBuf_ = {};
                    valueValueTempTmpBuf_BufURightTempBuf_.selector = valueValueTempTmpBuf_BufURightTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufURightTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufURightTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufURightTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufURightTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufURightTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufURightTempBuf_);
                }
                valueValueTempTmpBuf_BufU.right = valueValueTempTmpBuf_BufURightTempBuf;
                const auto valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufUBottomTempBuf = {};
                valueValueTempTmpBuf_BufUBottomTempBuf.tag = valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufUBottomTempBuf_ = {};
                    valueValueTempTmpBuf_BufUBottomTempBuf_.selector = valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUBottomTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufUBottomTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUBottomTempBuf_);
                }
                valueValueTempTmpBuf_BufU.bottom = valueValueTempTmpBuf_BufUBottomTempBuf;
                const auto valueValueTempTmpBuf_BufULeftTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Length valueValueTempTmpBuf_BufULeftTempBuf = {};
                valueValueTempTmpBuf_BufULeftTempBuf.tag = valueValueTempTmpBuf_BufULeftTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufULeftTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_Length valueValueTempTmpBuf_BufULeftTempBuf_ = {};
                    valueValueTempTmpBuf_BufULeftTempBuf_.selector = valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value2 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufULeftTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufULeftTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBuf_BufULeftTempBuf_);
                }
                valueValueTempTmpBuf_BufU.left = valueValueTempTmpBuf_BufULeftTempBuf;
                valueValueTempTmpBuf_.value1 = valueValueTempTmpBuf_BufU;
            } else if (valueValueTempTmpBuf_UnionSelector == 2) {
                valueValueTempTmpBuf_.selector = 2;
                valueValueTempTmpBuf_.value2 = LocalizedEdgeWidths_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_Length_EdgeWidths_LocalizedEdgeWidths>(valueValueTempTmpBuf_);
        }
        Opt_Union_Length_EdgeWidths_LocalizedEdgeWidths valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetBorderWidth(node, static_cast<Opt_Union_Length_EdgeWidths_LocalizedEdgeWidths*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetBorderWidth, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetBorderColor(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_ResourceColor_EdgeColors_LocalizedEdgeColors valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Union_ResourceColor_EdgeColors_LocalizedEdgeColors valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                const Ark_Int8 valueValueTempTmpBuf_BufUUnionSelector = thisDeserializer.readInt8();
                Ark_ResourceColor valueValueTempTmpBuf_BufU = {};
                valueValueTempTmpBuf_BufU.selector = valueValueTempTmpBuf_BufUUnionSelector;
                if (valueValueTempTmpBuf_BufUUnionSelector == 0) {
                    valueValueTempTmpBuf_BufU.selector = 0;
                    valueValueTempTmpBuf_BufU.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 1) {
                    valueValueTempTmpBuf_BufU.selector = 1;
                    valueValueTempTmpBuf_BufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 2) {
                    valueValueTempTmpBuf_BufU.selector = 2;
                    valueValueTempTmpBuf_BufU.value2 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 3) {
                    valueValueTempTmpBuf_BufU.selector = 3;
                    valueValueTempTmpBuf_BufU.value3 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufU has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_.value0 = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf_BufU);
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                Ark_EdgeColors valueValueTempTmpBuf_BufU = {};
                const auto valueValueTempTmpBuf_BufUTopTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_ResourceColor valueValueTempTmpBuf_BufUTopTempBuf = {};
                valueValueTempTmpBuf_BufUTopTempBuf.tag = valueValueTempTmpBuf_BufUTopTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUTopTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_ResourceColor valueValueTempTmpBuf_BufUTopTempBuf_ = {};
                    valueValueTempTmpBuf_BufUTopTempBuf_.selector = valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value2 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufUTopTempBuf_UnionSelector == 3) {
                        valueValueTempTmpBuf_BufUTopTempBuf_.selector = 3;
                        valueValueTempTmpBuf_BufUTopTempBuf_.value3 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUTopTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufUTopTempBuf.value = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf_BufUTopTempBuf_);
                }
                valueValueTempTmpBuf_BufU.top = valueValueTempTmpBuf_BufUTopTempBuf;
                const auto valueValueTempTmpBuf_BufURightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_ResourceColor valueValueTempTmpBuf_BufURightTempBuf = {};
                valueValueTempTmpBuf_BufURightTempBuf.tag = valueValueTempTmpBuf_BufURightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufURightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufURightTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_ResourceColor valueValueTempTmpBuf_BufURightTempBuf_ = {};
                    valueValueTempTmpBuf_BufURightTempBuf_.selector = valueValueTempTmpBuf_BufURightTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufURightTempBuf_.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufURightTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufURightTempBuf_.value2 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufURightTempBuf_UnionSelector == 3) {
                        valueValueTempTmpBuf_BufURightTempBuf_.selector = 3;
                        valueValueTempTmpBuf_BufURightTempBuf_.value3 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufURightTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufURightTempBuf.value = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf_BufURightTempBuf_);
                }
                valueValueTempTmpBuf_BufU.right = valueValueTempTmpBuf_BufURightTempBuf;
                const auto valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_ResourceColor valueValueTempTmpBuf_BufUBottomTempBuf = {};
                valueValueTempTmpBuf_BufUBottomTempBuf.tag = valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_ResourceColor valueValueTempTmpBuf_BufUBottomTempBuf_ = {};
                    valueValueTempTmpBuf_BufUBottomTempBuf_.selector = valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value2 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufUBottomTempBuf_UnionSelector == 3) {
                        valueValueTempTmpBuf_BufUBottomTempBuf_.selector = 3;
                        valueValueTempTmpBuf_BufUBottomTempBuf_.value3 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUBottomTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufUBottomTempBuf.value = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf_BufUBottomTempBuf_);
                }
                valueValueTempTmpBuf_BufU.bottom = valueValueTempTmpBuf_BufUBottomTempBuf;
                const auto valueValueTempTmpBuf_BufULeftTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_ResourceColor valueValueTempTmpBuf_BufULeftTempBuf = {};
                valueValueTempTmpBuf_BufULeftTempBuf.tag = valueValueTempTmpBuf_BufULeftTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufULeftTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector = thisDeserializer.readInt8();
                    Ark_ResourceColor valueValueTempTmpBuf_BufULeftTempBuf_ = {};
                    valueValueTempTmpBuf_BufULeftTempBuf_.selector = valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector;
                    if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 0) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 0;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 1) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 1;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 2) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 2;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value2 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBuf_BufULeftTempBuf_UnionSelector == 3) {
                        valueValueTempTmpBuf_BufULeftTempBuf_.selector = 3;
                        valueValueTempTmpBuf_BufULeftTempBuf_.value3 = Resource_serializer::read(thisDeserializer);
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufULeftTempBuf_ has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBuf_BufULeftTempBuf.value = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf_BufULeftTempBuf_);
                }
                valueValueTempTmpBuf_BufU.left = valueValueTempTmpBuf_BufULeftTempBuf;
                valueValueTempTmpBuf_.value1 = valueValueTempTmpBuf_BufU;
            } else if (valueValueTempTmpBuf_UnionSelector == 2) {
                valueValueTempTmpBuf_.selector = 2;
                valueValueTempTmpBuf_.value2 = static_cast<Ark_CustomObject>(thisDeserializer.readCustomObject("Any"));
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_ResourceColor_EdgeColors_LocalizedEdgeColors>(valueValueTempTmpBuf_);
        }
        Opt_Union_ResourceColor_EdgeColors_LocalizedEdgeColors valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetBorderColor(node, static_cast<Opt_Union_ResourceColor_EdgeColors_LocalizedEdgeColors*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetBorderColor, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetBorderStyle(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_BorderStyle_EdgeStyles valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Union_BorderStyle_EdgeStyles valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                valueValueTempTmpBuf_.value0 = static_cast<Ark_BorderStyle>(thisDeserializer.readInt32());
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                Ark_EdgeStyles valueValueTempTmpBuf_BufU = {};
                const auto valueValueTempTmpBuf_BufUTopTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_BorderStyle valueValueTempTmpBuf_BufUTopTempBuf = {};
                valueValueTempTmpBuf_BufUTopTempBuf.tag = valueValueTempTmpBuf_BufUTopTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUTopTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    valueValueTempTmpBuf_BufUTopTempBuf.value = static_cast<Ark_BorderStyle>(thisDeserializer.readInt32());
                }
                valueValueTempTmpBuf_BufU.top = valueValueTempTmpBuf_BufUTopTempBuf;
                const auto valueValueTempTmpBuf_BufURightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_BorderStyle valueValueTempTmpBuf_BufURightTempBuf = {};
                valueValueTempTmpBuf_BufURightTempBuf.tag = valueValueTempTmpBuf_BufURightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufURightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    valueValueTempTmpBuf_BufURightTempBuf.value = static_cast<Ark_BorderStyle>(thisDeserializer.readInt32());
                }
                valueValueTempTmpBuf_BufU.right = valueValueTempTmpBuf_BufURightTempBuf;
                const auto valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_BorderStyle valueValueTempTmpBuf_BufUBottomTempBuf = {};
                valueValueTempTmpBuf_BufUBottomTempBuf.tag = valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufUBottomTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    valueValueTempTmpBuf_BufUBottomTempBuf.value = static_cast<Ark_BorderStyle>(thisDeserializer.readInt32());
                }
                valueValueTempTmpBuf_BufU.bottom = valueValueTempTmpBuf_BufUBottomTempBuf;
                const auto valueValueTempTmpBuf_BufULeftTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_BorderStyle valueValueTempTmpBuf_BufULeftTempBuf = {};
                valueValueTempTmpBuf_BufULeftTempBuf.tag = valueValueTempTmpBuf_BufULeftTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBuf_BufULeftTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    valueValueTempTmpBuf_BufULeftTempBuf.value = static_cast<Ark_BorderStyle>(thisDeserializer.readInt32());
                }
                valueValueTempTmpBuf_BufU.left = valueValueTempTmpBuf_BufULeftTempBuf;
                valueValueTempTmpBuf_.value1 = valueValueTempTmpBuf_BufU;
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_BorderStyle_EdgeStyles>(valueValueTempTmpBuf_);
        }
        Opt_Union_BorderStyle_EdgeStyles valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetBorderStyle(node, static_cast<Opt_Union_BorderStyle_EdgeStyles*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetBorderStyle, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetBorderRadius(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Length_BorderRadiuses_LocalizedBorderRadiuses valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_Union_Length_BorderRadiuses_LocalizedBorderRadiuses valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                const Ark_Int8 valueValueTempTmpBuf_BufUUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufU = {};
                valueValueTempTmpBuf_BufU.selector = valueValueTempTmpBuf_BufUUnionSelector;
                if (valueValueTempTmpBuf_BufUUnionSelector == 0) {
                    valueValueTempTmpBuf_BufU.selector = 0;
                    valueValueTempTmpBuf_BufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 1) {
                    valueValueTempTmpBuf_BufU.selector = 1;
                    valueValueTempTmpBuf_BufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUUnionSelector == 2) {
                    valueValueTempTmpBuf_BufU.selector = 2;
                    valueValueTempTmpBuf_BufU.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufU has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_.value0 = static_cast<Ark_Length>(valueValueTempTmpBuf_BufU);
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                Ark_BorderRadiuses valueValueTempTmpBuf_BufU = {};
                const Ark_Int8 valueValueTempTmpBuf_BufUTopLeftTempBufUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufUTopLeftTempBuf = {};
                valueValueTempTmpBuf_BufUTopLeftTempBuf.selector = valueValueTempTmpBuf_BufUTopLeftTempBufUnionSelector;
                if (valueValueTempTmpBuf_BufUTopLeftTempBufUnionSelector == 0) {
                    valueValueTempTmpBuf_BufUTopLeftTempBuf.selector = 0;
                    valueValueTempTmpBuf_BufUTopLeftTempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUTopLeftTempBufUnionSelector == 1) {
                    valueValueTempTmpBuf_BufUTopLeftTempBuf.selector = 1;
                    valueValueTempTmpBuf_BufUTopLeftTempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUTopLeftTempBufUnionSelector == 2) {
                    valueValueTempTmpBuf_BufUTopLeftTempBuf.selector = 2;
                    valueValueTempTmpBuf_BufUTopLeftTempBuf.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUTopLeftTempBuf has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_BufU.topLeft = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUTopLeftTempBuf);
                const Ark_Int8 valueValueTempTmpBuf_BufUTopRightTempBufUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufUTopRightTempBuf = {};
                valueValueTempTmpBuf_BufUTopRightTempBuf.selector = valueValueTempTmpBuf_BufUTopRightTempBufUnionSelector;
                if (valueValueTempTmpBuf_BufUTopRightTempBufUnionSelector == 0) {
                    valueValueTempTmpBuf_BufUTopRightTempBuf.selector = 0;
                    valueValueTempTmpBuf_BufUTopRightTempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUTopRightTempBufUnionSelector == 1) {
                    valueValueTempTmpBuf_BufUTopRightTempBuf.selector = 1;
                    valueValueTempTmpBuf_BufUTopRightTempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUTopRightTempBufUnionSelector == 2) {
                    valueValueTempTmpBuf_BufUTopRightTempBuf.selector = 2;
                    valueValueTempTmpBuf_BufUTopRightTempBuf.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUTopRightTempBuf has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_BufU.topRight = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUTopRightTempBuf);
                const Ark_Int8 valueValueTempTmpBuf_BufUBottomLeftTempBufUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufUBottomLeftTempBuf = {};
                valueValueTempTmpBuf_BufUBottomLeftTempBuf.selector = valueValueTempTmpBuf_BufUBottomLeftTempBufUnionSelector;
                if (valueValueTempTmpBuf_BufUBottomLeftTempBufUnionSelector == 0) {
                    valueValueTempTmpBuf_BufUBottomLeftTempBuf.selector = 0;
                    valueValueTempTmpBuf_BufUBottomLeftTempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUBottomLeftTempBufUnionSelector == 1) {
                    valueValueTempTmpBuf_BufUBottomLeftTempBuf.selector = 1;
                    valueValueTempTmpBuf_BufUBottomLeftTempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUBottomLeftTempBufUnionSelector == 2) {
                    valueValueTempTmpBuf_BufUBottomLeftTempBuf.selector = 2;
                    valueValueTempTmpBuf_BufUBottomLeftTempBuf.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUBottomLeftTempBuf has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_BufU.bottomLeft = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUBottomLeftTempBuf);
                const Ark_Int8 valueValueTempTmpBuf_BufUBottomRightTempBufUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBuf_BufUBottomRightTempBuf = {};
                valueValueTempTmpBuf_BufUBottomRightTempBuf.selector = valueValueTempTmpBuf_BufUBottomRightTempBufUnionSelector;
                if (valueValueTempTmpBuf_BufUBottomRightTempBufUnionSelector == 0) {
                    valueValueTempTmpBuf_BufUBottomRightTempBuf.selector = 0;
                    valueValueTempTmpBuf_BufUBottomRightTempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBuf_BufUBottomRightTempBufUnionSelector == 1) {
                    valueValueTempTmpBuf_BufUBottomRightTempBuf.selector = 1;
                    valueValueTempTmpBuf_BufUBottomRightTempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBuf_BufUBottomRightTempBufUnionSelector == 2) {
                    valueValueTempTmpBuf_BufUBottomRightTempBuf.selector = 2;
                    valueValueTempTmpBuf_BufUBottomRightTempBuf.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_BufUBottomRightTempBuf has to be chosen through deserialisation.");
                }
                valueValueTempTmpBuf_BufU.bottomRight = static_cast<Ark_Length>(valueValueTempTmpBuf_BufUBottomRightTempBuf);
                valueValueTempTmpBuf_.value1 = valueValueTempTmpBuf_BufU;
            } else if (valueValueTempTmpBuf_UnionSelector == 2) {
                valueValueTempTmpBuf_.selector = 2;
                valueValueTempTmpBuf_.value2 = LocalizedBorderRadiuses_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_Length_BorderRadiuses_LocalizedBorderRadiuses>(valueValueTempTmpBuf_);
        }
        Opt_Union_Length_BorderRadiuses_LocalizedBorderRadiuses valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetBorderRadius(node, static_cast<Opt_Union_Length_BorderRadiuses_LocalizedBorderRadiuses*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetBorderRadius, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextFieldOps_textFieldOpsSetBackgroundColor(Ark_NativePointer node, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBuf_UnionSelector = thisDeserializer.readInt8();
            Ark_ResourceColor valueValueTempTmpBuf_ = {};
            valueValueTempTmpBuf_.selector = valueValueTempTmpBuf_UnionSelector;
            if (valueValueTempTmpBuf_UnionSelector == 0) {
                valueValueTempTmpBuf_.selector = 0;
                valueValueTempTmpBuf_.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
            } else if (valueValueTempTmpBuf_UnionSelector == 1) {
                valueValueTempTmpBuf_.selector = 1;
                valueValueTempTmpBuf_.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (valueValueTempTmpBuf_UnionSelector == 2) {
                valueValueTempTmpBuf_.selector = 2;
                valueValueTempTmpBuf_.value2 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBuf_UnionSelector == 3) {
                valueValueTempTmpBuf_.selector = 3;
                valueValueTempTmpBuf_.value3 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBuf_ has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf_);
        }
        Opt_ResourceColor valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextFieldOpsAccessor()->textFieldOpsSetBackgroundColor(node, static_cast<Opt_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_3(TextFieldOps_textFieldOpsSetBackgroundColor, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerDialog_show(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_TextPickerDialogOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = TextPickerDialogOptions_serializer::read(thisDeserializer);
        }
        Opt_TextPickerDialogOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetAccessors()->getTextPickerDialogAccessor()->show(static_cast<Opt_TextPickerDialogOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V2(TextPickerDialog_show, KSerializerBuffer, int32_t)
void impl_UIContextAtomicServiceBar_getBarRect() {
        GetAccessors()->getUIContextAtomicServiceBarAccessor()->getBarRect();
}
KOALA_INTEROP_DIRECT_V0(UIContextAtomicServiceBar_getBarRect)
KInteropReturnBuffer impl_GlobalScope_getRectangleById(const KStringPtr& id) {
        const auto &retValue = GetAccessors()->getGlobalScopeAccessor()->getRectangleById((const Ark_String*) (&id));
        SerializerBase _retSerializer {};
        ComponentInfo_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(GlobalScope_getRectangleById, KInteropReturnBuffer, KStringPtr)