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
public interface SliderSuffixOptionsInterfaces <: SliderCustomContentOptionsInterfaces {
}
public open class SliderSuffixOptions <: SliderSuffixOptionsInterfaces {
    private var accessibilityText_container: Option<ResourceStr>
    public mut open prop accessibilityText: Option<ResourceStr>
    {
        get() {
            return accessibilityText_container
        }
        set(accessibilityText) {
            accessibilityText_container = accessibilityText
        }
    }
    private var accessibilityDescription_container: Option<ResourceStr>
    public mut open prop accessibilityDescription: Option<ResourceStr>
    {
        get() {
            return accessibilityDescription_container
        }
        set(accessibilityDescription) {
            accessibilityDescription_container = accessibilityDescription
        }
    }
    private var accessibilityLevel_container: Option<String>
    public mut open prop accessibilityLevel: Option<String>
    {
        get() {
            return accessibilityLevel_container
        }
        set(accessibilityLevel) {
            accessibilityLevel_container = accessibilityLevel
        }
    }
    private var accessibilityGroup_container: Option<Bool>
    public mut open prop accessibilityGroup: Option<Bool>
    {
        get() {
            return accessibilityGroup_container
        }
        set(accessibilityGroup) {
            accessibilityGroup_container = accessibilityGroup
        }
    }
    SliderSuffixOptions(accessibilityText: Option<ResourceStr>, accessibilityDescription: Option<ResourceStr>, accessibilityLevel: Option<String>, accessibilityGroup: Option<Bool>) {
        this.accessibilityText_container = accessibilityText
        this.accessibilityDescription_container = accessibilityDescription
        this.accessibilityLevel_container = accessibilityLevel
        this.accessibilityGroup_container = accessibilityGroup
    }
}
public open class SliderSuffixOptions_serializer {
    public static func write(buffer: SerializerBase, value: SliderSuffixOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAccessibilityText = value.accessibilityText
        if (valueHolderForAccessibilityText.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAccessibilityTextTmpValue = valueHolderForAccessibilityText
            if (valueHolderForAccessibilityTextTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForAccessibilityTextTmpValueForIdx0 = valueHolderForAccessibilityTextTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForAccessibilityTextTmpValueForIdx0);
            } else if (valueHolderForAccessibilityTextTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForAccessibilityTextTmpValueForIdx1 = valueHolderForAccessibilityTextTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForAccessibilityTextTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAccessibilityDescription = value.accessibilityDescription
        if (valueHolderForAccessibilityDescription.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAccessibilityDescriptionTmpValue = valueHolderForAccessibilityDescription
            if (valueHolderForAccessibilityDescriptionTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForAccessibilityDescriptionTmpValueForIdx0 = valueHolderForAccessibilityDescriptionTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForAccessibilityDescriptionTmpValueForIdx0);
            } else if (valueHolderForAccessibilityDescriptionTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForAccessibilityDescriptionTmpValueForIdx1 = valueHolderForAccessibilityDescriptionTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForAccessibilityDescriptionTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAccessibilityLevel = value.accessibilityLevel
        if (valueHolderForAccessibilityLevel.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAccessibilityLevelTmpValue = valueHolderForAccessibilityLevel
            valueSerializer.writeString(valueHolderForAccessibilityLevelTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAccessibilityGroup = value.accessibilityGroup
        if (valueHolderForAccessibilityGroup.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAccessibilityGroupTmpValue = valueHolderForAccessibilityGroup
            valueSerializer.writeBoolean(valueHolderForAccessibilityGroupTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SliderSuffixOptions {
        var valueDeserializer: DeserializerBase = buffer
        let accessibilityTextTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var accessibilityTextTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(accessibilityTextTmpBuf_runtimeType))) {
            let accessibilityTextTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var accessibilityTextTmpBuf_: ResourceStr 
            if (accessibilityTextTmpBuf_UnionSelector == Int8(0)) {
                accessibilityTextTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (accessibilityTextTmpBuf_UnionSelector == Int8(1)) {
                accessibilityTextTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for accessibilityTextTmpBuf_ has to be chosen through deserialisation.")
            }
            accessibilityTextTmpBuf = match (accessibilityTextTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let accessibilityTextTmpResult: Option<ResourceStr> = accessibilityTextTmpBuf
        let accessibilityDescriptionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var accessibilityDescriptionTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(accessibilityDescriptionTmpBuf_runtimeType))) {
            let accessibilityDescriptionTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var accessibilityDescriptionTmpBuf_: ResourceStr 
            if (accessibilityDescriptionTmpBuf_UnionSelector == Int8(0)) {
                accessibilityDescriptionTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (accessibilityDescriptionTmpBuf_UnionSelector == Int8(1)) {
                accessibilityDescriptionTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for accessibilityDescriptionTmpBuf_ has to be chosen through deserialisation.")
            }
            accessibilityDescriptionTmpBuf = match (accessibilityDescriptionTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let accessibilityDescriptionTmpResult: Option<ResourceStr> = accessibilityDescriptionTmpBuf
        let accessibilityLevelTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var accessibilityLevelTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(accessibilityLevelTmpBuf_runtimeType))) {
            accessibilityLevelTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let accessibilityLevelTmpResult: Option<String> = accessibilityLevelTmpBuf
        let accessibilityGroupTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var accessibilityGroupTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(accessibilityGroupTmpBuf_runtimeType))) {
            accessibilityGroupTmpBuf = valueDeserializer.readBoolean()
        }
        let accessibilityGroupTmpResult: Option<Bool> = accessibilityGroupTmpBuf
        var value: SliderSuffixOptions = SliderSuffixOptions(accessibilityTextTmpResult, accessibilityDescriptionTmpResult, accessibilityLevelTmpResult, accessibilityGroupTmpResult)
        return value
    }
}
