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
public interface GaugeIndicatorOptionsInterfaces <:  {
    public mut open prop icon: Option<ResourceStr>
    public mut open prop space: Option<Dimension>
}
public open class GaugeIndicatorOptions <: GaugeIndicatorOptionsInterfaces {
    private var icon_container: Option<ResourceStr>
    public mut open prop icon: Option<ResourceStr>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var space_container: Option<Dimension>
    public mut open prop space: Option<Dimension>
    {
        get() {
            return space_container
        }
        set(space) {
            space_container = space
        }
    }
    GaugeIndicatorOptions(icon: Option<ResourceStr>, space: Option<Dimension>) {
        this.icon_container = icon
        this.space_container = space
    }
}
public open class GaugeIndicatorOptions_serializer {
    public static func write(buffer: SerializerBase, value: GaugeIndicatorOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIcon = value.icon
        if (valueHolderForIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIconTmpValue = valueHolderForIcon
            if (valueHolderForIconTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForIconTmpValueForIdx0 = valueHolderForIconTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForIconTmpValueForIdx0);
            } else if (valueHolderForIconTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForIconTmpValueForIdx1 = valueHolderForIconTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForIconTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSpace = value.space
        if (valueHolderForSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSpaceTmpValue = valueHolderForSpace
            if (valueHolderForSpaceTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSpaceTmpValueForIdx0 = valueHolderForSpaceTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSpaceTmpValueForIdx0);
            } else if (valueHolderForSpaceTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSpaceTmpValueForIdx1 = valueHolderForSpaceTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForSpaceTmpValueForIdx1);
            } else if (valueHolderForSpaceTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSpaceTmpValueForIdx2 = valueHolderForSpaceTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSpaceTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GaugeIndicatorOptions {
        var valueDeserializer: DeserializerBase = buffer
        let iconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconTmpBuf_runtimeType))) {
            let iconTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var iconTmpBuf_: ResourceStr 
            if (iconTmpBuf_UnionSelector == Int8(0)) {
                iconTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (iconTmpBuf_UnionSelector == Int8(1)) {
                iconTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for iconTmpBuf_ has to be chosen through deserialisation.")
            }
            iconTmpBuf = match (iconTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let iconTmpResult: Option<ResourceStr> = iconTmpBuf
        let spaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var spaceTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(spaceTmpBuf_runtimeType))) {
            let spaceTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var spaceTmpBuf_: Dimension 
            if (spaceTmpBuf_UnionSelector == Int8(0)) {
                spaceTmpBuf_ = Dimension(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (spaceTmpBuf_UnionSelector == Int8(1)) {
                spaceTmpBuf_ = Dimension(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (spaceTmpBuf_UnionSelector == Int8(2)) {
                spaceTmpBuf_ = Dimension(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for spaceTmpBuf_ has to be chosen through deserialisation.")
            }
            spaceTmpBuf = match (spaceTmpBuf_ as Dimension) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let spaceTmpResult: Option<Dimension> = spaceTmpBuf
        var value: GaugeIndicatorOptions = GaugeIndicatorOptions(iconTmpResult, spaceTmpResult)
        return value
    }
}
