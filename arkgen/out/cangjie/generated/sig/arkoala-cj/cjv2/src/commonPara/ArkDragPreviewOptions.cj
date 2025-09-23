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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class DragPreviewOptions {
    public var mode: Option<DragPreviewMode>
    public var modifier: Option<ImageModifier>
    public var numberBadge: Option<Bool>
    init(mode: Option<DragPreviewMode>, modifier: Option<ImageModifier>, numberBadge: Option<Bool>) {
        this.mode = mode
        this.modifier = modifier
        this.numberBadge = numberBadge
    }
}
public class DragPreviewOptions_serializer {
    public  static func write(buffer: SerializerBase, value: DragPreviewOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMode = value.mode
        if (let Some(valueHolderForMode) <- valueHolderForMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForModeTmpValue = valueHolderForMode
            valueSerializer.writeInt32(valueHolderForModeTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForModifier = value.modifier
        if (let Some(valueHolderForModifier) <- valueHolderForModifier) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForModifierTmpValue = valueHolderForModifier
            valueSerializer.writeCustomObject("Any", valueHolderForModifierTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForNumberBadge = value.numberBadge
        if (let Some(valueHolderForNumberBadge) <- valueHolderForNumberBadge) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForNumberBadgeTmpValue = valueHolderForNumberBadge
            valueSerializer.writeBoolean(valueHolderForNumberBadgeTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): DragPreviewOptions {
        var valueDeserializer: DeserializerBase = buffer
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<DragPreviewMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            modeTmpBuf = DragPreviewMode.parse(valueDeserializer.readInt32())
        }
        let modeTmpResult: Option<DragPreviewMode> = modeTmpBuf
        let modifierTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modifierTmpBuf: Option<ImageModifier> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modifierTmpBuf_runtimeType))) {
            modifierTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let modifierTmpResult: Option<ImageModifier> = modifierTmpBuf
        let numberBadgeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var numberBadgeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(numberBadgeTmpBuf_runtimeType))) {
            numberBadgeTmpBuf = valueDeserializer.readBoolean()
        }
        let numberBadgeTmpResult: Option<Bool> = numberBadgeTmpBuf
        var value: DragPreviewOptions = DragPreviewOptions(modeTmpResult, modifierTmpResult, numberBadgeTmpResult)
        return value
    }
}
