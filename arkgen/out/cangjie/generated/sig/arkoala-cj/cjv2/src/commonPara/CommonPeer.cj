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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public func deserializeAndCallAsyncCallback_image_PixelMap_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((result: Any) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var result: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(result)
}
public func deserializeAndCallButtonModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallCallback_Boolean_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parameter: Bool) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parameter: Bool = thisDeserializer.readBoolean()
    _call(parameter)
}
public func deserializeAndCallCallback_ClickEvent_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((event: ClickEvent) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var event: ClickEvent = match (ClickEvent_serializer.read(thisDeserializer) as ClickEvent) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(event)
}
public func deserializeAndCallCallback_CreateItem(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as Callback_CreateItem) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var index: Int32 = thisDeserializer.readInt32()
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(index)
    continuationResult(_callResult)
}
public func deserializeAndCallCallback_DrawContext_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((drawContext: DrawContext) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var drawContext: DrawContext = DrawContext_serializer.read(thisDeserializer)
    _call(drawContext)
}
public func deserializeAndCallCallback_Extender_OnFinish(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as Callback_Extender_OnFinish) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call()
}
public func deserializeAndCallCallback_Extender_OnProgress(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as Callback_Extender_OnProgress) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var value: Float32 = thisDeserializer.readFloat32()
    _call(value)
}
public func deserializeAndCallCallback_NavigationTitleMode_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((titleMode: NavigationTitleMode) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var titleMode: NavigationTitleMode = NavigationTitleMode.parse(thisDeserializer.readInt32())
    _call(titleMode)
}
public func deserializeAndCallCallback_Number_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((select: Float64) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var select: Float64 = match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(select)
}
public func deserializeAndCallCallback_onMeasureSize_SizeResult(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as Callback_onMeasureSize_SizeResult) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var selfLayoutInfo: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let childrenTmpBufLength: Int32 = thisDeserializer.readInt32()
    var childrenTmpBuf: ArrayList<Any> = ArrayList<Any>(Int64(childrenTmpBufLength))
    childrenTmpBuf = ArrayList<Any>(Int64(childrenTmpBufLength))
    for (childrenTmpBufBufCounterI in 0..childrenTmpBufLength) {
        childrenTmpBuf[Int64(childrenTmpBufBufCounterI)] = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    }
    var children: ArrayList<Any> = childrenTmpBuf
    var constraint: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: SizeResult) -> Unit) = {value: SizeResult => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
SizeResult_serializer.write(continuationBufferBufArgsSerializer, value);
InteropNativeModule._CallCallbackSync(1318865891, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(selfLayoutInfo, children, constraint)
    continuationResult(_callResult)
}
public func deserializeAndCallCallback_onPlaceChildren_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as Callback_onPlaceChildren_Void) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var selfLayoutInfo: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let childrenTmpBufLength: Int32 = thisDeserializer.readInt32()
    var childrenTmpBuf: ArrayList<Any> = ArrayList<Any>(Int64(childrenTmpBufLength))
    childrenTmpBuf = ArrayList<Any>(Int64(childrenTmpBufLength))
    for (childrenTmpBufBufCounterI in 0..childrenTmpBufLength) {
        childrenTmpBuf[Int64(childrenTmpBufBufCounterI)] = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    }
    var children: ArrayList<Any> = childrenTmpBuf
    var constraint: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(selfLayoutInfo, children, constraint)
}
public func deserializeAndCallCallback_Pointer_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((value: UInt64) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var value: UInt64 = thisDeserializer.readPointer()
    _call(value)
}
public func deserializeAndCallCallback_RangeUpdate(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as Callback_RangeUpdate) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var start: Int32 = thisDeserializer.readInt32()
    var end: Int32 = thisDeserializer.readInt32()
    _call(start, end)
}
public func deserializeAndCallCallback_ResourceStr_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((text: ResourceStr) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let textTmpBufUnionSelector: Int8 = thisDeserializer.readInt8()
    var textTmpBuf: ResourceStr 
    if (textTmpBufUnionSelector == Int8(0)) {
        textTmpBuf = ResourceStr(match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
    } else if (textTmpBufUnionSelector == Int8(1)) {
        textTmpBuf = ResourceStr(Resource_serializer.read(thisDeserializer))
    } else {
        throw Exception("One of the branches for textTmpBuf has to be chosen through deserialisation.")
    }
    var text: ResourceStr = match (textTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(text)
}
public func deserializeAndCallCallback_SizeResult_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((value: SizeResult) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var value: SizeResult = SizeResult_serializer.read(thisDeserializer)
    _call(value)
}
public func deserializeAndCallCallback_StateStylesChange(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as Callback_StateStylesChange) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var currentState: Int32 = thisDeserializer.readInt32()
    _call(currentState)
}
public func deserializeAndCallCallback_String_Number_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((value: String, index: Float64) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var value: String = match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var index: Float64 = match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(value, index)
}
public func deserializeAndCallCallback_String_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parameter: String) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parameter: String = match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(parameter)
}
public func deserializeAndCallCallback_TextPickerResult_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((value: TextPickerResult) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var value: TextPickerResult = TextPickerResult_serializer.read(thisDeserializer)
    _call(value)
}
public func deserializeAndCallCallback_Union_Number_Array_Number_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((selected: Array<Float64>) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let selectedTmpBufUnionSelector: Int8 = thisDeserializer.readInt8()
    var selectedTmpBuf: Array<Float64> 
    if (selectedTmpBufUnionSelector == Int8(0))
    {
        selectedTmpBuf = [ match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} ]
    } else
        if (selectedTmpBufUnionSelector == Int8(1))
        {
            let selectedTmpBufBufULength: Int32 = thisDeserializer.readInt32()
            var selectedTmpBufBufU = ArrayList<Float64>(Int64(selectedTmpBufBufULength))
            selectedTmpBufBufU = ArrayList<Float64>(Int64(selectedTmpBufBufULength))
            for (selectedTmpBufBufUBufCounterI in 0..selectedTmpBufBufULength) {
                selectedTmpBufBufU[Int64(selectedTmpBufBufUBufCounterI)] = match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            selectedTmpBuf = selectedTmpBufBufU.toArray()
        } else
        {
            throw Exception("One of the branches for selectedTmpBuf has to be chosen through deserialisation.")
        }
    var selected: Array<Float64> = match (selectedTmpBuf as Array<Float64>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(selected)
}
public func deserializeAndCallCallback_Union_String_Array_String_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((value: Array<String>) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let valueTmpBufUnionSelector: Int8 = thisDeserializer.readInt8()
    var valueTmpBuf: Array<String> 
    if (valueTmpBufUnionSelector == Int8(0)) {
        valueTmpBuf = [match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}]
    } else if (valueTmpBufUnionSelector == Int8(1)) {
        let valueTmpBufBufULength: Int32 = thisDeserializer.readInt32()
        var valueTmpBufBufU = ArrayList<String>(Int64(valueTmpBufBufULength))
        valueTmpBufBufU = ArrayList<String>(Int64(valueTmpBufBufULength))
        for (valueTmpBufBufUBufCounterI in 0..valueTmpBufBufULength) {
            valueTmpBufBufU[Int64(valueTmpBufBufUBufCounterI)] = match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        valueTmpBuf = valueTmpBufBufU.toArray()
    } else {
        throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
    }
    var value: Array<String> = match (valueTmpBuf as Array<String>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(value)
}
public func deserializeAndCallCallback_Void(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as (() -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call()
}
public func deserializeAndCallCheckBoxModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: CheckBoxConfiguration) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: CheckBoxConfiguration = CheckBoxConfiguration_serializer.read(thisDeserializer)
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallCustomNodeBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as CustomNodeBuilder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode)
    continuationResult(_callResult)
}
public func deserializeAndCallDataPanelModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallGaugeModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallLoadingProgressModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallMenuItemModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallNavExtender_OnUpdateStack(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as NavExtender_OnUpdateStack) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call()
}
public func deserializeAndCallProgressModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallRadioModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallRatingModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallRestrictedWorker_onerror_Callback(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as RestrictedWorker_onerror_Callback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var ev: ErrorEvent = ErrorEvent_serializer.read(thisDeserializer)
    _call(ev)
}
public func deserializeAndCallRestrictedWorker_onexit_Callback(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as RestrictedWorker_onexit_Callback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var code: Float64 = match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(code)
}
public func deserializeAndCallRestrictedWorker_onmessage_Callback(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as RestrictedWorker_onmessage_Callback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var event: MessageEvents = MessageEvents_serializer.read(thisDeserializer)
    _call(event)
}
public func deserializeAndCallSearchValueCallback(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as SearchValueCallback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var value: String = match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(value)
}
public func deserializeAndCallSliderModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallTextClockModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallTextFieldValueCallback(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as TextFieldValueCallback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let valueTmpBufUnionSelector: Int8 = thisDeserializer.readInt8()
    var valueTmpBuf: ResourceStr 
    if (valueTmpBufUnionSelector == Int8(0)) {
        valueTmpBuf = ResourceStr(match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
    } else if (valueTmpBufUnionSelector == Int8(1)) {
        valueTmpBuf = ResourceStr(Resource_serializer.read(thisDeserializer))
    } else {
        throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
    }
    var value: ResourceStr = match (valueTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(value)
}
public func deserializeAndCallTextPickerScrollStopCallback(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as TextPickerScrollStopCallback) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let valueTmpBufUnionSelector: Int8 = thisDeserializer.readInt8()
    var valueTmpBuf: Array<String> 
    if (valueTmpBufUnionSelector == Int8(0)) {
        valueTmpBuf = [match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}]
    } else if (valueTmpBufUnionSelector == Int8(1)) {
        let valueTmpBufBufULength: Int32 = thisDeserializer.readInt32()
        var valueTmpBufBufU = ArrayList<String>(Int64(valueTmpBufBufULength))
        valueTmpBufBufU = ArrayList<String>(Int64(valueTmpBufBufULength))
        for (valueTmpBufBufUBufCounterI in 0..valueTmpBufBufULength) {
            valueTmpBufBufU[Int64(valueTmpBufBufUBufCounterI)] = match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        valueTmpBuf = valueTmpBufBufU.toArray()
    } else {
        throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
    }
    var value: Array<String> = match (valueTmpBuf as Array<String>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let indexTmpBufUnionSelector: Int8 = thisDeserializer.readInt8()
    var indexTmpBuf: Array<Float64> 
    if (indexTmpBufUnionSelector == Int8(0)) {
        indexTmpBuf = [match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}]
    } else if (indexTmpBufUnionSelector == Int8(1)) {
        let indexTmpBufBufULength: Int32 = thisDeserializer.readInt32()
        var indexTmpBufBufU = ArrayList<Float64>(Int64(indexTmpBufBufULength))
        indexTmpBufBufU = ArrayList<Float64>(Int64(indexTmpBufBufULength))
        for (indexTmpBufBufUBufCounterI in 0..indexTmpBufBufULength) {
            indexTmpBufBufU[Int64(indexTmpBufBufUBufCounterI)] = match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        indexTmpBuf = indexTmpBufBufU.toArray()
    } else {
        throw Exception("One of the branches for indexTmpBuf has to be chosen through deserialisation.")
    }
    var index: Array<Float64> = match (indexTmpBuf as Array<Float64>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(value, index)
}
public func deserializeAndCallTextTimerModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallToggleModifierBuilder(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((parentNode: UInt64, config: Any) -> UInt64)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    var parentNode: UInt64 = thisDeserializer.readPointer()
    var config: Any = match (thisDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let continuationBufferBufResource: CallbackResource = thisDeserializer.readCallbackResource()
    let continuationBufferBufCall: UInt64 = thisDeserializer.readPointer()
    let continuationBufferBufCallSync: UInt64 = thisDeserializer.readPointer()
    var continuationResult: ((value: UInt64) -> Unit) = {value: UInt64 => let continuationBufferBufArgsSerializer: SerializerBase = SerializerBase.hold();
continuationBufferBufArgsSerializer.writeInt32(continuationBufferBufResource.resourceId);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCall);
continuationBufferBufArgsSerializer.writePointer(continuationBufferBufCallSync);
continuationBufferBufArgsSerializer.writePointer(value);
InteropNativeModule._CallCallbackSync(721562324, continuationBufferBufArgsSerializer.asBuffer(), continuationBufferBufArgsSerializer.length());
continuationBufferBufArgsSerializer.release();
return; }
    let _callResult = _call(parentNode, config)
    continuationResult(_callResult)
}
public func deserializeAndCallType_TextPickerAttribute_onChange_callback(thisDeserializer: DeserializerBase): Unit {
    let _resourceId: Int32 = thisDeserializer.readInt32()
    let _call = match (ResourceHolder.instance().get(_resourceId) as ((value: Array<String>, index: Array<Float64>) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let valueTmpBufUnionSelector: Int8 = thisDeserializer.readInt8()
    var valueTmpBuf: Array<String> 
    if (valueTmpBufUnionSelector == Int8(0)) {
        valueTmpBuf = [match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}]
    } else if (valueTmpBufUnionSelector == Int8(1)) {
        let valueTmpBufBufULength: Int32 = thisDeserializer.readInt32()
        var valueTmpBufBufU = ArrayList<String>(Int64(valueTmpBufBufULength))
        valueTmpBufBufU = ArrayList<String>(Int64(valueTmpBufBufULength))
        for (valueTmpBufBufUBufCounterI in 0..valueTmpBufBufULength) {
            valueTmpBufBufU[Int64(valueTmpBufBufUBufCounterI)] = match (thisDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        valueTmpBuf = valueTmpBufBufU.toArray()
    } else {
        throw Exception("One of the branches for valueTmpBuf has to be chosen through deserialisation.")
    }
    var value: Array<String> = match (valueTmpBuf as Array<String>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    let indexTmpBufUnionSelector: Int8 = thisDeserializer.readInt8()
    var indexTmpBuf: Array<Float64> 
    if (indexTmpBufUnionSelector == Int8(0)) {
        indexTmpBuf = [match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}]
    } else if (indexTmpBufUnionSelector == Int8(1)) {
        let indexTmpBufBufULength: Int32 = thisDeserializer.readInt32()
        var indexTmpBufBufU = ArrayList<Float64>(Int64(indexTmpBufBufULength))
        indexTmpBufBufU = ArrayList<Float64>(Int64(indexTmpBufBufULength))
        for (indexTmpBufBufUBufCounterI in 0..indexTmpBufBufULength) {
            indexTmpBufBufU[Int64(indexTmpBufBufUBufCounterI)] = match (thisDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        indexTmpBuf = indexTmpBufBufU.toArray()
    } else {
        throw Exception("One of the branches for indexTmpBuf has to be chosen through deserialisation.")
    }
    var index: Array<Float64> = match (indexTmpBuf as Array<Float64>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
    _call(value, index)
}
public func deserializeAndCallCallback(thisDeserializer: DeserializerBase): Unit {
    let kind: Int32 = thisDeserializer.readInt32()
    match (kind) {
        case 1289587365/*CallbackKind.Kind_AsyncCallback_image_PixelMap_Void*/ => return deserializeAndCallAsyncCallback_image_PixelMap_Void(thisDeserializer);
        case -2004118094/*CallbackKind.Kind_ButtonModifierBuilder*/ => return deserializeAndCallButtonModifierBuilder(thisDeserializer);
        case 313269291/*CallbackKind.Kind_Callback_Boolean_Void*/ => return deserializeAndCallCallback_Boolean_Void(thisDeserializer);
        case 1097178637/*CallbackKind.Kind_Callback_ClickEvent_Void*/ => return deserializeAndCallCallback_ClickEvent_Void(thisDeserializer);
        case -2019730059/*CallbackKind.Kind_Callback_CreateItem*/ => return deserializeAndCallCallback_CreateItem(thisDeserializer);
        case 38085488/*CallbackKind.Kind_Callback_DrawContext_Void*/ => return deserializeAndCallCallback_DrawContext_Void(thisDeserializer);
        case -733525640/*CallbackKind.Kind_Callback_Extender_OnFinish*/ => return deserializeAndCallCallback_Extender_OnFinish(thisDeserializer);
        case 1264236374/*CallbackKind.Kind_Callback_Extender_OnProgress*/ => return deserializeAndCallCallback_Extender_OnProgress(thisDeserializer);
        case 1685437830/*CallbackKind.Kind_Callback_NavigationTitleMode_Void*/ => return deserializeAndCallCallback_NavigationTitleMode_Void(thisDeserializer);
        case 36519084/*CallbackKind.Kind_Callback_Number_Void*/ => return deserializeAndCallCallback_Number_Void(thisDeserializer);
        case -1356285653/*CallbackKind.Kind_Callback_onMeasureSize_SizeResult*/ => return deserializeAndCallCallback_onMeasureSize_SizeResult(thisDeserializer);
        case -738620506/*CallbackKind.Kind_Callback_onPlaceChildren_Void*/ => return deserializeAndCallCallback_onPlaceChildren_Void(thisDeserializer);
        case 721562324/*CallbackKind.Kind_Callback_Pointer_Void*/ => return deserializeAndCallCallback_Pointer_Void(thisDeserializer);
        case 797834474/*CallbackKind.Kind_Callback_RangeUpdate*/ => return deserializeAndCallCallback_RangeUpdate(thisDeserializer);
        case 188373904/*CallbackKind.Kind_Callback_ResourceStr_Void*/ => return deserializeAndCallCallback_ResourceStr_Void(thisDeserializer);
        case 1318865891/*CallbackKind.Kind_Callback_SizeResult_Void*/ => return deserializeAndCallCallback_SizeResult_Void(thisDeserializer);
        case -1872286415/*CallbackKind.Kind_Callback_StateStylesChange*/ => return deserializeAndCallCallback_StateStylesChange(thisDeserializer);
        case -879490874/*CallbackKind.Kind_Callback_String_Number_Void*/ => return deserializeAndCallCallback_String_Number_Void(thisDeserializer);
        case 814634522/*CallbackKind.Kind_Callback_String_Void*/ => return deserializeAndCallCallback_String_Void(thisDeserializer);
        case 1290504509/*CallbackKind.Kind_Callback_TextPickerResult_Void*/ => return deserializeAndCallCallback_TextPickerResult_Void(thisDeserializer);
        case -1111620998/*CallbackKind.Kind_Callback_Union_Number_Array_Number_Void*/ => return deserializeAndCallCallback_Union_Number_Array_Number_Void(thisDeserializer);
        case -720435526/*CallbackKind.Kind_Callback_Union_String_Array_String_Void*/ => return deserializeAndCallCallback_Union_String_Array_String_Void(thisDeserializer);
        case -1867723152/*CallbackKind.Kind_Callback_Void*/ => return deserializeAndCallCallback_Void(thisDeserializer);
        case 1317697111/*CallbackKind.Kind_CheckBoxModifierBuilder*/ => return deserializeAndCallCheckBoxModifierBuilder(thisDeserializer);
        case 1766817632/*CallbackKind.Kind_CustomNodeBuilder*/ => return deserializeAndCallCustomNodeBuilder(thisDeserializer);
        case -238036926/*CallbackKind.Kind_DataPanelModifierBuilder*/ => return deserializeAndCallDataPanelModifierBuilder(thisDeserializer);
        case 255469205/*CallbackKind.Kind_GaugeModifierBuilder*/ => return deserializeAndCallGaugeModifierBuilder(thisDeserializer);
        case 56854815/*CallbackKind.Kind_LoadingProgressModifierBuilder*/ => return deserializeAndCallLoadingProgressModifierBuilder(thisDeserializer);
        case -1928323454/*CallbackKind.Kind_MenuItemModifierBuilder*/ => return deserializeAndCallMenuItemModifierBuilder(thisDeserializer);
        case -588228933/*CallbackKind.Kind_NavExtender_OnUpdateStack*/ => return deserializeAndCallNavExtender_OnUpdateStack(thisDeserializer);
        case -2049749383/*CallbackKind.Kind_ProgressModifierBuilder*/ => return deserializeAndCallProgressModifierBuilder(thisDeserializer);
        case -327322091/*CallbackKind.Kind_RadioModifierBuilder*/ => return deserializeAndCallRadioModifierBuilder(thisDeserializer);
        case 1013330403/*CallbackKind.Kind_RatingModifierBuilder*/ => return deserializeAndCallRatingModifierBuilder(thisDeserializer);
        case -1213708823/*CallbackKind.Kind_RestrictedWorker_onerror_Callback*/ => return deserializeAndCallRestrictedWorker_onerror_Callback(thisDeserializer);
        case -2095497263/*CallbackKind.Kind_RestrictedWorker_onexit_Callback*/ => return deserializeAndCallRestrictedWorker_onexit_Callback(thisDeserializer);
        case 1614214490/*CallbackKind.Kind_RestrictedWorker_onmessage_Callback*/ => return deserializeAndCallRestrictedWorker_onmessage_Callback(thisDeserializer);
        case 2049289694/*CallbackKind.Kind_SearchValueCallback*/ => return deserializeAndCallSearchValueCallback(thisDeserializer);
        case 553138561/*CallbackKind.Kind_SliderModifierBuilder*/ => return deserializeAndCallSliderModifierBuilder(thisDeserializer);
        case -987272911/*CallbackKind.Kind_TextClockModifierBuilder*/ => return deserializeAndCallTextClockModifierBuilder(thisDeserializer);
        case 18061455/*CallbackKind.Kind_TextFieldValueCallback*/ => return deserializeAndCallTextFieldValueCallback(thisDeserializer);
        case -1928298699/*CallbackKind.Kind_TextPickerScrollStopCallback*/ => return deserializeAndCallTextPickerScrollStopCallback(thisDeserializer);
        case 505330174/*CallbackKind.Kind_TextTimerModifierBuilder*/ => return deserializeAndCallTextTimerModifierBuilder(thisDeserializer);
        case -879751946/*CallbackKind.Kind_ToggleModifierBuilder*/ => return deserializeAndCallToggleModifierBuilder(thisDeserializer);
        case -1078223620/*CallbackKind.Kind_Type_TextPickerAttribute_onChange_callback*/ => return deserializeAndCallType_TextPickerAttribute_onChange_callback(thisDeserializer);
        case _ => throw Exception()
    }
    throw Exception("Unknown callback kind")
}
foreign {
        func Root_construct(id: KInt, flags: KInt): UInt64
        func ComponentRoot_construct(id: KInt, flags: KInt): UInt64
        func CustomLayoutRoot_construct(id: KInt, flags: KInt): UInt64
        func CustomLayoutRoot_setSubscribeOnMeasureSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CustomLayoutRoot_setSubscribeOnPlaceChildren(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Blank_construct(id: KInt, flags: KInt): UInt64
        func BlankInterface_setBlankOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BlankAttribute_setColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Button_construct(id: KInt, flags: KInt): UInt64
        func ButtonInterface_setButtonOptions(ptr: UInt64): Unit
        func ButtonAttribute_setType(ptr: UInt64, value: KInt): Unit
        func ButtonAttribute_setFontColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ButtonAttribute_setLabelStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Checkbox_construct(id: KInt, flags: KInt): UInt64
        func CheckboxInterface_setCheckboxOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CheckboxAttribute_setSelect(ptr: UInt64, value: KInt): Unit
        func CheckboxAttribute_setSelectedColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CheckboxAttribute_setShape(ptr: UInt64, value: KInt): Unit
        func CheckboxAttribute_setUnselectedColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CheckboxAttribute_setMark(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CheckboxAttribute_setOnChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CheckboxAttribute_onSelect(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Column_construct(id: KInt, flags: KInt): UInt64
        func ColumnInterface_setColumnOptions(ptr: UInt64): Unit
        func ColumnAttribute_setAlignItems(ptr: UInt64, value: KInt): Unit
        func CommonMethod_construct(id: KInt, flags: KInt): UInt64
        func CommonMethod_setBackdropBlur(ptr: UInt64, value: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setKey(ptr: UInt64, value: CString): Unit
        func CommonMethod_setRestoreId(ptr: UInt64, value: Float64): Unit
        func CommonMethod_setPadding(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setBindSheet(ptr: UInt64, isShow: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setBackgroundBlurStyle(ptr: UInt64, value: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setDragPreviewOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setOnClick0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setOnClick1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ScrollableCommonMethod_construct(id: KInt, flags: KInt): UInt64
        func ScrollableCommonMethod_setScrollBarWidth_number(ptr: UInt64, value: Float64): Unit
        func ScrollableCommonMethod_setScrollBarWidth_String(ptr: UInt64, value: CString): Unit
        func List_construct(id: KInt, flags: KInt): UInt64
        func ListInterface_setListOptions(ptr: UInt64): Unit
        func ListAttribute_setSomeOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Navigation_construct(id: KInt, flags: KInt): UInt64
        func NavigationInterface_setNavigationOptions(ptr: UInt64): Unit
        func NavigationAttribute_setOnTitleModeChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Test_construct(id: KInt, flags: KInt): UInt64
        func TestInterface_setTestOptions(ptr: UInt64): Unit
        func TestAttribute_setTestBoolean(ptr: UInt64, value: KInt): Unit
        func TestAttribute_setTestNumber(ptr: UInt64, value: Float64): Unit
        func TestAttribute_setTestString(ptr: UInt64, value: CString): Unit
        func TestAttribute_setTestEnum(ptr: UInt64, value: KInt): Unit
        func TestAttribute_setTestBasicMix(ptr: UInt64, v1: Float64, v2: CString, v3: Float64): Unit
        func TestAttribute_setTestBooleanUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestNumberUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestStringUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestEnumUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestFunctionNumberVoid(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionNumberEnum_number(ptr: UInt64, val: Float64): Unit
        func TestAttribute_setTestUnionNumberEnum_EnumDTS(ptr: UInt64, val: KInt): Unit
        func TestAttribute_setTestUnionBooleanString_boolean(ptr: UInt64, val: KInt): Unit
        func TestAttribute_setTestUnionBooleanString_String(ptr: UInt64, val: CString): Unit
        func TestAttribute_setTestUnionStringNumber_number(ptr: UInt64, val: Float64): Unit
        func TestAttribute_setTestUnionStringNumber_String(ptr: UInt64, val: CString): Unit
        func TestAttribute_setTestUnionBooleanStringNumberUndefined_number(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionWithGenericArray_number(ptr: UInt64, value: Float64): Unit
        func TestAttribute_setTestUnionWithArrayType_number(ptr: UInt64, value: Float64): Unit
        func TestAttribute_setTestBooleanArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestNumberArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestStringArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestEnumArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestArrayMix(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleBooleanNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleNumberStringEnum(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleUnion(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestArrayRefBoolean(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestArrayRefNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestNumberInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestStringInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionInterface_UnionInterfaceDTS(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionOptional_UnionOptionalInterfaceDTS(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestArrayRefNumberInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterfaceOption(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterfaceArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterfaceArrayRef(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestInterfaceMixed(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32, v2: Float64): Unit
        func TextInput_construct(id: KInt, flags: KInt): UInt64
        func TextInputInterface_setTextInputOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextInputAttribute_setType(ptr: UInt64, value: KInt): Unit
        func TextInputAttribute_setContentType(ptr: UInt64, value: KInt): Unit
        func TextInputAttribute_setOnCopy(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextInputAttribute_onText(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPicker_construct(id: KInt, flags: KInt): UInt64
        func TextPickerInterface_setTextPickerOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setDefaultPickerItemHeight_number(ptr: UInt64, value: Float64): Unit
        func TextPickerAttribute_setDefaultPickerItemHeight_String(ptr: UInt64, value: CString): Unit
        func TextPickerAttribute_setCanLoop(ptr: UInt64, value: KInt): Unit
        func TextPickerAttribute_setDisappearTextStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setTextStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setSelectedTextStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setOnAccept(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setOnCancel(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setOnChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setOnScrollStop(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setSelectedIndex(ptr: UInt64, value: Float64): Unit
        func TextPickerAttribute_setDivider(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setGradientHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_onSelected(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_onValue(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func AnimationExtender_SetClipRect(node: KPointer, x: KFloat, y: KFloat, width: KFloat, height: KFloat): Unit
        func AnimationExtender_OpenImplicitAnimation(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func AnimationExtender_CloseImplicitAnimation(): Unit
        func AnimationExtender_StartDoubleAnimation(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func AnimationExtender_AnimationTranslate(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseEvent_construct(): UInt64
        func BaseEvent_getFinalizer(): UInt64
        func BaseEvent_getModifierKeyState(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Bool
        func BaseEvent_getSource(ptr: UInt64): Int32
        func BaseEvent_setSource(ptr: UInt64, source: KInt): Unit
        func BaseEvent_getAxisHorizontal(ptr: UInt64): KInteropReturnBuffer
        func BaseEvent_setAxisHorizontal(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseEvent_getAxisVertical(ptr: UInt64): KInteropReturnBuffer
        func BaseEvent_setAxisVertical(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseEvent_getPressure(ptr: UInt64): Float64
        func BaseEvent_setPressure(ptr: UInt64, pressure: Float64): Unit
        func BaseEvent_getTiltX(ptr: UInt64): Float64
        func BaseEvent_setTiltX(ptr: UInt64, tiltX: Float64): Unit
        func BaseEvent_getSourceTool(ptr: UInt64): Int32
        func BaseEvent_setSourceTool(ptr: UInt64, sourceTool: KInt): Unit
        func BaseEvent_getDeviceId(ptr: UInt64): KInteropReturnBuffer
        func BaseEvent_setDeviceId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseEvent_getTargetDisplayId(ptr: UInt64): KInteropReturnBuffer
        func BaseEvent_setTargetDisplayId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseShape_construct(): UInt64
        func BaseShape_getFinalizer(): UInt64
        func BaseShape_width(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func BaseShape_height(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func BaseShape_size(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func BuilderNodeOps_construct(): UInt64
        func BuilderNodeOps_getFinalizer(): UInt64
        func BuilderNodeOps_create(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BuilderNodeOps_disposeNode(ptr: UInt64): Unit
        func BuilderNodeOps_setUpdateConfigurationCallback(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BuilderNodeOps_setOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BuilderNodeOps_postTouchEvent(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Bool
        func BuilderNodeOps_setRootFrameNodeInBuilderNode(ptr: UInt64, node: KPointer): UInt64
        func ClickEvent_construct(): UInt64
        func ClickEvent_getFinalizer(): UInt64
        func ClickEvent_getDisplayX(ptr: UInt64): Float64
        func ClickEvent_setDisplayX(ptr: UInt64, displayX: Float64): Unit
        func ClickEvent_getDisplayY(ptr: UInt64): Float64
        func ClickEvent_setDisplayY(ptr: UInt64, displayY: Float64): Unit
        func ClickEvent_getWindowX(ptr: UInt64): Float64
        func ClickEvent_setWindowX(ptr: UInt64, windowX: Float64): Unit
        func ClickEvent_getWindowY(ptr: UInt64): Float64
        func ClickEvent_setWindowY(ptr: UInt64, windowY: Float64): Unit
        func ClickEvent_getScreenX(ptr: UInt64): Float64
        func ClickEvent_setScreenX(ptr: UInt64, screenX: Float64): Unit
        func ClickEvent_getScreenY(ptr: UInt64): Float64
        func ClickEvent_setScreenY(ptr: UInt64, screenY: Float64): Unit
        func ClickEvent_getX(ptr: UInt64): Float64
        func ClickEvent_setX(ptr: UInt64, x: Float64): Unit
        func ClickEvent_getY(ptr: UInt64): Float64
        func ClickEvent_setY(ptr: UInt64, y: Float64): Unit
        func ClickEvent_getPreventDefault(ptr: UInt64): UInt64
        func ClickEvent_setPreventDefault(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ColorFilter_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ColorFilter_getFinalizer(): UInt64
        func CommonShape_construct(): UInt64
        func CommonShape_getFinalizer(): UInt64
        func CommonShape_offset(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func CommonShape_fill(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func CommonShape_position(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ContentModifierHelper_contentModifierButton(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierButton(node: KPointer): Unit
        func ContentModifierHelper_contentModifierCheckBox(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierCheckBox(node: KPointer): Unit
        func ContentModifierHelper_contentModifierDataPanel(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierDataPanel(node: KPointer): Unit
        func ContentModifierHelper_contentModifierGauge(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierGauge(node: KPointer): Unit
        func ContentModifierHelper_contentModifierLoadingProgress(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierLoadingProgress(node: KPointer): Unit
        func ContentModifierHelper_contentModifierProgress(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierProgress(node: KPointer): Unit
        func ContentModifierHelper_contentModifierRadio(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierRadio(node: KPointer): Unit
        func ContentModifierHelper_contentModifierRating(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierRating(node: KPointer): Unit
        func ContentModifierHelper_contentModifierMenuItem(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierMenuItem(node: KPointer): Unit
        func ContentModifierHelper_contentModifierSlider(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierSlider(node: KPointer): Unit
        func ContentModifierHelper_contentModifierTextClock(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierTextClock(node: KPointer): Unit
        func ContentModifierHelper_contentModifierTextTimer(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierTextTimer(node: KPointer): Unit
        func ContentModifierHelper_contentModifierToggle(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ContentModifierHelper_resetContentModifierToggle(node: KPointer): Unit
        func CustomDialogController_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func CustomDialogController_getFinalizer(): UInt64
        func CustomDialogController_open(ptr: UInt64): Unit
        func CustomDialogController_close(ptr: UInt64): Unit
        func DrawModifier_construct(): UInt64
        func DrawModifier_getFinalizer(): UInt64
        func DrawModifier_invalidate(ptr: UInt64): Unit
        func DrawModifier_getDrawBehind(ptr: UInt64): UInt64
        func DrawModifier_setDrawBehind(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func DrawModifier_getDrawContent(ptr: UInt64): UInt64
        func DrawModifier_setDrawContent(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func DrawModifier_getDrawFront(ptr: UInt64): UInt64
        func DrawModifier_setDrawFront(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func EnvironmentBackend_isAccessibilityEnabled(): Bool
        func EnvironmentBackend_getColorMode(): Int32
        func EnvironmentBackend_getFontScale(): Float32
        func EnvironmentBackend_getFontWeightScale(): Float32
        func EnvironmentBackend_getLayoutDirection(): CString
        func EnvironmentBackend_getLanguageCode(): CString
        func EventEmulator_emitClickEvent(node: KPointer, event: KPointer): Unit
        func EventEmulator_emitTextInputEvent(node: KPointer, text: CString): Unit
        func FocusController_requestFocus(key: CString): Unit
        func GlobalScope_ohos_arkui_componentSnapshot_get(id: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func GlobalScope_ohos_arkui_performanceMonitor_begin(scene: CString, startInputType: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func GlobalScope_ohos_arkui_performanceMonitor_end(scene: CString): Unit
        func GlobalScope_ohos_arkui_performanceMonitor_recordInputEventTime(actionType: KInt, sourceType: KInt, time: KLong): Unit
        func GlobalScope_ohos_font_registerFont(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func GlobalScope_ohos_font_getSystemFontList(): KInteropReturnBuffer
        func GlobalScope_ohos_font_getFontByName(fontName: CString): UInt64
        func GlobalScope_ohos_measure_utils_measureText(thisArray: KSerializerBuffer, thisLength: Int32): Float64
        func GlobalScope_ohos_measure_utils_measureTextSize(thisArray: KSerializerBuffer, thisLength: Int32): KInteropReturnBuffer
        func ICurve_construct(): UInt64
        func ICurve_getFinalizer(): UInt64
        func ICurve_interpolate(ptr: UInt64, fraction: Float64): Float64
        func IUIContext_freezeUINode0(id: CString, isFrozen: KInt): Unit
        func IUIContext_freezeUINode1(id: Float64, isFrozen: KInt): Unit
        func LazyForEachOps_Sync(node: KPointer, totalCount: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavExtender_setNavigationOptions(ptr: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavExtender_setUpdateStackCallback(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavExtender_syncStack(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavExtender_checkNeedCreate(navigation: KPointer, index: KInt): Bool
        func NavExtender_setNavDestinationNode(thisArray: KSerializerBuffer, thisLength: Int32, index: KInt, node: KPointer): Unit
        func NavExtender_pushPath(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavExtender_replacePath(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavExtender_pop(thisArray: KSerializerBuffer, thisLength: Int32, animated: KInt): CString
        func NavExtender_setOnPopCallback(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavExtender_getIdByIndex(thisArray: KSerializerBuffer, thisLength: Int32, index: KInt): CString
        func NavExtender_getIdByName(thisArray: KSerializerBuffer, thisLength: Int32, name: CString): KInteropReturnBuffer
        func NavExtender_popToIndex(thisArray: KSerializerBuffer, thisLength: Int32, index: KInt, animated: KInt): Unit
        func NavExtender_popToName(thisArray: KSerializerBuffer, thisLength: Int32, name: CString, animated: KInt): Float64
        func PersistentStorageBackend_get(key: CString): KInteropReturnBuffer
        func PersistentStorageBackend_has(key: CString): Bool
        func PersistentStorageBackend_remove(key: CString): Unit
        func PersistentStorageBackend_set(key: CString, value: CString): Unit
        func PersistentStorageBackend_clear(): Unit
        func RenderServiceNode_getNodeId(nodeId: CString): Int32
        func RestrictedWorker_construct(scriptURL: CString, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func RestrictedWorker_getFinalizer(): UInt64
        func RestrictedWorker_postMessage0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_postMessage1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_postMessageWithSharedSendable(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_on(ptr: UInt64, Type: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_once(ptr: UInt64, Type: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_off(ptr: UInt64, Type: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_terminate(ptr: UInt64): Unit
        func RestrictedWorker_addEventListener(ptr: UInt64, Type: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_dispatchEvent(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Bool
        func RestrictedWorker_removeEventListener(ptr: UInt64, Type: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_removeAllListener(ptr: UInt64): Unit
        func RestrictedWorker_registerGlobalCallObject(ptr: UInt64, instanceName: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_unregisterGlobalCallObject(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_getOnexit(ptr: UInt64): KInteropReturnBuffer
        func RestrictedWorker_setOnexit(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_getOnerror(ptr: UInt64): KInteropReturnBuffer
        func RestrictedWorker_setOnerror(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_getOnmessage(ptr: UInt64): KInteropReturnBuffer
        func RestrictedWorker_setOnmessage(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RestrictedWorker_getOnmessageerror(ptr: UInt64): KInteropReturnBuffer
        func RestrictedWorker_setOnmessageerror(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Scene_construct(): UInt64
        func Scene_getFinalizer(): UInt64
        func Scene_load(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func Scene_destroy(ptr: UInt64): Unit
        func ScreenshotService_requestScreenshot(target: CString, name: CString): Bool
        func SearchOps_registerSearchValueCallback(node: KPointer, value: CString, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func StateStylesOps_onStateStyleChange(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SystemOps_StartFrame(): UInt64
        func SystemOps_EndFrame(root: KPointer): Unit
        func SystemOps_syncInstanceId(instanceId: KInt): Unit
        func SystemOps_restoreInstanceId(): Unit
        func SystemOps_getResourceId(bundleName: CString, moduleName: CString, thisArray: KSerializerBuffer, thisLength: Int32): Int32
        func SystemOps_resourceManagerReset(): Unit
        func SystemOps_setFrameCallback(thisArray: KSerializerBuffer, thisLength: Int32, delayTime: Float64): Unit
        func SystemOps_colorMetricsResourceColor(thisArray: KSerializerBuffer, thisLength: Int32): KInteropReturnBuffer
        func TextFieldOps_registerTextFieldValueCallback(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetWidth_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetWidth_LayoutPolicy(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetHeight_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetHeight_LayoutPolicy(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetPadding_Padding(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetPadding_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetPadding_LocalizedPadding(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetMargin_Padding(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetMargin_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetMargin_LocalizedPadding(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorder(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderWidth_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderWidth_EdgeWidths(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderWidth_LocalizedEdgeWidths(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderColor_ResourceColor(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderColor_EdgeColors(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderColor_LocalizedEdgeColors(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderStyle_BorderStyle(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderStyle_EdgeStyles(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderRadius_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderRadius_BorderRadiuses(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBorderRadius_LocalizedBorderRadiuses(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextFieldOps_textFieldOpsSetBackgroundColor(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextPickerDialog_show(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIContextAtomicServiceBar_getBarRect(): UInt64
        func GlobalScope_getRectangleById(id: CString): KInteropReturnBuffer
}
public class ArkUIGeneratedNativeModule {
    public  static func _Root_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Root_construct(id, flags)
            return result
        }
    }
    public  static func _ComponentRoot_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = ComponentRoot_construct(id, flags)
            return result
        }
    }
    public  static func _CustomLayoutRoot_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = CustomLayoutRoot_construct(id, flags)
            return result
        }
    }
    public  static func _CustomLayoutRoot_setSubscribeOnMeasureSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CustomLayoutRoot_setSubscribeOnMeasureSize(ptr, thisArray, thisLength)
        }
    }
    public  static func _CustomLayoutRoot_setSubscribeOnPlaceChildren(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CustomLayoutRoot_setSubscribeOnPlaceChildren(ptr, thisArray, thisLength)
        }
    }
    public  static func _Blank_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Blank_construct(id, flags)
            return result
        }
    }
    public  static func _BlankInterface_setBlankOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BlankInterface_setBlankOptions(ptr, thisArray, thisLength)
        }
    }
    public  static func _BlankAttribute_setColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BlankAttribute_setColor(ptr, thisArray, thisLength)
        }
    }
    public  static func _Button_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Button_construct(id, flags)
            return result
        }
    }
    public  static func _ButtonInterface_setButtonOptions(ptr: UInt64): Unit {
        unsafe {
            ButtonInterface_setButtonOptions(ptr)
        }
    }
    public  static func _ButtonAttribute_setType(ptr: UInt64, value: KInt): Unit {
        unsafe {
            ButtonAttribute_setType(ptr, value)
        }
    }
    public  static func _ButtonAttribute_setFontColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ButtonAttribute_setFontColor(ptr, thisArray, thisLength)
        }
    }
    public  static func _ButtonAttribute_setLabelStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ButtonAttribute_setLabelStyle(ptr, thisArray, thisLength)
        }
    }
    public  static func _Checkbox_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Checkbox_construct(id, flags)
            return result
        }
    }
    public  static func _CheckboxInterface_setCheckboxOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CheckboxInterface_setCheckboxOptions(ptr, thisArray, thisLength)
        }
    }
    public  static func _CheckboxAttribute_setSelect(ptr: UInt64, value: KInt): Unit {
        unsafe {
            CheckboxAttribute_setSelect(ptr, value)
        }
    }
    public  static func _CheckboxAttribute_setSelectedColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CheckboxAttribute_setSelectedColor(ptr, thisArray, thisLength)
        }
    }
    public  static func _CheckboxAttribute_setShape(ptr: UInt64, value: KInt): Unit {
        unsafe {
            CheckboxAttribute_setShape(ptr, value)
        }
    }
    public  static func _CheckboxAttribute_setUnselectedColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CheckboxAttribute_setUnselectedColor(ptr, thisArray, thisLength)
        }
    }
    public  static func _CheckboxAttribute_setMark(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CheckboxAttribute_setMark(ptr, thisArray, thisLength)
        }
    }
    public  static func _CheckboxAttribute_setOnChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CheckboxAttribute_setOnChange(ptr, thisArray, thisLength)
        }
    }
    public  static func _CheckboxAttribute_onSelect(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CheckboxAttribute_onSelect(ptr, thisArray, thisLength)
        }
    }
    public  static func _Column_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Column_construct(id, flags)
            return result
        }
    }
    public  static func _ColumnInterface_setColumnOptions(ptr: UInt64): Unit {
        unsafe {
            ColumnInterface_setColumnOptions(ptr)
        }
    }
    public  static func _ColumnAttribute_setAlignItems(ptr: UInt64, value: KInt): Unit {
        unsafe {
            ColumnAttribute_setAlignItems(ptr, value)
        }
    }
    public  static func _CommonMethod_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = CommonMethod_construct(id, flags)
            return result
        }
    }
    public  static func _CommonMethod_setBackdropBlur(ptr: UInt64, value: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBackdropBlur(ptr, value, thisArray, thisLength)
        }
    }
    public  static func _CommonMethod_setWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setWidth(ptr, thisArray, thisLength)
        }
    }
    public  static func _CommonMethod_setHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setHeight(ptr, thisArray, thisLength)
        }
    }
    public  static func _CommonMethod_setKey(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            CommonMethod_setKey(ptr, value)
            LibC.free(value)
        }
    }
    public  static func _CommonMethod_setRestoreId(ptr: UInt64, value: Float64): Unit {
        unsafe {
            CommonMethod_setRestoreId(ptr, value)
        }
    }
    public  static func _CommonMethod_setPadding(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setPadding(ptr, thisArray, thisLength)
        }
    }
    public  static func _CommonMethod_setBindSheet(ptr: UInt64, isShow: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBindSheet(ptr, isShow, thisArray, thisLength)
        }
    }
    public  static func _CommonMethod_setBackgroundBlurStyle(ptr: UInt64, value: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBackgroundBlurStyle(ptr, value, thisArray, thisLength)
        }
    }
    public  static func _CommonMethod_setDragPreviewOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setDragPreviewOptions(ptr, thisArray, thisLength)
        }
    }
    public  static func _CommonMethod_setOnClick0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setOnClick0(ptr, thisArray, thisLength)
        }
    }
    public  static func _CommonMethod_setOnClick1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setOnClick1(ptr, thisArray, thisLength)
        }
    }
    public  static func _ScrollableCommonMethod_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = ScrollableCommonMethod_construct(id, flags)
            return result
        }
    }
    public  static func _ScrollableCommonMethod_setScrollBarWidth_number(ptr: UInt64, value: Float64): Unit {
        unsafe {
            ScrollableCommonMethod_setScrollBarWidth_number(ptr, value)
        }
    }
    public  static func _ScrollableCommonMethod_setScrollBarWidth_String(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            ScrollableCommonMethod_setScrollBarWidth_String(ptr, value)
            LibC.free(value)
        }
    }
    public  static func _List_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = List_construct(id, flags)
            return result
        }
    }
    public  static func _ListInterface_setListOptions(ptr: UInt64): Unit {
        unsafe {
            ListInterface_setListOptions(ptr)
        }
    }
    public  static func _ListAttribute_setSomeOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ListAttribute_setSomeOptional(ptr, thisArray, thisLength)
        }
    }
    public  static func _Navigation_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Navigation_construct(id, flags)
            return result
        }
    }
    public  static func _NavigationInterface_setNavigationOptions(ptr: UInt64): Unit {
        unsafe {
            NavigationInterface_setNavigationOptions(ptr)
        }
    }
    public  static func _NavigationAttribute_setOnTitleModeChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setOnTitleModeChange(ptr, thisArray, thisLength)
        }
    }
    public  static func _Test_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Test_construct(id, flags)
            return result
        }
    }
    public  static func _TestInterface_setTestOptions(ptr: UInt64): Unit {
        unsafe {
            TestInterface_setTestOptions(ptr)
        }
    }
    public  static func _TestAttribute_setTestBoolean(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TestAttribute_setTestBoolean(ptr, value)
        }
    }
    public  static func _TestAttribute_setTestNumber(ptr: UInt64, value: Float64): Unit {
        unsafe {
            TestAttribute_setTestNumber(ptr, value)
        }
    }
    public  static func _TestAttribute_setTestString(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            TestAttribute_setTestString(ptr, value)
            LibC.free(value)
        }
    }
    public  static func _TestAttribute_setTestEnum(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TestAttribute_setTestEnum(ptr, value)
        }
    }
    public  static func _TestAttribute_setTestBasicMix(ptr: UInt64, v1: Float64, v2: KStringPtr, v3: Float64): Unit {
        unsafe {
            let v2 = LibC.mallocCString(v2)
            TestAttribute_setTestBasicMix(ptr, v1, v2, v3)
            LibC.free(v2)
        }
    }
    public  static func _TestAttribute_setTestBooleanUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanUndefined(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestNumberUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestNumberUndefined(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestStringUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestStringUndefined(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestEnumUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestEnumUndefined(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestFunctionNumberVoid(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestFunctionNumberVoid(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestUnionNumberEnum_number(ptr: UInt64, val: Float64): Unit {
        unsafe {
            TestAttribute_setTestUnionNumberEnum_number(ptr, val)
        }
    }
    public  static func _TestAttribute_setTestUnionNumberEnum_EnumDTS(ptr: UInt64, val: KInt): Unit {
        unsafe {
            TestAttribute_setTestUnionNumberEnum_EnumDTS(ptr, val)
        }
    }
    public  static func _TestAttribute_setTestUnionBooleanString_boolean(ptr: UInt64, val: KInt): Unit {
        unsafe {
            TestAttribute_setTestUnionBooleanString_boolean(ptr, val)
        }
    }
    public  static func _TestAttribute_setTestUnionBooleanString_String(ptr: UInt64, val: KStringPtr): Unit {
        unsafe {
            let val = LibC.mallocCString(val)
            TestAttribute_setTestUnionBooleanString_String(ptr, val)
            LibC.free(val)
        }
    }
    public  static func _TestAttribute_setTestUnionStringNumber_number(ptr: UInt64, val: Float64): Unit {
        unsafe {
            TestAttribute_setTestUnionStringNumber_number(ptr, val)
        }
    }
    public  static func _TestAttribute_setTestUnionStringNumber_String(ptr: UInt64, val: KStringPtr): Unit {
        unsafe {
            let val = LibC.mallocCString(val)
            TestAttribute_setTestUnionStringNumber_String(ptr, val)
            LibC.free(val)
        }
    }
    public  static func _TestAttribute_setTestUnionBooleanStringNumberUndefined_number(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionBooleanStringNumberUndefined_number(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestUnionWithGenericArray_number(ptr: UInt64, value: Float64): Unit {
        unsafe {
            TestAttribute_setTestUnionWithGenericArray_number(ptr, value)
        }
    }
    public  static func _TestAttribute_setTestUnionWithArrayType_number(ptr: UInt64, value: Float64): Unit {
        unsafe {
            TestAttribute_setTestUnionWithArrayType_number(ptr, value)
        }
    }
    public  static func _TestAttribute_setTestBooleanArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanArray(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestNumberArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestNumberArray(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestStringArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestStringArray(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestEnumArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestEnumArray(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestArrayMix(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestArrayMix(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestTupleBooleanNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleBooleanNumber(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestTupleNumberStringEnum(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleNumberStringEnum(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestTupleOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleOptional(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestTupleUnion(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleUnion(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestArrayRefBoolean(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestArrayRefBoolean(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestArrayRefNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestArrayRefNumber(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestBooleanInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterface(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestNumberInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestNumberInterface(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestStringInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestStringInterface(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestUnionInterface_UnionInterfaceDTS(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionInterface_UnionInterfaceDTS(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestUnionOptional_UnionOptionalInterfaceDTS(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionOptional_UnionOptionalInterfaceDTS(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestTupleInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleInterface(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestArrayRefNumberInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestArrayRefNumberInterface(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestBooleanInterfaceOption(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterfaceOption(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestBooleanInterfaceArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterfaceArray(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestBooleanInterfaceArrayRef(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterfaceArrayRef(ptr, thisArray, thisLength)
        }
    }
    public  static func _TestAttribute_setTestInterfaceMixed(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32, v2: Float64): Unit {
        unsafe {
            TestAttribute_setTestInterfaceMixed(ptr, thisArray, thisLength, v2)
        }
    }
    public  static func _TextInput_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = TextInput_construct(id, flags)
            return result
        }
    }
    public  static func _TextInputInterface_setTextInputOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextInputInterface_setTextInputOptions(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextInputAttribute_setType(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TextInputAttribute_setType(ptr, value)
        }
    }
    public  static func _TextInputAttribute_setContentType(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TextInputAttribute_setContentType(ptr, value)
        }
    }
    public  static func _TextInputAttribute_setOnCopy(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextInputAttribute_setOnCopy(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextInputAttribute_onText(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextInputAttribute_onText(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPicker_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = TextPicker_construct(id, flags)
            return result
        }
    }
    public  static func _TextPickerInterface_setTextPickerOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerInterface_setTextPickerOptions(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setDefaultPickerItemHeight_number(ptr: UInt64, value: Float64): Unit {
        unsafe {
            TextPickerAttribute_setDefaultPickerItemHeight_number(ptr, value)
        }
    }
    public  static func _TextPickerAttribute_setDefaultPickerItemHeight_String(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            TextPickerAttribute_setDefaultPickerItemHeight_String(ptr, value)
            LibC.free(value)
        }
    }
    public  static func _TextPickerAttribute_setCanLoop(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TextPickerAttribute_setCanLoop(ptr, value)
        }
    }
    public  static func _TextPickerAttribute_setDisappearTextStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setDisappearTextStyle(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setTextStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setTextStyle(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setSelectedTextStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setSelectedTextStyle(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setOnAccept(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setOnAccept(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setOnCancel(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setOnCancel(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setOnChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setOnChange(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setOnScrollStop(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setOnScrollStop(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setSelectedIndex(ptr: UInt64, value: Float64): Unit {
        unsafe {
            TextPickerAttribute_setSelectedIndex(ptr, value)
        }
    }
    public  static func _TextPickerAttribute_setDivider(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setDivider(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_setGradientHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setGradientHeight(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_onSelected(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_onSelected(ptr, thisArray, thisLength)
        }
    }
    public  static func _TextPickerAttribute_onValue(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_onValue(ptr, thisArray, thisLength)
        }
    }
    public  static func _AnimationExtender_SetClipRect(node: KPointer, x: KFloat, y: KFloat, width: KFloat, height: KFloat): Unit {
        unsafe {
            AnimationExtender_SetClipRect(node, x, y, width, height)
        }
    }
    public  static func _AnimationExtender_OpenImplicitAnimation(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            AnimationExtender_OpenImplicitAnimation(thisArray, thisLength)
        }
    }
    public  static func _AnimationExtender_CloseImplicitAnimation(): Unit {
        unsafe {
            AnimationExtender_CloseImplicitAnimation()
        }
    }
    public  static func _AnimationExtender_StartDoubleAnimation(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            AnimationExtender_StartDoubleAnimation(node, thisArray, thisLength)
        }
    }
    public  static func _AnimationExtender_AnimationTranslate(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            AnimationExtender_AnimationTranslate(node, thisArray, thisLength)
        }
    }
    public  static func _BaseEvent_construct(): UInt64 {
        unsafe {
            let result = BaseEvent_construct()
            return result
        }
    }
    public  static func _BaseEvent_getFinalizer(): UInt64 {
        unsafe {
            let result = BaseEvent_getFinalizer()
            return result
        }
    }
    public  static func _BaseEvent_getModifierKeyState(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Bool {
        unsafe {
            let result = BaseEvent_getModifierKeyState(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _BaseEvent_getSource(ptr: UInt64): Int32 {
        unsafe {
            let result = BaseEvent_getSource(ptr)
            return result
        }
    }
    public  static func _BaseEvent_setSource(ptr: UInt64, source: KInt): Unit {
        unsafe {
            BaseEvent_setSource(ptr, source)
        }
    }
    public  static func _BaseEvent_getAxisHorizontal(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseEvent_getAxisHorizontal(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _BaseEvent_setAxisHorizontal(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseEvent_setAxisHorizontal(ptr, thisArray, thisLength)
        }
    }
    public  static func _BaseEvent_getAxisVertical(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseEvent_getAxisVertical(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _BaseEvent_setAxisVertical(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseEvent_setAxisVertical(ptr, thisArray, thisLength)
        }
    }
    public  static func _BaseEvent_getPressure(ptr: UInt64): Float64 {
        unsafe {
            let result = BaseEvent_getPressure(ptr)
            return result
        }
    }
    public  static func _BaseEvent_setPressure(ptr: UInt64, pressure: Float64): Unit {
        unsafe {
            BaseEvent_setPressure(ptr, pressure)
        }
    }
    public  static func _BaseEvent_getTiltX(ptr: UInt64): Float64 {
        unsafe {
            let result = BaseEvent_getTiltX(ptr)
            return result
        }
    }
    public  static func _BaseEvent_setTiltX(ptr: UInt64, tiltX: Float64): Unit {
        unsafe {
            BaseEvent_setTiltX(ptr, tiltX)
        }
    }
    public  static func _BaseEvent_getSourceTool(ptr: UInt64): Int32 {
        unsafe {
            let result = BaseEvent_getSourceTool(ptr)
            return result
        }
    }
    public  static func _BaseEvent_setSourceTool(ptr: UInt64, sourceTool: KInt): Unit {
        unsafe {
            BaseEvent_setSourceTool(ptr, sourceTool)
        }
    }
    public  static func _BaseEvent_getDeviceId(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseEvent_getDeviceId(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _BaseEvent_setDeviceId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseEvent_setDeviceId(ptr, thisArray, thisLength)
        }
    }
    public  static func _BaseEvent_getTargetDisplayId(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseEvent_getTargetDisplayId(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _BaseEvent_setTargetDisplayId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseEvent_setTargetDisplayId(ptr, thisArray, thisLength)
        }
    }
    public  static func _BaseShape_construct(): UInt64 {
        unsafe {
            let result = BaseShape_construct()
            return result
        }
    }
    public  static func _BaseShape_getFinalizer(): UInt64 {
        unsafe {
            let result = BaseShape_getFinalizer()
            return result
        }
    }
    public  static func _BaseShape_width(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = BaseShape_width(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _BaseShape_height(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = BaseShape_height(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _BaseShape_size(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = BaseShape_size(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _BuilderNodeOps_construct(): UInt64 {
        unsafe {
            let result = BuilderNodeOps_construct()
            return result
        }
    }
    public  static func _BuilderNodeOps_getFinalizer(): UInt64 {
        unsafe {
            let result = BuilderNodeOps_getFinalizer()
            return result
        }
    }
    public  static func _BuilderNodeOps_create(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BuilderNodeOps_create(ptr, thisArray, thisLength)
        }
    }
    public  static func _BuilderNodeOps_disposeNode(ptr: UInt64): Unit {
        unsafe {
            BuilderNodeOps_disposeNode(ptr)
        }
    }
    public  static func _BuilderNodeOps_setUpdateConfigurationCallback(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BuilderNodeOps_setUpdateConfigurationCallback(ptr, thisArray, thisLength)
        }
    }
    public  static func _BuilderNodeOps_setOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BuilderNodeOps_setOptions(ptr, thisArray, thisLength)
        }
    }
    public  static func _BuilderNodeOps_postTouchEvent(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Bool {
        unsafe {
            let result = BuilderNodeOps_postTouchEvent(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _BuilderNodeOps_setRootFrameNodeInBuilderNode(ptr: UInt64, node: KPointer): UInt64 {
        unsafe {
            let result = BuilderNodeOps_setRootFrameNodeInBuilderNode(ptr, node)
            return result
        }
    }
    public  static func _ClickEvent_construct(): UInt64 {
        unsafe {
            let result = ClickEvent_construct()
            return result
        }
    }
    public  static func _ClickEvent_getFinalizer(): UInt64 {
        unsafe {
            let result = ClickEvent_getFinalizer()
            return result
        }
    }
    public  static func _ClickEvent_getDisplayX(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getDisplayX(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setDisplayX(ptr: UInt64, displayX: Float64): Unit {
        unsafe {
            ClickEvent_setDisplayX(ptr, displayX)
        }
    }
    public  static func _ClickEvent_getDisplayY(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getDisplayY(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setDisplayY(ptr: UInt64, displayY: Float64): Unit {
        unsafe {
            ClickEvent_setDisplayY(ptr, displayY)
        }
    }
    public  static func _ClickEvent_getWindowX(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getWindowX(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setWindowX(ptr: UInt64, windowX: Float64): Unit {
        unsafe {
            ClickEvent_setWindowX(ptr, windowX)
        }
    }
    public  static func _ClickEvent_getWindowY(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getWindowY(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setWindowY(ptr: UInt64, windowY: Float64): Unit {
        unsafe {
            ClickEvent_setWindowY(ptr, windowY)
        }
    }
    public  static func _ClickEvent_getScreenX(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getScreenX(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setScreenX(ptr: UInt64, screenX: Float64): Unit {
        unsafe {
            ClickEvent_setScreenX(ptr, screenX)
        }
    }
    public  static func _ClickEvent_getScreenY(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getScreenY(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setScreenY(ptr: UInt64, screenY: Float64): Unit {
        unsafe {
            ClickEvent_setScreenY(ptr, screenY)
        }
    }
    public  static func _ClickEvent_getX(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getX(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setX(ptr: UInt64, x: Float64): Unit {
        unsafe {
            ClickEvent_setX(ptr, x)
        }
    }
    public  static func _ClickEvent_getY(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getY(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setY(ptr: UInt64, y: Float64): Unit {
        unsafe {
            ClickEvent_setY(ptr, y)
        }
    }
    public  static func _ClickEvent_getPreventDefault(ptr: UInt64): UInt64 {
        unsafe {
            let result = ClickEvent_getPreventDefault(ptr)
            return result
        }
    }
    public  static func _ClickEvent_setPreventDefault(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ClickEvent_setPreventDefault(ptr, thisArray, thisLength)
        }
    }
    public  static func _ColorFilter_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = ColorFilter_construct(thisArray, thisLength)
            return result
        }
    }
    public  static func _ColorFilter_getFinalizer(): UInt64 {
        unsafe {
            let result = ColorFilter_getFinalizer()
            return result
        }
    }
    public  static func _CommonShape_construct(): UInt64 {
        unsafe {
            let result = CommonShape_construct()
            return result
        }
    }
    public  static func _CommonShape_getFinalizer(): UInt64 {
        unsafe {
            let result = CommonShape_getFinalizer()
            return result
        }
    }
    public  static func _CommonShape_offset(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = CommonShape_offset(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _CommonShape_fill(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = CommonShape_fill(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _CommonShape_position(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = CommonShape_position(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _ContentModifierHelper_contentModifierButton(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierButton(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierButton(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierButton(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierCheckBox(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierCheckBox(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierCheckBox(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierCheckBox(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierDataPanel(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierDataPanel(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierDataPanel(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierDataPanel(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierGauge(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierGauge(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierGauge(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierGauge(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierLoadingProgress(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierLoadingProgress(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierLoadingProgress(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierLoadingProgress(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierProgress(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierProgress(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierProgress(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierProgress(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierRadio(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierRadio(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierRadio(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierRadio(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierRating(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierRating(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierRating(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierRating(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierMenuItem(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierMenuItem(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierMenuItem(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierMenuItem(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierSlider(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierSlider(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierSlider(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierSlider(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierTextClock(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierTextClock(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierTextClock(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierTextClock(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierTextTimer(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierTextTimer(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierTextTimer(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierTextTimer(node)
        }
    }
    public  static func _ContentModifierHelper_contentModifierToggle(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ContentModifierHelper_contentModifierToggle(node, thisArray, thisLength)
        }
    }
    public  static func _ContentModifierHelper_resetContentModifierToggle(node: KPointer): Unit {
        unsafe {
            ContentModifierHelper_resetContentModifierToggle(node)
        }
    }
    public  static func _CustomDialogController_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = CustomDialogController_construct(thisArray, thisLength)
            return result
        }
    }
    public  static func _CustomDialogController_getFinalizer(): UInt64 {
        unsafe {
            let result = CustomDialogController_getFinalizer()
            return result
        }
    }
    public  static func _CustomDialogController_open(ptr: UInt64): Unit {
        unsafe {
            CustomDialogController_open(ptr)
        }
    }
    public  static func _CustomDialogController_close(ptr: UInt64): Unit {
        unsafe {
            CustomDialogController_close(ptr)
        }
    }
    public  static func _DrawModifier_construct(): UInt64 {
        unsafe {
            let result = DrawModifier_construct()
            return result
        }
    }
    public  static func _DrawModifier_getFinalizer(): UInt64 {
        unsafe {
            let result = DrawModifier_getFinalizer()
            return result
        }
    }
    public  static func _DrawModifier_invalidate(ptr: UInt64): Unit {
        unsafe {
            DrawModifier_invalidate(ptr)
        }
    }
    public  static func _DrawModifier_getDrawBehind(ptr: UInt64): UInt64 {
        unsafe {
            let result = DrawModifier_getDrawBehind(ptr)
            return result
        }
    }
    public  static func _DrawModifier_setDrawBehind(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            DrawModifier_setDrawBehind(ptr, thisArray, thisLength)
        }
    }
    public  static func _DrawModifier_getDrawContent(ptr: UInt64): UInt64 {
        unsafe {
            let result = DrawModifier_getDrawContent(ptr)
            return result
        }
    }
    public  static func _DrawModifier_setDrawContent(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            DrawModifier_setDrawContent(ptr, thisArray, thisLength)
        }
    }
    public  static func _DrawModifier_getDrawFront(ptr: UInt64): UInt64 {
        unsafe {
            let result = DrawModifier_getDrawFront(ptr)
            return result
        }
    }
    public  static func _DrawModifier_setDrawFront(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            DrawModifier_setDrawFront(ptr, thisArray, thisLength)
        }
    }
    public  static func _EnvironmentBackend_isAccessibilityEnabled(): Bool {
        unsafe {
            let result = EnvironmentBackend_isAccessibilityEnabled()
            return result
        }
    }
    public  static func _EnvironmentBackend_getColorMode(): Int32 {
        unsafe {
            let result = EnvironmentBackend_getColorMode()
            return result
        }
    }
    public  static func _EnvironmentBackend_getFontScale(): Float32 {
        unsafe {
            let result = EnvironmentBackend_getFontScale()
            return result
        }
    }
    public  static func _EnvironmentBackend_getFontWeightScale(): Float32 {
        unsafe {
            let result = EnvironmentBackend_getFontWeightScale()
            return result
        }
    }
    public  static func _EnvironmentBackend_getLayoutDirection(): String {
        unsafe {
            let result = EnvironmentBackend_getLayoutDirection()
            return result.toString()
        }
    }
    public  static func _EnvironmentBackend_getLanguageCode(): String {
        unsafe {
            let result = EnvironmentBackend_getLanguageCode()
            return result.toString()
        }
    }
    public  static func _EventEmulator_emitClickEvent(node: KPointer, event: KPointer): Unit {
        unsafe {
            EventEmulator_emitClickEvent(node, event)
        }
    }
    public  static func _EventEmulator_emitTextInputEvent(node: KPointer, text: KStringPtr): Unit {
        unsafe {
            let text = LibC.mallocCString(text)
            EventEmulator_emitTextInputEvent(node, text)
            LibC.free(text)
        }
    }
    public  static func _FocusController_requestFocus(key: KStringPtr): Unit {
        unsafe {
            let key = LibC.mallocCString(key)
            FocusController_requestFocus(key)
            LibC.free(key)
        }
    }
    public  static func _GlobalScope_ohos_arkui_componentSnapshot_get(id: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let id = LibC.mallocCString(id)
            GlobalScope_ohos_arkui_componentSnapshot_get(id, thisArray, thisLength)
            LibC.free(id)
        }
    }
    public  static func _GlobalScope_ohos_arkui_performanceMonitor_begin(scene: KStringPtr, startInputType: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let scene = LibC.mallocCString(scene)
            GlobalScope_ohos_arkui_performanceMonitor_begin(scene, startInputType, thisArray, thisLength)
            LibC.free(scene)
        }
    }
    public  static func _GlobalScope_ohos_arkui_performanceMonitor_end(scene: KStringPtr): Unit {
        unsafe {
            let scene = LibC.mallocCString(scene)
            GlobalScope_ohos_arkui_performanceMonitor_end(scene)
            LibC.free(scene)
        }
    }
    public  static func _GlobalScope_ohos_arkui_performanceMonitor_recordInputEventTime(actionType: KInt, sourceType: KInt, time: KLong): Unit {
        unsafe {
            GlobalScope_ohos_arkui_performanceMonitor_recordInputEventTime(actionType, sourceType, time)
        }
    }
    public  static func _GlobalScope_ohos_font_registerFont(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            GlobalScope_ohos_font_registerFont(thisArray, thisLength)
        }
    }
    public  static func _GlobalScope_ohos_font_getSystemFontList(): Array<UInt8> {
        unsafe {
            let result = GlobalScope_ohos_font_getSystemFontList()
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _GlobalScope_ohos_font_getFontByName(fontName: KStringPtr): UInt64 {
        unsafe {
            let fontName = LibC.mallocCString(fontName)
            let result = GlobalScope_ohos_font_getFontByName(fontName)
            LibC.free(fontName)
            return result
        }
    }
    public  static func _GlobalScope_ohos_measure_utils_measureText(thisArray: KSerializerBuffer, thisLength: Int32): Float64 {
        unsafe {
            let result = GlobalScope_ohos_measure_utils_measureText(thisArray, thisLength)
            return result
        }
    }
    public  static func _GlobalScope_ohos_measure_utils_measureTextSize(thisArray: KSerializerBuffer, thisLength: Int32): Array<UInt8> {
        unsafe {
            let result = GlobalScope_ohos_measure_utils_measureTextSize(thisArray, thisLength)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _ICurve_construct(): UInt64 {
        unsafe {
            let result = ICurve_construct()
            return result
        }
    }
    public  static func _ICurve_getFinalizer(): UInt64 {
        unsafe {
            let result = ICurve_getFinalizer()
            return result
        }
    }
    public  static func _ICurve_interpolate(ptr: UInt64, fraction: Float64): Float64 {
        unsafe {
            let result = ICurve_interpolate(ptr, fraction)
            return result
        }
    }
    public  static func _IUIContext_freezeUINode0(id: KStringPtr, isFrozen: KInt): Unit {
        unsafe {
            let id = LibC.mallocCString(id)
            IUIContext_freezeUINode0(id, isFrozen)
            LibC.free(id)
        }
    }
    public  static func _IUIContext_freezeUINode1(id: Float64, isFrozen: KInt): Unit {
        unsafe {
            IUIContext_freezeUINode1(id, isFrozen)
        }
    }
    public  static func _LazyForEachOps_Sync(node: KPointer, totalCount: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            LazyForEachOps_Sync(node, totalCount, thisArray, thisLength)
        }
    }
    public  static func _NavExtender_setNavigationOptions(ptr: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavExtender_setNavigationOptions(ptr, thisArray, thisLength)
        }
    }
    public  static func _NavExtender_setUpdateStackCallback(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavExtender_setUpdateStackCallback(thisArray, thisLength)
        }
    }
    public  static func _NavExtender_syncStack(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavExtender_syncStack(thisArray, thisLength)
        }
    }
    public  static func _NavExtender_checkNeedCreate(navigation: KPointer, index: KInt): Bool {
        unsafe {
            let result = NavExtender_checkNeedCreate(navigation, index)
            return result
        }
    }
    public  static func _NavExtender_setNavDestinationNode(thisArray: KSerializerBuffer, thisLength: Int32, index: KInt, node: KPointer): Unit {
        unsafe {
            NavExtender_setNavDestinationNode(thisArray, thisLength, index, node)
        }
    }
    public  static func _NavExtender_pushPath(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavExtender_pushPath(thisArray, thisLength)
        }
    }
    public  static func _NavExtender_replacePath(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavExtender_replacePath(thisArray, thisLength)
        }
    }
    public  static func _NavExtender_pop(thisArray: KSerializerBuffer, thisLength: Int32, animated: KInt): String {
        unsafe {
            let result = NavExtender_pop(thisArray, thisLength, animated)
            return result.toString()
        }
    }
    public  static func _NavExtender_setOnPopCallback(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavExtender_setOnPopCallback(thisArray, thisLength)
        }
    }
    public  static func _NavExtender_getIdByIndex(thisArray: KSerializerBuffer, thisLength: Int32, index: KInt): String {
        unsafe {
            let result = NavExtender_getIdByIndex(thisArray, thisLength, index)
            return result.toString()
        }
    }
    public  static func _NavExtender_getIdByName(thisArray: KSerializerBuffer, thisLength: Int32, name: KStringPtr): Array<UInt8> {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavExtender_getIdByName(thisArray, thisLength, name)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            LibC.free(name)
            return array
        }
    }
    public  static func _NavExtender_popToIndex(thisArray: KSerializerBuffer, thisLength: Int32, index: KInt, animated: KInt): Unit {
        unsafe {
            NavExtender_popToIndex(thisArray, thisLength, index, animated)
        }
    }
    public  static func _NavExtender_popToName(thisArray: KSerializerBuffer, thisLength: Int32, name: KStringPtr, animated: KInt): Float64 {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavExtender_popToName(thisArray, thisLength, name, animated)
            LibC.free(name)
            return result
        }
    }
    public  static func _PersistentStorageBackend_get(key: KStringPtr): Array<UInt8> {
        unsafe {
            let key = LibC.mallocCString(key)
            let result = PersistentStorageBackend_get(key)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            LibC.free(key)
            return array
        }
    }
    public  static func _PersistentStorageBackend_has(key: KStringPtr): Bool {
        unsafe {
            let key = LibC.mallocCString(key)
            let result = PersistentStorageBackend_has(key)
            LibC.free(key)
            return result
        }
    }
    public  static func _PersistentStorageBackend_remove(key: KStringPtr): Unit {
        unsafe {
            let key = LibC.mallocCString(key)
            PersistentStorageBackend_remove(key)
            LibC.free(key)
        }
    }
    public  static func _PersistentStorageBackend_set(key: KStringPtr, value: KStringPtr): Unit {
        unsafe {
            let key = LibC.mallocCString(key)
            let value = LibC.mallocCString(value)
            PersistentStorageBackend_set(key, value)
            LibC.free(key)
            LibC.free(value)
        }
    }
    public  static func _PersistentStorageBackend_clear(): Unit {
        unsafe {
            PersistentStorageBackend_clear()
        }
    }
    public  static func _RenderServiceNode_getNodeId(nodeId: KStringPtr): Int32 {
        unsafe {
            let nodeId = LibC.mallocCString(nodeId)
            let result = RenderServiceNode_getNodeId(nodeId)
            LibC.free(nodeId)
            return result
        }
    }
    public  static func _RestrictedWorker_construct(scriptURL: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let scriptURL = LibC.mallocCString(scriptURL)
            let result = RestrictedWorker_construct(scriptURL, thisArray, thisLength)
            LibC.free(scriptURL)
            return result
        }
    }
    public  static func _RestrictedWorker_getFinalizer(): UInt64 {
        unsafe {
            let result = RestrictedWorker_getFinalizer()
            return result
        }
    }
    public  static func _RestrictedWorker_postMessage0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RestrictedWorker_postMessage0(ptr, thisArray, thisLength)
        }
    }
    public  static func _RestrictedWorker_postMessage1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RestrictedWorker_postMessage1(ptr, thisArray, thisLength)
        }
    }
    public  static func _RestrictedWorker_postMessageWithSharedSendable(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RestrictedWorker_postMessageWithSharedSendable(ptr, thisArray, thisLength)
        }
    }
    public  static func _RestrictedWorker_on(ptr: UInt64, Type: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let Type = LibC.mallocCString(Type)
            RestrictedWorker_on(ptr, Type, thisArray, thisLength)
            LibC.free(Type)
        }
    }
    public  static func _RestrictedWorker_once(ptr: UInt64, Type: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let Type = LibC.mallocCString(Type)
            RestrictedWorker_once(ptr, Type, thisArray, thisLength)
            LibC.free(Type)
        }
    }
    public  static func _RestrictedWorker_off(ptr: UInt64, Type: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let Type = LibC.mallocCString(Type)
            RestrictedWorker_off(ptr, Type, thisArray, thisLength)
            LibC.free(Type)
        }
    }
    public  static func _RestrictedWorker_terminate(ptr: UInt64): Unit {
        unsafe {
            RestrictedWorker_terminate(ptr)
        }
    }
    public  static func _RestrictedWorker_addEventListener(ptr: UInt64, Type: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let Type = LibC.mallocCString(Type)
            RestrictedWorker_addEventListener(ptr, Type, thisArray, thisLength)
            LibC.free(Type)
        }
    }
    public  static func _RestrictedWorker_dispatchEvent(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Bool {
        unsafe {
            let result = RestrictedWorker_dispatchEvent(ptr, thisArray, thisLength)
            return result
        }
    }
    public  static func _RestrictedWorker_removeEventListener(ptr: UInt64, Type: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let Type = LibC.mallocCString(Type)
            RestrictedWorker_removeEventListener(ptr, Type, thisArray, thisLength)
            LibC.free(Type)
        }
    }
    public  static func _RestrictedWorker_removeAllListener(ptr: UInt64): Unit {
        unsafe {
            RestrictedWorker_removeAllListener(ptr)
        }
    }
    public  static func _RestrictedWorker_registerGlobalCallObject(ptr: UInt64, instanceName: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let instanceName = LibC.mallocCString(instanceName)
            RestrictedWorker_registerGlobalCallObject(ptr, instanceName, thisArray, thisLength)
            LibC.free(instanceName)
        }
    }
    public  static func _RestrictedWorker_unregisterGlobalCallObject(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RestrictedWorker_unregisterGlobalCallObject(ptr, thisArray, thisLength)
        }
    }
    public  static func _RestrictedWorker_getOnexit(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = RestrictedWorker_getOnexit(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _RestrictedWorker_setOnexit(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RestrictedWorker_setOnexit(ptr, thisArray, thisLength)
        }
    }
    public  static func _RestrictedWorker_getOnerror(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = RestrictedWorker_getOnerror(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _RestrictedWorker_setOnerror(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RestrictedWorker_setOnerror(ptr, thisArray, thisLength)
        }
    }
    public  static func _RestrictedWorker_getOnmessage(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = RestrictedWorker_getOnmessage(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _RestrictedWorker_setOnmessage(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RestrictedWorker_setOnmessage(ptr, thisArray, thisLength)
        }
    }
    public  static func _RestrictedWorker_getOnmessageerror(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = RestrictedWorker_getOnmessageerror(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _RestrictedWorker_setOnmessageerror(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RestrictedWorker_setOnmessageerror(ptr, thisArray, thisLength)
        }
    }
    public  static func _Scene_construct(): UInt64 {
        unsafe {
            let result = Scene_construct()
            return result
        }
    }
    public  static func _Scene_getFinalizer(): UInt64 {
        unsafe {
            let result = Scene_getFinalizer()
            return result
        }
    }
    public  static func _Scene_load(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = Scene_load(thisArray, thisLength)
            return result
        }
    }
    public  static func _Scene_destroy(ptr: UInt64): Unit {
        unsafe {
            Scene_destroy(ptr)
        }
    }
    public  static func _ScreenshotService_requestScreenshot(target: KStringPtr, name: KStringPtr): Bool {
        unsafe {
            let target = LibC.mallocCString(target)
            let name = LibC.mallocCString(name)
            let result = ScreenshotService_requestScreenshot(target, name)
            LibC.free(target)
            LibC.free(name)
            return result
        }
    }
    public  static func _SearchOps_registerSearchValueCallback(node: KPointer, value: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let value = LibC.mallocCString(value)
            let result = SearchOps_registerSearchValueCallback(node, value, thisArray, thisLength)
            LibC.free(value)
            return result
        }
    }
    public  static func _StateStylesOps_onStateStyleChange(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            StateStylesOps_onStateStyleChange(node, thisArray, thisLength)
        }
    }
    public  static func _SystemOps_StartFrame(): UInt64 {
        unsafe {
            let result = SystemOps_StartFrame()
            return result
        }
    }
    public  static func _SystemOps_EndFrame(root: KPointer): Unit {
        unsafe {
            SystemOps_EndFrame(root)
        }
    }
    public  static func _SystemOps_syncInstanceId(instanceId: KInt): Unit {
        unsafe {
            SystemOps_syncInstanceId(instanceId)
        }
    }
    public  static func _SystemOps_restoreInstanceId(): Unit {
        unsafe {
            SystemOps_restoreInstanceId()
        }
    }
    public  static func _SystemOps_getResourceId(bundleName: KStringPtr, moduleName: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Int32 {
        unsafe {
            let bundleName = LibC.mallocCString(bundleName)
            let moduleName = LibC.mallocCString(moduleName)
            let result = SystemOps_getResourceId(bundleName, moduleName, thisArray, thisLength)
            LibC.free(bundleName)
            LibC.free(moduleName)
            return result
        }
    }
    public  static func _SystemOps_resourceManagerReset(): Unit {
        unsafe {
            SystemOps_resourceManagerReset()
        }
    }
    public  static func _SystemOps_setFrameCallback(thisArray: KSerializerBuffer, thisLength: Int32, delayTime: Float64): Unit {
        unsafe {
            SystemOps_setFrameCallback(thisArray, thisLength, delayTime)
        }
    }
    public  static func _SystemOps_colorMetricsResourceColor(thisArray: KSerializerBuffer, thisLength: Int32): Array<UInt8> {
        unsafe {
            let result = SystemOps_colorMetricsResourceColor(thisArray, thisLength)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public  static func _TextFieldOps_registerTextFieldValueCallback(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_registerTextFieldValueCallback(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetWidth_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetWidth_Length(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetWidth_LayoutPolicy(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetWidth_LayoutPolicy(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetHeight_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetHeight_Length(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetHeight_LayoutPolicy(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetHeight_LayoutPolicy(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetPadding_Padding(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetPadding_Padding(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetPadding_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetPadding_Length(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetPadding_LocalizedPadding(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetPadding_LocalizedPadding(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetMargin_Padding(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetMargin_Padding(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetMargin_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetMargin_Length(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetMargin_LocalizedPadding(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetMargin_LocalizedPadding(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorder(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorder(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderWidth_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderWidth_Length(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderWidth_EdgeWidths(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderWidth_EdgeWidths(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderWidth_LocalizedEdgeWidths(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderWidth_LocalizedEdgeWidths(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderColor_ResourceColor(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderColor_ResourceColor(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderColor_EdgeColors(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderColor_EdgeColors(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderColor_LocalizedEdgeColors(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderColor_LocalizedEdgeColors(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderStyle_BorderStyle(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderStyle_BorderStyle(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderStyle_EdgeStyles(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderStyle_EdgeStyles(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderRadius_Length(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderRadius_Length(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderRadius_BorderRadiuses(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderRadius_BorderRadiuses(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBorderRadius_LocalizedBorderRadiuses(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBorderRadius_LocalizedBorderRadiuses(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextFieldOps_textFieldOpsSetBackgroundColor(node: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextFieldOps_textFieldOpsSetBackgroundColor(node, thisArray, thisLength)
            return result
        }
    }
    public  static func _TextPickerDialog_show(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerDialog_show(thisArray, thisLength)
        }
    }
    public  static func _UIContextAtomicServiceBar_getBarRect(): UInt64 {
        unsafe {
            let result = UIContextAtomicServiceBar_getBarRect()
            return result
        }
    }
    public  static func _GlobalScope_getRectangleById(id: KStringPtr): Array<UInt8> {
        unsafe {
            let id = LibC.mallocCString(id)
            let result = GlobalScope_getRectangleById(id)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            LibC.free(id)
            return array
        }
    }
}
