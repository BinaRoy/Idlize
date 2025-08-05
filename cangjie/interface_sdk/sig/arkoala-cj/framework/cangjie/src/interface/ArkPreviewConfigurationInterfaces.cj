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
public interface PreviewConfigurationInterfaces <:  {
    public mut open prop onlyForLifting: Option<Bool>
    public mut open prop delayCreating: Option<Bool>
}
public open class PreviewConfiguration <: PreviewConfigurationInterfaces {
    private var onlyForLifting_container: Option<Bool>
    public mut open prop onlyForLifting: Option<Bool>
    {
        get() {
            return onlyForLifting_container
        }
        set(onlyForLifting) {
            onlyForLifting_container = onlyForLifting
        }
    }
    private var delayCreating_container: Option<Bool>
    public mut open prop delayCreating: Option<Bool>
    {
        get() {
            return delayCreating_container
        }
        set(delayCreating) {
            delayCreating_container = delayCreating
        }
    }
    PreviewConfiguration(onlyForLifting: Option<Bool>, delayCreating: Option<Bool>) {
        this.onlyForLifting_container = onlyForLifting
        this.delayCreating_container = delayCreating
    }
}
public open class PreviewConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: PreviewConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnlyForLifting = value.onlyForLifting
        if (valueHolderForOnlyForLifting.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnlyForLiftingTmpValue = valueHolderForOnlyForLifting
            valueSerializer.writeBoolean(valueHolderForOnlyForLiftingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDelayCreating = value.delayCreating
        if (valueHolderForDelayCreating.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDelayCreatingTmpValue = valueHolderForDelayCreating
            valueSerializer.writeBoolean(valueHolderForDelayCreatingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PreviewConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let onlyForLiftingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onlyForLiftingTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onlyForLiftingTmpBuf_runtimeType))) {
            onlyForLiftingTmpBuf = valueDeserializer.readBoolean()
        }
        let onlyForLiftingTmpResult: Option<Bool> = onlyForLiftingTmpBuf
        let delayCreatingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var delayCreatingTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(delayCreatingTmpBuf_runtimeType))) {
            delayCreatingTmpBuf = valueDeserializer.readBoolean()
        }
        let delayCreatingTmpResult: Option<Bool> = delayCreatingTmpBuf
        var value: PreviewConfiguration = PreviewConfiguration(onlyForLiftingTmpResult, delayCreatingTmpResult)
        return value
    }
}
