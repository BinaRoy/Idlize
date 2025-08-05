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
public interface DragPreviewOptionsInterfaces <:  {
    public mut open prop mode: Option<Union_DragPreviewMode_Array_DragPreviewMode>
    public mut open prop modifier: Option<ImageModifier>
    public mut open prop numberBadge: Option<Union_Boolean_Number>
    public mut open prop sizeChangeEffect: Option<DraggingSizeChangeEffect>
}
public open class DragPreviewOptions <: DragPreviewOptionsInterfaces {
    private var mode_container: Option<Union_DragPreviewMode_Array_DragPreviewMode>
    public mut open prop mode: Option<Union_DragPreviewMode_Array_DragPreviewMode>
    {
        get() {
            return mode_container
        }
        set(mode) {
            mode_container = mode
        }
    }
    private var modifier_container: Option<ImageModifier>
    public mut open prop modifier: Option<ImageModifier>
    {
        get() {
            return modifier_container
        }
        set(modifier) {
            modifier_container = modifier
        }
    }
    private var numberBadge_container: Option<Union_Boolean_Number>
    public mut open prop numberBadge: Option<Union_Boolean_Number>
    {
        get() {
            return numberBadge_container
        }
        set(numberBadge) {
            numberBadge_container = numberBadge
        }
    }
    private var sizeChangeEffect_container: Option<DraggingSizeChangeEffect>
    public mut open prop sizeChangeEffect: Option<DraggingSizeChangeEffect>
    {
        get() {
            return sizeChangeEffect_container
        }
        set(sizeChangeEffect) {
            sizeChangeEffect_container = sizeChangeEffect
        }
    }
    DragPreviewOptions(mode: Option<Union_DragPreviewMode_Array_DragPreviewMode>, modifier: Option<ImageModifier>, numberBadge: Option<Union_Boolean_Number>, sizeChangeEffect: Option<DraggingSizeChangeEffect>) {
        this.mode_container = mode
        this.modifier_container = modifier
        this.numberBadge_container = numberBadge
        this.sizeChangeEffect_container = sizeChangeEffect
    }
}
public open class DragPreviewOptions_serializer {
    public static func write(buffer: SerializerBase, value: DragPreviewOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMode = value.mode
        if (valueHolderForMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModeTmpValue = valueHolderForMode
            if (valueHolderForModeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForModeTmpValueForIdx0 = valueHolderForModeTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForModeTmpValueForIdx0.value);
            } else if (valueHolderForModeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForModeTmpValueForIdx1 = valueHolderForModeTmpValue.getValue1()
                valueSerializer.writeInt32(Int32(valueHolderForModeTmpValueForIdx1.size));
                for (valueHolderForModeTmpValueForIdx1CounterI in 0..valueHolderForModeTmpValueForIdx1.size) {
                    let valueHolderForModeTmpValueForIdx1TmpElement: DragPreviewMode = valueHolderForModeTmpValueForIdx1[Int64(valueHolderForModeTmpValueForIdx1CounterI)]
                    valueSerializer.writeInt32(valueHolderForModeTmpValueForIdx1TmpElement.value);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForModifier = value.modifier
        if (valueHolderForModifier.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModifierTmpValue = valueHolderForModifier
            valueSerializer.writeCustomObject("Any", valueHolderForModifierTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForNumberBadge = value.numberBadge
        if (valueHolderForNumberBadge.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNumberBadgeTmpValue = valueHolderForNumberBadge
            if (valueHolderForNumberBadgeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForNumberBadgeTmpValueForIdx0 = valueHolderForNumberBadgeTmpValue.getValue0()
                valueSerializer.writeBoolean(valueHolderForNumberBadgeTmpValueForIdx0);
            } else if (valueHolderForNumberBadgeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForNumberBadgeTmpValueForIdx1 = valueHolderForNumberBadgeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForNumberBadgeTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSizeChangeEffect = value.sizeChangeEffect
        if (valueHolderForSizeChangeEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSizeChangeEffectTmpValue = valueHolderForSizeChangeEffect
            valueSerializer.writeInt32(valueHolderForSizeChangeEffectTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DragPreviewOptions {
        var valueDeserializer: DeserializerBase = buffer
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<Union_DragPreviewMode_Array_DragPreviewMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            let modeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var modeTmpBuf_: Union_DragPreviewMode_Array_DragPreviewMode 
            if (modeTmpBuf_UnionSelector == Int8(0)) {
                modeTmpBuf_ = Union_DragPreviewMode_Array_DragPreviewMode(DragPreviewMode(valueDeserializer.readInt32()))
            } else if (modeTmpBuf_UnionSelector == Int8(1)) {
                let modeTmpBuf_BufULength: Int32 = valueDeserializer.readInt32()
                var modeTmpBuf_BufU: ArrayList<DragPreviewMode> = ArrayList<DragPreviewMode>(Int64(modeTmpBuf_BufULength))
                modeTmpBuf_BufU = ArrayList<DragPreviewMode>(Int64(modeTmpBuf_BufULength))
                for (modeTmpBuf_BufUBufCounterI in 0..modeTmpBuf_BufULength) {
                    modeTmpBuf_BufU[Int64(modeTmpBuf_BufUBufCounterI)] = DragPreviewMode(valueDeserializer.readInt32())
                }
                modeTmpBuf_ = Union_DragPreviewMode_Array_DragPreviewMode(modeTmpBuf_BufU)
            } else {
                throw Exception("One of the branches for modeTmpBuf_ has to be chosen through deserialisation.")
            }
            modeTmpBuf = match (modeTmpBuf_ as Union_DragPreviewMode_Array_DragPreviewMode) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let modeTmpResult: Option<Union_DragPreviewMode_Array_DragPreviewMode> = modeTmpBuf
        let modifierTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modifierTmpBuf: Option<ImageModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modifierTmpBuf_runtimeType))) {
            modifierTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let modifierTmpResult: Option<ImageModifier> = modifierTmpBuf
        let numberBadgeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var numberBadgeTmpBuf: Option<Union_Boolean_Number> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(numberBadgeTmpBuf_runtimeType))) {
            let numberBadgeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var numberBadgeTmpBuf_: Union_Boolean_Number 
            if (numberBadgeTmpBuf_UnionSelector == Int8(0)) {
                numberBadgeTmpBuf_ = Union_Boolean_Number(valueDeserializer.readBoolean())
            } else if (numberBadgeTmpBuf_UnionSelector == Int8(1)) {
                numberBadgeTmpBuf_ = Union_Boolean_Number(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for numberBadgeTmpBuf_ has to be chosen through deserialisation.")
            }
            numberBadgeTmpBuf = match (numberBadgeTmpBuf_ as Union_Boolean_Number) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let numberBadgeTmpResult: Option<Union_Boolean_Number> = numberBadgeTmpBuf
        let sizeChangeEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sizeChangeEffectTmpBuf: Option<DraggingSizeChangeEffect> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sizeChangeEffectTmpBuf_runtimeType))) {
            sizeChangeEffectTmpBuf = DraggingSizeChangeEffect(valueDeserializer.readInt32())
        }
        let sizeChangeEffectTmpResult: Option<DraggingSizeChangeEffect> = sizeChangeEffectTmpBuf
        var value: DragPreviewOptions = DragPreviewOptions(modeTmpResult, modifierTmpResult, numberBadgeTmpResult, sizeChangeEffectTmpResult)
        return value
    }
}
