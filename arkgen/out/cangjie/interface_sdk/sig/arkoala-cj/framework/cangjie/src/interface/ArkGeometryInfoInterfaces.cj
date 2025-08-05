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
public interface GeometryInfoInterfaces <: SizeResultInterfaces {
    public mut open prop borderWidth: EdgeWidth
    public mut open prop margin: Margin
    public mut open prop padding: Padding
}
public open class GeometryInfo <: GeometryInfoInterfaces {
    private var borderWidth_container: EdgeWidth
    public mut open prop borderWidth: EdgeWidth
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var margin_container: Margin
    public mut open prop margin: Margin
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    private var padding_container: Padding
    public mut open prop padding: Padding
    {
        get() {
            return padding_container
        }
        set(padding) {
            padding_container = padding
        }
    }
    private var width_container: Float64
    public mut open prop width: Float64
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Float64
    public mut open prop height: Float64
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    GeometryInfo(borderWidth: EdgeWidth, margin: Margin, padding: Padding, width: Float64, height: Float64) {
        this.borderWidth_container = borderWidth
        this.margin_container = margin
        this.padding_container = padding
        this.width_container = width
        this.height_container = height
    }
}
public open class GeometryInfo_serializer {
    public static func write(buffer: SerializerBase, value: GeometryInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        valueSerializer.writeNumber(valueHolderForWidth);
        let valueHolderForHeight = value.height
        valueSerializer.writeNumber(valueHolderForHeight);
        let valueHolderForBorderWidth = value.borderWidth
        EdgeWidths_serializer.write(valueSerializer, valueHolderForBorderWidth);
        let valueHolderForMargin = value.margin
        Padding_serializer.write(valueSerializer, valueHolderForMargin);
        let valueHolderForPadding = value.padding
        Padding_serializer.write(valueSerializer, valueHolderForPadding);
    }
    public static func read(buffer: DeserializerBase): GeometryInfo {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let borderWidthTmpResult: EdgeWidth = EdgeWidths_serializer.read(valueDeserializer)
        let marginTmpResult: Margin = Padding_serializer.read(valueDeserializer)
        let paddingTmpResult: Padding = Padding_serializer.read(valueDeserializer)
        var value: GeometryInfo = GeometryInfo(borderWidthTmpResult, marginTmpResult, paddingTmpResult, widthTmpResult, heightTmpResult)
        return value
    }
}
