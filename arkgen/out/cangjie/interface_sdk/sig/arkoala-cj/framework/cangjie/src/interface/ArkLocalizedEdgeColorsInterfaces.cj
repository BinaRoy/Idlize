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
public interface LocalizedEdgeColorsInterfaces <:  {
    public mut open prop top: Option<ResourceColor>
    public mut open prop end: Option<ResourceColor>
    public mut open prop bottom: Option<ResourceColor>
    public mut open prop start: Option<ResourceColor>
}
public open class LocalizedEdgeColors <: LocalizedEdgeColorsInterfaces {
    private var top_container: Option<ResourceColor>
    public mut open prop top: Option<ResourceColor>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var end_container: Option<ResourceColor>
    public mut open prop end: Option<ResourceColor>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var bottom_container: Option<ResourceColor>
    public mut open prop bottom: Option<ResourceColor>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var start_container: Option<ResourceColor>
    public mut open prop start: Option<ResourceColor>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    LocalizedEdgeColors(top: Option<ResourceColor>, end: Option<ResourceColor>, bottom: Option<ResourceColor>, start: Option<ResourceColor>) {
        this.top_container = top
        this.end_container = end
        this.bottom_container = bottom
        this.start_container = start
    }
}
public open class LocalizedEdgeColors_serializer {
    public static func write(buffer: SerializerBase, value: LocalizedEdgeColors): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTop = value.top
        if (valueHolderForTop.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            if (valueHolderForTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTopTmpValueForIdx0 = valueHolderForTopTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForTopTmpValueForIdx0.value);
            } else if (valueHolderForTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTopTmpValueForIdx1 = valueHolderForTopTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTopTmpValueForIdx1);
            } else if (valueHolderForTopTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTopTmpValueForIdx2 = valueHolderForTopTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForTopTmpValueForIdx2);
            } else if (valueHolderForTopTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForTopTmpValueForIdx3 = valueHolderForTopTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForTopTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            if (valueHolderForEndTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForEndTmpValueForIdx0 = valueHolderForEndTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForEndTmpValueForIdx0.value);
            } else if (valueHolderForEndTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForEndTmpValueForIdx1 = valueHolderForEndTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForEndTmpValueForIdx1);
            } else if (valueHolderForEndTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForEndTmpValueForIdx2 = valueHolderForEndTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForEndTmpValueForIdx2);
            } else if (valueHolderForEndTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForEndTmpValueForIdx3 = valueHolderForEndTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForEndTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (valueHolderForBottom.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            if (valueHolderForBottomTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBottomTmpValueForIdx0 = valueHolderForBottomTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBottomTmpValueForIdx0.value);
            } else if (valueHolderForBottomTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBottomTmpValueForIdx1 = valueHolderForBottomTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBottomTmpValueForIdx1);
            } else if (valueHolderForBottomTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBottomTmpValueForIdx2 = valueHolderForBottomTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBottomTmpValueForIdx2);
            } else if (valueHolderForBottomTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBottomTmpValueForIdx3 = valueHolderForBottomTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBottomTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            if (valueHolderForStartTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartTmpValueForIdx0 = valueHolderForStartTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForStartTmpValueForIdx0.value);
            } else if (valueHolderForStartTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartTmpValueForIdx1 = valueHolderForStartTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStartTmpValueForIdx1);
            } else if (valueHolderForStartTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStartTmpValueForIdx2 = valueHolderForStartTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForStartTmpValueForIdx2);
            } else if (valueHolderForStartTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForStartTmpValueForIdx3 = valueHolderForStartTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForStartTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LocalizedEdgeColors {
        var valueDeserializer: DeserializerBase = buffer
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            let topTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var topTmpBuf_: ResourceColor 
            if (topTmpBuf_UnionSelector == Int8(0)) {
                topTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (topTmpBuf_UnionSelector == Int8(1)) {
                topTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(2)) {
                topTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBuf_UnionSelector == Int8(3)) {
                topTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for topTmpBuf_ has to be chosen through deserialisation.")
            }
            topTmpBuf = match (topTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topTmpResult: Option<ResourceColor> = topTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            let endTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var endTmpBuf_: ResourceColor 
            if (endTmpBuf_UnionSelector == Int8(0)) {
                endTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (endTmpBuf_UnionSelector == Int8(1)) {
                endTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endTmpBuf_UnionSelector == Int8(2)) {
                endTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endTmpBuf_UnionSelector == Int8(3)) {
                endTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for endTmpBuf_ has to be chosen through deserialisation.")
            }
            endTmpBuf = match (endTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endTmpResult: Option<ResourceColor> = endTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            let bottomTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var bottomTmpBuf_: ResourceColor 
            if (bottomTmpBuf_UnionSelector == Int8(0)) {
                bottomTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (bottomTmpBuf_UnionSelector == Int8(1)) {
                bottomTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBuf_UnionSelector == Int8(2)) {
                bottomTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBuf_UnionSelector == Int8(3)) {
                bottomTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for bottomTmpBuf_ has to be chosen through deserialisation.")
            }
            bottomTmpBuf = match (bottomTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomTmpResult: Option<ResourceColor> = bottomTmpBuf
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            let startTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startTmpBuf_: ResourceColor 
            if (startTmpBuf_UnionSelector == Int8(0)) {
                startTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (startTmpBuf_UnionSelector == Int8(1)) {
                startTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startTmpBuf_UnionSelector == Int8(2)) {
                startTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startTmpBuf_UnionSelector == Int8(3)) {
                startTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for startTmpBuf_ has to be chosen through deserialisation.")
            }
            startTmpBuf = match (startTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startTmpResult: Option<ResourceColor> = startTmpBuf
        var value: LocalizedEdgeColors = LocalizedEdgeColors(topTmpResult, endTmpResult, bottomTmpResult, startTmpResult)
        return value
    }
}
