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
public interface ConstraintSizeOptionsInterfaces <:  {
    public mut open prop minWidth: Option<Length>
    public mut open prop maxWidth: Option<Length>
    public mut open prop minHeight: Option<Length>
    public mut open prop maxHeight: Option<Length>
}
public open class ConstraintSizeOptions <: ConstraintSizeOptionsInterfaces {
    private var minWidth_container: Option<Length>
    public mut open prop minWidth: Option<Length>
    {
        get() {
            return minWidth_container
        }
        set(minWidth) {
            minWidth_container = minWidth
        }
    }
    private var maxWidth_container: Option<Length>
    public mut open prop maxWidth: Option<Length>
    {
        get() {
            return maxWidth_container
        }
        set(maxWidth) {
            maxWidth_container = maxWidth
        }
    }
    private var minHeight_container: Option<Length>
    public mut open prop minHeight: Option<Length>
    {
        get() {
            return minHeight_container
        }
        set(minHeight) {
            minHeight_container = minHeight
        }
    }
    private var maxHeight_container: Option<Length>
    public mut open prop maxHeight: Option<Length>
    {
        get() {
            return maxHeight_container
        }
        set(maxHeight) {
            maxHeight_container = maxHeight
        }
    }
    ConstraintSizeOptions(minWidth: Option<Length>, maxWidth: Option<Length>, minHeight: Option<Length>, maxHeight: Option<Length>) {
        this.minWidth_container = minWidth
        this.maxWidth_container = maxWidth
        this.minHeight_container = minHeight
        this.maxHeight_container = maxHeight
    }
}
public open class ConstraintSizeOptions_serializer {
    public static func write(buffer: SerializerBase, value: ConstraintSizeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMinWidth = value.minWidth
        if (valueHolderForMinWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMinWidthTmpValue = valueHolderForMinWidth
            if (valueHolderForMinWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMinWidthTmpValueForIdx0 = valueHolderForMinWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMinWidthTmpValueForIdx0);
            } else if (valueHolderForMinWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMinWidthTmpValueForIdx1 = valueHolderForMinWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMinWidthTmpValueForIdx1);
            } else if (valueHolderForMinWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMinWidthTmpValueForIdx2 = valueHolderForMinWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMinWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMaxWidth = value.maxWidth
        if (valueHolderForMaxWidth.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxWidthTmpValue = valueHolderForMaxWidth
            if (valueHolderForMaxWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMaxWidthTmpValueForIdx0 = valueHolderForMaxWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMaxWidthTmpValueForIdx0);
            } else if (valueHolderForMaxWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMaxWidthTmpValueForIdx1 = valueHolderForMaxWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMaxWidthTmpValueForIdx1);
            } else if (valueHolderForMaxWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMaxWidthTmpValueForIdx2 = valueHolderForMaxWidthTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMaxWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMinHeight = value.minHeight
        if (valueHolderForMinHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMinHeightTmpValue = valueHolderForMinHeight
            if (valueHolderForMinHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMinHeightTmpValueForIdx0 = valueHolderForMinHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMinHeightTmpValueForIdx0);
            } else if (valueHolderForMinHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMinHeightTmpValueForIdx1 = valueHolderForMinHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMinHeightTmpValueForIdx1);
            } else if (valueHolderForMinHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMinHeightTmpValueForIdx2 = valueHolderForMinHeightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMinHeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMaxHeight = value.maxHeight
        if (valueHolderForMaxHeight.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaxHeightTmpValue = valueHolderForMaxHeight
            if (valueHolderForMaxHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMaxHeightTmpValueForIdx0 = valueHolderForMaxHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMaxHeightTmpValueForIdx0);
            } else if (valueHolderForMaxHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMaxHeightTmpValueForIdx1 = valueHolderForMaxHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMaxHeightTmpValueForIdx1);
            } else if (valueHolderForMaxHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMaxHeightTmpValueForIdx2 = valueHolderForMaxHeightTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForMaxHeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ConstraintSizeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let minWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var minWidthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(minWidthTmpBuf_runtimeType))) {
            let minWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var minWidthTmpBuf_: Length 
            if (minWidthTmpBuf_UnionSelector == Int8(0)) {
                minWidthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (minWidthTmpBuf_UnionSelector == Int8(1)) {
                minWidthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (minWidthTmpBuf_UnionSelector == Int8(2)) {
                minWidthTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for minWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            minWidthTmpBuf = match (minWidthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let minWidthTmpResult: Option<Length> = minWidthTmpBuf
        let maxWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxWidthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxWidthTmpBuf_runtimeType))) {
            let maxWidthTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var maxWidthTmpBuf_: Length 
            if (maxWidthTmpBuf_UnionSelector == Int8(0)) {
                maxWidthTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maxWidthTmpBuf_UnionSelector == Int8(1)) {
                maxWidthTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maxWidthTmpBuf_UnionSelector == Int8(2)) {
                maxWidthTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for maxWidthTmpBuf_ has to be chosen through deserialisation.")
            }
            maxWidthTmpBuf = match (maxWidthTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxWidthTmpResult: Option<Length> = maxWidthTmpBuf
        let minHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var minHeightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(minHeightTmpBuf_runtimeType))) {
            let minHeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var minHeightTmpBuf_: Length 
            if (minHeightTmpBuf_UnionSelector == Int8(0)) {
                minHeightTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (minHeightTmpBuf_UnionSelector == Int8(1)) {
                minHeightTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (minHeightTmpBuf_UnionSelector == Int8(2)) {
                minHeightTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for minHeightTmpBuf_ has to be chosen through deserialisation.")
            }
            minHeightTmpBuf = match (minHeightTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let minHeightTmpResult: Option<Length> = minHeightTmpBuf
        let maxHeightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maxHeightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maxHeightTmpBuf_runtimeType))) {
            let maxHeightTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var maxHeightTmpBuf_: Length 
            if (maxHeightTmpBuf_UnionSelector == Int8(0)) {
                maxHeightTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maxHeightTmpBuf_UnionSelector == Int8(1)) {
                maxHeightTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maxHeightTmpBuf_UnionSelector == Int8(2)) {
                maxHeightTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for maxHeightTmpBuf_ has to be chosen through deserialisation.")
            }
            maxHeightTmpBuf = match (maxHeightTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maxHeightTmpResult: Option<Length> = maxHeightTmpBuf
        var value: ConstraintSizeOptions = ConstraintSizeOptions(minWidthTmpResult, maxWidthTmpResult, minHeightTmpResult, maxHeightTmpResult)
        return value
    }
}
