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
public interface BackgroundBrightnessOptionsInterfaces <:  {
    public mut open prop rate: Float64
    public mut open prop lightUpDegree: Float64
}
public open class BackgroundBrightnessOptions <: BackgroundBrightnessOptionsInterfaces {
    private var rate_container: Float64
    public mut open prop rate: Float64
    {
        get() {
            return rate_container
        }
        set(rate) {
            rate_container = rate
        }
    }
    private var lightUpDegree_container: Float64
    public mut open prop lightUpDegree: Float64
    {
        get() {
            return lightUpDegree_container
        }
        set(lightUpDegree) {
            lightUpDegree_container = lightUpDegree
        }
    }
    BackgroundBrightnessOptions(rate: Float64, lightUpDegree: Float64) {
        this.rate_container = rate
        this.lightUpDegree_container = lightUpDegree
    }
}
public open class BackgroundBrightnessOptions_serializer {
    public static func write(buffer: SerializerBase, value: BackgroundBrightnessOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRate = value.rate
        valueSerializer.writeNumber(valueHolderForRate);
        let valueHolderForLightUpDegree = value.lightUpDegree
        valueSerializer.writeNumber(valueHolderForLightUpDegree);
    }
    public static func read(buffer: DeserializerBase): BackgroundBrightnessOptions {
        var valueDeserializer: DeserializerBase = buffer
        let rateTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let lightUpDegreeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: BackgroundBrightnessOptions = BackgroundBrightnessOptions(rateTmpResult, lightUpDegreeTmpResult)
        return value
    }
}
