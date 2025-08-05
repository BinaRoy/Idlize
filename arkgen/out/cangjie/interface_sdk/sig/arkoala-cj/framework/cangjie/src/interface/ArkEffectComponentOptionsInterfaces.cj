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
public interface EffectComponentOptionsInterfaces <:  {
    public mut open prop effectLayer: Option<EffectLayer>
}
public open class EffectComponentOptions <: EffectComponentOptionsInterfaces {
    private var effectLayer_container: Option<EffectLayer>
    public mut open prop effectLayer: Option<EffectLayer>
    {
        get() {
            return effectLayer_container
        }
        set(effectLayer) {
            effectLayer_container = effectLayer
        }
    }
    EffectComponentOptions(effectLayer: Option<EffectLayer>) {
        this.effectLayer_container = effectLayer
    }
}
public open class EffectComponentOptions_serializer {
    public static func write(buffer: SerializerBase, value: EffectComponentOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEffectLayer = value.effectLayer
        if (valueHolderForEffectLayer.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEffectLayerTmpValue = valueHolderForEffectLayer
            valueSerializer.writeInt32(valueHolderForEffectLayerTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): EffectComponentOptions {
        var valueDeserializer: DeserializerBase = buffer
        let effectLayerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var effectLayerTmpBuf: Option<EffectLayer> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(effectLayerTmpBuf_runtimeType))) {
            effectLayerTmpBuf = EffectLayer(valueDeserializer.readInt32())
        }
        let effectLayerTmpResult: Option<EffectLayer> = effectLayerTmpBuf
        var value: EffectComponentOptions = EffectComponentOptions(effectLayerTmpResult)
        return value
    }
}
