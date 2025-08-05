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
public interface EdgeEffectOptionsInterfaces <:  {
    public mut open prop alwaysEnabled: Bool
    public mut open prop effectEdge: Option<Float64>
}
public open class EdgeEffectOptions <: EdgeEffectOptionsInterfaces {
    private var alwaysEnabled_container: Bool
    public mut open prop alwaysEnabled: Bool
    {
        get() {
            return alwaysEnabled_container
        }
        set(alwaysEnabled) {
            alwaysEnabled_container = alwaysEnabled
        }
    }
    private var effectEdge_container: Option<Float64>
    public mut open prop effectEdge: Option<Float64>
    {
        get() {
            return effectEdge_container
        }
        set(effectEdge) {
            effectEdge_container = effectEdge
        }
    }
    EdgeEffectOptions(alwaysEnabled: Bool, effectEdge: Option<Float64>) {
        this.alwaysEnabled_container = alwaysEnabled
        this.effectEdge_container = effectEdge
    }
}
public open class EdgeEffectOptions_serializer {
    public static func write(buffer: SerializerBase, value: EdgeEffectOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAlwaysEnabled = value.alwaysEnabled
        valueSerializer.writeBoolean(valueHolderForAlwaysEnabled);
        let valueHolderForEffectEdge = value.effectEdge
        if (valueHolderForEffectEdge.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEffectEdgeTmpValue = valueHolderForEffectEdge
            valueSerializer.writeNumber(valueHolderForEffectEdgeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): EdgeEffectOptions {
        var valueDeserializer: DeserializerBase = buffer
        let alwaysEnabledTmpResult: Bool = valueDeserializer.readBoolean()
        let effectEdgeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var effectEdgeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(effectEdgeTmpBuf_runtimeType))) {
            effectEdgeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let effectEdgeTmpResult: Option<Float64> = effectEdgeTmpBuf
        var value: EdgeEffectOptions = EdgeEffectOptions(alwaysEnabledTmpResult, effectEdgeTmpResult)
        return value
    }
}
