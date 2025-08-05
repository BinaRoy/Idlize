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
public interface FirstMeaningfulPaintInterfaces <:  {
    public mut open prop navigationStartTime: Option<Any>
    public mut open prop firstMeaningfulPaintTime: Option<Any>
}
public open class FirstMeaningfulPaint <: FirstMeaningfulPaintInterfaces {
    private var navigationStartTime_container: Option<Any>
    public mut open prop navigationStartTime: Option<Any>
    {
        get() {
            return navigationStartTime_container
        }
        set(navigationStartTime) {
            navigationStartTime_container = navigationStartTime
        }
    }
    private var firstMeaningfulPaintTime_container: Option<Any>
    public mut open prop firstMeaningfulPaintTime: Option<Any>
    {
        get() {
            return firstMeaningfulPaintTime_container
        }
        set(firstMeaningfulPaintTime) {
            firstMeaningfulPaintTime_container = firstMeaningfulPaintTime
        }
    }
    FirstMeaningfulPaint(navigationStartTime: Option<Any>, firstMeaningfulPaintTime: Option<Any>) {
        this.navigationStartTime_container = navigationStartTime
        this.firstMeaningfulPaintTime_container = firstMeaningfulPaintTime
    }
}
public open class FirstMeaningfulPaint_serializer {
    public static func write(buffer: SerializerBase, value: FirstMeaningfulPaint): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForNavigationStartTime = value.navigationStartTime
        if (valueHolderForNavigationStartTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNavigationStartTimeTmpValue = valueHolderForNavigationStartTime
            valueSerializer.writeCustomObject("Any", valueHolderForNavigationStartTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFirstMeaningfulPaintTime = value.firstMeaningfulPaintTime
        if (valueHolderForFirstMeaningfulPaintTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFirstMeaningfulPaintTimeTmpValue = valueHolderForFirstMeaningfulPaintTime
            valueSerializer.writeCustomObject("Any", valueHolderForFirstMeaningfulPaintTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FirstMeaningfulPaint {
        var valueDeserializer: DeserializerBase = buffer
        let navigationStartTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var navigationStartTimeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(navigationStartTimeTmpBuf_runtimeType))) {
            navigationStartTimeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let navigationStartTimeTmpResult: Option<Any> = navigationStartTimeTmpBuf
        let firstMeaningfulPaintTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var firstMeaningfulPaintTimeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(firstMeaningfulPaintTimeTmpBuf_runtimeType))) {
            firstMeaningfulPaintTimeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let firstMeaningfulPaintTimeTmpResult: Option<Any> = firstMeaningfulPaintTimeTmpBuf
        var value: FirstMeaningfulPaint = FirstMeaningfulPaint(navigationStartTimeTmpResult, firstMeaningfulPaintTimeTmpResult)
        return value
    }
}
