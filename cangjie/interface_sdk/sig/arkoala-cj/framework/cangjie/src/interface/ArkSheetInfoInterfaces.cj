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
public interface SheetInfoInterfaces <:  {
    public mut open prop title: Union_String_Resource
    public mut open prop icon: Option<Union_String_Resource>
    public mut open prop action: VoidCallback
}
public open class SheetInfo <: SheetInfoInterfaces {
    private var title_container: Union_String_Resource
    public mut open prop title: Union_String_Resource
    {
        get() {
            return title_container
        }
        set(title) {
            title_container = title
        }
    }
    private var icon_container: Option<Union_String_Resource>
    public mut open prop icon: Option<Union_String_Resource>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var action_container: VoidCallback
    public mut open prop action: VoidCallback
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    SheetInfo(title: Union_String_Resource, icon: Option<Union_String_Resource>, action: VoidCallback) {
        this.title_container = title
        this.icon_container = icon
        this.action_container = action
    }
}
public open class SheetInfo_serializer {
    public static func write(buffer: SerializerBase, value: SheetInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTitle = value.title
        if (valueHolderForTitle.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForTitleForIdx0 = valueHolderForTitle.getValue0()
            valueSerializer.writeString(valueHolderForTitleForIdx0);
        } else if (valueHolderForTitle.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForTitleForIdx1 = valueHolderForTitle.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForTitleForIdx1);
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
        let valueHolderForAction = value.action
        valueSerializer.holdAndWriteCallback(valueHolderForAction);
    }
    public static func read(buffer: DeserializerBase): SheetInfo {
        var valueDeserializer: DeserializerBase = buffer
        let titleTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var titleTmpBuf: Union_String_Resource 
        if (titleTmpBufUnionSelector == Int8(0)) {
            titleTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (titleTmpBufUnionSelector == Int8(1)) {
            titleTmpBuf = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for titleTmpBuf has to be chosen through deserialisation.")
        }
        let titleTmpResult: Union_String_Resource = match (titleTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let iconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var iconTmpBuf: Option<Union_String_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(iconTmpBuf_runtimeType))) {
            let iconTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var iconTmpBuf_: Union_String_Resource 
            if (iconTmpBuf_UnionSelector == Int8(0)) {
                iconTmpBuf_ = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (iconTmpBuf_UnionSelector == Int8(1)) {
                iconTmpBuf_ = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for iconTmpBuf_ has to be chosen through deserialisation.")
            }
            iconTmpBuf = match (iconTmpBuf_ as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let iconTmpResult: Option<Union_String_Resource> = iconTmpBuf
        let actionTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let actionTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let actionTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let actionTmpResult: VoidCallback = { => let actionTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
actionTmpBufBufArgsSerializer.writeInt32(actionTmpBufBufResource.resourceId);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCall);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCallSync);
InteropNativeModule._CallCallback(-2038961969, actionTmpBufBufArgsSerializer.asBuffer(), actionTmpBufBufArgsSerializer.length());
actionTmpBufBufArgsSerializer.release();
return; }
        var value: SheetInfo = SheetInfo(titleTmpResult, iconTmpResult, actionTmpResult)
        return value
    }
}
