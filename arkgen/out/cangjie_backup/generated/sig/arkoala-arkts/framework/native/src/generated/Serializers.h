
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

#ifndef _ARKOALA_SERIALIZERS_H
#define _ARKOALA_SERIALIZERS_H

#include "SerializerBase.h"
#include "DeserializerBase.h"
#include "callbacks.h"
#include "arkoala_api_generated.h"
#include <string>


template <>
Ark_RuntimeType runtimeType(const Ark_Int32& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Opt_Int32* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Int32& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_AdaptiveColor& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_AdaptiveColor value) {
    result->append("Ark_AdaptiveColor(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_AdaptiveColor* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_AdaptiveColor& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Axis& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_Axis value) {
    result->append("Ark_Axis(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_Axis* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Axis& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BaseShape& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BaseShape value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_BaseShape* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BaseShape& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BlankAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BlankAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_BlankAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BlankAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BlurStyle& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_BlurStyle value) {
    result->append("Ark_BlurStyle(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_BlurStyle* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BlurStyle& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BlurStyleActivePolicy& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_BlurStyleActivePolicy value) {
    result->append("Ark_BlurStyleActivePolicy(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_BlurStyleActivePolicy* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BlurStyleActivePolicy& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Boolean& value)
{
    return INTEROP_RUNTIME_BOOLEAN;
}
template <>
inline void WriteToString(std::string* result, const Opt_Boolean* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Boolean& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BooleanInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BooleanInterfaceDTS* value) {
    result->append("{");
    // Ark_Boolean valBool
    result->append(".valBool=");
    WriteToString(result, value->valBool);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_BooleanInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BooleanInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BorderStyle& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_BorderStyle value) {
    result->append("Ark_BorderStyle(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_BorderStyle* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BorderStyle& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Buffer& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Opt_Buffer* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Buffer& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BuilderNodeOps& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BuilderNodeOps value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_BuilderNodeOps* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BuilderNodeOps& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ButtonAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ButtonAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ButtonAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ButtonAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ButtonType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_ButtonType value) {
    result->append("Ark_ButtonType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_ButtonType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ButtonType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CheckboxAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_CheckboxAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_CheckboxAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CheckboxAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CheckBoxShape& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_CheckBoxShape value) {
    result->append("Ark_CheckBoxShape(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_CheckBoxShape* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CheckBoxShape& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Color& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_Color value) {
    result->append("Ark_Color(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_Color* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Color& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ColorFilter& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ColorFilter value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_ColorFilter* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ColorFilter& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ColoringStrategy& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_ColoringStrategy value) {
    result->append("Ark_ColoringStrategy(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_ColoringStrategy* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ColoringStrategy& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ColumnAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ColumnAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ColumnAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ColumnAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CommonShape& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_CommonShape value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_CommonShape* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CommonShape& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ContentType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_ContentType value) {
    result->append("Ark_ContentType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_ContentType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ContentType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Curve& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_Curve value) {
    result->append("Ark_Curve(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_Curve* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Curve& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CustomDialogController& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_CustomDialogController value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_CustomDialogController* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CustomDialogController& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
inline void WriteToString(std::string* result, const Opt_CustomObject* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CustomObject& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_DragPreviewMode& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_DragPreviewMode value) {
    result->append("Ark_DragPreviewMode(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_DragPreviewMode* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_DragPreviewMode& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_DrawContext& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_DrawContext* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_DrawContext* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_DrawContext& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_EmbeddedType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_EmbeddedType value) {
    result->append("Ark_EmbeddedType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_EmbeddedType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_EmbeddedType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_EnumDTS& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_EnumDTS value) {
    result->append("Ark_EnumDTS(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_EnumDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_EnumDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Float32& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Opt_Float32* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Float32& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_FontStyle& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_FontStyle value) {
    result->append("Ark_FontStyle(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_FontStyle* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_FontStyle& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_FontWeight& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_FontWeight value) {
    result->append("Ark_FontWeight(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_FontWeight* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_FontWeight& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_HorizontalAlign& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_HorizontalAlign value) {
    result->append("Ark_HorizontalAlign(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_HorizontalAlign* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_HorizontalAlign& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ICurve& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ICurve value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_ICurve* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ICurve& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_InputType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_InputType value) {
    result->append("Ark_InputType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_InputType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_InputType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Int64& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Opt_Int64* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Int64& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_LayoutSafeAreaEdge& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_LayoutSafeAreaEdge value) {
    result->append("Ark_LayoutSafeAreaEdge(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_LayoutSafeAreaEdge* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_LayoutSafeAreaEdge& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_LayoutSafeAreaType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_LayoutSafeAreaType value) {
    result->append("Ark_LayoutSafeAreaType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_LayoutSafeAreaType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_LayoutSafeAreaType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ListAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ListAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ListAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ListAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_NativePointer& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Opt_NativePointer* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_NativePointer& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_NavigationAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_NavigationAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_NavigationAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_NavigationAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_NavigationMode& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_NavigationMode value) {
    result->append("Ark_NavigationMode(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_NavigationMode* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_NavigationMode& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_NavigationTitleMode& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_NavigationTitleMode value) {
    result->append("Ark_NavigationTitleMode(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_NavigationTitleMode* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_NavigationTitleMode& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_NavPathStack& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_NavPathStack* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_NavPathStack* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_NavPathStack& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Number& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Opt_Number* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Number& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_NumberInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_NumberInterfaceDTS* value) {
    result->append("{");
    // Ark_Int32 valNumber
    result->append(".valNumber=");
    WriteToString(result, value->valNumber);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_NumberInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_NumberInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
inline void WriteToString(std::string* result, const Opt_Object* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Object& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Offset_componentutils& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Offset_componentutils* value) {
    result->append("{");
    // Ark_Int64 x
    result->append(".x=");
    WriteToString(result, value->x);
    // Ark_Int64 y
    result->append(", ");
    result->append(".y=");
    WriteToString(result, value->y);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Offset_componentutils* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Offset_componentutils& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_PerfMonitorActionType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_PerfMonitorActionType value) {
    result->append("Ark_PerfMonitorActionType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_PerfMonitorActionType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_PerfMonitorActionType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_PerfMonitorSourceType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_PerfMonitorSourceType value) {
    result->append("Ark_PerfMonitorSourceType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_PerfMonitorSourceType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_PerfMonitorSourceType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_RotateResult& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_RotateResult* value) {
    result->append("{");
    // Ark_Int64 x
    result->append(".x=");
    WriteToString(result, value->x);
    // Ark_Int64 y
    result->append(", ");
    result->append(".y=");
    WriteToString(result, value->y);
    // Ark_Int64 z
    result->append(", ");
    result->append(".z=");
    WriteToString(result, value->z);
    // Ark_Int64 centerX
    result->append(", ");
    result->append(".centerX=");
    WriteToString(result, value->centerX);
    // Ark_Int64 centerY
    result->append(", ");
    result->append(".centerY=");
    WriteToString(result, value->centerY);
    // Ark_Number angle
    result->append(", ");
    result->append(".angle=");
    WriteToString(result, &value->angle);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_RotateResult* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_RotateResult& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ScaleResult& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ScaleResult* value) {
    result->append("{");
    // Ark_Int64 x
    result->append(".x=");
    WriteToString(result, value->x);
    // Ark_Int64 y
    result->append(", ");
    result->append(".y=");
    WriteToString(result, value->y);
    // Ark_Int64 z
    result->append(", ");
    result->append(".z=");
    WriteToString(result, value->z);
    // Ark_Int64 centerX
    result->append(", ");
    result->append(".centerX=");
    WriteToString(result, value->centerX);
    // Ark_Int64 centerY
    result->append(", ");
    result->append(".centerY=");
    WriteToString(result, value->centerY);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ScaleResult* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ScaleResult& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Scene& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Scene value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_Scene* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Scene& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ShadowStyle& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_ShadowStyle value) {
    result->append("Ark_ShadowStyle(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_ShadowStyle* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ShadowStyle& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ShadowType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_ShadowType value) {
    result->append("Ark_ShadowType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_ShadowType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ShadowType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SheetMode& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_SheetMode value) {
    result->append("Ark_SheetMode(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_SheetMode* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SheetMode& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SheetSize& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_SheetSize value) {
    result->append("Ark_SheetSize(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_SheetSize* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SheetSize& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SheetType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_SheetType value) {
    result->append("Ark_SheetType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_SheetType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SheetType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SizeResult& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_SizeResult* value) {
    result->append("{");
    // Ark_Number width
    result->append(".width=");
    WriteToString(result, &value->width);
    // Ark_Number height
    result->append(", ");
    result->append(".height=");
    WriteToString(result, &value->height);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_SizeResult* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SizeResult& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SourceTool& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_SourceTool value) {
    result->append("Ark_SourceTool(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_SourceTool* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SourceTool& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SourceType& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_SourceType value) {
    result->append("Ark_SourceType(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_SourceType* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SourceType& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_String& value)
{
    return INTEROP_RUNTIME_STRING;
}
template <>
inline void WriteToString(std::string* result, const Opt_String* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_String& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_StringInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_StringInterfaceDTS* value) {
    result->append("{");
    // Ark_String valString
    result->append(".valString=");
    WriteToString(result, &value->valString);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_StringInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_StringInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TestAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TestAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TestAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TestAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextAlign& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextAlign value) {
    result->append("Ark_TextAlign(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextAlign* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextAlign& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextCase& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextCase value) {
    result->append("Ark_TextCase(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextCase* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextCase& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextHeightAdaptivePolicy& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextHeightAdaptivePolicy value) {
    result->append("Ark_TextHeightAdaptivePolicy(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextHeightAdaptivePolicy* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextHeightAdaptivePolicy& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextInputAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextInputAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextInputAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextInputAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextOverflow& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextOverflow value) {
    result->append("Ark_TextOverflow(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextOverflow* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextOverflow& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextPickerAttribute& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextPickerAttribute* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextPickerAttribute* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextPickerAttribute& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextPickerResult& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextPickerResult* value) {
    result->append("{");
    // Ark_String value
    result->append(".value=");
    WriteToString(result, &value->value);
    // Ark_Int32 index
    result->append(", ");
    result->append(".index=");
    WriteToString(result, value->index);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextPickerResult* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextPickerResult& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ThemeColorMode& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_ThemeColorMode value) {
    result->append("Ark_ThemeColorMode(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_ThemeColorMode* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ThemeColorMode& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TitleHeight& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_TitleHeight value) {
    result->append("Ark_TitleHeight(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_TitleHeight* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TitleHeight& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TranslateResult& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TranslateResult* value) {
    result->append("{");
    // Ark_Int64 x
    result->append(".x=");
    WriteToString(result, value->x);
    // Ark_Int64 y
    result->append(", ");
    result->append(".y=");
    WriteToString(result, value->y);
    // Ark_Int64 z
    result->append(", ");
    result->append(".z=");
    WriteToString(result, value->z);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TranslateResult* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TranslateResult& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CustomObject& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Tuple_Boolean_Number* value) {
    result->append("{");
    // Ark_Boolean value0
    result->append(".value0=");
    WriteToString(result, value->value0);
    // Ark_Number value1
    result->append(", ");
    result->append(".value1=");
    WriteToString(result, &value->value1);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Tuple_Boolean_Number* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CustomObject& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Union_Number_String& value)
{
    switch (value.selector) {
        case 0: return runtimeType(value.value0);
        case 1: return runtimeType(value.value1);
        default: INTEROP_FATAL("Bad selector in Ark_Union_Number_String: %d", value.selector);
    }
}
template <>
inline void WriteToString(std::string* result, const Ark_Union_Number_String* value) {
    result->append("{");
    result->append(".selector=");
    result->append(std::to_string(value->selector));
    result->append(", ");
    // Ark_Number
    if (value->selector == 0) {
        result->append(".value0=");
        WriteToString(result, &value->value0);
    }
    // Ark_String
    if (value->selector == 1) {
        result->append(".value1=");
        WriteToString(result, &value->value1);
    }
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Union_Number_String* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Union_Number_String& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_UnionInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_UnionInterfaceDTS* value) {
    result->append("{");
    // Ark_Number unionProp
    result->append(".unionProp=");
    WriteToString(result, &value->unionProp);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_UnionInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_UnionInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_UnionOptionalInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_UnionOptionalInterfaceDTS* value) {
    result->append("{");
    // Ark_String unionProp
    result->append(".unionProp=");
    WriteToString(result, &value->unionProp);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_UnionOptionalInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_UnionOptionalInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_VerticalAlign& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_VerticalAlign value) {
    result->append("Ark_VerticalAlign(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_VerticalAlign* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_VerticalAlign& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_WordBreak& value)
{
    return INTEROP_RUNTIME_NUMBER;
}
template <>
inline void WriteToString(std::string* result, const Ark_WordBreak value) {
    result->append("Ark_WordBreak(");
    WriteToString(result, (Ark_Int32) value);
    result->append(")");
}
template <>
inline void WriteToString(std::string* result, const Opt_WordBreak* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_WordBreak& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_WorkerEventListener& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_WorkerEventListener* value) {
    result->append("{");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_WorkerEventListener* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_WorkerEventListener& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Array_Boolean& value)
{
    return INTEROP_RUNTIME_OBJECT;
}

template <>
void WriteToString(std::string* result, const Ark_Boolean value);

template <>
inline void WriteToString(std::string* result, const Array_Boolean* value) {
    int32_t count = value->length;
    result->append("{.array=allocArray<Ark_Boolean, " + std::to_string(count) + ">({{");
    for (int i = 0; i < count; i++) {
        if (i > 0) result->append(", ");
        WriteToString(result, value->array[i]);
    }
    result->append("}})");
    result->append(", .length=");
    result->append(std::to_string(value->length));
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Array_Boolean* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Array_Boolean& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Array_BooleanInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}

template <>
void WriteToString(std::string* result, const Ark_BooleanInterfaceDTS* value);

template <>
inline void WriteToString(std::string* result, const Array_BooleanInterfaceDTS* value) {
    int32_t count = value->length;
    result->append("{.array=allocArray<Ark_BooleanInterfaceDTS, " + std::to_string(count) + ">({{");
    for (int i = 0; i < count; i++) {
        if (i > 0) result->append(", ");
        WriteToString(result, const_cast<const Ark_BooleanInterfaceDTS*>(&value->array[i]));
    }
    result->append("}})");
    result->append(", .length=");
    result->append(std::to_string(value->length));
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Array_BooleanInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Array_BooleanInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Array_Buffer& value)
{
    return INTEROP_RUNTIME_OBJECT;
}

template <>
void WriteToString(std::string* result, const Ark_Buffer* value);

template <>
inline void WriteToString(std::string* result, const Array_Buffer* value) {
    int32_t count = value->length;
    result->append("{.array=allocArray<Ark_Buffer, " + std::to_string(count) + ">({{");
    for (int i = 0; i < count; i++) {
        if (i > 0) result->append(", ");
        WriteToString(result, const_cast<const Ark_Buffer*>(&value->array[i]));
    }
    result->append("}})");
    result->append(", .length=");
    result->append(std::to_string(value->length));
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Array_Buffer* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Array_Buffer& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Array_CustomObject& value)
{
    return INTEROP_RUNTIME_OBJECT;
}

template <>
void WriteToString(std::string* result, const Ark_CustomObject* value);

template <>
inline void WriteToString(std::string* result, const Array_CustomObject* value) {
    int32_t count = value->length;
    result->append("{.array=allocArray<Ark_CustomObject, " + std::to_string(count) + ">({{");
    for (int i = 0; i < count; i++) {
        if (i > 0) result->append(", ");
        WriteToString(result, const_cast<const Ark_CustomObject*>(&value->array[i]));
    }
    result->append("}})");
    result->append(", .length=");
    result->append(std::to_string(value->length));
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Array_CustomObject* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Array_CustomObject& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Array_EnumDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}

template <>
void WriteToString(std::string* result, const Ark_EnumDTS value);

template <>
inline void WriteToString(std::string* result, const Array_EnumDTS* value) {
    int32_t count = value->length;
    result->append("{.array=allocArray<Ark_EnumDTS, " + std::to_string(count) + ">({{");
    for (int i = 0; i < count; i++) {
        if (i > 0) result->append(", ");
        WriteToString(result, value->array[i]);
    }
    result->append("}})");
    result->append(", .length=");
    result->append(std::to_string(value->length));
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Array_EnumDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Array_EnumDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Array_Number& value)
{
    return INTEROP_RUNTIME_OBJECT;
}

template <>
void WriteToString(std::string* result, const Ark_Number* value);

template <>
inline void WriteToString(std::string* result, const Array_Number* value) {
    int32_t count = value->length;
    result->append("{.array=allocArray<Ark_Number, " + std::to_string(count) + ">({{");
    for (int i = 0; i < count; i++) {
        if (i > 0) result->append(", ");
        WriteToString(result, const_cast<const Ark_Number*>(&value->array[i]));
    }
    result->append("}})");
    result->append(", .length=");
    result->append(std::to_string(value->length));
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Array_Number* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Array_Number& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Array_Object& value)
{
    return INTEROP_RUNTIME_OBJECT;
}

template <>
void WriteToString(std::string* result, const Ark_Object* value);

template <>
inline void WriteToString(std::string* result, const Array_Object* value) {
    int32_t count = value->length;
    result->append("{.array=allocArray<Ark_Object, " + std::to_string(count) + ">({{");
    for (int i = 0; i < count; i++) {
        if (i > 0) result->append(", ");
        WriteToString(result, const_cast<const Ark_Object*>(&value->array[i]));
    }
    result->append("}})");
    result->append(", .length=");
    result->append(std::to_string(value->length));
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Array_Object* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Array_Object& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Array_String& value)
{
    return INTEROP_RUNTIME_OBJECT;
}

template <>
void WriteToString(std::string* result, const Ark_String* value);

template <>
inline void WriteToString(std::string* result, const Array_String* value) {
    int32_t count = value->length;
    result->append("{.array=allocArray<Ark_String, " + std::to_string(count) + ">({{");
    for (int i = 0; i < count; i++) {
        if (i > 0) result->append(", ");
        WriteToString(result, const_cast<const Ark_String*>(&value->array[i]));
    }
    result->append("}})");
    result->append(", .length=");
    result->append(std::to_string(value->length));
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Array_String* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Array_String& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const AsyncCallback_image_PixelMap_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const AsyncCallback_image_PixelMap_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_AsyncCallback_image_PixelMap_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_AsyncCallback_image_PixelMap_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const ButtonModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const ButtonModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ButtonModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ButtonModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_Boolean_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_Boolean_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_Boolean_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_Boolean_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_ClickEvent_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_ClickEvent_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_ClickEvent_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_ClickEvent_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_CreateItem& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_CreateItem* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_CreateItem* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_CreateItem& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_DrawContext_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_DrawContext_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_DrawContext_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_DrawContext_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_Extender_OnFinish& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_Extender_OnFinish* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_Extender_OnFinish* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_Extender_OnFinish& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_Extender_OnProgress& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_Extender_OnProgress* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_Extender_OnProgress* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_Extender_OnProgress& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_NavigationTitleMode_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_NavigationTitleMode_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_NavigationTitleMode_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_NavigationTitleMode_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_Number_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_Number_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_Number_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_Number_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_onMeasureSize_SizeResult& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_onMeasureSize_SizeResult* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_onMeasureSize_SizeResult* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_onMeasureSize_SizeResult& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_onPlaceChildren_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_onPlaceChildren_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_onPlaceChildren_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_onPlaceChildren_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_Pointer_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_Pointer_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_Pointer_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_Pointer_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_RangeUpdate& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_RangeUpdate* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_RangeUpdate* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_RangeUpdate& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_ResourceStr_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_ResourceStr_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_ResourceStr_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_ResourceStr_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_SizeResult_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_SizeResult_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_SizeResult_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_SizeResult_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_StateStylesChange& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_StateStylesChange* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_StateStylesChange* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_StateStylesChange& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_String_Number_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_String_Number_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_String_Number_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_String_Number_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_String_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_String_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_String_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_String_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_TextPickerResult_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_TextPickerResult_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_TextPickerResult_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_TextPickerResult_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_Union_Number_Array_Number_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_Union_Number_Array_Number_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_Union_Number_Array_Number_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_Union_Number_Array_Number_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_Union_String_Array_String_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_Union_String_Array_String_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_Union_String_Array_String_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_Union_String_Array_String_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Callback_Void& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Callback_Void* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Callback_Void* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Callback_Void& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const CheckBoxModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const CheckBoxModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_CheckBoxModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CheckBoxModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const CustomNodeBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const CustomNodeBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_CustomNodeBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CustomNodeBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const DataPanelModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const DataPanelModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_DataPanelModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_DataPanelModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const GaugeModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const GaugeModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_GaugeModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_GaugeModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const LoadingProgressModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const LoadingProgressModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_LoadingProgressModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_LoadingProgressModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const MenuItemModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const MenuItemModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_MenuItemModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_MenuItemModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const NavExtender_OnUpdateStack& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const NavExtender_OnUpdateStack* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_NavExtender_OnUpdateStack* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_NavExtender_OnUpdateStack& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const ProgressModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const ProgressModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ProgressModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ProgressModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const RadioModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const RadioModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_RadioModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_RadioModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const RatingModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const RatingModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_RatingModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_RatingModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const RestrictedWorker_onerror_Callback& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const RestrictedWorker_onerror_Callback* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_RestrictedWorker_onerror_Callback* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_RestrictedWorker_onerror_Callback& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const RestrictedWorker_onexit_Callback& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const RestrictedWorker_onexit_Callback* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_RestrictedWorker_onexit_Callback* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_RestrictedWorker_onexit_Callback& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const RestrictedWorker_onmessage_Callback& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const RestrictedWorker_onmessage_Callback* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_RestrictedWorker_onmessage_Callback* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_RestrictedWorker_onmessage_Callback& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const SearchValueCallback& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const SearchValueCallback* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_SearchValueCallback* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SearchValueCallback& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const SliderModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const SliderModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_SliderModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SliderModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const TextClockModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const TextClockModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextClockModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextClockModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const TextFieldValueCallback& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const TextFieldValueCallback* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextFieldValueCallback* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextFieldValueCallback& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const TextPickerScrollStopCallback& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const TextPickerScrollStopCallback* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextPickerScrollStopCallback* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextPickerScrollStopCallback& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const TextTimerModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const TextTimerModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextTimerModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextTimerModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const ToggleModifierBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const ToggleModifierBuilder* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ToggleModifierBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ToggleModifierBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Type_TextPickerAttribute_onChange_callback& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Type_TextPickerAttribute_onChange_callback* value) {
    result->append("{");
    result->append(".resource=");
    WriteToString(result, &value->resource);
    result->append(", .call=0");
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Type_TextPickerAttribute_onChange_callback* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Type_TextPickerAttribute_onChange_callback& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_AnimateParam& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_AnimateParam* value) {
    result->append("{");
    // Ark_Number duration
    result->append(".duration=");
    WriteToString(result, &value->duration);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_AnimateParam* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_AnimateParam& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ArrayRefNumberInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ArrayRefNumberInterfaceDTS* value) {
    result->append("{");
    // Opt_Array_Number tuple
    result->append(".tuple=");
    WriteToString(result, &value->tuple);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ArrayRefNumberInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ArrayRefNumberInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ArrayRefTuplesInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ArrayRefTuplesInterfaceDTS* value) {
    result->append("{");
    // Opt_Array_CustomObject tuple
    result->append(".tuple=");
    WriteToString(result, &value->tuple);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ArrayRefTuplesInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ArrayRefTuplesInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BaseEvent& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BaseEvent value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_BaseEvent* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BaseEvent& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BlurOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BlurOptions* value) {
    result->append("{");
    // Opt_CustomObject grayscale
    result->append(".grayscale=");
    WriteToString(result, &value->grayscale);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_BlurOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BlurOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BuilderNodeOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BuilderNodeOptions* value) {
    result->append("{");
    // Opt_CustomObject selfIdealSize
    result->append(".selfIdealSize=");
    WriteToString(result, &value->selfIdealSize);
    // Ark_Int64 type
    result->append(", ");
    result->append(".type=");
    WriteToString(result, &value->type);
    // Ark_String surfaceId
    result->append(", ");
    result->append(".surfaceId=");
    WriteToString(result, &value->surfaceId);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_BuilderNodeOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BuilderNodeOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CheckBoxConfiguration& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_CheckBoxConfiguration* value) {
    result->append("{");
    // Ark_Boolean enabled
    result->append(".enabled=");
    WriteToString(result, value->enabled);
    // Ark_String name
    result->append(", ");
    result->append(".name=");
    WriteToString(result, &value->name);
    // Ark_Boolean selected
    result->append(", ");
    result->append(".selected=");
    WriteToString(result, value->selected);
    // Ark_Boolean triggerChange
    result->append(", ");
    result->append(".triggerChange=");
    WriteToString(result, value->triggerChange);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_CheckBoxConfiguration* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CheckBoxConfiguration& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CheckboxOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_CheckboxOptions* value) {
    result->append("{");
    // Ark_String name
    result->append(".name=");
    WriteToString(result, &value->name);
    // Ark_String group
    result->append(", ");
    result->append(".group=");
    WriteToString(result, &value->group);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_CheckboxOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CheckboxOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ClickEvent& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ClickEvent value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_ClickEvent* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ClickEvent& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CustomDialogBuildOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_CustomDialogBuildOptions* value) {
    result->append("{");
    // Opt_CustomDialogController controller
    result->append(".controller=");
    WriteToString(result, &value->controller);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_CustomDialogBuildOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CustomDialogBuildOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_DoubleAnimationParam& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_DoubleAnimationParam* value) {
    result->append("{");
    // Ark_String propertyName
    result->append(".propertyName=");
    WriteToString(result, &value->propertyName);
    // Opt_Float32 startValue
    result->append(", ");
    result->append(".startValue=");
    WriteToString(result, &value->startValue);
    // Opt_Float32 endValue
    result->append(", ");
    result->append(".endValue=");
    WriteToString(result, &value->endValue);
    // Opt_Int32 duration
    result->append(", ");
    result->append(".duration=");
    WriteToString(result, &value->duration);
    // Opt_Int32 delay
    result->append(", ");
    result->append(".delay=");
    WriteToString(result, &value->delay);
    // Opt_Curve curve
    result->append(", ");
    result->append(".curve=");
    WriteToString(result, &value->curve);
    // Opt_Callback_Extender_OnProgress onProgress
    result->append(", ");
    result->append(".onProgress=");
    WriteToString(result, &value->onProgress);
    // Opt_Callback_Extender_OnFinish onFinish
    result->append(", ");
    result->append(".onFinish=");
    WriteToString(result, &value->onFinish);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_DoubleAnimationParam* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_DoubleAnimationParam& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_DragInteractionOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_DragInteractionOptions* value) {
    result->append("{");
    // Ark_Boolean isMultiSelectionEnabled
    result->append(".isMultiSelectionEnabled=");
    WriteToString(result, &value->isMultiSelectionEnabled);
    // Ark_Boolean defaultAnimationBeforeLifting
    result->append(", ");
    result->append(".defaultAnimationBeforeLifting=");
    WriteToString(result, &value->defaultAnimationBeforeLifting);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_DragInteractionOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_DragInteractionOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_DragPreviewOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_DragPreviewOptions* value) {
    result->append("{");
    // Opt_DragPreviewMode mode
    result->append(".mode=");
    WriteToString(result, &value->mode);
    // Opt_CustomObject modifier
    result->append(", ");
    result->append(".modifier=");
    WriteToString(result, &value->modifier);
    // Ark_Boolean numberBadge
    result->append(", ");
    result->append(".numberBadge=");
    WriteToString(result, &value->numberBadge);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_DragPreviewOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_DragPreviewOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_DrawModifier& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_DrawModifier value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_DrawModifier* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_DrawModifier& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_EdgeStyles& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_EdgeStyles* value) {
    result->append("{");
    // Opt_BorderStyle top
    result->append(".top=");
    WriteToString(result, &value->top);
    // Opt_BorderStyle right
    result->append(", ");
    result->append(".right=");
    WriteToString(result, &value->right);
    // Opt_BorderStyle bottom
    result->append(", ");
    result->append(".bottom=");
    WriteToString(result, &value->bottom);
    // Opt_BorderStyle left
    result->append(", ");
    result->append(".left=");
    WriteToString(result, &value->left);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_EdgeStyles* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_EdgeStyles& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ErrorEvent& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ErrorEvent* value) {
    result->append("{");
    // Ark_String type
    result->append(".type=");
    WriteToString(result, &value->type);
    // Opt_Int64 timeStamp
    result->append(", ");
    result->append(".timeStamp=");
    WriteToString(result, &value->timeStamp);
    // Ark_String message
    result->append(", ");
    result->append(".message=");
    WriteToString(result, &value->message);
    // Ark_String filename
    result->append(", ");
    result->append(".filename=");
    WriteToString(result, &value->filename);
    // Ark_Number lineno
    result->append(", ");
    result->append(".lineno=");
    WriteToString(result, &value->lineno);
    // Ark_Number colno
    result->append(", ");
    result->append(".colno=");
    WriteToString(result, &value->colno);
    // Opt_Object error
    result->append(", ");
    result->append(".error=");
    WriteToString(result, &value->error);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ErrorEvent* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ErrorEvent& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Event& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Event* value) {
    result->append("{");
    // Ark_String type
    result->append(".type=");
    WriteToString(result, &value->type);
    // Opt_Int64 timeStamp
    result->append(", ");
    result->append(".timeStamp=");
    WriteToString(result, &value->timeStamp);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Event* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Event& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_LocalizedBorderRadiuses& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_LocalizedBorderRadiuses* value) {
    result->append("{");
    // Opt_CustomObject topStart
    result->append(".topStart=");
    WriteToString(result, &value->topStart);
    // Opt_CustomObject topEnd
    result->append(", ");
    result->append(".topEnd=");
    WriteToString(result, &value->topEnd);
    // Opt_CustomObject bottomStart
    result->append(", ");
    result->append(".bottomStart=");
    WriteToString(result, &value->bottomStart);
    // Opt_CustomObject bottomEnd
    result->append(", ");
    result->append(".bottomEnd=");
    WriteToString(result, &value->bottomEnd);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_LocalizedBorderRadiuses* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_LocalizedBorderRadiuses& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_LocalizedEdgeWidths& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_LocalizedEdgeWidths* value) {
    result->append("{");
    // Opt_CustomObject top
    result->append(".top=");
    WriteToString(result, &value->top);
    // Opt_CustomObject end
    result->append(", ");
    result->append(".end=");
    WriteToString(result, &value->end);
    // Opt_CustomObject bottom
    result->append(", ");
    result->append(".bottom=");
    WriteToString(result, &value->bottom);
    // Opt_CustomObject start
    result->append(", ");
    result->append(".start=");
    WriteToString(result, &value->start);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_LocalizedEdgeWidths* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_LocalizedEdgeWidths& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_LocalizedPadding& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_LocalizedPadding* value) {
    result->append("{");
    // Opt_CustomObject top
    result->append(".top=");
    WriteToString(result, &value->top);
    // Opt_CustomObject end
    result->append(", ");
    result->append(".end=");
    WriteToString(result, &value->end);
    // Opt_CustomObject bottom
    result->append(", ");
    result->append(".bottom=");
    WriteToString(result, &value->bottom);
    // Opt_CustomObject start
    result->append(", ");
    result->append(".start=");
    WriteToString(result, &value->start);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_LocalizedPadding* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_LocalizedPadding& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Matrix4Result& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Matrix4Result* value) {
    result->append("{");
    // Ark_Number value0
    result->append(".value0=");
    WriteToString(result, &value->value0);
    // Ark_Number value1
    result->append(", ");
    result->append(".value1=");
    WriteToString(result, &value->value1);
    // Ark_Number value2
    result->append(", ");
    result->append(".value2=");
    WriteToString(result, &value->value2);
    // Ark_Number value3
    result->append(", ");
    result->append(".value3=");
    WriteToString(result, &value->value3);
    // Ark_Number value4
    result->append(", ");
    result->append(".value4=");
    WriteToString(result, &value->value4);
    // Ark_Number value5
    result->append(", ");
    result->append(".value5=");
    WriteToString(result, &value->value5);
    // Ark_Number value6
    result->append(", ");
    result->append(".value6=");
    WriteToString(result, &value->value6);
    // Ark_Number value7
    result->append(", ");
    result->append(".value7=");
    WriteToString(result, &value->value7);
    // Ark_Number value8
    result->append(", ");
    result->append(".value8=");
    WriteToString(result, &value->value8);
    // Ark_Number value9
    result->append(", ");
    result->append(".value9=");
    WriteToString(result, &value->value9);
    // Ark_Number value10
    result->append(", ");
    result->append(".value10=");
    WriteToString(result, &value->value10);
    // Ark_Number value11
    result->append(", ");
    result->append(".value11=");
    WriteToString(result, &value->value11);
    // Ark_Number value12
    result->append(", ");
    result->append(".value12=");
    WriteToString(result, &value->value12);
    // Ark_Number value13
    result->append(", ");
    result->append(".value13=");
    WriteToString(result, &value->value13);
    // Ark_Number value14
    result->append(", ");
    result->append(".value14=");
    WriteToString(result, &value->value14);
    // Ark_Number value15
    result->append(", ");
    result->append(".value15=");
    WriteToString(result, &value->value15);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Matrix4Result* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Matrix4Result& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_MessageEvents& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_MessageEvents* value) {
    result->append("{");
    // Ark_String type
    result->append(".type=");
    WriteToString(result, &value->type);
    // Opt_Int64 timeStamp
    result->append(", ");
    result->append(".timeStamp=");
    WriteToString(result, &value->timeStamp);
    // Opt_CustomObject data
    result->append(", ");
    result->append(".data=");
    WriteToString(result, &value->data);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_MessageEvents* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_MessageEvents& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_PostMessageOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_PostMessageOptions* value) {
    result->append("{");
    // Opt_Array_Object transfer
    result->append(".transfer=");
    WriteToString(result, &value->transfer);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_PostMessageOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_PostMessageOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Resource& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Resource* value) {
    result->append("{");
    // Ark_String bundleName
    result->append(".bundleName=");
    WriteToString(result, &value->bundleName);
    // Ark_String moduleName
    result->append(", ");
    result->append(".moduleName=");
    WriteToString(result, &value->moduleName);
    // Ark_Int64 id
    result->append(", ");
    result->append(".id=");
    WriteToString(result, value->id);
    // Opt_Array_String params
    result->append(", ");
    result->append(".params=");
    WriteToString(result, &value->params);
    // Ark_Int64 type_
    result->append(", ");
    result->append(".type_=");
    WriteToString(result, &value->type_);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Resource* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Resource& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ResourceColor& value)
{
    switch (value.selector) {
        case 0: return runtimeType(value.value0);
        case 1: return runtimeType(value.value1);
        case 2: return runtimeType(value.value2);
        case 3: return runtimeType(value.value3);
        default: INTEROP_FATAL("Bad selector in Ark_ResourceColor: %d", value.selector);
    }
}
template <>
inline void WriteToString(std::string* result, const Ark_ResourceColor* value) {
    result->append("{");
    result->append(".selector=");
    result->append(std::to_string(value->selector));
    result->append(", ");
    // Ark_Color
    if (value->selector == 0) {
        result->append(".value0=");
        WriteToString(result, value->value0);
    }
    // Ark_Number
    if (value->selector == 1) {
        result->append(".value1=");
        WriteToString(result, &value->value1);
    }
    // Ark_String
    if (value->selector == 2) {
        result->append(".value2=");
        WriteToString(result, &value->value2);
    }
    // Ark_Resource
    if (value->selector == 3) {
        result->append(".value3=");
        WriteToString(result, &value->value3);
    }
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ResourceColor* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ResourceColor& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ResourceStr& value)
{
    switch (value.selector) {
        case 0: return runtimeType(value.value0);
        case 1: return runtimeType(value.value1);
        default: INTEROP_FATAL("Bad selector in Ark_ResourceStr: %d", value.selector);
    }
}
template <>
inline void WriteToString(std::string* result, const Ark_ResourceStr* value) {
    result->append("{");
    result->append(".selector=");
    result->append(std::to_string(value->selector));
    result->append(", ");
    // Ark_String
    if (value->selector == 0) {
        result->append(".value0=");
        WriteToString(result, &value->value0);
    }
    // Ark_Resource
    if (value->selector == 1) {
        result->append(".value1=");
        WriteToString(result, &value->value1);
    }
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ResourceStr* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ResourceStr& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SnapshotOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_SnapshotOptions* value) {
    result->append("{");
    // Ark_Number scale
    result->append(".scale=");
    WriteToString(result, &value->scale);
    // Ark_Boolean waitUntilRenderFinished
    result->append(", ");
    result->append(".waitUntilRenderFinished=");
    WriteToString(result, &value->waitUntilRenderFinished);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_SnapshotOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SnapshotOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextPickerOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextPickerOptions* value) {
    result->append("{");
    // Opt_Array_String range
    result->append(".range=");
    WriteToString(result, &value->range);
    // Ark_String value
    result->append(", ");
    result->append(".value=");
    WriteToString(result, &value->value);
    // Ark_Number selected
    result->append(", ");
    result->append(".selected=");
    WriteToString(result, &value->selected);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextPickerOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextPickerOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TranslateOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TranslateOptions* value) {
    result->append("{");
    // Ark_Int64 x
    result->append(".x=");
    WriteToString(result, &value->x);
    // Ark_Int64 y
    result->append(", ");
    result->append(".y=");
    WriteToString(result, &value->y);
    // Ark_Int64 z
    result->append(", ");
    result->append(".z=");
    WriteToString(result, &value->z);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TranslateOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TranslateOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TupleInterfaceDTS& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TupleInterfaceDTS* value) {
    result->append("{");
    // Opt_CustomObject tuple
    result->append(".tuple=");
    WriteToString(result, &value->tuple);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TupleInterfaceDTS* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TupleInterfaceDTS& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Union_Number_Array_Number& value)
{
    switch (value.selector) {
        case 0: return runtimeType(value.value0);
        case 1: return runtimeType(value.value1);
        default: INTEROP_FATAL("Bad selector in Ark_Union_Number_Array_Number: %d", value.selector);
    }
}
template <>
inline void WriteToString(std::string* result, const Ark_Union_Number_Array_Number* value) {
    result->append("{");
    result->append(".selector=");
    result->append(std::to_string(value->selector));
    result->append(", ");
    // Ark_Number
    if (value->selector == 0) {
        result->append(".value0=");
        WriteToString(result, &value->value0);
    }
    // Array_Number
    if (value->selector == 1) {
        result->append(".value1=");
        WriteToString(result, &value->value1);
    }
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Union_Number_Array_Number* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Union_Number_Array_Number& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Union_String_Array_String& value)
{
    switch (value.selector) {
        case 0: return runtimeType(value.value0);
        case 1: return runtimeType(value.value1);
        default: INTEROP_FATAL("Bad selector in Ark_Union_String_Array_String: %d", value.selector);
    }
}
template <>
inline void WriteToString(std::string* result, const Ark_Union_String_Array_String* value) {
    result->append("{");
    result->append(".selector=");
    result->append(std::to_string(value->selector));
    result->append(", ");
    // Ark_String
    if (value->selector == 0) {
        result->append(".value0=");
        WriteToString(result, &value->value0);
    }
    // Array_String
    if (value->selector == 1) {
        result->append(".value1=");
        WriteToString(result, &value->value1);
    }
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Union_String_Array_String* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Union_String_Array_String& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_WorkerOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_WorkerOptions* value) {
    result->append("{");
    // Ark_String type
    result->append(".type=");
    WriteToString(result, &value->type);
    // Ark_String name
    result->append(", ");
    result->append(".name=");
    WriteToString(result, &value->name);
    // Ark_Boolean shared
    result->append(", ");
    result->append(".shared=");
    WriteToString(result, &value->shared);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_WorkerOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_WorkerOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BackgroundBlurStyleOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BackgroundBlurStyleOptions* value) {
    result->append("{");
    // Opt_ThemeColorMode colorMode
    result->append(".colorMode=");
    WriteToString(result, &value->colorMode);
    // Opt_AdaptiveColor adaptiveColor
    result->append(", ");
    result->append(".adaptiveColor=");
    WriteToString(result, &value->adaptiveColor);
    // Ark_Number scale
    result->append(", ");
    result->append(".scale=");
    WriteToString(result, &value->scale);
    // Opt_BlurOptions blurOptions
    result->append(", ");
    result->append(".blurOptions=");
    WriteToString(result, &value->blurOptions);
    // Opt_BlurStyleActivePolicy policy
    result->append(", ");
    result->append(".policy=");
    WriteToString(result, &value->policy);
    // Ark_ResourceColor inactiveColor
    result->append(", ");
    result->append(".inactiveColor=");
    WriteToString(result, &value->inactiveColor);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_BackgroundBlurStyleOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BackgroundBlurStyleOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_ComponentInfo& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_ComponentInfo* value) {
    result->append("{");
    // Opt_CustomObject size
    result->append(".size=");
    WriteToString(result, &value->size);
    // Opt_Offset_componentutils localOffset
    result->append(", ");
    result->append(".localOffset=");
    WriteToString(result, &value->localOffset);
    // Opt_Offset_componentutils windowOffset
    result->append(", ");
    result->append(".windowOffset=");
    WriteToString(result, &value->windowOffset);
    // Opt_Offset_componentutils screenOffset
    result->append(", ");
    result->append(".screenOffset=");
    WriteToString(result, &value->screenOffset);
    // Opt_TranslateResult translate
    result->append(", ");
    result->append(".translate=");
    WriteToString(result, &value->translate);
    // Opt_ScaleResult scale
    result->append(", ");
    result->append(".scale=");
    WriteToString(result, &value->scale);
    // Opt_RotateResult rotate
    result->append(", ");
    result->append(".rotate=");
    WriteToString(result, &value->rotate);
    // Opt_Matrix4Result transform
    result->append(", ");
    result->append(".transform=");
    WriteToString(result, &value->transform);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_ComponentInfo* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_ComponentInfo& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CustomDialogControllerBuilder& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_CustomDialogControllerBuilder* value) {
    result->append("{");
    // Opt_CustomDialogBuildOptions buildOptions
    result->append(".buildOptions=");
    WriteToString(result, &value->buildOptions);
    // Opt_CustomNodeBuilder build
    result->append(", ");
    result->append(".build=");
    WriteToString(result, &value->build);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_CustomDialogControllerBuilder* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CustomDialogControllerBuilder& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Dimension& value)
{
    switch (value.selector) {
        case 0: return runtimeType(value.value0);
        case 1: return runtimeType(value.value1);
        case 2: return runtimeType(value.value2);
        default: INTEROP_FATAL("Bad selector in Ark_Dimension: %d", value.selector);
    }
}
template <>
inline void WriteToString(std::string* result, const Ark_Dimension* value) {
    result->append("{");
    result->append(".selector=");
    result->append(std::to_string(value->selector));
    result->append(", ");
    // Ark_String
    if (value->selector == 0) {
        result->append(".value0=");
        WriteToString(result, &value->value0);
    }
    // Ark_Number
    if (value->selector == 1) {
        result->append(".value1=");
        WriteToString(result, &value->value1);
    }
    // Ark_Resource
    if (value->selector == 2) {
        result->append(".value2=");
        WriteToString(result, &value->value2);
    }
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Dimension* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Dimension& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_EdgeColors& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_EdgeColors* value) {
    result->append("{");
    // Ark_ResourceColor top
    result->append(".top=");
    WriteToString(result, &value->top);
    // Ark_ResourceColor right
    result->append(", ");
    result->append(".right=");
    WriteToString(result, &value->right);
    // Ark_ResourceColor bottom
    result->append(", ");
    result->append(".bottom=");
    WriteToString(result, &value->bottom);
    // Ark_ResourceColor left
    result->append(", ");
    result->append(".left=");
    WriteToString(result, &value->left);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_EdgeColors* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_EdgeColors& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Length& value)
{
    switch (value.selector) {
        case 0: return runtimeType(value.value0);
        case 1: return runtimeType(value.value1);
        case 2: return runtimeType(value.value2);
        default: INTEROP_FATAL("Bad selector in Ark_Length: %d", value.selector);
    }
}
template <>
inline void WriteToString(std::string* result, const Ark_Length* value) {
    result->append("{");
    result->append(".selector=");
    result->append(std::to_string(value->selector));
    result->append(", ");
    // Ark_String
    if (value->selector == 0) {
        result->append(".value0=");
        WriteToString(result, &value->value0);
    }
    // Ark_Number
    if (value->selector == 1) {
        result->append(".value1=");
        WriteToString(result, &value->value1);
    }
    // Ark_Resource
    if (value->selector == 2) {
        result->append(".value2=");
        WriteToString(result, &value->value2);
    }
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Length* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Length& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Offset& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Offset* value) {
    result->append("{");
    // Ark_Length dx
    result->append(".dx=");
    WriteToString(result, &value->dx);
    // Ark_Length dy
    result->append(", ");
    result->append(".dy=");
    WriteToString(result, &value->dy);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Offset* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Offset& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_RestrictedWorker& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_RestrictedWorker value) {
    WriteToString(result, static_cast<InteropNativePointer>(value));
}
template <>
inline void WriteToString(std::string* result, const Opt_RestrictedWorker* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_RestrictedWorker& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SheetTitleOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_SheetTitleOptions* value) {
    result->append("{");
    // Opt_ResourceStr title
    result->append(".title=");
    WriteToString(result, &value->title);
    // Opt_ResourceStr subtitle
    result->append(", ");
    result->append(".subtitle=");
    WriteToString(result, &value->subtitle);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_SheetTitleOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SheetTitleOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextInputOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextInputOptions* value) {
    result->append("{");
    // Opt_ResourceStr placeholder
    result->append(".placeholder=");
    WriteToString(result, &value->placeholder);
    // Opt_ResourceStr text
    result->append(", ");
    result->append(".text=");
    WriteToString(result, &value->text);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextInputOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextInputOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_BorderRadiuses& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_BorderRadiuses* value) {
    result->append("{");
    // Ark_Length topLeft
    result->append(".topLeft=");
    WriteToString(result, &value->topLeft);
    // Ark_Length topRight
    result->append(", ");
    result->append(".topRight=");
    WriteToString(result, &value->topRight);
    // Ark_Length bottomLeft
    result->append(", ");
    result->append(".bottomLeft=");
    WriteToString(result, &value->bottomLeft);
    // Ark_Length bottomRight
    result->append(", ");
    result->append(".bottomRight=");
    WriteToString(result, &value->bottomRight);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_BorderRadiuses* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_BorderRadiuses& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_CustomDialogControllerOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_CustomDialogControllerOptions* value) {
    result->append("{");
    // Opt_CustomDialogControllerBuilder builder
    result->append(".builder=");
    WriteToString(result, &value->builder);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_CustomDialogControllerOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_CustomDialogControllerOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_DividerOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_DividerOptions* value) {
    result->append("{");
    // Opt_Dimension strokeWidth
    result->append(".strokeWidth=");
    WriteToString(result, &value->strokeWidth);
    // Ark_ResourceColor color
    result->append(", ");
    result->append(".color=");
    WriteToString(result, &value->color);
    // Opt_Dimension startMargin
    result->append(", ");
    result->append(".startMargin=");
    WriteToString(result, &value->startMargin);
    // Opt_Dimension endMargin
    result->append(", ");
    result->append(".endMargin=");
    WriteToString(result, &value->endMargin);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_DividerOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_DividerOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_EdgeWidths& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_EdgeWidths* value) {
    result->append("{");
    // Ark_Length top
    result->append(".top=");
    WriteToString(result, &value->top);
    // Ark_Length right
    result->append(", ");
    result->append(".right=");
    WriteToString(result, &value->right);
    // Ark_Length bottom
    result->append(", ");
    result->append(".bottom=");
    WriteToString(result, &value->bottom);
    // Ark_Length left
    result->append(", ");
    result->append(".left=");
    WriteToString(result, &value->left);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_EdgeWidths* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_EdgeWidths& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Font& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Font* value) {
    result->append("{");
    // Ark_Length size
    result->append(".size=");
    WriteToString(result, &value->size);
    // Opt_FontWeight weight
    result->append(", ");
    result->append(".weight=");
    WriteToString(result, &value->weight);
    // Ark_String family
    result->append(", ");
    result->append(".family=");
    WriteToString(result, &value->family);
    // Opt_FontStyle style
    result->append(", ");
    result->append(".style=");
    WriteToString(result, &value->style);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Font* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Font& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_MarkStyle& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_MarkStyle* value) {
    result->append("{");
    // Ark_ResourceColor strokeColor
    result->append(".strokeColor=");
    WriteToString(result, &value->strokeColor);
    // Ark_Length size
    result->append(", ");
    result->append(".size=");
    WriteToString(result, &value->size);
    // Ark_Length strokeWidth
    result->append(", ");
    result->append(".strokeWidth=");
    WriteToString(result, &value->strokeWidth);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_MarkStyle* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_MarkStyle& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Padding& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Padding* value) {
    result->append("{");
    // Ark_Length top
    result->append(".top=");
    WriteToString(result, &value->top);
    // Ark_Length right
    result->append(", ");
    result->append(".right=");
    WriteToString(result, &value->right);
    // Ark_Length bottom
    result->append(", ");
    result->append(".bottom=");
    WriteToString(result, &value->bottom);
    // Ark_Length left
    result->append(", ");
    result->append(".left=");
    WriteToString(result, &value->left);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Padding* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Padding& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Position& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Position* value) {
    result->append("{");
    // Ark_Length x
    result->append(".x=");
    WriteToString(result, &value->x);
    // Ark_Length y
    result->append(", ");
    result->append(".y=");
    WriteToString(result, &value->y);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Position* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Position& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_Rectangle& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_Rectangle* value) {
    result->append("{");
    // Ark_Length x
    result->append(".x=");
    WriteToString(result, &value->x);
    // Ark_Length y
    result->append(", ");
    result->append(".y=");
    WriteToString(result, &value->y);
    // Ark_Length width
    result->append(", ");
    result->append(".width=");
    WriteToString(result, &value->width);
    // Ark_Length height
    result->append(", ");
    result->append(".height=");
    WriteToString(result, &value->height);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_Rectangle* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_Rectangle& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SheetOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_SheetOptions* value) {
    result->append("{");
    // Ark_ResourceColor backgroundColor
    result->append(".backgroundColor=");
    WriteToString(result, &value->backgroundColor);
    // Opt_SheetSize height
    result->append(", ");
    result->append(".height=");
    WriteToString(result, &value->height);
    // Ark_Boolean dragBar
    result->append(", ");
    result->append(".dragBar=");
    WriteToString(result, &value->dragBar);
    // Ark_ResourceColor maskColor
    result->append(", ");
    result->append(".maskColor=");
    WriteToString(result, &value->maskColor);
    // Opt_BlurStyle blurStyle
    result->append(", ");
    result->append(".blurStyle=");
    WriteToString(result, &value->blurStyle);
    // Ark_Boolean showClose
    result->append(", ");
    result->append(".showClose=");
    WriteToString(result, &value->showClose);
    // Opt_SheetType preferType
    result->append(", ");
    result->append(".preferType=");
    WriteToString(result, &value->preferType);
    // Opt_SheetTitleOptions title
    result->append(", ");
    result->append(".title=");
    WriteToString(result, &value->title);
    // Ark_Boolean enableOutsideInteractive
    result->append(", ");
    result->append(".enableOutsideInteractive=");
    WriteToString(result, &value->enableOutsideInteractive);
    // Opt_BorderStyle borderStyle
    result->append(", ");
    result->append(".borderStyle=");
    WriteToString(result, &value->borderStyle);
    // Opt_SheetMode mode
    result->append(", ");
    result->append(".mode=");
    WriteToString(result, &value->mode);
    // Opt_CustomObject uiContext
    result->append(", ");
    result->append(".uiContext=");
    WriteToString(result, &value->uiContext);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_SheetOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SheetOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_SizeOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_SizeOptions* value) {
    result->append("{");
    // Ark_Length width
    result->append(".width=");
    WriteToString(result, &value->width);
    // Ark_Length height
    result->append(", ");
    result->append(".height=");
    WriteToString(result, &value->height);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_SizeOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_SizeOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_LabelStyle& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_LabelStyle* value) {
    result->append("{");
    // Opt_TextOverflow overflow
    result->append(".overflow=");
    WriteToString(result, &value->overflow);
    // Ark_Int32 maxLines
    result->append(", ");
    result->append(".maxLines=");
    WriteToString(result, &value->maxLines);
    // Ark_Number minFontSize
    result->append(", ");
    result->append(".minFontSize=");
    WriteToString(result, &value->minFontSize);
    // Ark_Number maxFontSize
    result->append(", ");
    result->append(".maxFontSize=");
    WriteToString(result, &value->maxFontSize);
    // Opt_TextHeightAdaptivePolicy heightAdaptivePolicy
    result->append(", ");
    result->append(".heightAdaptivePolicy=");
    WriteToString(result, &value->heightAdaptivePolicy);
    // Opt_Font font
    result->append(", ");
    result->append(".font=");
    WriteToString(result, &value->font);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_LabelStyle* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_LabelStyle& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}
template <>
Ark_RuntimeType runtimeType(const Ark_TextPickerDialogOptions& value)
{
    return INTEROP_RUNTIME_OBJECT;
}
template <>
inline void WriteToString(std::string* result, const Ark_TextPickerDialogOptions* value) {
    result->append("{");
    // Opt_Array_String range
    result->append(".range=");
    WriteToString(result, &value->range);
    // Ark_String value
    result->append(", ");
    result->append(".value=");
    WriteToString(result, &value->value);
    // Ark_Number selected
    result->append(", ");
    result->append(".selected=");
    WriteToString(result, &value->selected);
    // Ark_Number defaultPickerItemHeight
    result->append(", ");
    result->append(".defaultPickerItemHeight=");
    WriteToString(result, &value->defaultPickerItemHeight);
    // Ark_Boolean canLoop
    result->append(", ");
    result->append(".canLoop=");
    WriteToString(result, &value->canLoop);
    // Opt_CustomObject disappearTextStyle
    result->append(", ");
    result->append(".disappearTextStyle=");
    WriteToString(result, &value->disappearTextStyle);
    // Opt_CustomObject textStyle
    result->append(", ");
    result->append(".textStyle=");
    WriteToString(result, &value->textStyle);
    // Opt_CustomObject acceptButtonStyle
    result->append(", ");
    result->append(".acceptButtonStyle=");
    WriteToString(result, &value->acceptButtonStyle);
    // Opt_CustomObject cancelButtonStyle
    result->append(", ");
    result->append(".cancelButtonStyle=");
    WriteToString(result, &value->cancelButtonStyle);
    // Opt_CustomObject selectedTextStyle
    result->append(", ");
    result->append(".selectedTextStyle=");
    WriteToString(result, &value->selectedTextStyle);
    // Opt_Callback_TextPickerResult_Void onAccept
    result->append(", ");
    result->append(".onAccept=");
    WriteToString(result, &value->onAccept);
    // Opt_Callback_Void onCancel
    result->append(", ");
    result->append(".onCancel=");
    WriteToString(result, &value->onCancel);
    // Opt_Callback_TextPickerResult_Void onChange
    result->append(", ");
    result->append(".onChange=");
    WriteToString(result, &value->onChange);
    // Opt_Callback_TextPickerResult_Void onScrollStop
    result->append(", ");
    result->append(".onScrollStop=");
    WriteToString(result, &value->onScrollStop);
    // Opt_Rectangle maskRect
    result->append(", ");
    result->append(".maskRect=");
    WriteToString(result, &value->maskRect);
    // Opt_CustomObject alignment
    result->append(", ");
    result->append(".alignment=");
    WriteToString(result, &value->alignment);
    // Opt_Offset offset
    result->append(", ");
    result->append(".offset=");
    WriteToString(result, &value->offset);
    // Ark_ResourceColor backgroundColor
    result->append(", ");
    result->append(".backgroundColor=");
    WriteToString(result, &value->backgroundColor);
    // Opt_BlurStyle backgroundBlurStyle
    result->append(", ");
    result->append(".backgroundBlurStyle=");
    WriteToString(result, &value->backgroundBlurStyle);
    // Opt_Callback_Void onDidAppear
    result->append(", ");
    result->append(".onDidAppear=");
    WriteToString(result, &value->onDidAppear);
    // Opt_Callback_Void onDidDisappear
    result->append(", ");
    result->append(".onDidDisappear=");
    WriteToString(result, &value->onDidDisappear);
    // Opt_Callback_Void onWillAppear
    result->append(", ");
    result->append(".onWillAppear=");
    WriteToString(result, &value->onWillAppear);
    // Opt_Callback_Void onWillDisappear
    result->append(", ");
    result->append(".onWillDisappear=");
    WriteToString(result, &value->onWillDisappear);
    // Opt_CustomObject shadow
    result->append(", ");
    result->append(".shadow=");
    WriteToString(result, &value->shadow);
    // Ark_Boolean enableHoverMode
    result->append(", ");
    result->append(".enableHoverMode=");
    WriteToString(result, &value->enableHoverMode);
    // Opt_CustomObject hoverModeArea
    result->append(", ");
    result->append(".hoverModeArea=");
    WriteToString(result, &value->hoverModeArea);
    result->append("}");
}
template <>
inline void WriteToString(std::string* result, const Opt_TextPickerDialogOptions* value) {
    result->append("{.tag=");
    result->append(tagNameExact(reinterpret_cast<Ark_Tag>(value->tag)));
    result->append(", .value=");
    if (value->tag != INTEROP_TAG_UNDEFINED) {
        WriteToString(result, &value->value);
    } else {
        Ark_Undefined undefined = { 0 };
        WriteToString(result, undefined);
    }
    result->append("}");
}
template <>
Ark_RuntimeType runtimeType(const Opt_TextPickerDialogOptions& value)
{
    return (value.tag != INTEROP_TAG_UNDEFINED) ? (INTEROP_RUNTIME_OBJECT) : (INTEROP_RUNTIME_UNDEFINED);
}

class BaseShape_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_BaseShape value);
    static  Ark_BaseShape read(DeserializerBase& buffer);
};
class BooleanInterfaceDTS_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_BooleanInterfaceDTS value);
    static  Ark_BooleanInterfaceDTS read(DeserializerBase& buffer);
};
class BuilderNodeOps_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_BuilderNodeOps value);
    static  Ark_BuilderNodeOps read(DeserializerBase& buffer);
};
class ColorFilter_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_ColorFilter value);
    static  Ark_ColorFilter read(DeserializerBase& buffer);
};
class CommonShape_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_CommonShape value);
    static  Ark_CommonShape read(DeserializerBase& buffer);
};
class CustomDialogController_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_CustomDialogController value);
    static  Ark_CustomDialogController read(DeserializerBase& buffer);
};
class DrawContext_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_DrawContext value);
    static  Ark_DrawContext read(DeserializerBase& buffer);
};
class ICurve_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_ICurve value);
    static  Ark_ICurve read(DeserializerBase& buffer);
};
class NavPathStack_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_NavPathStack value);
    static  Ark_NavPathStack read(DeserializerBase& buffer);
};
class NumberInterfaceDTS_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_NumberInterfaceDTS value);
    static  Ark_NumberInterfaceDTS read(DeserializerBase& buffer);
};
class Offset_componentutils_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_Offset_componentutils value);
    static  Ark_Offset_componentutils read(DeserializerBase& buffer);
};
class RotateResult_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_RotateResult value);
    static  Ark_RotateResult read(DeserializerBase& buffer);
};
class ScaleResult_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_ScaleResult value);
    static  Ark_ScaleResult read(DeserializerBase& buffer);
};
class Scene_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_Scene value);
    static  Ark_Scene read(DeserializerBase& buffer);
};
class SizeResult_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_SizeResult value);
    static  Ark_SizeResult read(DeserializerBase& buffer);
};
class StringInterfaceDTS_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_StringInterfaceDTS value);
    static  Ark_StringInterfaceDTS read(DeserializerBase& buffer);
};
class TextPickerResult_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_TextPickerResult value);
    static  Ark_TextPickerResult read(DeserializerBase& buffer);
};
class TranslateResult_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_TranslateResult value);
    static  Ark_TranslateResult read(DeserializerBase& buffer);
};
class UnionInterfaceDTS_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_UnionInterfaceDTS value);
    static  Ark_UnionInterfaceDTS read(DeserializerBase& buffer);
};
class UnionOptionalInterfaceDTS_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_UnionOptionalInterfaceDTS value);
    static  Ark_UnionOptionalInterfaceDTS read(DeserializerBase& buffer);
};
class WorkerEventListener_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_WorkerEventListener value);
    static  Ark_WorkerEventListener read(DeserializerBase& buffer);
};
class AnimateParam_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_AnimateParam value);
    static  Ark_AnimateParam read(DeserializerBase& buffer);
};
class ArrayRefNumberInterfaceDTS_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_ArrayRefNumberInterfaceDTS value);
    static  Ark_ArrayRefNumberInterfaceDTS read(DeserializerBase& buffer);
};
class ArrayRefTuplesInterfaceDTS_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_ArrayRefTuplesInterfaceDTS value);
    static  Ark_ArrayRefTuplesInterfaceDTS read(DeserializerBase& buffer);
};
class BaseEvent_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_BaseEvent value);
    static  Ark_BaseEvent read(DeserializerBase& buffer);
};
class BlurOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_BlurOptions value);
    static  Ark_BlurOptions read(DeserializerBase& buffer);
};
class BuilderNodeOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_BuilderNodeOptions value);
    static  Ark_BuilderNodeOptions read(DeserializerBase& buffer);
};
class CheckBoxConfiguration_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_CheckBoxConfiguration value);
    static  Ark_CheckBoxConfiguration read(DeserializerBase& buffer);
};
class CheckboxOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_CheckboxOptions value);
    static  Ark_CheckboxOptions read(DeserializerBase& buffer);
};
class ClickEvent_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_ClickEvent value);
    static  Ark_ClickEvent read(DeserializerBase& buffer);
};
class CustomDialogBuildOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_CustomDialogBuildOptions value);
    static  Ark_CustomDialogBuildOptions read(DeserializerBase& buffer);
};
class DoubleAnimationParam_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_DoubleAnimationParam value);
    static  Ark_DoubleAnimationParam read(DeserializerBase& buffer);
};
class DragInteractionOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_DragInteractionOptions value);
    static  Ark_DragInteractionOptions read(DeserializerBase& buffer);
};
class DragPreviewOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_DragPreviewOptions value);
    static  Ark_DragPreviewOptions read(DeserializerBase& buffer);
};
class DrawModifier_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_DrawModifier value);
    static  Ark_DrawModifier read(DeserializerBase& buffer);
};
class ErrorEvent_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_ErrorEvent value);
    static  Ark_ErrorEvent read(DeserializerBase& buffer);
};
class Event_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_Event value);
    static  Ark_Event read(DeserializerBase& buffer);
};
class LocalizedBorderRadiuses_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_LocalizedBorderRadiuses value);
    static  Ark_LocalizedBorderRadiuses read(DeserializerBase& buffer);
};
class LocalizedEdgeWidths_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_LocalizedEdgeWidths value);
    static  Ark_LocalizedEdgeWidths read(DeserializerBase& buffer);
};
class LocalizedPadding_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_LocalizedPadding value);
    static  Ark_LocalizedPadding read(DeserializerBase& buffer);
};
class MessageEvents_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_MessageEvents value);
    static  Ark_MessageEvents read(DeserializerBase& buffer);
};
class PostMessageOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_PostMessageOptions value);
    static  Ark_PostMessageOptions read(DeserializerBase& buffer);
};
class Resource_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_Resource value);
    static  Ark_Resource read(DeserializerBase& buffer);
};
class SnapshotOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_SnapshotOptions value);
    static  Ark_SnapshotOptions read(DeserializerBase& buffer);
};
class TextPickerOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_TextPickerOptions value);
    static  Ark_TextPickerOptions read(DeserializerBase& buffer);
};
class TranslateOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_TranslateOptions value);
    static  Ark_TranslateOptions read(DeserializerBase& buffer);
};
class TupleInterfaceDTS_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_TupleInterfaceDTS value);
    static  Ark_TupleInterfaceDTS read(DeserializerBase& buffer);
};
class WorkerOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_WorkerOptions value);
    static  Ark_WorkerOptions read(DeserializerBase& buffer);
};
class BackgroundBlurStyleOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_BackgroundBlurStyleOptions value);
    static  Ark_BackgroundBlurStyleOptions read(DeserializerBase& buffer);
};
class ComponentInfo_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_ComponentInfo value);
    static  Ark_ComponentInfo read(DeserializerBase& buffer);
};
class CustomDialogControllerBuilder_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_CustomDialogControllerBuilder value);
    static  Ark_CustomDialogControllerBuilder read(DeserializerBase& buffer);
};
class RestrictedWorker_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_RestrictedWorker value);
    static  Ark_RestrictedWorker read(DeserializerBase& buffer);
};
class SheetTitleOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_SheetTitleOptions value);
    static  Ark_SheetTitleOptions read(DeserializerBase& buffer);
};
class TextInputOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_TextInputOptions value);
    static  Ark_TextInputOptions read(DeserializerBase& buffer);
};
class CustomDialogControllerOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_CustomDialogControllerOptions value);
    static  Ark_CustomDialogControllerOptions read(DeserializerBase& buffer);
};
class DividerOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_DividerOptions value);
    static  Ark_DividerOptions read(DeserializerBase& buffer);
};
class Font_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_Font value);
    static  Ark_Font read(DeserializerBase& buffer);
};
class MarkStyle_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_MarkStyle value);
    static  Ark_MarkStyle read(DeserializerBase& buffer);
};
class Position_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_Position value);
    static  Ark_Position read(DeserializerBase& buffer);
};
class Rectangle_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_Rectangle value);
    static  Ark_Rectangle read(DeserializerBase& buffer);
};
class SheetOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_SheetOptions value);
    static  Ark_SheetOptions read(DeserializerBase& buffer);
};
class SizeOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_SizeOptions value);
    static  Ark_SizeOptions read(DeserializerBase& buffer);
};
class LabelStyle_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_LabelStyle value);
    static  Ark_LabelStyle read(DeserializerBase& buffer);
};
class TextPickerDialogOptions_serializer {
    public:
    static  void write(SerializerBase& buffer, Ark_TextPickerDialogOptions value);
    static  Ark_TextPickerDialogOptions read(DeserializerBase& buffer);
};
void BaseShape_serializer::write(SerializerBase& buffer, Ark_BaseShape value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_BaseShape BaseShape_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_BaseShape>(ptr);
}
void BooleanInterfaceDTS_serializer::write(SerializerBase& buffer, Ark_BooleanInterfaceDTS value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForValBool = value.valBool;
    valueSerializer.writeBoolean(valueHolderForValBool);
}
Ark_BooleanInterfaceDTS BooleanInterfaceDTS_serializer::read(DeserializerBase& buffer)
{
    Ark_BooleanInterfaceDTS value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.valBool = valueDeserializer.readBoolean();
    return value;
}
void BuilderNodeOps_serializer::write(SerializerBase& buffer, Ark_BuilderNodeOps value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_BuilderNodeOps BuilderNodeOps_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_BuilderNodeOps>(ptr);
}
void ColorFilter_serializer::write(SerializerBase& buffer, Ark_ColorFilter value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_ColorFilter ColorFilter_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_ColorFilter>(ptr);
}
void CommonShape_serializer::write(SerializerBase& buffer, Ark_CommonShape value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_CommonShape CommonShape_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_CommonShape>(ptr);
}
void CustomDialogController_serializer::write(SerializerBase& buffer, Ark_CustomDialogController value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_CustomDialogController CustomDialogController_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_CustomDialogController>(ptr);
}
void DrawContext_serializer::write(SerializerBase& buffer, Ark_DrawContext value)
{
}
Ark_DrawContext DrawContext_serializer::read(DeserializerBase& buffer)
{
    Ark_DrawContext value = {};
    return value;
}
void ICurve_serializer::write(SerializerBase& buffer, Ark_ICurve value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_ICurve ICurve_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_ICurve>(ptr);
}
void NavPathStack_serializer::write(SerializerBase& buffer, Ark_NavPathStack value)
{
}
Ark_NavPathStack NavPathStack_serializer::read(DeserializerBase& buffer)
{
    Ark_NavPathStack value = {};
    return value;
}
void NumberInterfaceDTS_serializer::write(SerializerBase& buffer, Ark_NumberInterfaceDTS value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForValNumber = value.valNumber;
    valueSerializer.writeInt32(valueHolderForValNumber);
}
Ark_NumberInterfaceDTS NumberInterfaceDTS_serializer::read(DeserializerBase& buffer)
{
    Ark_NumberInterfaceDTS value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.valNumber = valueDeserializer.readInt32();
    return value;
}
void Offset_componentutils_serializer::write(SerializerBase& buffer, Ark_Offset_componentutils value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForX = value.x;
    valueSerializer.writeInt64(valueHolderForX);
    const auto valueHolderForY = value.y;
    valueSerializer.writeInt64(valueHolderForY);
}
Ark_Offset_componentutils Offset_componentutils_serializer::read(DeserializerBase& buffer)
{
    Ark_Offset_componentutils value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.x = valueDeserializer.readInt64();
    value.y = valueDeserializer.readInt64();
    return value;
}
void RotateResult_serializer::write(SerializerBase& buffer, Ark_RotateResult value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForX = value.x;
    valueSerializer.writeInt64(valueHolderForX);
    const auto valueHolderForY = value.y;
    valueSerializer.writeInt64(valueHolderForY);
    const auto valueHolderForZ = value.z;
    valueSerializer.writeInt64(valueHolderForZ);
    const auto valueHolderForCenterX = value.centerX;
    valueSerializer.writeInt64(valueHolderForCenterX);
    const auto valueHolderForCenterY = value.centerY;
    valueSerializer.writeInt64(valueHolderForCenterY);
    const auto valueHolderForAngle = value.angle;
    valueSerializer.writeNumber(valueHolderForAngle);
}
Ark_RotateResult RotateResult_serializer::read(DeserializerBase& buffer)
{
    Ark_RotateResult value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.x = valueDeserializer.readInt64();
    value.y = valueDeserializer.readInt64();
    value.z = valueDeserializer.readInt64();
    value.centerX = valueDeserializer.readInt64();
    value.centerY = valueDeserializer.readInt64();
    value.angle = static_cast<Ark_Number>(valueDeserializer.readNumber());
    return value;
}
void ScaleResult_serializer::write(SerializerBase& buffer, Ark_ScaleResult value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForX = value.x;
    valueSerializer.writeInt64(valueHolderForX);
    const auto valueHolderForY = value.y;
    valueSerializer.writeInt64(valueHolderForY);
    const auto valueHolderForZ = value.z;
    valueSerializer.writeInt64(valueHolderForZ);
    const auto valueHolderForCenterX = value.centerX;
    valueSerializer.writeInt64(valueHolderForCenterX);
    const auto valueHolderForCenterY = value.centerY;
    valueSerializer.writeInt64(valueHolderForCenterY);
}
Ark_ScaleResult ScaleResult_serializer::read(DeserializerBase& buffer)
{
    Ark_ScaleResult value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.x = valueDeserializer.readInt64();
    value.y = valueDeserializer.readInt64();
    value.z = valueDeserializer.readInt64();
    value.centerX = valueDeserializer.readInt64();
    value.centerY = valueDeserializer.readInt64();
    return value;
}
void Scene_serializer::write(SerializerBase& buffer, Ark_Scene value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_Scene Scene_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_Scene>(ptr);
}
void SizeResult_serializer::write(SerializerBase& buffer, Ark_SizeResult value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForWidth = value.width;
    valueSerializer.writeNumber(valueHolderForWidth);
    const auto valueHolderForHeight = value.height;
    valueSerializer.writeNumber(valueHolderForHeight);
}
Ark_SizeResult SizeResult_serializer::read(DeserializerBase& buffer)
{
    Ark_SizeResult value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.width = static_cast<Ark_Number>(valueDeserializer.readNumber());
    value.height = static_cast<Ark_Number>(valueDeserializer.readNumber());
    return value;
}
void StringInterfaceDTS_serializer::write(SerializerBase& buffer, Ark_StringInterfaceDTS value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForValString = value.valString;
    valueSerializer.writeString(valueHolderForValString);
}
Ark_StringInterfaceDTS StringInterfaceDTS_serializer::read(DeserializerBase& buffer)
{
    Ark_StringInterfaceDTS value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.valString = static_cast<Ark_String>(valueDeserializer.readString());
    return value;
}
void TextPickerResult_serializer::write(SerializerBase& buffer, Ark_TextPickerResult value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForValue = value.value;
    valueSerializer.writeString(valueHolderForValue);
    const auto valueHolderForIndex = value.index;
    valueSerializer.writeInt32(valueHolderForIndex);
}
Ark_TextPickerResult TextPickerResult_serializer::read(DeserializerBase& buffer)
{
    Ark_TextPickerResult value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.value = static_cast<Ark_String>(valueDeserializer.readString());
    value.index = valueDeserializer.readInt32();
    return value;
}
void TranslateResult_serializer::write(SerializerBase& buffer, Ark_TranslateResult value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForX = value.x;
    valueSerializer.writeInt64(valueHolderForX);
    const auto valueHolderForY = value.y;
    valueSerializer.writeInt64(valueHolderForY);
    const auto valueHolderForZ = value.z;
    valueSerializer.writeInt64(valueHolderForZ);
}
Ark_TranslateResult TranslateResult_serializer::read(DeserializerBase& buffer)
{
    Ark_TranslateResult value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.x = valueDeserializer.readInt64();
    value.y = valueDeserializer.readInt64();
    value.z = valueDeserializer.readInt64();
    return value;
}
void UnionInterfaceDTS_serializer::write(SerializerBase& buffer, Ark_UnionInterfaceDTS value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForUnionProp = value.unionProp;
    valueSerializer.writeNumber(valueHolderForUnionProp);
}
Ark_UnionInterfaceDTS UnionInterfaceDTS_serializer::read(DeserializerBase& buffer)
{
    Ark_UnionInterfaceDTS value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.unionProp = static_cast<Ark_Number>(valueDeserializer.readNumber());
    return value;
}
void UnionOptionalInterfaceDTS_serializer::write(SerializerBase& buffer, Ark_UnionOptionalInterfaceDTS value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForUnionProp = value.unionProp;
    valueSerializer.writeString(valueHolderForUnionProp);
}
Ark_UnionOptionalInterfaceDTS UnionOptionalInterfaceDTS_serializer::read(DeserializerBase& buffer)
{
    Ark_UnionOptionalInterfaceDTS value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.unionProp = static_cast<Ark_String>(valueDeserializer.readString());
    return value;
}
void WorkerEventListener_serializer::write(SerializerBase& buffer, Ark_WorkerEventListener value)
{
}
Ark_WorkerEventListener WorkerEventListener_serializer::read(DeserializerBase& buffer)
{
    Ark_WorkerEventListener value = {};
    return value;
}
void AnimateParam_serializer::write(SerializerBase& buffer, Ark_AnimateParam value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForDuration = value.duration;
    if (runtimeType(valueHolderForDuration) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForDurationTmpValue = valueHolderForDuration.value;
        valueSerializer.writeNumber(valueHolderForDurationTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_AnimateParam AnimateParam_serializer::read(DeserializerBase& buffer)
{
    Ark_AnimateParam value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto durationTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Number durationTmpBuf = {};
    durationTmpBuf.tag = durationTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((durationTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        durationTmpBuf.value = static_cast<Ark_Number>(valueDeserializer.readNumber());
    }
    value.duration = durationTmpBuf;
    return value;
}
void ArrayRefNumberInterfaceDTS_serializer::write(SerializerBase& buffer, Ark_ArrayRefNumberInterfaceDTS value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForTuple = value.tuple;
    if (runtimeType(valueHolderForTuple) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTupleTmpValue = valueHolderForTuple.value;
        valueSerializer.writeInt32(valueHolderForTupleTmpValue.length);
        for (int valueHolderForTupleTmpValueCounterI = 0; valueHolderForTupleTmpValueCounterI < valueHolderForTupleTmpValue.length; valueHolderForTupleTmpValueCounterI++) {
            const Ark_Number valueHolderForTupleTmpValueTmpElement = valueHolderForTupleTmpValue.array[valueHolderForTupleTmpValueCounterI];
            valueSerializer.writeNumber(valueHolderForTupleTmpValueTmpElement);
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_ArrayRefNumberInterfaceDTS ArrayRefNumberInterfaceDTS_serializer::read(DeserializerBase& buffer)
{
    Ark_ArrayRefNumberInterfaceDTS value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto tupleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Array_Number tupleTmpBuf = {};
    tupleTmpBuf.tag = tupleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((tupleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int32 tupleTmpBuf_Length = valueDeserializer.readInt32();
        Array_Number tupleTmpBuf_ = {};
        valueDeserializer.resizeArray<std::decay<decltype(tupleTmpBuf_)>::type,
        std::decay<decltype(*tupleTmpBuf_.array)>::type>(&tupleTmpBuf_, tupleTmpBuf_Length);
        for (int tupleTmpBuf_BufCounterI = 0; tupleTmpBuf_BufCounterI < tupleTmpBuf_Length; tupleTmpBuf_BufCounterI++) {
            tupleTmpBuf_.array[tupleTmpBuf_BufCounterI] = static_cast<Ark_Number>(valueDeserializer.readNumber());
        }
        tupleTmpBuf.value = tupleTmpBuf_;
    }
    value.tuple = tupleTmpBuf;
    return value;
}
void ArrayRefTuplesInterfaceDTS_serializer::write(SerializerBase& buffer, Ark_ArrayRefTuplesInterfaceDTS value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForTuple = value.tuple;
    if (runtimeType(valueHolderForTuple) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTupleTmpValue = valueHolderForTuple.value;
        valueSerializer.writeInt32(valueHolderForTupleTmpValue.length);
        for (int valueHolderForTupleTmpValueCounterI = 0; valueHolderForTupleTmpValueCounterI < valueHolderForTupleTmpValue.length; valueHolderForTupleTmpValueCounterI++) {
            const Ark_CustomObject valueHolderForTupleTmpValueTmpElement = valueHolderForTupleTmpValue.array[valueHolderForTupleTmpValueCounterI];
            valueSerializer.writeCustomObject("(Bool, Float64)", valueHolderForTupleTmpValueTmpElement);
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_ArrayRefTuplesInterfaceDTS ArrayRefTuplesInterfaceDTS_serializer::read(DeserializerBase& buffer)
{
    Ark_ArrayRefTuplesInterfaceDTS value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto tupleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Array_CustomObject tupleTmpBuf = {};
    tupleTmpBuf.tag = tupleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((tupleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int32 tupleTmpBuf_Length = valueDeserializer.readInt32();
        Array_CustomObject tupleTmpBuf_ = {};
        valueDeserializer.resizeArray<std::decay<decltype(tupleTmpBuf_)>::type,
        std::decay<decltype(*tupleTmpBuf_.array)>::type>(&tupleTmpBuf_, tupleTmpBuf_Length);
        for (int tupleTmpBuf_BufCounterI = 0; tupleTmpBuf_BufCounterI < tupleTmpBuf_Length; tupleTmpBuf_BufCounterI++) {
            tupleTmpBuf_.array[tupleTmpBuf_BufCounterI] = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("(Bool, Float64)"));
        }
        tupleTmpBuf.value = tupleTmpBuf_;
    }
    value.tuple = tupleTmpBuf;
    return value;
}
void BaseEvent_serializer::write(SerializerBase& buffer, Ark_BaseEvent value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_BaseEvent BaseEvent_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_BaseEvent>(ptr);
}
void BlurOptions_serializer::write(SerializerBase& buffer, Ark_BlurOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForGrayscale = value.grayscale;
    if (runtimeType(valueHolderForGrayscale) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForGrayscaleTmpValue = valueHolderForGrayscale.value;
        valueSerializer.writeCustomObject("(Float64, Float64)", valueHolderForGrayscaleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_BlurOptions BlurOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_BlurOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto grayscaleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject grayscaleTmpBuf = {};
    grayscaleTmpBuf.tag = grayscaleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((grayscaleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        grayscaleTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("(Float64, Float64)"));
    }
    value.grayscale = grayscaleTmpBuf;
    return value;
}
void BuilderNodeOptions_serializer::write(SerializerBase& buffer, Ark_BuilderNodeOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForSelfIdealSize = value.selfIdealSize;
    if (runtimeType(valueHolderForSelfIdealSize) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSelfIdealSizeTmpValue = valueHolderForSelfIdealSize.value;
        valueSerializer.writeCustomObject("Any", valueHolderForSelfIdealSizeTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForType = value.type;
    if (runtimeType(valueHolderForType) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTypeTmpValue = valueHolderForType.value;
        valueSerializer.writeInt64(valueHolderForTypeTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForSurfaceId = value.surfaceId;
    if (runtimeType(valueHolderForSurfaceId) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSurfaceIdTmpValue = valueHolderForSurfaceId.value;
        valueSerializer.writeString(valueHolderForSurfaceIdTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_BuilderNodeOptions BuilderNodeOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_BuilderNodeOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto selfIdealSizeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject selfIdealSizeTmpBuf = {};
    selfIdealSizeTmpBuf.tag = selfIdealSizeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((selfIdealSizeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        selfIdealSizeTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.selfIdealSize = selfIdealSizeTmpBuf;
    const auto typeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int64 typeTmpBuf = {};
    typeTmpBuf.tag = typeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((typeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        typeTmpBuf.value = valueDeserializer.readInt64();
    }
    value.type = typeTmpBuf;
    const auto surfaceIdTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_String surfaceIdTmpBuf = {};
    surfaceIdTmpBuf.tag = surfaceIdTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((surfaceIdTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        surfaceIdTmpBuf.value = static_cast<Ark_String>(valueDeserializer.readString());
    }
    value.surfaceId = surfaceIdTmpBuf;
    return value;
}
void CheckBoxConfiguration_serializer::write(SerializerBase& buffer, Ark_CheckBoxConfiguration value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForEnabled = value.enabled;
    valueSerializer.writeBoolean(valueHolderForEnabled);
    const auto valueHolderForName = value.name;
    valueSerializer.writeString(valueHolderForName);
    const auto valueHolderForSelected = value.selected;
    valueSerializer.writeBoolean(valueHolderForSelected);
    const auto valueHolderForTriggerChange = value.triggerChange;
    valueSerializer.writeBoolean(valueHolderForTriggerChange);
}
Ark_CheckBoxConfiguration CheckBoxConfiguration_serializer::read(DeserializerBase& buffer)
{
    Ark_CheckBoxConfiguration value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.enabled = valueDeserializer.readBoolean();
    value.name = static_cast<Ark_String>(valueDeserializer.readString());
    value.selected = valueDeserializer.readBoolean();
    value.triggerChange = valueDeserializer.readBoolean();
    return value;
}
void CheckboxOptions_serializer::write(SerializerBase& buffer, Ark_CheckboxOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForName = value.name;
    if (runtimeType(valueHolderForName) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForNameTmpValue = valueHolderForName.value;
        valueSerializer.writeString(valueHolderForNameTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForGroup = value.group;
    if (runtimeType(valueHolderForGroup) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForGroupTmpValue = valueHolderForGroup.value;
        valueSerializer.writeString(valueHolderForGroupTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_CheckboxOptions CheckboxOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_CheckboxOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto nameTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_String nameTmpBuf = {};
    nameTmpBuf.tag = nameTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((nameTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        nameTmpBuf.value = static_cast<Ark_String>(valueDeserializer.readString());
    }
    value.name = nameTmpBuf;
    const auto groupTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_String groupTmpBuf = {};
    groupTmpBuf.tag = groupTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((groupTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        groupTmpBuf.value = static_cast<Ark_String>(valueDeserializer.readString());
    }
    value.group = groupTmpBuf;
    return value;
}
void ClickEvent_serializer::write(SerializerBase& buffer, Ark_ClickEvent value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_ClickEvent ClickEvent_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_ClickEvent>(ptr);
}
void CustomDialogBuildOptions_serializer::write(SerializerBase& buffer, Ark_CustomDialogBuildOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForController = value.controller;
    if (runtimeType(valueHolderForController) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForControllerTmpValue = valueHolderForController.value;
        CustomDialogController_serializer::write(valueSerializer, valueHolderForControllerTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_CustomDialogBuildOptions CustomDialogBuildOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_CustomDialogBuildOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto controllerTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomDialogController controllerTmpBuf = {};
    controllerTmpBuf.tag = controllerTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((controllerTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        controllerTmpBuf.value = static_cast<Ark_CustomDialogController>(CustomDialogController_serializer::read(valueDeserializer));
    }
    value.controller = controllerTmpBuf;
    return value;
}
void DoubleAnimationParam_serializer::write(SerializerBase& buffer, Ark_DoubleAnimationParam value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForPropertyName = value.propertyName;
    valueSerializer.writeString(valueHolderForPropertyName);
    const auto valueHolderForStartValue = value.startValue;
    if (runtimeType(valueHolderForStartValue) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForStartValueTmpValue = valueHolderForStartValue.value;
        valueSerializer.writeFloat32(valueHolderForStartValueTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForEndValue = value.endValue;
    if (runtimeType(valueHolderForEndValue) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForEndValueTmpValue = valueHolderForEndValue.value;
        valueSerializer.writeFloat32(valueHolderForEndValueTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForDuration = value.duration;
    if (runtimeType(valueHolderForDuration) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForDurationTmpValue = valueHolderForDuration.value;
        valueSerializer.writeInt32(valueHolderForDurationTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForDelay = value.delay;
    if (runtimeType(valueHolderForDelay) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForDelayTmpValue = valueHolderForDelay.value;
        valueSerializer.writeInt32(valueHolderForDelayTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForCurve = value.curve;
    if (runtimeType(valueHolderForCurve) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForCurveTmpValue = valueHolderForCurve.value;
        valueSerializer.writeInt32(static_cast<Ark_Curve>(valueHolderForCurveTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnProgress = value.onProgress;
    if (runtimeType(valueHolderForOnProgress) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnProgressTmpValue = valueHolderForOnProgress.value;
        valueSerializer.writeCallbackResource(valueHolderForOnProgressTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnProgressTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnProgressTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnFinish = value.onFinish;
    if (runtimeType(valueHolderForOnFinish) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnFinishTmpValue = valueHolderForOnFinish.value;
        valueSerializer.writeCallbackResource(valueHolderForOnFinishTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnFinishTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnFinishTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_DoubleAnimationParam DoubleAnimationParam_serializer::read(DeserializerBase& buffer)
{
    Ark_DoubleAnimationParam value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.propertyName = static_cast<Ark_String>(valueDeserializer.readString());
    const auto startValueTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Float32 startValueTmpBuf = {};
    startValueTmpBuf.tag = startValueTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((startValueTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        startValueTmpBuf.value = valueDeserializer.readFloat32();
    }
    value.startValue = startValueTmpBuf;
    const auto endValueTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Float32 endValueTmpBuf = {};
    endValueTmpBuf.tag = endValueTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((endValueTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        endValueTmpBuf.value = valueDeserializer.readFloat32();
    }
    value.endValue = endValueTmpBuf;
    const auto durationTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int32 durationTmpBuf = {};
    durationTmpBuf.tag = durationTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((durationTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        durationTmpBuf.value = valueDeserializer.readInt32();
    }
    value.duration = durationTmpBuf;
    const auto delayTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int32 delayTmpBuf = {};
    delayTmpBuf.tag = delayTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((delayTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        delayTmpBuf.value = valueDeserializer.readInt32();
    }
    value.delay = delayTmpBuf;
    const auto curveTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Curve curveTmpBuf = {};
    curveTmpBuf.tag = curveTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((curveTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        curveTmpBuf.value = static_cast<Ark_Curve>(valueDeserializer.readInt32());
    }
    value.curve = curveTmpBuf;
    const auto onProgressTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_Extender_OnProgress onProgressTmpBuf = {};
    onProgressTmpBuf.tag = onProgressTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onProgressTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onProgressTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Float32 value)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Extender_OnProgress)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Float32 value)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Extender_OnProgress))))};
    }
    value.onProgress = onProgressTmpBuf;
    const auto onFinishTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_Extender_OnFinish onFinishTmpBuf = {};
    onFinishTmpBuf.tag = onFinishTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onFinishTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onFinishTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Extender_OnFinish)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Extender_OnFinish))))};
    }
    value.onFinish = onFinishTmpBuf;
    return value;
}
void DragInteractionOptions_serializer::write(SerializerBase& buffer, Ark_DragInteractionOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForIsMultiSelectionEnabled = value.isMultiSelectionEnabled;
    if (runtimeType(valueHolderForIsMultiSelectionEnabled) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForIsMultiSelectionEnabledTmpValue = valueHolderForIsMultiSelectionEnabled.value;
        valueSerializer.writeBoolean(valueHolderForIsMultiSelectionEnabledTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForDefaultAnimationBeforeLifting = value.defaultAnimationBeforeLifting;
    if (runtimeType(valueHolderForDefaultAnimationBeforeLifting) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForDefaultAnimationBeforeLiftingTmpValue = valueHolderForDefaultAnimationBeforeLifting.value;
        valueSerializer.writeBoolean(valueHolderForDefaultAnimationBeforeLiftingTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_DragInteractionOptions DragInteractionOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_DragInteractionOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto isMultiSelectionEnabledTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean isMultiSelectionEnabledTmpBuf = {};
    isMultiSelectionEnabledTmpBuf.tag = isMultiSelectionEnabledTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((isMultiSelectionEnabledTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        isMultiSelectionEnabledTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.isMultiSelectionEnabled = isMultiSelectionEnabledTmpBuf;
    const auto defaultAnimationBeforeLiftingTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean defaultAnimationBeforeLiftingTmpBuf = {};
    defaultAnimationBeforeLiftingTmpBuf.tag = defaultAnimationBeforeLiftingTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((defaultAnimationBeforeLiftingTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        defaultAnimationBeforeLiftingTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.defaultAnimationBeforeLifting = defaultAnimationBeforeLiftingTmpBuf;
    return value;
}
void DragPreviewOptions_serializer::write(SerializerBase& buffer, Ark_DragPreviewOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForMode = value.mode;
    if (runtimeType(valueHolderForMode) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForModeTmpValue = valueHolderForMode.value;
        valueSerializer.writeInt32(static_cast<Ark_DragPreviewMode>(valueHolderForModeTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForModifier = value.modifier;
    if (runtimeType(valueHolderForModifier) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForModifierTmpValue = valueHolderForModifier.value;
        valueSerializer.writeCustomObject("Any", valueHolderForModifierTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForNumberBadge = value.numberBadge;
    if (runtimeType(valueHolderForNumberBadge) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForNumberBadgeTmpValue = valueHolderForNumberBadge.value;
        valueSerializer.writeBoolean(valueHolderForNumberBadgeTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_DragPreviewOptions DragPreviewOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_DragPreviewOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto modeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_DragPreviewMode modeTmpBuf = {};
    modeTmpBuf.tag = modeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((modeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        modeTmpBuf.value = static_cast<Ark_DragPreviewMode>(valueDeserializer.readInt32());
    }
    value.mode = modeTmpBuf;
    const auto modifierTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject modifierTmpBuf = {};
    modifierTmpBuf.tag = modifierTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((modifierTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        modifierTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.modifier = modifierTmpBuf;
    const auto numberBadgeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean numberBadgeTmpBuf = {};
    numberBadgeTmpBuf.tag = numberBadgeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((numberBadgeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        numberBadgeTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.numberBadge = numberBadgeTmpBuf;
    return value;
}
void DrawModifier_serializer::write(SerializerBase& buffer, Ark_DrawModifier value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_DrawModifier DrawModifier_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_DrawModifier>(ptr);
}
void ErrorEvent_serializer::write(SerializerBase& buffer, Ark_ErrorEvent value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForType = value.type;
    valueSerializer.writeString(valueHolderForType);
    const auto valueHolderForTimeStamp = value.timeStamp;
    if (runtimeType(valueHolderForTimeStamp) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTimeStampTmpValue = valueHolderForTimeStamp.value;
        valueSerializer.writeInt64(valueHolderForTimeStampTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForMessage = value.message;
    valueSerializer.writeString(valueHolderForMessage);
    const auto valueHolderForFilename = value.filename;
    valueSerializer.writeString(valueHolderForFilename);
    const auto valueHolderForLineno = value.lineno;
    valueSerializer.writeNumber(valueHolderForLineno);
    const auto valueHolderForColno = value.colno;
    valueSerializer.writeNumber(valueHolderForColno);
    const auto valueHolderForError = value.error;
    if (runtimeType(valueHolderForError) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForErrorTmpValue = valueHolderForError.value;
        valueSerializer.writeObject(valueHolderForErrorTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_ErrorEvent ErrorEvent_serializer::read(DeserializerBase& buffer)
{
    Ark_ErrorEvent value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.type = static_cast<Ark_String>(valueDeserializer.readString());
    const auto timeStampTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int64 timeStampTmpBuf = {};
    timeStampTmpBuf.tag = timeStampTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((timeStampTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        timeStampTmpBuf.value = valueDeserializer.readInt64();
    }
    value.timeStamp = timeStampTmpBuf;
    value.message = static_cast<Ark_String>(valueDeserializer.readString());
    value.filename = static_cast<Ark_String>(valueDeserializer.readString());
    value.lineno = static_cast<Ark_Number>(valueDeserializer.readNumber());
    value.colno = static_cast<Ark_Number>(valueDeserializer.readNumber());
    const auto errorTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Object errorTmpBuf = {};
    errorTmpBuf.tag = errorTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((errorTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        errorTmpBuf.value = static_cast<Ark_Object>(valueDeserializer.readObject());
    }
    value.error = errorTmpBuf;
    return value;
}
void Event_serializer::write(SerializerBase& buffer, Ark_Event value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForType = value.type;
    valueSerializer.writeString(valueHolderForType);
    const auto valueHolderForTimeStamp = value.timeStamp;
    if (runtimeType(valueHolderForTimeStamp) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTimeStampTmpValue = valueHolderForTimeStamp.value;
        valueSerializer.writeInt64(valueHolderForTimeStampTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_Event Event_serializer::read(DeserializerBase& buffer)
{
    Ark_Event value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.type = static_cast<Ark_String>(valueDeserializer.readString());
    const auto timeStampTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int64 timeStampTmpBuf = {};
    timeStampTmpBuf.tag = timeStampTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((timeStampTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        timeStampTmpBuf.value = valueDeserializer.readInt64();
    }
    value.timeStamp = timeStampTmpBuf;
    return value;
}
void LocalizedBorderRadiuses_serializer::write(SerializerBase& buffer, Ark_LocalizedBorderRadiuses value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForTopStart = value.topStart;
    if (runtimeType(valueHolderForTopStart) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTopStartTmpValue = valueHolderForTopStart.value;
        valueSerializer.writeCustomObject("Any", valueHolderForTopStartTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForTopEnd = value.topEnd;
    if (runtimeType(valueHolderForTopEnd) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTopEndTmpValue = valueHolderForTopEnd.value;
        valueSerializer.writeCustomObject("Any", valueHolderForTopEndTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBottomStart = value.bottomStart;
    if (runtimeType(valueHolderForBottomStart) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBottomStartTmpValue = valueHolderForBottomStart.value;
        valueSerializer.writeCustomObject("Any", valueHolderForBottomStartTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBottomEnd = value.bottomEnd;
    if (runtimeType(valueHolderForBottomEnd) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBottomEndTmpValue = valueHolderForBottomEnd.value;
        valueSerializer.writeCustomObject("Any", valueHolderForBottomEndTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_LocalizedBorderRadiuses LocalizedBorderRadiuses_serializer::read(DeserializerBase& buffer)
{
    Ark_LocalizedBorderRadiuses value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto topStartTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject topStartTmpBuf = {};
    topStartTmpBuf.tag = topStartTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((topStartTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        topStartTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.topStart = topStartTmpBuf;
    const auto topEndTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject topEndTmpBuf = {};
    topEndTmpBuf.tag = topEndTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((topEndTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        topEndTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.topEnd = topEndTmpBuf;
    const auto bottomStartTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject bottomStartTmpBuf = {};
    bottomStartTmpBuf.tag = bottomStartTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((bottomStartTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        bottomStartTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.bottomStart = bottomStartTmpBuf;
    const auto bottomEndTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject bottomEndTmpBuf = {};
    bottomEndTmpBuf.tag = bottomEndTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((bottomEndTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        bottomEndTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.bottomEnd = bottomEndTmpBuf;
    return value;
}
void LocalizedEdgeWidths_serializer::write(SerializerBase& buffer, Ark_LocalizedEdgeWidths value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForTop = value.top;
    if (runtimeType(valueHolderForTop) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTopTmpValue = valueHolderForTop.value;
        valueSerializer.writeCustomObject("Any", valueHolderForTopTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForEnd = value.end;
    if (runtimeType(valueHolderForEnd) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForEndTmpValue = valueHolderForEnd.value;
        valueSerializer.writeCustomObject("Any", valueHolderForEndTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBottom = value.bottom;
    if (runtimeType(valueHolderForBottom) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBottomTmpValue = valueHolderForBottom.value;
        valueSerializer.writeCustomObject("Any", valueHolderForBottomTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForStart = value.start;
    if (runtimeType(valueHolderForStart) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForStartTmpValue = valueHolderForStart.value;
        valueSerializer.writeCustomObject("Any", valueHolderForStartTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_LocalizedEdgeWidths LocalizedEdgeWidths_serializer::read(DeserializerBase& buffer)
{
    Ark_LocalizedEdgeWidths value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto topTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject topTmpBuf = {};
    topTmpBuf.tag = topTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((topTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        topTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.top = topTmpBuf;
    const auto endTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject endTmpBuf = {};
    endTmpBuf.tag = endTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((endTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        endTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.end = endTmpBuf;
    const auto bottomTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject bottomTmpBuf = {};
    bottomTmpBuf.tag = bottomTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((bottomTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        bottomTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.bottom = bottomTmpBuf;
    const auto startTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject startTmpBuf = {};
    startTmpBuf.tag = startTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((startTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        startTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.start = startTmpBuf;
    return value;
}
void LocalizedPadding_serializer::write(SerializerBase& buffer, Ark_LocalizedPadding value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForTop = value.top;
    if (runtimeType(valueHolderForTop) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTopTmpValue = valueHolderForTop.value;
        valueSerializer.writeCustomObject("Any", valueHolderForTopTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForEnd = value.end;
    if (runtimeType(valueHolderForEnd) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForEndTmpValue = valueHolderForEnd.value;
        valueSerializer.writeCustomObject("Any", valueHolderForEndTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBottom = value.bottom;
    if (runtimeType(valueHolderForBottom) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBottomTmpValue = valueHolderForBottom.value;
        valueSerializer.writeCustomObject("Any", valueHolderForBottomTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForStart = value.start;
    if (runtimeType(valueHolderForStart) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForStartTmpValue = valueHolderForStart.value;
        valueSerializer.writeCustomObject("Any", valueHolderForStartTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_LocalizedPadding LocalizedPadding_serializer::read(DeserializerBase& buffer)
{
    Ark_LocalizedPadding value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto topTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject topTmpBuf = {};
    topTmpBuf.tag = topTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((topTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        topTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.top = topTmpBuf;
    const auto endTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject endTmpBuf = {};
    endTmpBuf.tag = endTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((endTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        endTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.end = endTmpBuf;
    const auto bottomTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject bottomTmpBuf = {};
    bottomTmpBuf.tag = bottomTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((bottomTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        bottomTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.bottom = bottomTmpBuf;
    const auto startTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject startTmpBuf = {};
    startTmpBuf.tag = startTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((startTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        startTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.start = startTmpBuf;
    return value;
}
void MessageEvents_serializer::write(SerializerBase& buffer, Ark_MessageEvents value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForType = value.type;
    valueSerializer.writeString(valueHolderForType);
    const auto valueHolderForTimeStamp = value.timeStamp;
    if (runtimeType(valueHolderForTimeStamp) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTimeStampTmpValue = valueHolderForTimeStamp.value;
        valueSerializer.writeInt64(valueHolderForTimeStampTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForData = value.data;
    if (runtimeType(valueHolderForData) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForDataTmpValue = valueHolderForData.value;
        valueSerializer.writeCustomObject("Any", valueHolderForDataTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_MessageEvents MessageEvents_serializer::read(DeserializerBase& buffer)
{
    Ark_MessageEvents value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.type = static_cast<Ark_String>(valueDeserializer.readString());
    const auto timeStampTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int64 timeStampTmpBuf = {};
    timeStampTmpBuf.tag = timeStampTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((timeStampTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        timeStampTmpBuf.value = valueDeserializer.readInt64();
    }
    value.timeStamp = timeStampTmpBuf;
    const auto dataTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject dataTmpBuf = {};
    dataTmpBuf.tag = dataTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((dataTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        dataTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.data = dataTmpBuf;
    return value;
}
void PostMessageOptions_serializer::write(SerializerBase& buffer, Ark_PostMessageOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForTransfer = value.transfer;
    if (runtimeType(valueHolderForTransfer) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTransferTmpValue = valueHolderForTransfer.value;
        valueSerializer.writeInt32(valueHolderForTransferTmpValue.length);
        for (int valueHolderForTransferTmpValueCounterI = 0; valueHolderForTransferTmpValueCounterI < valueHolderForTransferTmpValue.length; valueHolderForTransferTmpValueCounterI++) {
            const Ark_Object valueHolderForTransferTmpValueTmpElement = valueHolderForTransferTmpValue.array[valueHolderForTransferTmpValueCounterI];
            valueSerializer.writeObject(valueHolderForTransferTmpValueTmpElement);
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_PostMessageOptions PostMessageOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_PostMessageOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto transferTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Array_Object transferTmpBuf = {};
    transferTmpBuf.tag = transferTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((transferTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int32 transferTmpBuf_Length = valueDeserializer.readInt32();
        Array_Object transferTmpBuf_ = {};
        valueDeserializer.resizeArray<std::decay<decltype(transferTmpBuf_)>::type,
        std::decay<decltype(*transferTmpBuf_.array)>::type>(&transferTmpBuf_, transferTmpBuf_Length);
        for (int transferTmpBuf_BufCounterI = 0; transferTmpBuf_BufCounterI < transferTmpBuf_Length; transferTmpBuf_BufCounterI++) {
            transferTmpBuf_.array[transferTmpBuf_BufCounterI] = static_cast<Ark_Object>(valueDeserializer.readObject());
        }
        transferTmpBuf.value = transferTmpBuf_;
    }
    value.transfer = transferTmpBuf;
    return value;
}
void Resource_serializer::write(SerializerBase& buffer, Ark_Resource value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForBundleName = value.bundleName;
    valueSerializer.writeString(valueHolderForBundleName);
    const auto valueHolderForModuleName = value.moduleName;
    valueSerializer.writeString(valueHolderForModuleName);
    const auto valueHolderForId = value.id;
    valueSerializer.writeInt64(valueHolderForId);
    const auto valueHolderForParams = value.params;
    if (runtimeType(valueHolderForParams) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForParamsTmpValue = valueHolderForParams.value;
        valueSerializer.writeInt32(valueHolderForParamsTmpValue.length);
        for (int valueHolderForParamsTmpValueCounterI = 0; valueHolderForParamsTmpValueCounterI < valueHolderForParamsTmpValue.length; valueHolderForParamsTmpValueCounterI++) {
            const Ark_String valueHolderForParamsTmpValueTmpElement = valueHolderForParamsTmpValue.array[valueHolderForParamsTmpValueCounterI];
            valueSerializer.writeString(valueHolderForParamsTmpValueTmpElement);
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForType_ = value.type_;
    if (runtimeType(valueHolderForType_) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForType_TmpValue = valueHolderForType_.value;
        valueSerializer.writeInt64(valueHolderForType_TmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_Resource Resource_serializer::read(DeserializerBase& buffer)
{
    Ark_Resource value = {};
    DeserializerBase& valueDeserializer = buffer;
    value.bundleName = static_cast<Ark_String>(valueDeserializer.readString());
    value.moduleName = static_cast<Ark_String>(valueDeserializer.readString());
    value.id = valueDeserializer.readInt64();
    const auto paramsTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Array_String paramsTmpBuf = {};
    paramsTmpBuf.tag = paramsTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((paramsTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int32 paramsTmpBuf_Length = valueDeserializer.readInt32();
        Array_String paramsTmpBuf_ = {};
        valueDeserializer.resizeArray<std::decay<decltype(paramsTmpBuf_)>::type,
        std::decay<decltype(*paramsTmpBuf_.array)>::type>(&paramsTmpBuf_, paramsTmpBuf_Length);
        for (int paramsTmpBuf_BufCounterI = 0; paramsTmpBuf_BufCounterI < paramsTmpBuf_Length; paramsTmpBuf_BufCounterI++) {
            paramsTmpBuf_.array[paramsTmpBuf_BufCounterI] = static_cast<Ark_String>(valueDeserializer.readString());
        }
        paramsTmpBuf.value = paramsTmpBuf_;
    }
    value.params = paramsTmpBuf;
    const auto type_TmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int64 type_TmpBuf = {};
    type_TmpBuf.tag = type_TmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((type_TmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        type_TmpBuf.value = valueDeserializer.readInt64();
    }
    value.type_ = type_TmpBuf;
    return value;
}
void SnapshotOptions_serializer::write(SerializerBase& buffer, Ark_SnapshotOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForScale = value.scale;
    if (runtimeType(valueHolderForScale) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForScaleTmpValue = valueHolderForScale.value;
        valueSerializer.writeNumber(valueHolderForScaleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForWaitUntilRenderFinished = value.waitUntilRenderFinished;
    if (runtimeType(valueHolderForWaitUntilRenderFinished) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForWaitUntilRenderFinishedTmpValue = valueHolderForWaitUntilRenderFinished.value;
        valueSerializer.writeBoolean(valueHolderForWaitUntilRenderFinishedTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_SnapshotOptions SnapshotOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_SnapshotOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto scaleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Number scaleTmpBuf = {};
    scaleTmpBuf.tag = scaleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((scaleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        scaleTmpBuf.value = static_cast<Ark_Number>(valueDeserializer.readNumber());
    }
    value.scale = scaleTmpBuf;
    const auto waitUntilRenderFinishedTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean waitUntilRenderFinishedTmpBuf = {};
    waitUntilRenderFinishedTmpBuf.tag = waitUntilRenderFinishedTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((waitUntilRenderFinishedTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        waitUntilRenderFinishedTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.waitUntilRenderFinished = waitUntilRenderFinishedTmpBuf;
    return value;
}
void TextPickerOptions_serializer::write(SerializerBase& buffer, Ark_TextPickerOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForRange = value.range;
    if (runtimeType(valueHolderForRange) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForRangeTmpValue = valueHolderForRange.value;
        valueSerializer.writeInt32(valueHolderForRangeTmpValue.length);
        for (int valueHolderForRangeTmpValueCounterI = 0; valueHolderForRangeTmpValueCounterI < valueHolderForRangeTmpValue.length; valueHolderForRangeTmpValueCounterI++) {
            const Ark_String valueHolderForRangeTmpValueTmpElement = valueHolderForRangeTmpValue.array[valueHolderForRangeTmpValueCounterI];
            valueSerializer.writeString(valueHolderForRangeTmpValueTmpElement);
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForValue = value.value;
    if (runtimeType(valueHolderForValue) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForValueTmpValue = valueHolderForValue.value;
        valueSerializer.writeString(valueHolderForValueTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForSelected = value.selected;
    if (runtimeType(valueHolderForSelected) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSelectedTmpValue = valueHolderForSelected.value;
        valueSerializer.writeNumber(valueHolderForSelectedTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_TextPickerOptions TextPickerOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_TextPickerOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto rangeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Array_String rangeTmpBuf = {};
    rangeTmpBuf.tag = rangeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((rangeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int32 rangeTmpBuf_Length = valueDeserializer.readInt32();
        Array_String rangeTmpBuf_ = {};
        valueDeserializer.resizeArray<std::decay<decltype(rangeTmpBuf_)>::type,
        std::decay<decltype(*rangeTmpBuf_.array)>::type>(&rangeTmpBuf_, rangeTmpBuf_Length);
        for (int rangeTmpBuf_BufCounterI = 0; rangeTmpBuf_BufCounterI < rangeTmpBuf_Length; rangeTmpBuf_BufCounterI++) {
            rangeTmpBuf_.array[rangeTmpBuf_BufCounterI] = static_cast<Ark_String>(valueDeserializer.readString());
        }
        rangeTmpBuf.value = rangeTmpBuf_;
    }
    value.range = rangeTmpBuf;
    const auto valueTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_String valueTmpBuf = {};
    valueTmpBuf.tag = valueTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((valueTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        valueTmpBuf.value = static_cast<Ark_String>(valueDeserializer.readString());
    }
    value.value = valueTmpBuf;
    const auto selectedTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Number selectedTmpBuf = {};
    selectedTmpBuf.tag = selectedTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((selectedTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        selectedTmpBuf.value = static_cast<Ark_Number>(valueDeserializer.readNumber());
    }
    value.selected = selectedTmpBuf;
    return value;
}
void TranslateOptions_serializer::write(SerializerBase& buffer, Ark_TranslateOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForX = value.x;
    if (runtimeType(valueHolderForX) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForXTmpValue = valueHolderForX.value;
        valueSerializer.writeInt64(valueHolderForXTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForY = value.y;
    if (runtimeType(valueHolderForY) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForYTmpValue = valueHolderForY.value;
        valueSerializer.writeInt64(valueHolderForYTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForZ = value.z;
    if (runtimeType(valueHolderForZ) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForZTmpValue = valueHolderForZ.value;
        valueSerializer.writeInt64(valueHolderForZTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_TranslateOptions TranslateOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_TranslateOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto xTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int64 xTmpBuf = {};
    xTmpBuf.tag = xTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((xTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        xTmpBuf.value = valueDeserializer.readInt64();
    }
    value.x = xTmpBuf;
    const auto yTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int64 yTmpBuf = {};
    yTmpBuf.tag = yTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((yTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        yTmpBuf.value = valueDeserializer.readInt64();
    }
    value.y = yTmpBuf;
    const auto zTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int64 zTmpBuf = {};
    zTmpBuf.tag = zTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((zTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        zTmpBuf.value = valueDeserializer.readInt64();
    }
    value.z = zTmpBuf;
    return value;
}
void TupleInterfaceDTS_serializer::write(SerializerBase& buffer, Ark_TupleInterfaceDTS value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForTuple = value.tuple;
    if (runtimeType(valueHolderForTuple) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTupleTmpValue = valueHolderForTuple.value;
        valueSerializer.writeCustomObject("(Float64, Bool)", valueHolderForTupleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_TupleInterfaceDTS TupleInterfaceDTS_serializer::read(DeserializerBase& buffer)
{
    Ark_TupleInterfaceDTS value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto tupleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject tupleTmpBuf = {};
    tupleTmpBuf.tag = tupleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((tupleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        tupleTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("(Float64, Bool)"));
    }
    value.tuple = tupleTmpBuf;
    return value;
}
void WorkerOptions_serializer::write(SerializerBase& buffer, Ark_WorkerOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForType = value.type;
    if (runtimeType(valueHolderForType) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTypeTmpValue = valueHolderForType.value;
        valueSerializer.writeString(valueHolderForTypeTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForName = value.name;
    if (runtimeType(valueHolderForName) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForNameTmpValue = valueHolderForName.value;
        valueSerializer.writeString(valueHolderForNameTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForShared = value.shared;
    if (runtimeType(valueHolderForShared) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSharedTmpValue = valueHolderForShared.value;
        valueSerializer.writeBoolean(valueHolderForSharedTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_WorkerOptions WorkerOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_WorkerOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto typeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_String typeTmpBuf = {};
    typeTmpBuf.tag = typeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((typeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        typeTmpBuf.value = static_cast<Ark_String>(valueDeserializer.readString());
    }
    value.type = typeTmpBuf;
    const auto nameTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_String nameTmpBuf = {};
    nameTmpBuf.tag = nameTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((nameTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        nameTmpBuf.value = static_cast<Ark_String>(valueDeserializer.readString());
    }
    value.name = nameTmpBuf;
    const auto sharedTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean sharedTmpBuf = {};
    sharedTmpBuf.tag = sharedTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((sharedTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        sharedTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.shared = sharedTmpBuf;
    return value;
}
void BackgroundBlurStyleOptions_serializer::write(SerializerBase& buffer, Ark_BackgroundBlurStyleOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForColorMode = value.colorMode;
    if (runtimeType(valueHolderForColorMode) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForColorModeTmpValue = valueHolderForColorMode.value;
        valueSerializer.writeInt32(static_cast<Ark_ThemeColorMode>(valueHolderForColorModeTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForAdaptiveColor = value.adaptiveColor;
    if (runtimeType(valueHolderForAdaptiveColor) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForAdaptiveColorTmpValue = valueHolderForAdaptiveColor.value;
        valueSerializer.writeInt32(static_cast<Ark_AdaptiveColor>(valueHolderForAdaptiveColorTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForScale = value.scale;
    if (runtimeType(valueHolderForScale) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForScaleTmpValue = valueHolderForScale.value;
        valueSerializer.writeNumber(valueHolderForScaleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBlurOptions = value.blurOptions;
    if (runtimeType(valueHolderForBlurOptions) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBlurOptionsTmpValue = valueHolderForBlurOptions.value;
        BlurOptions_serializer::write(valueSerializer, valueHolderForBlurOptionsTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForPolicy = value.policy;
    if (runtimeType(valueHolderForPolicy) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForPolicyTmpValue = valueHolderForPolicy.value;
        valueSerializer.writeInt32(static_cast<Ark_BlurStyleActivePolicy>(valueHolderForPolicyTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForInactiveColor = value.inactiveColor;
    if (runtimeType(valueHolderForInactiveColor) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForInactiveColorTmpValue = valueHolderForInactiveColor.value;
        if (valueHolderForInactiveColorTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForInactiveColorTmpValueForIdx0 = valueHolderForInactiveColorTmpValue.value0;
            valueSerializer.writeInt32(static_cast<Ark_Color>(valueHolderForInactiveColorTmpValueForIdx0));
        } else if (valueHolderForInactiveColorTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForInactiveColorTmpValueForIdx1 = valueHolderForInactiveColorTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForInactiveColorTmpValueForIdx1);
        } else if (valueHolderForInactiveColorTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForInactiveColorTmpValueForIdx2 = valueHolderForInactiveColorTmpValue.value2;
            valueSerializer.writeString(valueHolderForInactiveColorTmpValueForIdx2);
        } else if (valueHolderForInactiveColorTmpValue.selector == 3) {
            valueSerializer.writeInt8(3);
            const auto valueHolderForInactiveColorTmpValueForIdx3 = valueHolderForInactiveColorTmpValue.value3;
            Resource_serializer::write(valueSerializer, valueHolderForInactiveColorTmpValueForIdx3);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForInactiveColorTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_BackgroundBlurStyleOptions BackgroundBlurStyleOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_BackgroundBlurStyleOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto colorModeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ThemeColorMode colorModeTmpBuf = {};
    colorModeTmpBuf.tag = colorModeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((colorModeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        colorModeTmpBuf.value = static_cast<Ark_ThemeColorMode>(valueDeserializer.readInt32());
    }
    value.colorMode = colorModeTmpBuf;
    const auto adaptiveColorTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_AdaptiveColor adaptiveColorTmpBuf = {};
    adaptiveColorTmpBuf.tag = adaptiveColorTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((adaptiveColorTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        adaptiveColorTmpBuf.value = static_cast<Ark_AdaptiveColor>(valueDeserializer.readInt32());
    }
    value.adaptiveColor = adaptiveColorTmpBuf;
    const auto scaleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Number scaleTmpBuf = {};
    scaleTmpBuf.tag = scaleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((scaleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        scaleTmpBuf.value = static_cast<Ark_Number>(valueDeserializer.readNumber());
    }
    value.scale = scaleTmpBuf;
    const auto blurOptionsTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_BlurOptions blurOptionsTmpBuf = {};
    blurOptionsTmpBuf.tag = blurOptionsTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((blurOptionsTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        blurOptionsTmpBuf.value = BlurOptions_serializer::read(valueDeserializer);
    }
    value.blurOptions = blurOptionsTmpBuf;
    const auto policyTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_BlurStyleActivePolicy policyTmpBuf = {};
    policyTmpBuf.tag = policyTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((policyTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        policyTmpBuf.value = static_cast<Ark_BlurStyleActivePolicy>(valueDeserializer.readInt32());
    }
    value.policy = policyTmpBuf;
    const auto inactiveColorTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceColor inactiveColorTmpBuf = {};
    inactiveColorTmpBuf.tag = inactiveColorTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((inactiveColorTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 inactiveColorTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceColor inactiveColorTmpBuf_ = {};
        inactiveColorTmpBuf_.selector = inactiveColorTmpBuf_UnionSelector;
        if (inactiveColorTmpBuf_UnionSelector == 0) {
            inactiveColorTmpBuf_.selector = 0;
            inactiveColorTmpBuf_.value0 = static_cast<Ark_Color>(valueDeserializer.readInt32());
        } else if (inactiveColorTmpBuf_UnionSelector == 1) {
            inactiveColorTmpBuf_.selector = 1;
            inactiveColorTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (inactiveColorTmpBuf_UnionSelector == 2) {
            inactiveColorTmpBuf_.selector = 2;
            inactiveColorTmpBuf_.value2 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (inactiveColorTmpBuf_UnionSelector == 3) {
            inactiveColorTmpBuf_.selector = 3;
            inactiveColorTmpBuf_.value3 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for inactiveColorTmpBuf_ has to be chosen through deserialisation.");
        }
        inactiveColorTmpBuf.value = static_cast<Ark_ResourceColor>(inactiveColorTmpBuf_);
    }
    value.inactiveColor = inactiveColorTmpBuf;
    return value;
}
void ComponentInfo_serializer::write(SerializerBase& buffer, Ark_ComponentInfo value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForSize = value.size;
    if (runtimeType(valueHolderForSize) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSizeTmpValue = valueHolderForSize.value;
        valueSerializer.writeCustomObject("Any", valueHolderForSizeTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForLocalOffset = value.localOffset;
    if (runtimeType(valueHolderForLocalOffset) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForLocalOffsetTmpValue = valueHolderForLocalOffset.value;
        Offset_componentutils_serializer::write(valueSerializer, valueHolderForLocalOffsetTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForWindowOffset = value.windowOffset;
    if (runtimeType(valueHolderForWindowOffset) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForWindowOffsetTmpValue = valueHolderForWindowOffset.value;
        Offset_componentutils_serializer::write(valueSerializer, valueHolderForWindowOffsetTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForScreenOffset = value.screenOffset;
    if (runtimeType(valueHolderForScreenOffset) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForScreenOffsetTmpValue = valueHolderForScreenOffset.value;
        Offset_componentutils_serializer::write(valueSerializer, valueHolderForScreenOffsetTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForTranslate = value.translate;
    if (runtimeType(valueHolderForTranslate) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTranslateTmpValue = valueHolderForTranslate.value;
        TranslateResult_serializer::write(valueSerializer, valueHolderForTranslateTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForScale = value.scale;
    if (runtimeType(valueHolderForScale) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForScaleTmpValue = valueHolderForScale.value;
        ScaleResult_serializer::write(valueSerializer, valueHolderForScaleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForRotate = value.rotate;
    if (runtimeType(valueHolderForRotate) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForRotateTmpValue = valueHolderForRotate.value;
        RotateResult_serializer::write(valueSerializer, valueHolderForRotateTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForTransform = value.transform;
    if (runtimeType(valueHolderForTransform) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTransformTmpValue = valueHolderForTransform.value;
        const auto valueHolderForTransformTmpValue_0 = valueHolderForTransformTmpValue.value0;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_0);
        const auto valueHolderForTransformTmpValue_1 = valueHolderForTransformTmpValue.value1;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_1);
        const auto valueHolderForTransformTmpValue_2 = valueHolderForTransformTmpValue.value2;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_2);
        const auto valueHolderForTransformTmpValue_3 = valueHolderForTransformTmpValue.value3;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_3);
        const auto valueHolderForTransformTmpValue_4 = valueHolderForTransformTmpValue.value4;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_4);
        const auto valueHolderForTransformTmpValue_5 = valueHolderForTransformTmpValue.value5;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_5);
        const auto valueHolderForTransformTmpValue_6 = valueHolderForTransformTmpValue.value6;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_6);
        const auto valueHolderForTransformTmpValue_7 = valueHolderForTransformTmpValue.value7;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_7);
        const auto valueHolderForTransformTmpValue_8 = valueHolderForTransformTmpValue.value8;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_8);
        const auto valueHolderForTransformTmpValue_9 = valueHolderForTransformTmpValue.value9;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_9);
        const auto valueHolderForTransformTmpValue_10 = valueHolderForTransformTmpValue.value10;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_10);
        const auto valueHolderForTransformTmpValue_11 = valueHolderForTransformTmpValue.value11;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_11);
        const auto valueHolderForTransformTmpValue_12 = valueHolderForTransformTmpValue.value12;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_12);
        const auto valueHolderForTransformTmpValue_13 = valueHolderForTransformTmpValue.value13;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_13);
        const auto valueHolderForTransformTmpValue_14 = valueHolderForTransformTmpValue.value14;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_14);
        const auto valueHolderForTransformTmpValue_15 = valueHolderForTransformTmpValue.value15;
        valueSerializer.writeNumber(valueHolderForTransformTmpValue_15);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_ComponentInfo ComponentInfo_serializer::read(DeserializerBase& buffer)
{
    Ark_ComponentInfo value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto sizeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject sizeTmpBuf = {};
    sizeTmpBuf.tag = sizeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((sizeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        sizeTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.size = sizeTmpBuf;
    const auto localOffsetTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Offset_componentutils localOffsetTmpBuf = {};
    localOffsetTmpBuf.tag = localOffsetTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((localOffsetTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        localOffsetTmpBuf.value = Offset_componentutils_serializer::read(valueDeserializer);
    }
    value.localOffset = localOffsetTmpBuf;
    const auto windowOffsetTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Offset_componentutils windowOffsetTmpBuf = {};
    windowOffsetTmpBuf.tag = windowOffsetTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((windowOffsetTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        windowOffsetTmpBuf.value = Offset_componentutils_serializer::read(valueDeserializer);
    }
    value.windowOffset = windowOffsetTmpBuf;
    const auto screenOffsetTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Offset_componentutils screenOffsetTmpBuf = {};
    screenOffsetTmpBuf.tag = screenOffsetTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((screenOffsetTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        screenOffsetTmpBuf.value = Offset_componentutils_serializer::read(valueDeserializer);
    }
    value.screenOffset = screenOffsetTmpBuf;
    const auto translateTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_TranslateResult translateTmpBuf = {};
    translateTmpBuf.tag = translateTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((translateTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        translateTmpBuf.value = TranslateResult_serializer::read(valueDeserializer);
    }
    value.translate = translateTmpBuf;
    const auto scaleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ScaleResult scaleTmpBuf = {};
    scaleTmpBuf.tag = scaleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((scaleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        scaleTmpBuf.value = ScaleResult_serializer::read(valueDeserializer);
    }
    value.scale = scaleTmpBuf;
    const auto rotateTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_RotateResult rotateTmpBuf = {};
    rotateTmpBuf.tag = rotateTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((rotateTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        rotateTmpBuf.value = RotateResult_serializer::read(valueDeserializer);
    }
    value.rotate = rotateTmpBuf;
    const auto transformTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Matrix4Result transformTmpBuf = {};
    transformTmpBuf.tag = transformTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((transformTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        Ark_Matrix4Result transformTmpBuf_ = {};
        transformTmpBuf_.value0 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value2 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value3 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value4 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value5 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value6 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value7 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value8 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value9 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value10 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value11 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value12 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value13 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value14 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf_.value15 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        transformTmpBuf.value = transformTmpBuf_;
    }
    value.transform = transformTmpBuf;
    return value;
}
void CustomDialogControllerBuilder_serializer::write(SerializerBase& buffer, Ark_CustomDialogControllerBuilder value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForBuildOptions = value.buildOptions;
    if (runtimeType(valueHolderForBuildOptions) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBuildOptionsTmpValue = valueHolderForBuildOptions.value;
        CustomDialogBuildOptions_serializer::write(valueSerializer, valueHolderForBuildOptionsTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBuild = value.build;
    if (runtimeType(valueHolderForBuild) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBuildTmpValue = valueHolderForBuild.value;
        valueSerializer.writeCallbackResource(valueHolderForBuildTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForBuildTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForBuildTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_CustomDialogControllerBuilder CustomDialogControllerBuilder_serializer::read(DeserializerBase& buffer)
{
    Ark_CustomDialogControllerBuilder value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto buildOptionsTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomDialogBuildOptions buildOptionsTmpBuf = {};
    buildOptionsTmpBuf.tag = buildOptionsTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((buildOptionsTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        buildOptionsTmpBuf.value = CustomDialogBuildOptions_serializer::read(valueDeserializer);
    }
    value.buildOptions = buildOptionsTmpBuf;
    const auto buildTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomNodeBuilder buildTmpBuf = {};
    buildTmpBuf.tag = buildTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((buildTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        buildTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Callback_Pointer_Void continuation)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_CustomNodeBuilder)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativePointer parentNode, const Callback_Pointer_Void continuation)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_CustomNodeBuilder))))};
    }
    value.build = buildTmpBuf;
    return value;
}
void RestrictedWorker_serializer::write(SerializerBase& buffer, Ark_RestrictedWorker value)
{
    SerializerBase& valueSerializer = buffer;
    valueSerializer.writePointer(value);
}
Ark_RestrictedWorker RestrictedWorker_serializer::read(DeserializerBase& buffer)
{
    DeserializerBase& valueDeserializer = buffer;
    Ark_NativePointer ptr = valueDeserializer.readPointer();
    return static_cast<Ark_RestrictedWorker>(ptr);
}
void SheetTitleOptions_serializer::write(SerializerBase& buffer, Ark_SheetTitleOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForTitle = value.title;
    if (runtimeType(valueHolderForTitle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTitleTmpValue = valueHolderForTitle.value;
        if (valueHolderForTitleTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForTitleTmpValueForIdx0 = valueHolderForTitleTmpValue.value0;
            valueSerializer.writeString(valueHolderForTitleTmpValueForIdx0);
        } else if (valueHolderForTitleTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForTitleTmpValueForIdx1 = valueHolderForTitleTmpValue.value1;
            Resource_serializer::write(valueSerializer, valueHolderForTitleTmpValueForIdx1);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForTitleTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForSubtitle = value.subtitle;
    if (runtimeType(valueHolderForSubtitle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSubtitleTmpValue = valueHolderForSubtitle.value;
        if (valueHolderForSubtitleTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForSubtitleTmpValueForIdx0 = valueHolderForSubtitleTmpValue.value0;
            valueSerializer.writeString(valueHolderForSubtitleTmpValueForIdx0);
        } else if (valueHolderForSubtitleTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForSubtitleTmpValueForIdx1 = valueHolderForSubtitleTmpValue.value1;
            Resource_serializer::write(valueSerializer, valueHolderForSubtitleTmpValueForIdx1);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForSubtitleTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_SheetTitleOptions SheetTitleOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_SheetTitleOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto titleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceStr titleTmpBuf = {};
    titleTmpBuf.tag = titleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((titleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 titleTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceStr titleTmpBuf_ = {};
        titleTmpBuf_.selector = titleTmpBuf_UnionSelector;
        if (titleTmpBuf_UnionSelector == 0) {
            titleTmpBuf_.selector = 0;
            titleTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (titleTmpBuf_UnionSelector == 1) {
            titleTmpBuf_.selector = 1;
            titleTmpBuf_.value1 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for titleTmpBuf_ has to be chosen through deserialisation.");
        }
        titleTmpBuf.value = static_cast<Ark_ResourceStr>(titleTmpBuf_);
    }
    value.title = titleTmpBuf;
    const auto subtitleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceStr subtitleTmpBuf = {};
    subtitleTmpBuf.tag = subtitleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((subtitleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 subtitleTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceStr subtitleTmpBuf_ = {};
        subtitleTmpBuf_.selector = subtitleTmpBuf_UnionSelector;
        if (subtitleTmpBuf_UnionSelector == 0) {
            subtitleTmpBuf_.selector = 0;
            subtitleTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (subtitleTmpBuf_UnionSelector == 1) {
            subtitleTmpBuf_.selector = 1;
            subtitleTmpBuf_.value1 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for subtitleTmpBuf_ has to be chosen through deserialisation.");
        }
        subtitleTmpBuf.value = static_cast<Ark_ResourceStr>(subtitleTmpBuf_);
    }
    value.subtitle = subtitleTmpBuf;
    return value;
}
void TextInputOptions_serializer::write(SerializerBase& buffer, Ark_TextInputOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForPlaceholder = value.placeholder;
    if (runtimeType(valueHolderForPlaceholder) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForPlaceholderTmpValue = valueHolderForPlaceholder.value;
        if (valueHolderForPlaceholderTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForPlaceholderTmpValueForIdx0 = valueHolderForPlaceholderTmpValue.value0;
            valueSerializer.writeString(valueHolderForPlaceholderTmpValueForIdx0);
        } else if (valueHolderForPlaceholderTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForPlaceholderTmpValueForIdx1 = valueHolderForPlaceholderTmpValue.value1;
            Resource_serializer::write(valueSerializer, valueHolderForPlaceholderTmpValueForIdx1);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForPlaceholderTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForText = value.text;
    if (runtimeType(valueHolderForText) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTextTmpValue = valueHolderForText.value;
        if (valueHolderForTextTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForTextTmpValueForIdx0 = valueHolderForTextTmpValue.value0;
            valueSerializer.writeString(valueHolderForTextTmpValueForIdx0);
        } else if (valueHolderForTextTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForTextTmpValueForIdx1 = valueHolderForTextTmpValue.value1;
            Resource_serializer::write(valueSerializer, valueHolderForTextTmpValueForIdx1);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForTextTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_TextInputOptions TextInputOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_TextInputOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto placeholderTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceStr placeholderTmpBuf = {};
    placeholderTmpBuf.tag = placeholderTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((placeholderTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 placeholderTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceStr placeholderTmpBuf_ = {};
        placeholderTmpBuf_.selector = placeholderTmpBuf_UnionSelector;
        if (placeholderTmpBuf_UnionSelector == 0) {
            placeholderTmpBuf_.selector = 0;
            placeholderTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (placeholderTmpBuf_UnionSelector == 1) {
            placeholderTmpBuf_.selector = 1;
            placeholderTmpBuf_.value1 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for placeholderTmpBuf_ has to be chosen through deserialisation.");
        }
        placeholderTmpBuf.value = static_cast<Ark_ResourceStr>(placeholderTmpBuf_);
    }
    value.placeholder = placeholderTmpBuf;
    const auto textTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceStr textTmpBuf = {};
    textTmpBuf.tag = textTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((textTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 textTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceStr textTmpBuf_ = {};
        textTmpBuf_.selector = textTmpBuf_UnionSelector;
        if (textTmpBuf_UnionSelector == 0) {
            textTmpBuf_.selector = 0;
            textTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (textTmpBuf_UnionSelector == 1) {
            textTmpBuf_.selector = 1;
            textTmpBuf_.value1 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for textTmpBuf_ has to be chosen through deserialisation.");
        }
        textTmpBuf.value = static_cast<Ark_ResourceStr>(textTmpBuf_);
    }
    value.text = textTmpBuf;
    return value;
}
void CustomDialogControllerOptions_serializer::write(SerializerBase& buffer, Ark_CustomDialogControllerOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForBuilder = value.builder;
    if (runtimeType(valueHolderForBuilder) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBuilderTmpValue = valueHolderForBuilder.value;
        CustomDialogControllerBuilder_serializer::write(valueSerializer, valueHolderForBuilderTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_CustomDialogControllerOptions CustomDialogControllerOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_CustomDialogControllerOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto builderTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomDialogControllerBuilder builderTmpBuf = {};
    builderTmpBuf.tag = builderTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((builderTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        builderTmpBuf.value = CustomDialogControllerBuilder_serializer::read(valueDeserializer);
    }
    value.builder = builderTmpBuf;
    return value;
}
void DividerOptions_serializer::write(SerializerBase& buffer, Ark_DividerOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForStrokeWidth = value.strokeWidth;
    if (runtimeType(valueHolderForStrokeWidth) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForStrokeWidthTmpValue = valueHolderForStrokeWidth.value;
        if (valueHolderForStrokeWidthTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForStrokeWidthTmpValueForIdx0 = valueHolderForStrokeWidthTmpValue.value0;
            valueSerializer.writeString(valueHolderForStrokeWidthTmpValueForIdx0);
        } else if (valueHolderForStrokeWidthTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForStrokeWidthTmpValueForIdx1 = valueHolderForStrokeWidthTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForStrokeWidthTmpValueForIdx1);
        } else if (valueHolderForStrokeWidthTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForStrokeWidthTmpValueForIdx2 = valueHolderForStrokeWidthTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForStrokeWidthTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForStrokeWidthTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForColor = value.color;
    if (runtimeType(valueHolderForColor) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForColorTmpValue = valueHolderForColor.value;
        if (valueHolderForColorTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForColorTmpValueForIdx0 = valueHolderForColorTmpValue.value0;
            valueSerializer.writeInt32(static_cast<Ark_Color>(valueHolderForColorTmpValueForIdx0));
        } else if (valueHolderForColorTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForColorTmpValueForIdx1 = valueHolderForColorTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForColorTmpValueForIdx1);
        } else if (valueHolderForColorTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForColorTmpValueForIdx2 = valueHolderForColorTmpValue.value2;
            valueSerializer.writeString(valueHolderForColorTmpValueForIdx2);
        } else if (valueHolderForColorTmpValue.selector == 3) {
            valueSerializer.writeInt8(3);
            const auto valueHolderForColorTmpValueForIdx3 = valueHolderForColorTmpValue.value3;
            Resource_serializer::write(valueSerializer, valueHolderForColorTmpValueForIdx3);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForColorTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForStartMargin = value.startMargin;
    if (runtimeType(valueHolderForStartMargin) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForStartMarginTmpValue = valueHolderForStartMargin.value;
        if (valueHolderForStartMarginTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForStartMarginTmpValueForIdx0 = valueHolderForStartMarginTmpValue.value0;
            valueSerializer.writeString(valueHolderForStartMarginTmpValueForIdx0);
        } else if (valueHolderForStartMarginTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForStartMarginTmpValueForIdx1 = valueHolderForStartMarginTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForStartMarginTmpValueForIdx1);
        } else if (valueHolderForStartMarginTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForStartMarginTmpValueForIdx2 = valueHolderForStartMarginTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForStartMarginTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForStartMarginTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForEndMargin = value.endMargin;
    if (runtimeType(valueHolderForEndMargin) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForEndMarginTmpValue = valueHolderForEndMargin.value;
        if (valueHolderForEndMarginTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForEndMarginTmpValueForIdx0 = valueHolderForEndMarginTmpValue.value0;
            valueSerializer.writeString(valueHolderForEndMarginTmpValueForIdx0);
        } else if (valueHolderForEndMarginTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForEndMarginTmpValueForIdx1 = valueHolderForEndMarginTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForEndMarginTmpValueForIdx1);
        } else if (valueHolderForEndMarginTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForEndMarginTmpValueForIdx2 = valueHolderForEndMarginTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForEndMarginTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForEndMarginTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_DividerOptions DividerOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_DividerOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto strokeWidthTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Dimension strokeWidthTmpBuf = {};
    strokeWidthTmpBuf.tag = strokeWidthTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((strokeWidthTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 strokeWidthTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Dimension strokeWidthTmpBuf_ = {};
        strokeWidthTmpBuf_.selector = strokeWidthTmpBuf_UnionSelector;
        if (strokeWidthTmpBuf_UnionSelector == 0) {
            strokeWidthTmpBuf_.selector = 0;
            strokeWidthTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (strokeWidthTmpBuf_UnionSelector == 1) {
            strokeWidthTmpBuf_.selector = 1;
            strokeWidthTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (strokeWidthTmpBuf_UnionSelector == 2) {
            strokeWidthTmpBuf_.selector = 2;
            strokeWidthTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for strokeWidthTmpBuf_ has to be chosen through deserialisation.");
        }
        strokeWidthTmpBuf.value = static_cast<Ark_Dimension>(strokeWidthTmpBuf_);
    }
    value.strokeWidth = strokeWidthTmpBuf;
    const auto colorTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceColor colorTmpBuf = {};
    colorTmpBuf.tag = colorTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((colorTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 colorTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceColor colorTmpBuf_ = {};
        colorTmpBuf_.selector = colorTmpBuf_UnionSelector;
        if (colorTmpBuf_UnionSelector == 0) {
            colorTmpBuf_.selector = 0;
            colorTmpBuf_.value0 = static_cast<Ark_Color>(valueDeserializer.readInt32());
        } else if (colorTmpBuf_UnionSelector == 1) {
            colorTmpBuf_.selector = 1;
            colorTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (colorTmpBuf_UnionSelector == 2) {
            colorTmpBuf_.selector = 2;
            colorTmpBuf_.value2 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (colorTmpBuf_UnionSelector == 3) {
            colorTmpBuf_.selector = 3;
            colorTmpBuf_.value3 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for colorTmpBuf_ has to be chosen through deserialisation.");
        }
        colorTmpBuf.value = static_cast<Ark_ResourceColor>(colorTmpBuf_);
    }
    value.color = colorTmpBuf;
    const auto startMarginTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Dimension startMarginTmpBuf = {};
    startMarginTmpBuf.tag = startMarginTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((startMarginTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 startMarginTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Dimension startMarginTmpBuf_ = {};
        startMarginTmpBuf_.selector = startMarginTmpBuf_UnionSelector;
        if (startMarginTmpBuf_UnionSelector == 0) {
            startMarginTmpBuf_.selector = 0;
            startMarginTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (startMarginTmpBuf_UnionSelector == 1) {
            startMarginTmpBuf_.selector = 1;
            startMarginTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (startMarginTmpBuf_UnionSelector == 2) {
            startMarginTmpBuf_.selector = 2;
            startMarginTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for startMarginTmpBuf_ has to be chosen through deserialisation.");
        }
        startMarginTmpBuf.value = static_cast<Ark_Dimension>(startMarginTmpBuf_);
    }
    value.startMargin = startMarginTmpBuf;
    const auto endMarginTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Dimension endMarginTmpBuf = {};
    endMarginTmpBuf.tag = endMarginTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((endMarginTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 endMarginTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Dimension endMarginTmpBuf_ = {};
        endMarginTmpBuf_.selector = endMarginTmpBuf_UnionSelector;
        if (endMarginTmpBuf_UnionSelector == 0) {
            endMarginTmpBuf_.selector = 0;
            endMarginTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (endMarginTmpBuf_UnionSelector == 1) {
            endMarginTmpBuf_.selector = 1;
            endMarginTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (endMarginTmpBuf_UnionSelector == 2) {
            endMarginTmpBuf_.selector = 2;
            endMarginTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for endMarginTmpBuf_ has to be chosen through deserialisation.");
        }
        endMarginTmpBuf.value = static_cast<Ark_Dimension>(endMarginTmpBuf_);
    }
    value.endMargin = endMarginTmpBuf;
    return value;
}
void Font_serializer::write(SerializerBase& buffer, Ark_Font value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForSize = value.size;
    if (runtimeType(valueHolderForSize) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSizeTmpValue = valueHolderForSize.value;
        if (valueHolderForSizeTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForSizeTmpValueForIdx0 = valueHolderForSizeTmpValue.value0;
            valueSerializer.writeString(valueHolderForSizeTmpValueForIdx0);
        } else if (valueHolderForSizeTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForSizeTmpValueForIdx1 = valueHolderForSizeTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForSizeTmpValueForIdx1);
        } else if (valueHolderForSizeTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForSizeTmpValueForIdx2 = valueHolderForSizeTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForSizeTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForSizeTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForWeight = value.weight;
    if (runtimeType(valueHolderForWeight) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForWeightTmpValue = valueHolderForWeight.value;
        valueSerializer.writeInt32(static_cast<Ark_FontWeight>(valueHolderForWeightTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForFamily = value.family;
    if (runtimeType(valueHolderForFamily) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForFamilyTmpValue = valueHolderForFamily.value;
        valueSerializer.writeString(valueHolderForFamilyTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForStyle = value.style;
    if (runtimeType(valueHolderForStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForStyleTmpValue = valueHolderForStyle.value;
        valueSerializer.writeInt32(static_cast<Ark_FontStyle>(valueHolderForStyleTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_Font Font_serializer::read(DeserializerBase& buffer)
{
    Ark_Font value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto sizeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length sizeTmpBuf = {};
    sizeTmpBuf.tag = sizeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((sizeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 sizeTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length sizeTmpBuf_ = {};
        sizeTmpBuf_.selector = sizeTmpBuf_UnionSelector;
        if (sizeTmpBuf_UnionSelector == 0) {
            sizeTmpBuf_.selector = 0;
            sizeTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (sizeTmpBuf_UnionSelector == 1) {
            sizeTmpBuf_.selector = 1;
            sizeTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (sizeTmpBuf_UnionSelector == 2) {
            sizeTmpBuf_.selector = 2;
            sizeTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for sizeTmpBuf_ has to be chosen through deserialisation.");
        }
        sizeTmpBuf.value = static_cast<Ark_Length>(sizeTmpBuf_);
    }
    value.size = sizeTmpBuf;
    const auto weightTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_FontWeight weightTmpBuf = {};
    weightTmpBuf.tag = weightTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((weightTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        weightTmpBuf.value = static_cast<Ark_FontWeight>(valueDeserializer.readInt32());
    }
    value.weight = weightTmpBuf;
    const auto familyTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_String familyTmpBuf = {};
    familyTmpBuf.tag = familyTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((familyTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        familyTmpBuf.value = static_cast<Ark_String>(valueDeserializer.readString());
    }
    value.family = familyTmpBuf;
    const auto styleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_FontStyle styleTmpBuf = {};
    styleTmpBuf.tag = styleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((styleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        styleTmpBuf.value = static_cast<Ark_FontStyle>(valueDeserializer.readInt32());
    }
    value.style = styleTmpBuf;
    return value;
}
void MarkStyle_serializer::write(SerializerBase& buffer, Ark_MarkStyle value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForStrokeColor = value.strokeColor;
    if (runtimeType(valueHolderForStrokeColor) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForStrokeColorTmpValue = valueHolderForStrokeColor.value;
        if (valueHolderForStrokeColorTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForStrokeColorTmpValueForIdx0 = valueHolderForStrokeColorTmpValue.value0;
            valueSerializer.writeInt32(static_cast<Ark_Color>(valueHolderForStrokeColorTmpValueForIdx0));
        } else if (valueHolderForStrokeColorTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForStrokeColorTmpValueForIdx1 = valueHolderForStrokeColorTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForStrokeColorTmpValueForIdx1);
        } else if (valueHolderForStrokeColorTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForStrokeColorTmpValueForIdx2 = valueHolderForStrokeColorTmpValue.value2;
            valueSerializer.writeString(valueHolderForStrokeColorTmpValueForIdx2);
        } else if (valueHolderForStrokeColorTmpValue.selector == 3) {
            valueSerializer.writeInt8(3);
            const auto valueHolderForStrokeColorTmpValueForIdx3 = valueHolderForStrokeColorTmpValue.value3;
            Resource_serializer::write(valueSerializer, valueHolderForStrokeColorTmpValueForIdx3);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForStrokeColorTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForSize = value.size;
    if (runtimeType(valueHolderForSize) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSizeTmpValue = valueHolderForSize.value;
        if (valueHolderForSizeTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForSizeTmpValueForIdx0 = valueHolderForSizeTmpValue.value0;
            valueSerializer.writeString(valueHolderForSizeTmpValueForIdx0);
        } else if (valueHolderForSizeTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForSizeTmpValueForIdx1 = valueHolderForSizeTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForSizeTmpValueForIdx1);
        } else if (valueHolderForSizeTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForSizeTmpValueForIdx2 = valueHolderForSizeTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForSizeTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForSizeTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForStrokeWidth = value.strokeWidth;
    if (runtimeType(valueHolderForStrokeWidth) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForStrokeWidthTmpValue = valueHolderForStrokeWidth.value;
        if (valueHolderForStrokeWidthTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForStrokeWidthTmpValueForIdx0 = valueHolderForStrokeWidthTmpValue.value0;
            valueSerializer.writeString(valueHolderForStrokeWidthTmpValueForIdx0);
        } else if (valueHolderForStrokeWidthTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForStrokeWidthTmpValueForIdx1 = valueHolderForStrokeWidthTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForStrokeWidthTmpValueForIdx1);
        } else if (valueHolderForStrokeWidthTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForStrokeWidthTmpValueForIdx2 = valueHolderForStrokeWidthTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForStrokeWidthTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForStrokeWidthTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_MarkStyle MarkStyle_serializer::read(DeserializerBase& buffer)
{
    Ark_MarkStyle value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto strokeColorTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceColor strokeColorTmpBuf = {};
    strokeColorTmpBuf.tag = strokeColorTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((strokeColorTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 strokeColorTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceColor strokeColorTmpBuf_ = {};
        strokeColorTmpBuf_.selector = strokeColorTmpBuf_UnionSelector;
        if (strokeColorTmpBuf_UnionSelector == 0) {
            strokeColorTmpBuf_.selector = 0;
            strokeColorTmpBuf_.value0 = static_cast<Ark_Color>(valueDeserializer.readInt32());
        } else if (strokeColorTmpBuf_UnionSelector == 1) {
            strokeColorTmpBuf_.selector = 1;
            strokeColorTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (strokeColorTmpBuf_UnionSelector == 2) {
            strokeColorTmpBuf_.selector = 2;
            strokeColorTmpBuf_.value2 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (strokeColorTmpBuf_UnionSelector == 3) {
            strokeColorTmpBuf_.selector = 3;
            strokeColorTmpBuf_.value3 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for strokeColorTmpBuf_ has to be chosen through deserialisation.");
        }
        strokeColorTmpBuf.value = static_cast<Ark_ResourceColor>(strokeColorTmpBuf_);
    }
    value.strokeColor = strokeColorTmpBuf;
    const auto sizeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length sizeTmpBuf = {};
    sizeTmpBuf.tag = sizeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((sizeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 sizeTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length sizeTmpBuf_ = {};
        sizeTmpBuf_.selector = sizeTmpBuf_UnionSelector;
        if (sizeTmpBuf_UnionSelector == 0) {
            sizeTmpBuf_.selector = 0;
            sizeTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (sizeTmpBuf_UnionSelector == 1) {
            sizeTmpBuf_.selector = 1;
            sizeTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (sizeTmpBuf_UnionSelector == 2) {
            sizeTmpBuf_.selector = 2;
            sizeTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for sizeTmpBuf_ has to be chosen through deserialisation.");
        }
        sizeTmpBuf.value = static_cast<Ark_Length>(sizeTmpBuf_);
    }
    value.size = sizeTmpBuf;
    const auto strokeWidthTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length strokeWidthTmpBuf = {};
    strokeWidthTmpBuf.tag = strokeWidthTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((strokeWidthTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 strokeWidthTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length strokeWidthTmpBuf_ = {};
        strokeWidthTmpBuf_.selector = strokeWidthTmpBuf_UnionSelector;
        if (strokeWidthTmpBuf_UnionSelector == 0) {
            strokeWidthTmpBuf_.selector = 0;
            strokeWidthTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (strokeWidthTmpBuf_UnionSelector == 1) {
            strokeWidthTmpBuf_.selector = 1;
            strokeWidthTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (strokeWidthTmpBuf_UnionSelector == 2) {
            strokeWidthTmpBuf_.selector = 2;
            strokeWidthTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for strokeWidthTmpBuf_ has to be chosen through deserialisation.");
        }
        strokeWidthTmpBuf.value = static_cast<Ark_Length>(strokeWidthTmpBuf_);
    }
    value.strokeWidth = strokeWidthTmpBuf;
    return value;
}
void Position_serializer::write(SerializerBase& buffer, Ark_Position value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForX = value.x;
    if (runtimeType(valueHolderForX) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForXTmpValue = valueHolderForX.value;
        if (valueHolderForXTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForXTmpValueForIdx0 = valueHolderForXTmpValue.value0;
            valueSerializer.writeString(valueHolderForXTmpValueForIdx0);
        } else if (valueHolderForXTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForXTmpValueForIdx1 = valueHolderForXTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForXTmpValueForIdx1);
        } else if (valueHolderForXTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForXTmpValueForIdx2 = valueHolderForXTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForXTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForXTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForY = value.y;
    if (runtimeType(valueHolderForY) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForYTmpValue = valueHolderForY.value;
        if (valueHolderForYTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForYTmpValueForIdx0 = valueHolderForYTmpValue.value0;
            valueSerializer.writeString(valueHolderForYTmpValueForIdx0);
        } else if (valueHolderForYTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForYTmpValueForIdx1 = valueHolderForYTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForYTmpValueForIdx1);
        } else if (valueHolderForYTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForYTmpValueForIdx2 = valueHolderForYTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForYTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForYTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_Position Position_serializer::read(DeserializerBase& buffer)
{
    Ark_Position value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto xTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length xTmpBuf = {};
    xTmpBuf.tag = xTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((xTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 xTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length xTmpBuf_ = {};
        xTmpBuf_.selector = xTmpBuf_UnionSelector;
        if (xTmpBuf_UnionSelector == 0) {
            xTmpBuf_.selector = 0;
            xTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (xTmpBuf_UnionSelector == 1) {
            xTmpBuf_.selector = 1;
            xTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (xTmpBuf_UnionSelector == 2) {
            xTmpBuf_.selector = 2;
            xTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for xTmpBuf_ has to be chosen through deserialisation.");
        }
        xTmpBuf.value = static_cast<Ark_Length>(xTmpBuf_);
    }
    value.x = xTmpBuf;
    const auto yTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length yTmpBuf = {};
    yTmpBuf.tag = yTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((yTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 yTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length yTmpBuf_ = {};
        yTmpBuf_.selector = yTmpBuf_UnionSelector;
        if (yTmpBuf_UnionSelector == 0) {
            yTmpBuf_.selector = 0;
            yTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (yTmpBuf_UnionSelector == 1) {
            yTmpBuf_.selector = 1;
            yTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (yTmpBuf_UnionSelector == 2) {
            yTmpBuf_.selector = 2;
            yTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for yTmpBuf_ has to be chosen through deserialisation.");
        }
        yTmpBuf.value = static_cast<Ark_Length>(yTmpBuf_);
    }
    value.y = yTmpBuf;
    return value;
}
void Rectangle_serializer::write(SerializerBase& buffer, Ark_Rectangle value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForX = value.x;
    if (runtimeType(valueHolderForX) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForXTmpValue = valueHolderForX.value;
        if (valueHolderForXTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForXTmpValueForIdx0 = valueHolderForXTmpValue.value0;
            valueSerializer.writeString(valueHolderForXTmpValueForIdx0);
        } else if (valueHolderForXTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForXTmpValueForIdx1 = valueHolderForXTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForXTmpValueForIdx1);
        } else if (valueHolderForXTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForXTmpValueForIdx2 = valueHolderForXTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForXTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForXTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForY = value.y;
    if (runtimeType(valueHolderForY) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForYTmpValue = valueHolderForY.value;
        if (valueHolderForYTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForYTmpValueForIdx0 = valueHolderForYTmpValue.value0;
            valueSerializer.writeString(valueHolderForYTmpValueForIdx0);
        } else if (valueHolderForYTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForYTmpValueForIdx1 = valueHolderForYTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForYTmpValueForIdx1);
        } else if (valueHolderForYTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForYTmpValueForIdx2 = valueHolderForYTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForYTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForYTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForWidth = value.width;
    if (runtimeType(valueHolderForWidth) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForWidthTmpValue = valueHolderForWidth.value;
        if (valueHolderForWidthTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.value0;
            valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0);
        } else if (valueHolderForWidthTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx1);
        } else if (valueHolderForWidthTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForWidthTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForWidthTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForHeight = value.height;
    if (runtimeType(valueHolderForHeight) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForHeightTmpValue = valueHolderForHeight.value;
        if (valueHolderForHeightTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.value0;
            valueSerializer.writeString(valueHolderForHeightTmpValueForIdx0);
        } else if (valueHolderForHeightTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx1);
        } else if (valueHolderForHeightTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForHeightTmpValueForIdx2 = valueHolderForHeightTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForHeightTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForHeightTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_Rectangle Rectangle_serializer::read(DeserializerBase& buffer)
{
    Ark_Rectangle value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto xTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length xTmpBuf = {};
    xTmpBuf.tag = xTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((xTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 xTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length xTmpBuf_ = {};
        xTmpBuf_.selector = xTmpBuf_UnionSelector;
        if (xTmpBuf_UnionSelector == 0) {
            xTmpBuf_.selector = 0;
            xTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (xTmpBuf_UnionSelector == 1) {
            xTmpBuf_.selector = 1;
            xTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (xTmpBuf_UnionSelector == 2) {
            xTmpBuf_.selector = 2;
            xTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for xTmpBuf_ has to be chosen through deserialisation.");
        }
        xTmpBuf.value = static_cast<Ark_Length>(xTmpBuf_);
    }
    value.x = xTmpBuf;
    const auto yTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length yTmpBuf = {};
    yTmpBuf.tag = yTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((yTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 yTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length yTmpBuf_ = {};
        yTmpBuf_.selector = yTmpBuf_UnionSelector;
        if (yTmpBuf_UnionSelector == 0) {
            yTmpBuf_.selector = 0;
            yTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (yTmpBuf_UnionSelector == 1) {
            yTmpBuf_.selector = 1;
            yTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (yTmpBuf_UnionSelector == 2) {
            yTmpBuf_.selector = 2;
            yTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for yTmpBuf_ has to be chosen through deserialisation.");
        }
        yTmpBuf.value = static_cast<Ark_Length>(yTmpBuf_);
    }
    value.y = yTmpBuf;
    const auto widthTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length widthTmpBuf = {};
    widthTmpBuf.tag = widthTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((widthTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 widthTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length widthTmpBuf_ = {};
        widthTmpBuf_.selector = widthTmpBuf_UnionSelector;
        if (widthTmpBuf_UnionSelector == 0) {
            widthTmpBuf_.selector = 0;
            widthTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (widthTmpBuf_UnionSelector == 1) {
            widthTmpBuf_.selector = 1;
            widthTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (widthTmpBuf_UnionSelector == 2) {
            widthTmpBuf_.selector = 2;
            widthTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.");
        }
        widthTmpBuf.value = static_cast<Ark_Length>(widthTmpBuf_);
    }
    value.width = widthTmpBuf;
    const auto heightTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length heightTmpBuf = {};
    heightTmpBuf.tag = heightTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((heightTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 heightTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length heightTmpBuf_ = {};
        heightTmpBuf_.selector = heightTmpBuf_UnionSelector;
        if (heightTmpBuf_UnionSelector == 0) {
            heightTmpBuf_.selector = 0;
            heightTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (heightTmpBuf_UnionSelector == 1) {
            heightTmpBuf_.selector = 1;
            heightTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (heightTmpBuf_UnionSelector == 2) {
            heightTmpBuf_.selector = 2;
            heightTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for heightTmpBuf_ has to be chosen through deserialisation.");
        }
        heightTmpBuf.value = static_cast<Ark_Length>(heightTmpBuf_);
    }
    value.height = heightTmpBuf;
    return value;
}
void SheetOptions_serializer::write(SerializerBase& buffer, Ark_SheetOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForBackgroundColor = value.backgroundColor;
    if (runtimeType(valueHolderForBackgroundColor) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor.value;
        if (valueHolderForBackgroundColorTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.value0;
            valueSerializer.writeInt32(static_cast<Ark_Color>(valueHolderForBackgroundColorTmpValueForIdx0));
        } else if (valueHolderForBackgroundColorTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1);
        } else if (valueHolderForBackgroundColorTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.value2;
            valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2);
        } else if (valueHolderForBackgroundColorTmpValue.selector == 3) {
            valueSerializer.writeInt8(3);
            const auto valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.value3;
            Resource_serializer::write(valueSerializer, valueHolderForBackgroundColorTmpValueForIdx3);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForBackgroundColorTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForHeight = value.height;
    if (runtimeType(valueHolderForHeight) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForHeightTmpValue = valueHolderForHeight.value;
        valueSerializer.writeInt32(static_cast<Ark_SheetSize>(valueHolderForHeightTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForDragBar = value.dragBar;
    if (runtimeType(valueHolderForDragBar) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForDragBarTmpValue = valueHolderForDragBar.value;
        valueSerializer.writeBoolean(valueHolderForDragBarTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForMaskColor = value.maskColor;
    if (runtimeType(valueHolderForMaskColor) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForMaskColorTmpValue = valueHolderForMaskColor.value;
        if (valueHolderForMaskColorTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForMaskColorTmpValueForIdx0 = valueHolderForMaskColorTmpValue.value0;
            valueSerializer.writeInt32(static_cast<Ark_Color>(valueHolderForMaskColorTmpValueForIdx0));
        } else if (valueHolderForMaskColorTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForMaskColorTmpValueForIdx1 = valueHolderForMaskColorTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForMaskColorTmpValueForIdx1);
        } else if (valueHolderForMaskColorTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForMaskColorTmpValueForIdx2 = valueHolderForMaskColorTmpValue.value2;
            valueSerializer.writeString(valueHolderForMaskColorTmpValueForIdx2);
        } else if (valueHolderForMaskColorTmpValue.selector == 3) {
            valueSerializer.writeInt8(3);
            const auto valueHolderForMaskColorTmpValueForIdx3 = valueHolderForMaskColorTmpValue.value3;
            Resource_serializer::write(valueSerializer, valueHolderForMaskColorTmpValueForIdx3);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForMaskColorTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBlurStyle = value.blurStyle;
    if (runtimeType(valueHolderForBlurStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBlurStyleTmpValue = valueHolderForBlurStyle.value;
        valueSerializer.writeInt32(static_cast<Ark_BlurStyle>(valueHolderForBlurStyleTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForShowClose = value.showClose;
    if (runtimeType(valueHolderForShowClose) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForShowCloseTmpValue = valueHolderForShowClose.value;
        valueSerializer.writeBoolean(valueHolderForShowCloseTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForPreferType = value.preferType;
    if (runtimeType(valueHolderForPreferType) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForPreferTypeTmpValue = valueHolderForPreferType.value;
        valueSerializer.writeInt32(static_cast<Ark_SheetType>(valueHolderForPreferTypeTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForTitle = value.title;
    if (runtimeType(valueHolderForTitle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTitleTmpValue = valueHolderForTitle.value;
        SheetTitleOptions_serializer::write(valueSerializer, valueHolderForTitleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForEnableOutsideInteractive = value.enableOutsideInteractive;
    if (runtimeType(valueHolderForEnableOutsideInteractive) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForEnableOutsideInteractiveTmpValue = valueHolderForEnableOutsideInteractive.value;
        valueSerializer.writeBoolean(valueHolderForEnableOutsideInteractiveTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBorderStyle = value.borderStyle;
    if (runtimeType(valueHolderForBorderStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBorderStyleTmpValue = valueHolderForBorderStyle.value;
        valueSerializer.writeInt32(static_cast<Ark_BorderStyle>(valueHolderForBorderStyleTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForMode = value.mode;
    if (runtimeType(valueHolderForMode) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForModeTmpValue = valueHolderForMode.value;
        valueSerializer.writeInt32(static_cast<Ark_SheetMode>(valueHolderForModeTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForUiContext = value.uiContext;
    if (runtimeType(valueHolderForUiContext) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForUiContextTmpValue = valueHolderForUiContext.value;
        valueSerializer.writeCustomObject("Any", valueHolderForUiContextTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_SheetOptions SheetOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_SheetOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto backgroundColorTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceColor backgroundColorTmpBuf = {};
    backgroundColorTmpBuf.tag = backgroundColorTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((backgroundColorTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 backgroundColorTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceColor backgroundColorTmpBuf_ = {};
        backgroundColorTmpBuf_.selector = backgroundColorTmpBuf_UnionSelector;
        if (backgroundColorTmpBuf_UnionSelector == 0) {
            backgroundColorTmpBuf_.selector = 0;
            backgroundColorTmpBuf_.value0 = static_cast<Ark_Color>(valueDeserializer.readInt32());
        } else if (backgroundColorTmpBuf_UnionSelector == 1) {
            backgroundColorTmpBuf_.selector = 1;
            backgroundColorTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (backgroundColorTmpBuf_UnionSelector == 2) {
            backgroundColorTmpBuf_.selector = 2;
            backgroundColorTmpBuf_.value2 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (backgroundColorTmpBuf_UnionSelector == 3) {
            backgroundColorTmpBuf_.selector = 3;
            backgroundColorTmpBuf_.value3 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.");
        }
        backgroundColorTmpBuf.value = static_cast<Ark_ResourceColor>(backgroundColorTmpBuf_);
    }
    value.backgroundColor = backgroundColorTmpBuf;
    const auto heightTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_SheetSize heightTmpBuf = {};
    heightTmpBuf.tag = heightTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((heightTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        heightTmpBuf.value = static_cast<Ark_SheetSize>(valueDeserializer.readInt32());
    }
    value.height = heightTmpBuf;
    const auto dragBarTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean dragBarTmpBuf = {};
    dragBarTmpBuf.tag = dragBarTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((dragBarTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        dragBarTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.dragBar = dragBarTmpBuf;
    const auto maskColorTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceColor maskColorTmpBuf = {};
    maskColorTmpBuf.tag = maskColorTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((maskColorTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 maskColorTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceColor maskColorTmpBuf_ = {};
        maskColorTmpBuf_.selector = maskColorTmpBuf_UnionSelector;
        if (maskColorTmpBuf_UnionSelector == 0) {
            maskColorTmpBuf_.selector = 0;
            maskColorTmpBuf_.value0 = static_cast<Ark_Color>(valueDeserializer.readInt32());
        } else if (maskColorTmpBuf_UnionSelector == 1) {
            maskColorTmpBuf_.selector = 1;
            maskColorTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (maskColorTmpBuf_UnionSelector == 2) {
            maskColorTmpBuf_.selector = 2;
            maskColorTmpBuf_.value2 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (maskColorTmpBuf_UnionSelector == 3) {
            maskColorTmpBuf_.selector = 3;
            maskColorTmpBuf_.value3 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for maskColorTmpBuf_ has to be chosen through deserialisation.");
        }
        maskColorTmpBuf.value = static_cast<Ark_ResourceColor>(maskColorTmpBuf_);
    }
    value.maskColor = maskColorTmpBuf;
    const auto blurStyleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_BlurStyle blurStyleTmpBuf = {};
    blurStyleTmpBuf.tag = blurStyleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((blurStyleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        blurStyleTmpBuf.value = static_cast<Ark_BlurStyle>(valueDeserializer.readInt32());
    }
    value.blurStyle = blurStyleTmpBuf;
    const auto showCloseTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean showCloseTmpBuf = {};
    showCloseTmpBuf.tag = showCloseTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((showCloseTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        showCloseTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.showClose = showCloseTmpBuf;
    const auto preferTypeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_SheetType preferTypeTmpBuf = {};
    preferTypeTmpBuf.tag = preferTypeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((preferTypeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        preferTypeTmpBuf.value = static_cast<Ark_SheetType>(valueDeserializer.readInt32());
    }
    value.preferType = preferTypeTmpBuf;
    const auto titleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_SheetTitleOptions titleTmpBuf = {};
    titleTmpBuf.tag = titleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((titleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        titleTmpBuf.value = SheetTitleOptions_serializer::read(valueDeserializer);
    }
    value.title = titleTmpBuf;
    const auto enableOutsideInteractiveTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean enableOutsideInteractiveTmpBuf = {};
    enableOutsideInteractiveTmpBuf.tag = enableOutsideInteractiveTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((enableOutsideInteractiveTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        enableOutsideInteractiveTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.enableOutsideInteractive = enableOutsideInteractiveTmpBuf;
    const auto borderStyleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_BorderStyle borderStyleTmpBuf = {};
    borderStyleTmpBuf.tag = borderStyleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((borderStyleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        borderStyleTmpBuf.value = static_cast<Ark_BorderStyle>(valueDeserializer.readInt32());
    }
    value.borderStyle = borderStyleTmpBuf;
    const auto modeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_SheetMode modeTmpBuf = {};
    modeTmpBuf.tag = modeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((modeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        modeTmpBuf.value = static_cast<Ark_SheetMode>(valueDeserializer.readInt32());
    }
    value.mode = modeTmpBuf;
    const auto uiContextTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject uiContextTmpBuf = {};
    uiContextTmpBuf.tag = uiContextTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((uiContextTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        uiContextTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.uiContext = uiContextTmpBuf;
    return value;
}
void SizeOptions_serializer::write(SerializerBase& buffer, Ark_SizeOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForWidth = value.width;
    if (runtimeType(valueHolderForWidth) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForWidthTmpValue = valueHolderForWidth.value;
        if (valueHolderForWidthTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.value0;
            valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0);
        } else if (valueHolderForWidthTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx1);
        } else if (valueHolderForWidthTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForWidthTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForWidthTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForHeight = value.height;
    if (runtimeType(valueHolderForHeight) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForHeightTmpValue = valueHolderForHeight.value;
        if (valueHolderForHeightTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.value0;
            valueSerializer.writeString(valueHolderForHeightTmpValueForIdx0);
        } else if (valueHolderForHeightTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx1);
        } else if (valueHolderForHeightTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForHeightTmpValueForIdx2 = valueHolderForHeightTmpValue.value2;
            Resource_serializer::write(valueSerializer, valueHolderForHeightTmpValueForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForHeightTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_SizeOptions SizeOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_SizeOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto widthTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length widthTmpBuf = {};
    widthTmpBuf.tag = widthTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((widthTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 widthTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length widthTmpBuf_ = {};
        widthTmpBuf_.selector = widthTmpBuf_UnionSelector;
        if (widthTmpBuf_UnionSelector == 0) {
            widthTmpBuf_.selector = 0;
            widthTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (widthTmpBuf_UnionSelector == 1) {
            widthTmpBuf_.selector = 1;
            widthTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (widthTmpBuf_UnionSelector == 2) {
            widthTmpBuf_.selector = 2;
            widthTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for widthTmpBuf_ has to be chosen through deserialisation.");
        }
        widthTmpBuf.value = static_cast<Ark_Length>(widthTmpBuf_);
    }
    value.width = widthTmpBuf;
    const auto heightTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Length heightTmpBuf = {};
    heightTmpBuf.tag = heightTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((heightTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 heightTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_Length heightTmpBuf_ = {};
        heightTmpBuf_.selector = heightTmpBuf_UnionSelector;
        if (heightTmpBuf_UnionSelector == 0) {
            heightTmpBuf_.selector = 0;
            heightTmpBuf_.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (heightTmpBuf_UnionSelector == 1) {
            heightTmpBuf_.selector = 1;
            heightTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (heightTmpBuf_UnionSelector == 2) {
            heightTmpBuf_.selector = 2;
            heightTmpBuf_.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for heightTmpBuf_ has to be chosen through deserialisation.");
        }
        heightTmpBuf.value = static_cast<Ark_Length>(heightTmpBuf_);
    }
    value.height = heightTmpBuf;
    return value;
}
void LabelStyle_serializer::write(SerializerBase& buffer, Ark_LabelStyle value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForOverflow = value.overflow;
    if (runtimeType(valueHolderForOverflow) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOverflowTmpValue = valueHolderForOverflow.value;
        valueSerializer.writeInt32(static_cast<Ark_TextOverflow>(valueHolderForOverflowTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForMaxLines = value.maxLines;
    if (runtimeType(valueHolderForMaxLines) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForMaxLinesTmpValue = valueHolderForMaxLines.value;
        valueSerializer.writeInt32(valueHolderForMaxLinesTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForMinFontSize = value.minFontSize;
    if (runtimeType(valueHolderForMinFontSize) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForMinFontSizeTmpValue = valueHolderForMinFontSize.value;
        valueSerializer.writeNumber(valueHolderForMinFontSizeTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForMaxFontSize = value.maxFontSize;
    if (runtimeType(valueHolderForMaxFontSize) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForMaxFontSizeTmpValue = valueHolderForMaxFontSize.value;
        valueSerializer.writeNumber(valueHolderForMaxFontSizeTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForHeightAdaptivePolicy = value.heightAdaptivePolicy;
    if (runtimeType(valueHolderForHeightAdaptivePolicy) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForHeightAdaptivePolicyTmpValue = valueHolderForHeightAdaptivePolicy.value;
        valueSerializer.writeInt32(static_cast<Ark_TextHeightAdaptivePolicy>(valueHolderForHeightAdaptivePolicyTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForFont = value.font;
    if (runtimeType(valueHolderForFont) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForFontTmpValue = valueHolderForFont.value;
        Font_serializer::write(valueSerializer, valueHolderForFontTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_LabelStyle LabelStyle_serializer::read(DeserializerBase& buffer)
{
    Ark_LabelStyle value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto overflowTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_TextOverflow overflowTmpBuf = {};
    overflowTmpBuf.tag = overflowTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((overflowTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        overflowTmpBuf.value = static_cast<Ark_TextOverflow>(valueDeserializer.readInt32());
    }
    value.overflow = overflowTmpBuf;
    const auto maxLinesTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Int32 maxLinesTmpBuf = {};
    maxLinesTmpBuf.tag = maxLinesTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((maxLinesTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        maxLinesTmpBuf.value = valueDeserializer.readInt32();
    }
    value.maxLines = maxLinesTmpBuf;
    const auto minFontSizeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Number minFontSizeTmpBuf = {};
    minFontSizeTmpBuf.tag = minFontSizeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((minFontSizeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        minFontSizeTmpBuf.value = static_cast<Ark_Number>(valueDeserializer.readNumber());
    }
    value.minFontSize = minFontSizeTmpBuf;
    const auto maxFontSizeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Number maxFontSizeTmpBuf = {};
    maxFontSizeTmpBuf.tag = maxFontSizeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((maxFontSizeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        maxFontSizeTmpBuf.value = static_cast<Ark_Number>(valueDeserializer.readNumber());
    }
    value.maxFontSize = maxFontSizeTmpBuf;
    const auto heightAdaptivePolicyTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_TextHeightAdaptivePolicy heightAdaptivePolicyTmpBuf = {};
    heightAdaptivePolicyTmpBuf.tag = heightAdaptivePolicyTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((heightAdaptivePolicyTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        heightAdaptivePolicyTmpBuf.value = static_cast<Ark_TextHeightAdaptivePolicy>(valueDeserializer.readInt32());
    }
    value.heightAdaptivePolicy = heightAdaptivePolicyTmpBuf;
    const auto fontTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Font fontTmpBuf = {};
    fontTmpBuf.tag = fontTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((fontTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        fontTmpBuf.value = Font_serializer::read(valueDeserializer);
    }
    value.font = fontTmpBuf;
    return value;
}
void TextPickerDialogOptions_serializer::write(SerializerBase& buffer, Ark_TextPickerDialogOptions value)
{
    SerializerBase& valueSerializer = buffer;
    const auto valueHolderForRange = value.range;
    if (runtimeType(valueHolderForRange) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForRangeTmpValue = valueHolderForRange.value;
        valueSerializer.writeInt32(valueHolderForRangeTmpValue.length);
        for (int valueHolderForRangeTmpValueCounterI = 0; valueHolderForRangeTmpValueCounterI < valueHolderForRangeTmpValue.length; valueHolderForRangeTmpValueCounterI++) {
            const Ark_String valueHolderForRangeTmpValueTmpElement = valueHolderForRangeTmpValue.array[valueHolderForRangeTmpValueCounterI];
            valueSerializer.writeString(valueHolderForRangeTmpValueTmpElement);
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForValue = value.value;
    if (runtimeType(valueHolderForValue) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForValueTmpValue = valueHolderForValue.value;
        valueSerializer.writeString(valueHolderForValueTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForSelected = value.selected;
    if (runtimeType(valueHolderForSelected) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSelectedTmpValue = valueHolderForSelected.value;
        valueSerializer.writeNumber(valueHolderForSelectedTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForDefaultPickerItemHeight = value.defaultPickerItemHeight;
    if (runtimeType(valueHolderForDefaultPickerItemHeight) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForDefaultPickerItemHeightTmpValue = valueHolderForDefaultPickerItemHeight.value;
        valueSerializer.writeNumber(valueHolderForDefaultPickerItemHeightTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForCanLoop = value.canLoop;
    if (runtimeType(valueHolderForCanLoop) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForCanLoopTmpValue = valueHolderForCanLoop.value;
        valueSerializer.writeBoolean(valueHolderForCanLoopTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForDisappearTextStyle = value.disappearTextStyle;
    if (runtimeType(valueHolderForDisappearTextStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForDisappearTextStyleTmpValue = valueHolderForDisappearTextStyle.value;
        valueSerializer.writeCustomObject("Any", valueHolderForDisappearTextStyleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForTextStyle = value.textStyle;
    if (runtimeType(valueHolderForTextStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForTextStyleTmpValue = valueHolderForTextStyle.value;
        valueSerializer.writeCustomObject("Any", valueHolderForTextStyleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForAcceptButtonStyle = value.acceptButtonStyle;
    if (runtimeType(valueHolderForAcceptButtonStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForAcceptButtonStyleTmpValue = valueHolderForAcceptButtonStyle.value;
        valueSerializer.writeCustomObject("Any", valueHolderForAcceptButtonStyleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForCancelButtonStyle = value.cancelButtonStyle;
    if (runtimeType(valueHolderForCancelButtonStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForCancelButtonStyleTmpValue = valueHolderForCancelButtonStyle.value;
        valueSerializer.writeCustomObject("Any", valueHolderForCancelButtonStyleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForSelectedTextStyle = value.selectedTextStyle;
    if (runtimeType(valueHolderForSelectedTextStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForSelectedTextStyleTmpValue = valueHolderForSelectedTextStyle.value;
        valueSerializer.writeCustomObject("Any", valueHolderForSelectedTextStyleTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnAccept = value.onAccept;
    if (runtimeType(valueHolderForOnAccept) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnAcceptTmpValue = valueHolderForOnAccept.value;
        valueSerializer.writeCallbackResource(valueHolderForOnAcceptTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnAcceptTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnAcceptTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnCancel = value.onCancel;
    if (runtimeType(valueHolderForOnCancel) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnCancelTmpValue = valueHolderForOnCancel.value;
        valueSerializer.writeCallbackResource(valueHolderForOnCancelTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnCancelTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnCancelTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnChange = value.onChange;
    if (runtimeType(valueHolderForOnChange) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnChangeTmpValue = valueHolderForOnChange.value;
        valueSerializer.writeCallbackResource(valueHolderForOnChangeTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnChangeTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnChangeTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnScrollStop = value.onScrollStop;
    if (runtimeType(valueHolderForOnScrollStop) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnScrollStopTmpValue = valueHolderForOnScrollStop.value;
        valueSerializer.writeCallbackResource(valueHolderForOnScrollStopTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnScrollStopTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnScrollStopTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForMaskRect = value.maskRect;
    if (runtimeType(valueHolderForMaskRect) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForMaskRectTmpValue = valueHolderForMaskRect.value;
        Rectangle_serializer::write(valueSerializer, valueHolderForMaskRectTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForAlignment = value.alignment;
    if (runtimeType(valueHolderForAlignment) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForAlignmentTmpValue = valueHolderForAlignment.value;
        valueSerializer.writeCustomObject("Any", valueHolderForAlignmentTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOffset = value.offset;
    if (runtimeType(valueHolderForOffset) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOffsetTmpValue = valueHolderForOffset.value;
        const auto valueHolderForOffsetTmpValueDx = valueHolderForOffsetTmpValue.dx;
        if (valueHolderForOffsetTmpValueDx.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForOffsetTmpValueDxForIdx0 = valueHolderForOffsetTmpValueDx.value0;
            valueSerializer.writeString(valueHolderForOffsetTmpValueDxForIdx0);
        } else if (valueHolderForOffsetTmpValueDx.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForOffsetTmpValueDxForIdx1 = valueHolderForOffsetTmpValueDx.value1;
            valueSerializer.writeNumber(valueHolderForOffsetTmpValueDxForIdx1);
        } else if (valueHolderForOffsetTmpValueDx.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForOffsetTmpValueDxForIdx2 = valueHolderForOffsetTmpValueDx.value2;
            Resource_serializer::write(valueSerializer, valueHolderForOffsetTmpValueDxForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForOffsetTmpValueDx has to be chosen for serialisation.");
        }
        const auto valueHolderForOffsetTmpValueDy = valueHolderForOffsetTmpValue.dy;
        if (valueHolderForOffsetTmpValueDy.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForOffsetTmpValueDyForIdx0 = valueHolderForOffsetTmpValueDy.value0;
            valueSerializer.writeString(valueHolderForOffsetTmpValueDyForIdx0);
        } else if (valueHolderForOffsetTmpValueDy.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForOffsetTmpValueDyForIdx1 = valueHolderForOffsetTmpValueDy.value1;
            valueSerializer.writeNumber(valueHolderForOffsetTmpValueDyForIdx1);
        } else if (valueHolderForOffsetTmpValueDy.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForOffsetTmpValueDyForIdx2 = valueHolderForOffsetTmpValueDy.value2;
            Resource_serializer::write(valueSerializer, valueHolderForOffsetTmpValueDyForIdx2);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForOffsetTmpValueDy has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBackgroundColor = value.backgroundColor;
    if (runtimeType(valueHolderForBackgroundColor) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor.value;
        if (valueHolderForBackgroundColorTmpValue.selector == 0) {
            valueSerializer.writeInt8(0);
            const auto valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.value0;
            valueSerializer.writeInt32(static_cast<Ark_Color>(valueHolderForBackgroundColorTmpValueForIdx0));
        } else if (valueHolderForBackgroundColorTmpValue.selector == 1) {
            valueSerializer.writeInt8(1);
            const auto valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.value1;
            valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1);
        } else if (valueHolderForBackgroundColorTmpValue.selector == 2) {
            valueSerializer.writeInt8(2);
            const auto valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.value2;
            valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2);
        } else if (valueHolderForBackgroundColorTmpValue.selector == 3) {
            valueSerializer.writeInt8(3);
            const auto valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.value3;
            Resource_serializer::write(valueSerializer, valueHolderForBackgroundColorTmpValueForIdx3);
        } else {
            INTEROP_FATAL("One of the branches for valueHolderForBackgroundColorTmpValue has to be chosen for serialisation.");
        }
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForBackgroundBlurStyle = value.backgroundBlurStyle;
    if (runtimeType(valueHolderForBackgroundBlurStyle) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForBackgroundBlurStyleTmpValue = valueHolderForBackgroundBlurStyle.value;
        valueSerializer.writeInt32(static_cast<Ark_BlurStyle>(valueHolderForBackgroundBlurStyleTmpValue));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnDidAppear = value.onDidAppear;
    if (runtimeType(valueHolderForOnDidAppear) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnDidAppearTmpValue = valueHolderForOnDidAppear.value;
        valueSerializer.writeCallbackResource(valueHolderForOnDidAppearTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnDidAppearTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnDidAppearTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnDidDisappear = value.onDidDisappear;
    if (runtimeType(valueHolderForOnDidDisappear) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnDidDisappearTmpValue = valueHolderForOnDidDisappear.value;
        valueSerializer.writeCallbackResource(valueHolderForOnDidDisappearTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnDidDisappearTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnDidDisappearTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnWillAppear = value.onWillAppear;
    if (runtimeType(valueHolderForOnWillAppear) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnWillAppearTmpValue = valueHolderForOnWillAppear.value;
        valueSerializer.writeCallbackResource(valueHolderForOnWillAppearTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnWillAppearTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnWillAppearTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForOnWillDisappear = value.onWillDisappear;
    if (runtimeType(valueHolderForOnWillDisappear) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForOnWillDisappearTmpValue = valueHolderForOnWillDisappear.value;
        valueSerializer.writeCallbackResource(valueHolderForOnWillDisappearTmpValue.resource);
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnWillDisappearTmpValue.call));
        valueSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(valueHolderForOnWillDisappearTmpValue.callSync));
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForShadow = value.shadow;
    if (runtimeType(valueHolderForShadow) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForShadowTmpValue = valueHolderForShadow.value;
        valueSerializer.writeCustomObject("Any", valueHolderForShadowTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForEnableHoverMode = value.enableHoverMode;
    if (runtimeType(valueHolderForEnableHoverMode) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForEnableHoverModeTmpValue = valueHolderForEnableHoverMode.value;
        valueSerializer.writeBoolean(valueHolderForEnableHoverModeTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
    const auto valueHolderForHoverModeArea = value.hoverModeArea;
    if (runtimeType(valueHolderForHoverModeArea) != INTEROP_RUNTIME_UNDEFINED) {
        valueSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
        const auto valueHolderForHoverModeAreaTmpValue = valueHolderForHoverModeArea.value;
        valueSerializer.writeCustomObject("Any", valueHolderForHoverModeAreaTmpValue);
    } else {
        valueSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
    }
}
Ark_TextPickerDialogOptions TextPickerDialogOptions_serializer::read(DeserializerBase& buffer)
{
    Ark_TextPickerDialogOptions value = {};
    DeserializerBase& valueDeserializer = buffer;
    const auto rangeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Array_String rangeTmpBuf = {};
    rangeTmpBuf.tag = rangeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((rangeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int32 rangeTmpBuf_Length = valueDeserializer.readInt32();
        Array_String rangeTmpBuf_ = {};
        valueDeserializer.resizeArray<std::decay<decltype(rangeTmpBuf_)>::type,
        std::decay<decltype(*rangeTmpBuf_.array)>::type>(&rangeTmpBuf_, rangeTmpBuf_Length);
        for (int rangeTmpBuf_BufCounterI = 0; rangeTmpBuf_BufCounterI < rangeTmpBuf_Length; rangeTmpBuf_BufCounterI++) {
            rangeTmpBuf_.array[rangeTmpBuf_BufCounterI] = static_cast<Ark_String>(valueDeserializer.readString());
        }
        rangeTmpBuf.value = rangeTmpBuf_;
    }
    value.range = rangeTmpBuf;
    const auto valueTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_String valueTmpBuf = {};
    valueTmpBuf.tag = valueTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((valueTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        valueTmpBuf.value = static_cast<Ark_String>(valueDeserializer.readString());
    }
    value.value = valueTmpBuf;
    const auto selectedTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Number selectedTmpBuf = {};
    selectedTmpBuf.tag = selectedTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((selectedTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        selectedTmpBuf.value = static_cast<Ark_Number>(valueDeserializer.readNumber());
    }
    value.selected = selectedTmpBuf;
    const auto defaultPickerItemHeightTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Number defaultPickerItemHeightTmpBuf = {};
    defaultPickerItemHeightTmpBuf.tag = defaultPickerItemHeightTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((defaultPickerItemHeightTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        defaultPickerItemHeightTmpBuf.value = static_cast<Ark_Number>(valueDeserializer.readNumber());
    }
    value.defaultPickerItemHeight = defaultPickerItemHeightTmpBuf;
    const auto canLoopTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean canLoopTmpBuf = {};
    canLoopTmpBuf.tag = canLoopTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((canLoopTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        canLoopTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.canLoop = canLoopTmpBuf;
    const auto disappearTextStyleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject disappearTextStyleTmpBuf = {};
    disappearTextStyleTmpBuf.tag = disappearTextStyleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((disappearTextStyleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        disappearTextStyleTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.disappearTextStyle = disappearTextStyleTmpBuf;
    const auto textStyleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject textStyleTmpBuf = {};
    textStyleTmpBuf.tag = textStyleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((textStyleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        textStyleTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.textStyle = textStyleTmpBuf;
    const auto acceptButtonStyleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject acceptButtonStyleTmpBuf = {};
    acceptButtonStyleTmpBuf.tag = acceptButtonStyleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((acceptButtonStyleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        acceptButtonStyleTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.acceptButtonStyle = acceptButtonStyleTmpBuf;
    const auto cancelButtonStyleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject cancelButtonStyleTmpBuf = {};
    cancelButtonStyleTmpBuf.tag = cancelButtonStyleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((cancelButtonStyleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        cancelButtonStyleTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.cancelButtonStyle = cancelButtonStyleTmpBuf;
    const auto selectedTextStyleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject selectedTextStyleTmpBuf = {};
    selectedTextStyleTmpBuf.tag = selectedTextStyleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((selectedTextStyleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        selectedTextStyleTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.selectedTextStyle = selectedTextStyleTmpBuf;
    const auto onAcceptTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_TextPickerResult_Void onAcceptTmpBuf = {};
    onAcceptTmpBuf.tag = onAcceptTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onAcceptTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onAcceptTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_TextPickerResult value)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_TextPickerResult_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_TextPickerResult value)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_TextPickerResult_Void))))};
    }
    value.onAccept = onAcceptTmpBuf;
    const auto onCancelTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_Void onCancelTmpBuf = {};
    onCancelTmpBuf.tag = onCancelTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onCancelTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onCancelTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};
    }
    value.onCancel = onCancelTmpBuf;
    const auto onChangeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_TextPickerResult_Void onChangeTmpBuf = {};
    onChangeTmpBuf.tag = onChangeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onChangeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onChangeTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_TextPickerResult value)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_TextPickerResult_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_TextPickerResult value)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_TextPickerResult_Void))))};
    }
    value.onChange = onChangeTmpBuf;
    const auto onScrollStopTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_TextPickerResult_Void onScrollStopTmpBuf = {};
    onScrollStopTmpBuf.tag = onScrollStopTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onScrollStopTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onScrollStopTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_TextPickerResult value)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_TextPickerResult_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_TextPickerResult value)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_TextPickerResult_Void))))};
    }
    value.onScrollStop = onScrollStopTmpBuf;
    const auto maskRectTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Rectangle maskRectTmpBuf = {};
    maskRectTmpBuf.tag = maskRectTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((maskRectTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        maskRectTmpBuf.value = Rectangle_serializer::read(valueDeserializer);
    }
    value.maskRect = maskRectTmpBuf;
    const auto alignmentTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject alignmentTmpBuf = {};
    alignmentTmpBuf.tag = alignmentTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((alignmentTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        alignmentTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.alignment = alignmentTmpBuf;
    const auto offsetTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Offset offsetTmpBuf = {};
    offsetTmpBuf.tag = offsetTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((offsetTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        Ark_Offset offsetTmpBuf_ = {};
        const Ark_Int8 offsetTmpBuf_DxTempBufUnionSelector = valueDeserializer.readInt8();
        Ark_Length offsetTmpBuf_DxTempBuf = {};
        offsetTmpBuf_DxTempBuf.selector = offsetTmpBuf_DxTempBufUnionSelector;
        if (offsetTmpBuf_DxTempBufUnionSelector == 0) {
            offsetTmpBuf_DxTempBuf.selector = 0;
            offsetTmpBuf_DxTempBuf.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (offsetTmpBuf_DxTempBufUnionSelector == 1) {
            offsetTmpBuf_DxTempBuf.selector = 1;
            offsetTmpBuf_DxTempBuf.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (offsetTmpBuf_DxTempBufUnionSelector == 2) {
            offsetTmpBuf_DxTempBuf.selector = 2;
            offsetTmpBuf_DxTempBuf.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for offsetTmpBuf_DxTempBuf has to be chosen through deserialisation.");
        }
        offsetTmpBuf_.dx = static_cast<Ark_Length>(offsetTmpBuf_DxTempBuf);
        const Ark_Int8 offsetTmpBuf_DyTempBufUnionSelector = valueDeserializer.readInt8();
        Ark_Length offsetTmpBuf_DyTempBuf = {};
        offsetTmpBuf_DyTempBuf.selector = offsetTmpBuf_DyTempBufUnionSelector;
        if (offsetTmpBuf_DyTempBufUnionSelector == 0) {
            offsetTmpBuf_DyTempBuf.selector = 0;
            offsetTmpBuf_DyTempBuf.value0 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (offsetTmpBuf_DyTempBufUnionSelector == 1) {
            offsetTmpBuf_DyTempBuf.selector = 1;
            offsetTmpBuf_DyTempBuf.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (offsetTmpBuf_DyTempBufUnionSelector == 2) {
            offsetTmpBuf_DyTempBuf.selector = 2;
            offsetTmpBuf_DyTempBuf.value2 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for offsetTmpBuf_DyTempBuf has to be chosen through deserialisation.");
        }
        offsetTmpBuf_.dy = static_cast<Ark_Length>(offsetTmpBuf_DyTempBuf);
        offsetTmpBuf.value = offsetTmpBuf_;
    }
    value.offset = offsetTmpBuf;
    const auto backgroundColorTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_ResourceColor backgroundColorTmpBuf = {};
    backgroundColorTmpBuf.tag = backgroundColorTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((backgroundColorTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        const Ark_Int8 backgroundColorTmpBuf_UnionSelector = valueDeserializer.readInt8();
        Ark_ResourceColor backgroundColorTmpBuf_ = {};
        backgroundColorTmpBuf_.selector = backgroundColorTmpBuf_UnionSelector;
        if (backgroundColorTmpBuf_UnionSelector == 0) {
            backgroundColorTmpBuf_.selector = 0;
            backgroundColorTmpBuf_.value0 = static_cast<Ark_Color>(valueDeserializer.readInt32());
        } else if (backgroundColorTmpBuf_UnionSelector == 1) {
            backgroundColorTmpBuf_.selector = 1;
            backgroundColorTmpBuf_.value1 = static_cast<Ark_Number>(valueDeserializer.readNumber());
        } else if (backgroundColorTmpBuf_UnionSelector == 2) {
            backgroundColorTmpBuf_.selector = 2;
            backgroundColorTmpBuf_.value2 = static_cast<Ark_String>(valueDeserializer.readString());
        } else if (backgroundColorTmpBuf_UnionSelector == 3) {
            backgroundColorTmpBuf_.selector = 3;
            backgroundColorTmpBuf_.value3 = Resource_serializer::read(valueDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.");
        }
        backgroundColorTmpBuf.value = static_cast<Ark_ResourceColor>(backgroundColorTmpBuf_);
    }
    value.backgroundColor = backgroundColorTmpBuf;
    const auto backgroundBlurStyleTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_BlurStyle backgroundBlurStyleTmpBuf = {};
    backgroundBlurStyleTmpBuf.tag = backgroundBlurStyleTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((backgroundBlurStyleTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        backgroundBlurStyleTmpBuf.value = static_cast<Ark_BlurStyle>(valueDeserializer.readInt32());
    }
    value.backgroundBlurStyle = backgroundBlurStyleTmpBuf;
    const auto onDidAppearTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_Void onDidAppearTmpBuf = {};
    onDidAppearTmpBuf.tag = onDidAppearTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onDidAppearTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onDidAppearTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};
    }
    value.onDidAppear = onDidAppearTmpBuf;
    const auto onDidDisappearTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_Void onDidDisappearTmpBuf = {};
    onDidDisappearTmpBuf.tag = onDidDisappearTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onDidDisappearTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onDidDisappearTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};
    }
    value.onDidDisappear = onDidDisappearTmpBuf;
    const auto onWillAppearTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_Void onWillAppearTmpBuf = {};
    onWillAppearTmpBuf.tag = onWillAppearTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onWillAppearTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onWillAppearTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};
    }
    value.onWillAppear = onWillAppearTmpBuf;
    const auto onWillDisappearTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Callback_Void onWillDisappearTmpBuf = {};
    onWillDisappearTmpBuf.tag = onWillDisappearTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((onWillDisappearTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        onWillDisappearTmpBuf.value = {valueDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(Kind_Callback_Void)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(valueDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(Kind_Callback_Void))))};
    }
    value.onWillDisappear = onWillDisappearTmpBuf;
    const auto shadowTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject shadowTmpBuf = {};
    shadowTmpBuf.tag = shadowTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((shadowTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        shadowTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.shadow = shadowTmpBuf;
    const auto enableHoverModeTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_Boolean enableHoverModeTmpBuf = {};
    enableHoverModeTmpBuf.tag = enableHoverModeTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((enableHoverModeTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        enableHoverModeTmpBuf.value = valueDeserializer.readBoolean();
    }
    value.enableHoverMode = enableHoverModeTmpBuf;
    const auto hoverModeAreaTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(valueDeserializer.readInt8());
    Opt_CustomObject hoverModeAreaTmpBuf = {};
    hoverModeAreaTmpBuf.tag = hoverModeAreaTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
    if ((hoverModeAreaTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
        hoverModeAreaTmpBuf.value = static_cast<Ark_CustomObject>(valueDeserializer.readCustomObject("Any"));
    }
    value.hoverModeArea = hoverModeAreaTmpBuf;
    return value;
}

#endif
