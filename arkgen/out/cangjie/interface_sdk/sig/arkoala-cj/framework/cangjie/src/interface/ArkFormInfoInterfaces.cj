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


// WARNING! THIS FILE IS AUTO-GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!

package idlize
import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime
public interface FormInfoInterfaces <:  {
    public mut open prop id: Union_I64_String
    public mut open prop name: String
    public mut open prop bundle: String
    public mut open prop ability: String
    public mut open prop module: String
    public mut open prop dimension: Option<FormDimension>
    public mut open prop temporary: Option<Bool>
    public mut open prop want: Option<Any>
    public mut open prop want: Option<Want>
    public mut open prop renderingMode: Option<FormRenderingMode>
    public mut open prop shape: Option<FormShape>
}
public open class FormInfo <: FormInfoInterfaces {
    private var id_container: Union_I64_String
    public mut open prop id: Union_I64_String
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var name_container: String
    public mut open prop name: String
    {
        get() {
            return name_container
        }
        set(name) {
            name_container = name
        }
    }
    private var bundle_container: String
    public mut open prop bundle: String
    {
        get() {
            return bundle_container
        }
        set(bundle) {
            bundle_container = bundle
        }
    }
    private var ability_container: String
    public mut open prop ability: String
    {
        get() {
            return ability_container
        }
        set(ability) {
            ability_container = ability
        }
    }
    private var module_container: String
    public mut open prop module: String
    {
        get() {
            return module_container
        }
        set(module) {
            module_container = module
        }
    }
    private var dimension_container: Option<FormDimension>
    public mut open prop dimension: Option<FormDimension>
    {
        get() {
            return dimension_container
        }
        set(dimension) {
            dimension_container = dimension
        }
    }
    private var temporary_container: Option<Bool>
    public mut open prop temporary: Option<Bool>
    {
        get() {
            return temporary_container
        }
        set(temporary) {
            temporary_container = temporary
        }
    }
    private var want_container: Option<Any>
    public mut open prop want: Option<Any>
    {
        get() {
            return want_container
        }
        set(want) {
            want_container = want
        }
    }
    private var want_container: Option<Want>
    public mut open prop want: Option<Want>
    {
        get() {
            return want_container
        }
        set(want) {
            want_container = want
        }
    }
    private var renderingMode_container: Option<FormRenderingMode>
    public mut open prop renderingMode: Option<FormRenderingMode>
    {
        get() {
            return renderingMode_container
        }
        set(renderingMode) {
            renderingMode_container = renderingMode
        }
    }
    private var shape_container: Option<FormShape>
    public mut open prop shape: Option<FormShape>
    {
        get() {
            return shape_container
        }
        set(shape) {
            shape_container = shape
        }
    }
    FormInfo(id: Union_I64_String, name: String, bundle: String, ability: String, module: String, dimension: Option<FormDimension>, temporary: Option<Bool>, want: Option<Any>, want: Option<Want>, renderingMode: Option<FormRenderingMode>, shape: Option<FormShape>) {
        this.id_container = id
        this.name_container = name
        this.bundle_container = bundle
        this.ability_container = ability
        this.module_container = module
        this.dimension_container = dimension
        this.temporary_container = temporary
        this.want_container = want
        this.want_container = want
        this.renderingMode_container = renderingMode
        this.shape_container = shape
    }
}
public open class FormInfo_serializer {
    public static func write(buffer: SerializerBase, value: FormInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForId = value.id
        if (valueHolderForId.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForIdForIdx0 = valueHolderForId.getValue0()
            valueSerializer.writeInt64(valueHolderForIdForIdx0);
        } else if (valueHolderForId.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForIdForIdx1 = valueHolderForId.getValue1()
            valueSerializer.writeString(valueHolderForIdForIdx1);
        }
        let valueHolderForName = value.name
        valueSerializer.writeString(valueHolderForName);
        let valueHolderForBundle = value.bundle
        valueSerializer.writeString(valueHolderForBundle);
        let valueHolderForAbility = value.ability
        valueSerializer.writeString(valueHolderForAbility);
        let valueHolderForModule = value.module
        valueSerializer.writeString(valueHolderForModule);
        let valueHolderForDimension = value.dimension
        if (valueHolderForDimension.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDimensionTmpValue = valueHolderForDimension
            valueSerializer.writeInt32(valueHolderForDimensionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTemporary = value.temporary
        if (valueHolderForTemporary.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTemporaryTmpValue = valueHolderForTemporary
            valueSerializer.writeBoolean(valueHolderForTemporaryTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWant = value.want
        if (valueHolderForWant.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWantTmpValue = valueHolderForWant
            valueSerializer.writeCustomObject("Any", valueHolderForWantTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWant = value.want
        if (valueHolderForWant.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWantTmpValue = valueHolderForWant
            valueSerializer.writeCustomObject("Any", valueHolderForWantTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRenderingMode = value.renderingMode
        if (valueHolderForRenderingMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRenderingModeTmpValue = valueHolderForRenderingMode
            valueSerializer.writeInt32(valueHolderForRenderingModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShape = value.shape
        if (valueHolderForShape.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShapeTmpValue = valueHolderForShape
            valueSerializer.writeInt32(valueHolderForShapeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FormInfo {
        var valueDeserializer: DeserializerBase = buffer
        let idTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var idTmpBuf: Union_I64_String 
        if (idTmpBufUnionSelector == Int8(0)) {
            idTmpBuf = Union_I64_String(valueDeserializer.readInt64())
        } else if (idTmpBufUnionSelector == Int8(1)) {
            idTmpBuf = Union_I64_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for idTmpBuf has to be chosen through deserialisation.")
        }
        let idTmpResult: Union_I64_String = match (idTmpBuf as Union_I64_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let nameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let bundleTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let abilityTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let moduleTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let dimensionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dimensionTmpBuf: Option<FormDimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dimensionTmpBuf_runtimeType))) {
            dimensionTmpBuf = FormDimension(valueDeserializer.readInt32())
        }
        let dimensionTmpResult: Option<FormDimension> = dimensionTmpBuf
        let temporaryTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var temporaryTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(temporaryTmpBuf_runtimeType))) {
            temporaryTmpBuf = valueDeserializer.readBoolean()
        }
        let temporaryTmpResult: Option<Bool> = temporaryTmpBuf
        let wantTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var wantTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(wantTmpBuf_runtimeType))) {
            wantTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let wantTmpResult: Option<Any> = wantTmpBuf
        let wantTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var wantTmpBuf: Option<Want> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(wantTmpBuf_runtimeType))) {
            wantTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let wantTmpResult: Option<Want> = wantTmpBuf
        let renderingModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var renderingModeTmpBuf: Option<FormRenderingMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(renderingModeTmpBuf_runtimeType))) {
            renderingModeTmpBuf = FormRenderingMode(valueDeserializer.readInt32())
        }
        let renderingModeTmpResult: Option<FormRenderingMode> = renderingModeTmpBuf
        let shapeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var shapeTmpBuf: Option<FormShape> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(shapeTmpBuf_runtimeType))) {
            shapeTmpBuf = FormShape(valueDeserializer.readInt32())
        }
        let shapeTmpResult: Option<FormShape> = shapeTmpBuf
        var value: FormInfo = FormInfo(idTmpResult, nameTmpResult, bundleTmpResult, abilityTmpResult, moduleTmpResult, dimensionTmpResult, temporaryTmpResult, wantTmpResult, wantTmpResult, renderingModeTmpResult, shapeTmpResult)
        return value
    }
}
