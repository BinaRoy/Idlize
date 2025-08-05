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
public interface TranslateResultInterfaces <:  {
    public mut open prop x: Float64
    public mut open prop y: Float64
    public mut open prop z: Float64
}
public open class TranslateResult <: TranslateResultInterfaces {
    private var x_container: Float64
    public mut open prop x: Float64
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Float64
    public mut open prop y: Float64
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var z_container: Float64
    public mut open prop z: Float64
    {
        get() {
            return z_container
        }
        set(z) {
            z_container = z
        }
    }
    TranslateResult(x: Float64, y: Float64, z: Float64) {
        this.x_container = x
        this.y_container = y
        this.z_container = z
    }
}
public open class TranslateResult_serializer {
    public static func write(buffer: SerializerBase, value: TranslateResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        valueSerializer.writeNumber(valueHolderForX);
        let valueHolderForY = value.y
        valueSerializer.writeNumber(valueHolderForY);
        let valueHolderForZ = value.z
        valueSerializer.writeNumber(valueHolderForZ);
    }
    public static func read(buffer: DeserializerBase): TranslateResult {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let zTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TranslateResult = TranslateResult(xTmpResult, yTmpResult, zTmpResult)
        return value
    }
}
