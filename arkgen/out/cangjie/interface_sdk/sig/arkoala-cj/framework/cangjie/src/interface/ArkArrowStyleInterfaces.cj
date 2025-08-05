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
public interface ArrowStyleInterfaces <:  {
    public mut open prop showBackground: Option<Bool>
    public mut open prop isSidebarMiddle: Option<Bool>
    public mut open prop backgroundSize: Option<Length>
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop arrowSize: Option<Length>
    public mut open prop arrowColor: Option<ResourceColor>
}
public open class ArrowStyle <: ArrowStyleInterfaces {
    private var showBackground_container: Option<Bool>
    public mut open prop showBackground: Option<Bool>
    {
        get() {
            return showBackground_container
        }
        set(showBackground) {
            showBackground_container = showBackground
        }
    }
    private var isSidebarMiddle_container: Option<Bool>
    public mut open prop isSidebarMiddle: Option<Bool>
    {
        get() {
            return isSidebarMiddle_container
        }
        set(isSidebarMiddle) {
            isSidebarMiddle_container = isSidebarMiddle
        }
    }
    private var backgroundSize_container: Option<Length>
    public mut open prop backgroundSize: Option<Length>
    {
        get() {
            return backgroundSize_container
        }
        set(backgroundSize) {
            backgroundSize_container = backgroundSize
        }
    }
    private var backgroundColor_container: Option<ResourceColor>
    public mut open prop backgroundColor: Option<ResourceColor>
    {
        get() {
            return backgroundColor_container
        }
        set(backgroundColor) {
            backgroundColor_container = backgroundColor
        }
    }
    private var arrowSize_container: Option<Length>
    public mut open prop arrowSize: Option<Length>
    {
        get() {
            return arrowSize_container
        }
        set(arrowSize) {
            arrowSize_container = arrowSize
        }
    }
    private var arrowColor_container: Option<ResourceColor>
    public mut open prop arrowColor: Option<ResourceColor>
    {
        get() {
            return arrowColor_container
        }
        set(arrowColor) {
            arrowColor_container = arrowColor
        }
    }
    ArrowStyle(showBackground: Option<Bool>, isSidebarMiddle: Option<Bool>, backgroundSize: Option<Length>, backgroundColor: Option<ResourceColor>, arrowSize: Option<Length>, arrowColor: Option<ResourceColor>) {
        this.showBackground_container = showBackground
        this.isSidebarMiddle_container = isSidebarMiddle
        this.backgroundSize_container = backgroundSize
        this.backgroundColor_container = backgroundColor
        this.arrowSize_container = arrowSize
        this.arrowColor_container = arrowColor
    }
}
public open class ArrowStyle_serializer {
    public static func write(buffer: SerializerBase, value: ArrowStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForShowBackground = value.showBackground
        if (valueHolderForShowBackground.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowBackgroundTmpValue = valueHolderForShowBackground
            valueSerializer.writeBoolean(valueHolderForShowBackgroundTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIsSidebarMiddle = value.isSidebarMiddle
        if (valueHolderForIsSidebarMiddle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsSidebarMiddleTmpValue = valueHolderForIsSidebarMiddle
            valueSerializer.writeBoolean(valueHolderForIsSidebarMiddleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackgroundSize = value.backgroundSize
        if (valueHolderForBackgroundSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundSizeTmpValue = valueHolderForBackgroundSize
            if (valueHolderForBackgroundSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBackgroundSizeTmpValueForIdx0 = valueHolderForBackgroundSizeTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBackgroundSizeTmpValueForIdx0);
            } else if (valueHolderForBackgroundSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBackgroundSizeTmpValueForIdx1 = valueHolderForBackgroundSizeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundSizeTmpValueForIdx1);
            } else if (valueHolderForBackgroundSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBackgroundSizeTmpValueForIdx2 = valueHolderForBackgroundSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForBackgroundSizeTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBackgroundColor = value.backgroundColor
        if (valueHolderForBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor
            if (valueHolderForBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBackgroundColorTmpValueForIdx0.value);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBackgroundColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForArrowSize = value.arrowSize
        if (valueHolderForArrowSize.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForArrowSizeTmpValue = valueHolderForArrowSize
            if (valueHolderForArrowSizeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForArrowSizeTmpValueForIdx0 = valueHolderForArrowSizeTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForArrowSizeTmpValueForIdx0);
            } else if (valueHolderForArrowSizeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForArrowSizeTmpValueForIdx1 = valueHolderForArrowSizeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForArrowSizeTmpValueForIdx1);
            } else if (valueHolderForArrowSizeTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForArrowSizeTmpValueForIdx2 = valueHolderForArrowSizeTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForArrowSizeTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForArrowColor = value.arrowColor
        if (valueHolderForArrowColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForArrowColorTmpValue = valueHolderForArrowColor
            if (valueHolderForArrowColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForArrowColorTmpValueForIdx0 = valueHolderForArrowColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForArrowColorTmpValueForIdx0.value);
            } else if (valueHolderForArrowColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForArrowColorTmpValueForIdx1 = valueHolderForArrowColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForArrowColorTmpValueForIdx1);
            } else if (valueHolderForArrowColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForArrowColorTmpValueForIdx2 = valueHolderForArrowColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForArrowColorTmpValueForIdx2);
            } else if (valueHolderForArrowColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForArrowColorTmpValueForIdx3 = valueHolderForArrowColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForArrowColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ArrowStyle {
        var valueDeserializer: DeserializerBase = buffer
        let showBackgroundTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showBackgroundTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showBackgroundTmpBuf_runtimeType))) {
            showBackgroundTmpBuf = valueDeserializer.readBoolean()
        }
        let showBackgroundTmpResult: Option<Bool> = showBackgroundTmpBuf
        let isSidebarMiddleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isSidebarMiddleTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isSidebarMiddleTmpBuf_runtimeType))) {
            isSidebarMiddleTmpBuf = valueDeserializer.readBoolean()
        }
        let isSidebarMiddleTmpResult: Option<Bool> = isSidebarMiddleTmpBuf
        let backgroundSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundSizeTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundSizeTmpBuf_runtimeType))) {
            let backgroundSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundSizeTmpBuf_: Length 
            if (backgroundSizeTmpBuf_UnionSelector == Int8(0)) {
                backgroundSizeTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundSizeTmpBuf_UnionSelector == Int8(1)) {
                backgroundSizeTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundSizeTmpBuf_UnionSelector == Int8(2)) {
                backgroundSizeTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for backgroundSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            backgroundSizeTmpBuf = match (backgroundSizeTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundSizeTmpResult: Option<Length> = backgroundSizeTmpBuf
        let backgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundColorTmpBuf_runtimeType))) {
            let backgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundColorTmpBuf_: ResourceColor 
            if (backgroundColorTmpBuf_UnionSelector == Int8(0)) {
                backgroundColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(1)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(2)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(3)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            backgroundColorTmpBuf = match (backgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundColorTmpResult: Option<ResourceColor> = backgroundColorTmpBuf
        let arrowSizeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var arrowSizeTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(arrowSizeTmpBuf_runtimeType))) {
            let arrowSizeTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var arrowSizeTmpBuf_: Length 
            if (arrowSizeTmpBuf_UnionSelector == Int8(0)) {
                arrowSizeTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowSizeTmpBuf_UnionSelector == Int8(1)) {
                arrowSizeTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowSizeTmpBuf_UnionSelector == Int8(2)) {
                arrowSizeTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for arrowSizeTmpBuf_ has to be chosen through deserialisation.")
            }
            arrowSizeTmpBuf = match (arrowSizeTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let arrowSizeTmpResult: Option<Length> = arrowSizeTmpBuf
        let arrowColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var arrowColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(arrowColorTmpBuf_runtimeType))) {
            let arrowColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var arrowColorTmpBuf_: ResourceColor 
            if (arrowColorTmpBuf_UnionSelector == Int8(0)) {
                arrowColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (arrowColorTmpBuf_UnionSelector == Int8(1)) {
                arrowColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowColorTmpBuf_UnionSelector == Int8(2)) {
                arrowColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (arrowColorTmpBuf_UnionSelector == Int8(3)) {
                arrowColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for arrowColorTmpBuf_ has to be chosen through deserialisation.")
            }
            arrowColorTmpBuf = match (arrowColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let arrowColorTmpResult: Option<ResourceColor> = arrowColorTmpBuf
        var value: ArrowStyle = ArrowStyle(showBackgroundTmpResult, isSidebarMiddleTmpResult, backgroundSizeTmpResult, backgroundColorTmpResult, arrowSizeTmpResult, arrowColorTmpResult)
        return value
    }
}
