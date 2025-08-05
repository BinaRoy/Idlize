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
public interface MotionBlurOptionsInterfaces <:  {
    public mut open prop radius: Float64
    public mut open prop anchor: MotionBlurAnchor
}
public open class MotionBlurOptions <: MotionBlurOptionsInterfaces {
    private var radius_container: Float64
    public mut open prop radius: Float64
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var anchor_container: MotionBlurAnchor
    public mut open prop anchor: MotionBlurAnchor
    {
        get() {
            return anchor_container
        }
        set(anchor) {
            anchor_container = anchor
        }
    }
    MotionBlurOptions(radius: Float64, anchor: MotionBlurAnchor) {
        this.radius_container = radius
        this.anchor_container = anchor
    }
}
public open class MotionBlurOptions_serializer {
    public static func write(buffer: SerializerBase, value: MotionBlurOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRadius = value.radius
        valueSerializer.writeNumber(valueHolderForRadius);
        let valueHolderForAnchor = value.anchor
        MotionBlurAnchor_serializer.write(valueSerializer, valueHolderForAnchor);
    }
    public static func read(buffer: DeserializerBase): MotionBlurOptions {
        var valueDeserializer: DeserializerBase = buffer
        let radiusTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let anchorTmpResult: MotionBlurAnchor = MotionBlurAnchor_serializer.read(valueDeserializer)
        var value: MotionBlurOptions = MotionBlurOptions(radiusTmpResult, anchorTmpResult)
        return value
    }
}
