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
public interface TextMenuItemInterfaces <:  {
    public mut open prop content: ResourceStr
    public mut open prop icon: Option<ResourceStr>
    public mut open prop id: TextMenuItemId
    public mut open prop labelInfo: Option<ResourceStr>
}
public open class TextMenuItem <: TextMenuItemInterfaces {
    private var content_container: ResourceStr
    public mut open prop content: ResourceStr
    {
        get() {
            return content_container
        }
        set(content) {
            content_container = content
        }
    }
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
    private var id_container: TextMenuItemId
    public mut open prop id: TextMenuItemId
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var labelInfo_container: Option<ResourceStr>
    public mut open prop labelInfo: Option<ResourceStr>
    {
        get() {
            return labelInfo_container
        }
        set(labelInfo) {
            labelInfo_container = labelInfo
        }
    }
    TextMenuItem(content: ResourceStr, icon: Option<ResourceStr>, id: TextMenuItemId, labelInfo: Option<ResourceStr>) {
        this.content_container = content
        this.icon_container = icon
        this.id_container = id
        this.labelInfo_container = labelInfo
    }
}
public open class TextMenuItem_serializer {
    public static func write(buffer: SerializerBase, value: TextMenuItem): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForContent = value.content
        if (valueHolderForContent.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForContentForIdx0 = valueHolderForContent.getValue0()
            valueSerializer.writeString(valueHolderForContentForIdx0);
        } else if (valueHolderForContent.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForContentForIdx1 = valueHolderForContent.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForContentForIdx1);
        }
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
        let valueHolderForId = value.id
        TextMenuItemId_serializer.write(valueSerializer, valueHolderForId);
        let valueHolderForLabelInfo = value.labelInfo
        if (valueHolderForLabelInfo.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLabelInfoTmpValue = valueHolderForLabelInfo
            if (valueHolderForLabelInfoTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForLabelInfoTmpValueForIdx0 = valueHolderForLabelInfoTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForLabelInfoTmpValueForIdx0);
            } else if (valueHolderForLabelInfoTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForLabelInfoTmpValueForIdx1 = valueHolderForLabelInfoTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForLabelInfoTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextMenuItem {
        var valueDeserializer: DeserializerBase = buffer
        let contentTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var contentTmpBuf: ResourceStr 
        if (contentTmpBufUnionSelector == Int8(0)) {
            contentTmpBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (contentTmpBufUnionSelector == Int8(1)) {
            contentTmpBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for contentTmpBuf has to be chosen through deserialisation.")
        }
        let contentTmpResult: ResourceStr = match (contentTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
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
        let idTmpResult: TextMenuItemId = match (TextMenuItemId_serializer.read(valueDeserializer) as TextMenuItemId) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let labelInfoTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var labelInfoTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(labelInfoTmpBuf_runtimeType))) {
            let labelInfoTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var labelInfoTmpBuf_: ResourceStr 
            if (labelInfoTmpBuf_UnionSelector == Int8(0)) {
                labelInfoTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (labelInfoTmpBuf_UnionSelector == Int8(1)) {
                labelInfoTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for labelInfoTmpBuf_ has to be chosen through deserialisation.")
            }
            labelInfoTmpBuf = match (labelInfoTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let labelInfoTmpResult: Option<ResourceStr> = labelInfoTmpBuf
        var value: TextMenuItem = TextMenuItem(contentTmpResult, iconTmpResult, idTmpResult, labelInfoTmpResult)
        return value
    }
}
