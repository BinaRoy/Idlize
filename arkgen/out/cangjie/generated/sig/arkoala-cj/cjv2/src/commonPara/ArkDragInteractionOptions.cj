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

public class DragInteractionOptions {
    public var isMultiSelectionEnabled: Option<Bool>
    public var defaultAnimationBeforeLifting: Option<Bool>
    init(isMultiSelectionEnabled: Option<Bool>, defaultAnimationBeforeLifting: Option<Bool>) {
        this.isMultiSelectionEnabled = isMultiSelectionEnabled
        this.defaultAnimationBeforeLifting = defaultAnimationBeforeLifting
    }
}
public class DragInteractionOptions_serializer {
    public  static func write(buffer: SerializerBase, value: DragInteractionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsMultiSelectionEnabled = value.isMultiSelectionEnabled
        if (let Some(valueHolderForIsMultiSelectionEnabled) <- valueHolderForIsMultiSelectionEnabled) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForIsMultiSelectionEnabledTmpValue = valueHolderForIsMultiSelectionEnabled
            valueSerializer.writeBoolean(valueHolderForIsMultiSelectionEnabledTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForDefaultAnimationBeforeLifting = value.defaultAnimationBeforeLifting
        if (let Some(valueHolderForDefaultAnimationBeforeLifting) <- valueHolderForDefaultAnimationBeforeLifting) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForDefaultAnimationBeforeLiftingTmpValue = valueHolderForDefaultAnimationBeforeLifting
            valueSerializer.writeBoolean(valueHolderForDefaultAnimationBeforeLiftingTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): DragInteractionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let isMultiSelectionEnabledTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isMultiSelectionEnabledTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isMultiSelectionEnabledTmpBuf_runtimeType))) {
            isMultiSelectionEnabledTmpBuf = valueDeserializer.readBoolean()
        }
        let isMultiSelectionEnabledTmpResult: Option<Bool> = isMultiSelectionEnabledTmpBuf
        let defaultAnimationBeforeLiftingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var defaultAnimationBeforeLiftingTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(defaultAnimationBeforeLiftingTmpBuf_runtimeType))) {
            defaultAnimationBeforeLiftingTmpBuf = valueDeserializer.readBoolean()
        }
        let defaultAnimationBeforeLiftingTmpResult: Option<Bool> = defaultAnimationBeforeLiftingTmpBuf
        var value: DragInteractionOptions = DragInteractionOptions(isMultiSelectionEnabledTmpResult, defaultAnimationBeforeLiftingTmpResult)
        return value
    }
}
