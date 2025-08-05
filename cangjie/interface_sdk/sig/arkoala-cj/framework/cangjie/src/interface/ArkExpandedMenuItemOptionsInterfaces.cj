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
public interface ExpandedMenuItemOptionsInterfaces <:  {
    public mut open prop content: ResourceStr
    public mut open prop startIcon: Option<ResourceStr>
    public mut open prop action: ((selectedText: Literal_String_plainText) -> Unit)
}
public open class ExpandedMenuItemOptions <: ExpandedMenuItemOptionsInterfaces {
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
    private var startIcon_container: Option<ResourceStr>
    public mut open prop startIcon: Option<ResourceStr>
    {
        get() {
            return startIcon_container
        }
        set(startIcon) {
            startIcon_container = startIcon
        }
    }
    private var action_container: ((selectedText: Literal_String_plainText) -> Unit)
    public mut open prop action: ((selectedText: Literal_String_plainText) -> Unit)
    {
        get() {
            return action_container
        }
        set(action) {
            action_container = action
        }
    }
    ExpandedMenuItemOptions(content: ResourceStr, startIcon: Option<ResourceStr>, action: ((selectedText: Literal_String_plainText) -> Unit)) {
        this.content_container = content
        this.startIcon_container = startIcon
        this.action_container = action
    }
}
public open class ExpandedMenuItemOptions_serializer {
    public static func write(buffer: SerializerBase, value: ExpandedMenuItemOptions): Unit {
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
        let valueHolderForStartIcon = value.startIcon
        if (valueHolderForStartIcon.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartIconTmpValue = valueHolderForStartIcon
            if (valueHolderForStartIconTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartIconTmpValueForIdx0 = valueHolderForStartIconTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForStartIconTmpValueForIdx0);
            } else if (valueHolderForStartIconTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartIconTmpValueForIdx1 = valueHolderForStartIconTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForStartIconTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAction = value.action
        valueSerializer.holdAndWriteCallback(valueHolderForAction);
    }
    public static func read(buffer: DeserializerBase): ExpandedMenuItemOptions {
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
        let startIconTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startIconTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startIconTmpBuf_runtimeType))) {
            let startIconTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startIconTmpBuf_: ResourceStr 
            if (startIconTmpBuf_UnionSelector == Int8(0)) {
                startIconTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startIconTmpBuf_UnionSelector == Int8(1)) {
                startIconTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for startIconTmpBuf_ has to be chosen through deserialisation.")
            }
            startIconTmpBuf = match (startIconTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startIconTmpResult: Option<ResourceStr> = startIconTmpBuf
        let actionTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let actionTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let actionTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let actionTmpResult: ((selectedText: Literal_String_plainText) -> Unit) = {selectedText: Literal_String_plainText => let actionTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
actionTmpBufBufArgsSerializer.writeInt32(actionTmpBufBufResource.resourceId);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCall);
actionTmpBufBufArgsSerializer.writePointer(actionTmpBufBufCallSync);
let selectedTextPlainText = selectedText.plainText;
actionTmpBufBufArgsSerializer.writeString(selectedTextPlainText);
InteropNativeModule._CallCallback(-122223466, actionTmpBufBufArgsSerializer.asBuffer(), actionTmpBufBufArgsSerializer.length());
actionTmpBufBufArgsSerializer.release();
return; }
        var value: ExpandedMenuItemOptions = ExpandedMenuItemOptions(contentTmpResult, startIconTmpResult, actionTmpResult)
        return value
    }
}
