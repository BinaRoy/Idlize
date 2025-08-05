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
public interface ScrollEdgeOptionsInterfaces <:  {
    public mut open prop velocity: Option<Float64>
}
public open class ScrollEdgeOptions <: ScrollEdgeOptionsInterfaces {
    private var velocity_container: Option<Float64>
    public mut open prop velocity: Option<Float64>
    {
        get() {
            return velocity_container
        }
        set(velocity) {
            velocity_container = velocity
        }
    }
    ScrollEdgeOptions(velocity: Option<Float64>) {
        this.velocity_container = velocity
    }
}
public open class ScrollEdgeOptions_serializer {
    public static func write(buffer: SerializerBase, value: ScrollEdgeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForVelocity = value.velocity
        if (valueHolderForVelocity.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForVelocityTmpValue = valueHolderForVelocity
            valueSerializer.writeNumber(valueHolderForVelocityTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ScrollEdgeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let velocityTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var velocityTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(velocityTmpBuf_runtimeType))) {
            velocityTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let velocityTmpResult: Option<Float64> = velocityTmpBuf
        var value: ScrollEdgeOptions = ScrollEdgeOptions(velocityTmpResult)
        return value
    }
}
