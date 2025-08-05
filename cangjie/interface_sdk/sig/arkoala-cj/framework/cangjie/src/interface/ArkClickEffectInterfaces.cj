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
public interface ClickEffectInterfaces <:  {
    public mut open prop level: ClickEffectLevel
    public mut open prop scale: Option<Float64>
}
public open class ClickEffect <: ClickEffectInterfaces {
    private var level_container: ClickEffectLevel
    public mut open prop level: ClickEffectLevel
    {
        get() {
            return level_container
        }
        set(level) {
            level_container = level
        }
    }
    private var scale_container: Option<Float64>
    public mut open prop scale: Option<Float64>
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    ClickEffect(level: ClickEffectLevel, scale: Option<Float64>) {
        this.level_container = level
        this.scale_container = scale
    }
}
public open class ClickEffect_serializer {
    public static func write(buffer: SerializerBase, value: ClickEffect): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForLevel = value.level
        valueSerializer.writeInt32(valueHolderForLevel.value);
        let valueHolderForScale = value.scale
        if (valueHolderForScale.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScaleTmpValue = valueHolderForScale
            valueSerializer.writeNumber(valueHolderForScaleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ClickEffect {
        var valueDeserializer: DeserializerBase = buffer
        let levelTmpResult: ClickEffectLevel = ClickEffectLevel(valueDeserializer.readInt32())
        let scaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleTmpBuf_runtimeType))) {
            scaleTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scaleTmpResult: Option<Float64> = scaleTmpBuf
        var value: ClickEffect = ClickEffect(levelTmpResult, scaleTmpResult)
        return value
    }
}
