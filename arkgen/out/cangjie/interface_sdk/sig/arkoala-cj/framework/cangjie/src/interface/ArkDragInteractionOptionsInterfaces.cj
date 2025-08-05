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
public interface DragInteractionOptionsInterfaces <:  {
    public mut open prop isMultiSelectionEnabled: Option<Bool>
    public mut open prop defaultAnimationBeforeLifting: Option<Bool>
    public mut open prop enableEdgeAutoScroll: Option<Bool>
    public mut open prop enableHapticFeedback: Option<Bool>
    public mut open prop isLiftingDisabled: Option<Bool>
}
public open class DragInteractionOptions <: DragInteractionOptionsInterfaces {
    private var isMultiSelectionEnabled_container: Option<Bool>
    public mut open prop isMultiSelectionEnabled: Option<Bool>
    {
        get() {
            return isMultiSelectionEnabled_container
        }
        set(isMultiSelectionEnabled) {
            isMultiSelectionEnabled_container = isMultiSelectionEnabled
        }
    }
    private var defaultAnimationBeforeLifting_container: Option<Bool>
    public mut open prop defaultAnimationBeforeLifting: Option<Bool>
    {
        get() {
            return defaultAnimationBeforeLifting_container
        }
        set(defaultAnimationBeforeLifting) {
            defaultAnimationBeforeLifting_container = defaultAnimationBeforeLifting
        }
    }
    private var enableEdgeAutoScroll_container: Option<Bool>
    public mut open prop enableEdgeAutoScroll: Option<Bool>
    {
        get() {
            return enableEdgeAutoScroll_container
        }
        set(enableEdgeAutoScroll) {
            enableEdgeAutoScroll_container = enableEdgeAutoScroll
        }
    }
    private var enableHapticFeedback_container: Option<Bool>
    public mut open prop enableHapticFeedback: Option<Bool>
    {
        get() {
            return enableHapticFeedback_container
        }
        set(enableHapticFeedback) {
            enableHapticFeedback_container = enableHapticFeedback
        }
    }
    private var isLiftingDisabled_container: Option<Bool>
    public mut open prop isLiftingDisabled: Option<Bool>
    {
        get() {
            return isLiftingDisabled_container
        }
        set(isLiftingDisabled) {
            isLiftingDisabled_container = isLiftingDisabled
        }
    }
    DragInteractionOptions(isMultiSelectionEnabled: Option<Bool>, defaultAnimationBeforeLifting: Option<Bool>, enableEdgeAutoScroll: Option<Bool>, enableHapticFeedback: Option<Bool>, isLiftingDisabled: Option<Bool>) {
        this.isMultiSelectionEnabled_container = isMultiSelectionEnabled
        this.defaultAnimationBeforeLifting_container = defaultAnimationBeforeLifting
        this.enableEdgeAutoScroll_container = enableEdgeAutoScroll
        this.enableHapticFeedback_container = enableHapticFeedback
        this.isLiftingDisabled_container = isLiftingDisabled
    }
}
public open class DragInteractionOptions_serializer {
    public static func write(buffer: SerializerBase, value: DragInteractionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsMultiSelectionEnabled = value.isMultiSelectionEnabled
        if (valueHolderForIsMultiSelectionEnabled.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsMultiSelectionEnabledTmpValue = valueHolderForIsMultiSelectionEnabled
            valueSerializer.writeBoolean(valueHolderForIsMultiSelectionEnabledTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDefaultAnimationBeforeLifting = value.defaultAnimationBeforeLifting
        if (valueHolderForDefaultAnimationBeforeLifting.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDefaultAnimationBeforeLiftingTmpValue = valueHolderForDefaultAnimationBeforeLifting
            valueSerializer.writeBoolean(valueHolderForDefaultAnimationBeforeLiftingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableEdgeAutoScroll = value.enableEdgeAutoScroll
        if (valueHolderForEnableEdgeAutoScroll.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableEdgeAutoScrollTmpValue = valueHolderForEnableEdgeAutoScroll
            valueSerializer.writeBoolean(valueHolderForEnableEdgeAutoScrollTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableHapticFeedback = value.enableHapticFeedback
        if (valueHolderForEnableHapticFeedback.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableHapticFeedbackTmpValue = valueHolderForEnableHapticFeedback
            valueSerializer.writeBoolean(valueHolderForEnableHapticFeedbackTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIsLiftingDisabled = value.isLiftingDisabled
        if (valueHolderForIsLiftingDisabled.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsLiftingDisabledTmpValue = valueHolderForIsLiftingDisabled
            valueSerializer.writeBoolean(valueHolderForIsLiftingDisabledTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DragInteractionOptions {
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
        let enableEdgeAutoScrollTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableEdgeAutoScrollTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableEdgeAutoScrollTmpBuf_runtimeType))) {
            enableEdgeAutoScrollTmpBuf = valueDeserializer.readBoolean()
        }
        let enableEdgeAutoScrollTmpResult: Option<Bool> = enableEdgeAutoScrollTmpBuf
        let enableHapticFeedbackTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHapticFeedbackTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHapticFeedbackTmpBuf_runtimeType))) {
            enableHapticFeedbackTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHapticFeedbackTmpResult: Option<Bool> = enableHapticFeedbackTmpBuf
        let isLiftingDisabledTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isLiftingDisabledTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isLiftingDisabledTmpBuf_runtimeType))) {
            isLiftingDisabledTmpBuf = valueDeserializer.readBoolean()
        }
        let isLiftingDisabledTmpResult: Option<Bool> = isLiftingDisabledTmpBuf
        var value: DragInteractionOptions = DragInteractionOptions(isMultiSelectionEnabledTmpResult, defaultAnimationBeforeLiftingTmpResult, enableEdgeAutoScrollTmpResult, enableHapticFeedbackTmpResult, isLiftingDisabledTmpResult)
        return value
    }
}
