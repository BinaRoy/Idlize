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
public interface LargestContentfulPaintInterfaces <:  {
    public mut open prop navigationStartTime: Option<Any>
    public mut open prop largestImagePaintTime: Option<Any>
    public mut open prop largestTextPaintTime: Option<Any>
    public mut open prop imageBPP: Option<Float64>
    public mut open prop largestImageLoadStartTime: Option<Any>
    public mut open prop largestImageLoadEndTime: Option<Any>
}
public open class LargestContentfulPaint <: LargestContentfulPaintInterfaces {
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
    private var largestImagePaintTime_container: Option<Any>
    public mut open prop largestImagePaintTime: Option<Any>
    {
        get() {
            return largestImagePaintTime_container
        }
        set(largestImagePaintTime) {
            largestImagePaintTime_container = largestImagePaintTime
        }
    }
    private var largestTextPaintTime_container: Option<Any>
    public mut open prop largestTextPaintTime: Option<Any>
    {
        get() {
            return largestTextPaintTime_container
        }
        set(largestTextPaintTime) {
            largestTextPaintTime_container = largestTextPaintTime
        }
    }
    private var imageBPP_container: Option<Float64>
    public mut open prop imageBPP: Option<Float64>
    {
        get() {
            return imageBPP_container
        }
        set(imageBPP) {
            imageBPP_container = imageBPP
        }
    }
    private var largestImageLoadStartTime_container: Option<Any>
    public mut open prop largestImageLoadStartTime: Option<Any>
    {
        get() {
            return largestImageLoadStartTime_container
        }
        set(largestImageLoadStartTime) {
            largestImageLoadStartTime_container = largestImageLoadStartTime
        }
    }
    private var largestImageLoadEndTime_container: Option<Any>
    public mut open prop largestImageLoadEndTime: Option<Any>
    {
        get() {
            return largestImageLoadEndTime_container
        }
        set(largestImageLoadEndTime) {
            largestImageLoadEndTime_container = largestImageLoadEndTime
        }
    }
    LargestContentfulPaint(navigationStartTime: Option<Any>, largestImagePaintTime: Option<Any>, largestTextPaintTime: Option<Any>, imageBPP: Option<Float64>, largestImageLoadStartTime: Option<Any>, largestImageLoadEndTime: Option<Any>) {
        this.navigationStartTime_container = navigationStartTime
        this.largestImagePaintTime_container = largestImagePaintTime
        this.largestTextPaintTime_container = largestTextPaintTime
        this.imageBPP_container = imageBPP
        this.largestImageLoadStartTime_container = largestImageLoadStartTime
        this.largestImageLoadEndTime_container = largestImageLoadEndTime
    }
}
public open class LargestContentfulPaint_serializer {
    public static func write(buffer: SerializerBase, value: LargestContentfulPaint): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForNavigationStartTime = value.navigationStartTime
        if (valueHolderForNavigationStartTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNavigationStartTimeTmpValue = valueHolderForNavigationStartTime
            valueSerializer.writeCustomObject("Any", valueHolderForNavigationStartTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLargestImagePaintTime = value.largestImagePaintTime
        if (valueHolderForLargestImagePaintTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLargestImagePaintTimeTmpValue = valueHolderForLargestImagePaintTime
            valueSerializer.writeCustomObject("Any", valueHolderForLargestImagePaintTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLargestTextPaintTime = value.largestTextPaintTime
        if (valueHolderForLargestTextPaintTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLargestTextPaintTimeTmpValue = valueHolderForLargestTextPaintTime
            valueSerializer.writeCustomObject("Any", valueHolderForLargestTextPaintTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForImageBPP = value.imageBPP
        if (valueHolderForImageBPP.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForImageBPPTmpValue = valueHolderForImageBPP
            valueSerializer.writeFloat64(valueHolderForImageBPPTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLargestImageLoadStartTime = value.largestImageLoadStartTime
        if (valueHolderForLargestImageLoadStartTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLargestImageLoadStartTimeTmpValue = valueHolderForLargestImageLoadStartTime
            valueSerializer.writeCustomObject("Any", valueHolderForLargestImageLoadStartTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForLargestImageLoadEndTime = value.largestImageLoadEndTime
        if (valueHolderForLargestImageLoadEndTime.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLargestImageLoadEndTimeTmpValue = valueHolderForLargestImageLoadEndTime
            valueSerializer.writeCustomObject("Any", valueHolderForLargestImageLoadEndTimeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LargestContentfulPaint {
        var valueDeserializer: DeserializerBase = buffer
        let navigationStartTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var navigationStartTimeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(navigationStartTimeTmpBuf_runtimeType))) {
            navigationStartTimeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let navigationStartTimeTmpResult: Option<Any> = navigationStartTimeTmpBuf
        let largestImagePaintTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var largestImagePaintTimeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(largestImagePaintTimeTmpBuf_runtimeType))) {
            largestImagePaintTimeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let largestImagePaintTimeTmpResult: Option<Any> = largestImagePaintTimeTmpBuf
        let largestTextPaintTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var largestTextPaintTimeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(largestTextPaintTimeTmpBuf_runtimeType))) {
            largestTextPaintTimeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let largestTextPaintTimeTmpResult: Option<Any> = largestTextPaintTimeTmpBuf
        let imageBPPTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var imageBPPTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(imageBPPTmpBuf_runtimeType))) {
            imageBPPTmpBuf = valueDeserializer.readFloat64()
        }
        let imageBPPTmpResult: Option<Float64> = imageBPPTmpBuf
        let largestImageLoadStartTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var largestImageLoadStartTimeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(largestImageLoadStartTimeTmpBuf_runtimeType))) {
            largestImageLoadStartTimeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let largestImageLoadStartTimeTmpResult: Option<Any> = largestImageLoadStartTimeTmpBuf
        let largestImageLoadEndTimeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var largestImageLoadEndTimeTmpBuf: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(largestImageLoadEndTimeTmpBuf_runtimeType))) {
            largestImageLoadEndTimeTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let largestImageLoadEndTimeTmpResult: Option<Any> = largestImageLoadEndTimeTmpBuf
        var value: LargestContentfulPaint = LargestContentfulPaint(navigationStartTimeTmpResult, largestImagePaintTimeTmpResult, largestTextPaintTimeTmpResult, imageBPPTmpResult, largestImageLoadStartTimeTmpResult, largestImageLoadEndTimeTmpResult)
        return value
    }
}
