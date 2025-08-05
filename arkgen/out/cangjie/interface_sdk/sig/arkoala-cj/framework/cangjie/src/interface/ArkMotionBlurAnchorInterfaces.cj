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
public interface MotionBlurAnchorInterfaces <:  {
    public mut open prop x: Float64
    public mut open prop y: Float64
}
public open class MotionBlurAnchor <: MotionBlurAnchorInterfaces {
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
    MotionBlurAnchor(x: Float64, y: Float64) {
        this.x_container = x
        this.y_container = y
    }
}
public open class MotionBlurAnchor_serializer {
    public static func write(buffer: SerializerBase, value: MotionBlurAnchor): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        valueSerializer.writeNumber(valueHolderForX);
        let valueHolderForY = value.y
        valueSerializer.writeNumber(valueHolderForY);
    }
    public static func read(buffer: DeserializerBase): MotionBlurAnchor {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: MotionBlurAnchor = MotionBlurAnchor(xTmpResult, yTmpResult)
        return value
    }
}
