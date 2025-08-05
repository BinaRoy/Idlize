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
public interface TextMetricsInterfaces <:  {
    public open prop actualBoundingBoxAscent: Float64
    public open prop actualBoundingBoxDescent: Float64
    public open prop actualBoundingBoxLeft: Float64
    public open prop actualBoundingBoxRight: Float64
    public open prop alphabeticBaseline: Float64
    public open prop emHeightAscent: Float64
    public open prop emHeightDescent: Float64
    public open prop fontBoundingBoxAscent: Float64
    public open prop fontBoundingBoxDescent: Float64
    public open prop hangingBaseline: Float64
    public open prop ideographicBaseline: Float64
    public open prop width: Float64
    public open prop height: Float64
}
public open class TextMetrics <: TextMetricsInterfaces {
    private var actualBoundingBoxAscent_container: Float64
    public open prop actualBoundingBoxAscent: Float64
    {
        get() {
            return actualBoundingBoxAscent_container
        }
    }
    private var actualBoundingBoxDescent_container: Float64
    public open prop actualBoundingBoxDescent: Float64
    {
        get() {
            return actualBoundingBoxDescent_container
        }
    }
    private var actualBoundingBoxLeft_container: Float64
    public open prop actualBoundingBoxLeft: Float64
    {
        get() {
            return actualBoundingBoxLeft_container
        }
    }
    private var actualBoundingBoxRight_container: Float64
    public open prop actualBoundingBoxRight: Float64
    {
        get() {
            return actualBoundingBoxRight_container
        }
    }
    private var alphabeticBaseline_container: Float64
    public open prop alphabeticBaseline: Float64
    {
        get() {
            return alphabeticBaseline_container
        }
    }
    private var emHeightAscent_container: Float64
    public open prop emHeightAscent: Float64
    {
        get() {
            return emHeightAscent_container
        }
    }
    private var emHeightDescent_container: Float64
    public open prop emHeightDescent: Float64
    {
        get() {
            return emHeightDescent_container
        }
    }
    private var fontBoundingBoxAscent_container: Float64
    public open prop fontBoundingBoxAscent: Float64
    {
        get() {
            return fontBoundingBoxAscent_container
        }
    }
    private var fontBoundingBoxDescent_container: Float64
    public open prop fontBoundingBoxDescent: Float64
    {
        get() {
            return fontBoundingBoxDescent_container
        }
    }
    private var hangingBaseline_container: Float64
    public open prop hangingBaseline: Float64
    {
        get() {
            return hangingBaseline_container
        }
    }
    private var ideographicBaseline_container: Float64
    public open prop ideographicBaseline: Float64
    {
        get() {
            return ideographicBaseline_container
        }
    }
    private var width_container: Float64
    public open prop width: Float64
    {
        get() {
            return width_container
        }
    }
    private var height_container: Float64
    public open prop height: Float64
    {
        get() {
            return height_container
        }
    }
    TextMetrics(actualBoundingBoxAscent: Float64, actualBoundingBoxDescent: Float64, actualBoundingBoxLeft: Float64, actualBoundingBoxRight: Float64, alphabeticBaseline: Float64, emHeightAscent: Float64, emHeightDescent: Float64, fontBoundingBoxAscent: Float64, fontBoundingBoxDescent: Float64, hangingBaseline: Float64, ideographicBaseline: Float64, width: Float64, height: Float64) {
        this.actualBoundingBoxAscent_container = actualBoundingBoxAscent
        this.actualBoundingBoxDescent_container = actualBoundingBoxDescent
        this.actualBoundingBoxLeft_container = actualBoundingBoxLeft
        this.actualBoundingBoxRight_container = actualBoundingBoxRight
        this.alphabeticBaseline_container = alphabeticBaseline
        this.emHeightAscent_container = emHeightAscent
        this.emHeightDescent_container = emHeightDescent
        this.fontBoundingBoxAscent_container = fontBoundingBoxAscent
        this.fontBoundingBoxDescent_container = fontBoundingBoxDescent
        this.hangingBaseline_container = hangingBaseline
        this.ideographicBaseline_container = ideographicBaseline
        this.width_container = width
        this.height_container = height
    }
}
public open class TextMetrics_serializer {
    public static func write(buffer: SerializerBase, value: TextMetrics): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForActualBoundingBoxAscent = value.actualBoundingBoxAscent
        valueSerializer.writeNumber(valueHolderForActualBoundingBoxAscent);
        let valueHolderForActualBoundingBoxDescent = value.actualBoundingBoxDescent
        valueSerializer.writeNumber(valueHolderForActualBoundingBoxDescent);
        let valueHolderForActualBoundingBoxLeft = value.actualBoundingBoxLeft
        valueSerializer.writeNumber(valueHolderForActualBoundingBoxLeft);
        let valueHolderForActualBoundingBoxRight = value.actualBoundingBoxRight
        valueSerializer.writeNumber(valueHolderForActualBoundingBoxRight);
        let valueHolderForAlphabeticBaseline = value.alphabeticBaseline
        valueSerializer.writeNumber(valueHolderForAlphabeticBaseline);
        let valueHolderForEmHeightAscent = value.emHeightAscent
        valueSerializer.writeNumber(valueHolderForEmHeightAscent);
        let valueHolderForEmHeightDescent = value.emHeightDescent
        valueSerializer.writeNumber(valueHolderForEmHeightDescent);
        let valueHolderForFontBoundingBoxAscent = value.fontBoundingBoxAscent
        valueSerializer.writeNumber(valueHolderForFontBoundingBoxAscent);
        let valueHolderForFontBoundingBoxDescent = value.fontBoundingBoxDescent
        valueSerializer.writeNumber(valueHolderForFontBoundingBoxDescent);
        let valueHolderForHangingBaseline = value.hangingBaseline
        valueSerializer.writeNumber(valueHolderForHangingBaseline);
        let valueHolderForIdeographicBaseline = value.ideographicBaseline
        valueSerializer.writeNumber(valueHolderForIdeographicBaseline);
        let valueHolderForWidth = value.width
        valueSerializer.writeNumber(valueHolderForWidth);
        let valueHolderForHeight = value.height
        valueSerializer.writeNumber(valueHolderForHeight);
    }
    public static func read(buffer: DeserializerBase): TextMetrics {
        var valueDeserializer: DeserializerBase = buffer
        let actualBoundingBoxAscentTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let actualBoundingBoxDescentTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let actualBoundingBoxLeftTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let actualBoundingBoxRightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let alphabeticBaselineTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let emHeightAscentTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let emHeightDescentTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let fontBoundingBoxAscentTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let fontBoundingBoxDescentTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let hangingBaselineTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let ideographicBaselineTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let widthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TextMetrics = TextMetrics(actualBoundingBoxAscentTmpResult, actualBoundingBoxDescentTmpResult, actualBoundingBoxLeftTmpResult, actualBoundingBoxRightTmpResult, alphabeticBaselineTmpResult, emHeightAscentTmpResult, emHeightDescentTmpResult, fontBoundingBoxAscentTmpResult, fontBoundingBoxDescentTmpResult, hangingBaselineTmpResult, ideographicBaselineTmpResult, widthTmpResult, heightTmpResult)
        return value
    }
}
