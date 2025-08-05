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
public interface RefreshOptionsInterfaces <:  {
    public mut open prop refreshing: Union_Boolean_Bindable
    public mut open prop offset: Option<Union_Number_String>
    public mut open prop friction: Option<Union_Number_String>
    public mut open prop promptText: Option<ResourceStr>
    public mut open prop builder: Option<CustomBuilder>
    public mut open prop refreshingContent: Option<ComponentContent>
}
public open class RefreshOptions <: RefreshOptionsInterfaces {
    private var refreshing_container: Union_Boolean_Bindable
    public mut open prop refreshing: Union_Boolean_Bindable
    {
        get() {
            return refreshing_container
        }
        set(refreshing) {
            refreshing_container = refreshing
        }
    }
    private var offset_container: Option<Union_Number_String>
    public mut open prop offset: Option<Union_Number_String>
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    private var friction_container: Option<Union_Number_String>
    public mut open prop friction: Option<Union_Number_String>
    {
        get() {
            return friction_container
        }
        set(friction) {
            friction_container = friction
        }
    }
    private var promptText_container: Option<ResourceStr>
    public mut open prop promptText: Option<ResourceStr>
    {
        get() {
            return promptText_container
        }
        set(promptText) {
            promptText_container = promptText
        }
    }
    private var builder_container: Option<CustomBuilder>
    public mut open prop builder: Option<CustomBuilder>
    {
        get() {
            return builder_container
        }
        set(builder) {
            builder_container = builder
        }
    }
    private var refreshingContent_container: Option<ComponentContent>
    public mut open prop refreshingContent: Option<ComponentContent>
    {
        get() {
            return refreshingContent_container
        }
        set(refreshingContent) {
            refreshingContent_container = refreshingContent
        }
    }
    RefreshOptions(refreshing: Union_Boolean_Bindable, offset: Option<Union_Number_String>, friction: Option<Union_Number_String>, promptText: Option<ResourceStr>, builder: Option<CustomBuilder>, refreshingContent: Option<ComponentContent>) {
        this.refreshing_container = refreshing
        this.offset_container = offset
        this.friction_container = friction
        this.promptText_container = promptText
        this.builder_container = builder
        this.refreshingContent_container = refreshingContent
    }
}
public open class RefreshOptions_serializer {
    public static func write(buffer: SerializerBase, value: RefreshOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRefreshing = value.refreshing
        if (valueHolderForRefreshing.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForRefreshingForIdx0 = valueHolderForRefreshing.getValue0()
            valueSerializer.writeBoolean(valueHolderForRefreshingForIdx0);
        } else if (valueHolderForRefreshing.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForRefreshingForIdx1 = valueHolderForRefreshing.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForRefreshingForIdx1);
        }
        let valueHolderForOffset = value.offset
        if (valueHolderForOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            if (valueHolderForOffsetTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffsetTmpValueForIdx0 = valueHolderForOffsetTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOffsetTmpValueForIdx0);
            } else if (valueHolderForOffsetTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffsetTmpValueForIdx1 = valueHolderForOffsetTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForOffsetTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFriction = value.friction
        if (valueHolderForFriction.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFrictionTmpValue = valueHolderForFriction
            if (valueHolderForFrictionTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForFrictionTmpValueForIdx0 = valueHolderForFrictionTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForFrictionTmpValueForIdx0);
            } else if (valueHolderForFrictionTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForFrictionTmpValueForIdx1 = valueHolderForFrictionTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForFrictionTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPromptText = value.promptText
        if (valueHolderForPromptText.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPromptTextTmpValue = valueHolderForPromptText
            if (valueHolderForPromptTextTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPromptTextTmpValueForIdx0 = valueHolderForPromptTextTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForPromptTextTmpValueForIdx0);
            } else if (valueHolderForPromptTextTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPromptTextTmpValueForIdx1 = valueHolderForPromptTextTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForPromptTextTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBuilder = value.builder
        if (valueHolderForBuilder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBuilderTmpValue = valueHolderForBuilder
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForBuilderTmpValue));
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForRefreshingContent = value.refreshingContent
        if (valueHolderForRefreshingContent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRefreshingContentTmpValue = valueHolderForRefreshingContent
            valueSerializer.writeCustomObject("Any", valueHolderForRefreshingContentTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RefreshOptions {
        var valueDeserializer: DeserializerBase = buffer
        let refreshingTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var refreshingTmpBuf: Union_Boolean_Bindable 
        if (refreshingTmpBufUnionSelector == Int8(0)) {
            refreshingTmpBuf = Union_Boolean_Bindable(valueDeserializer.readBoolean())
        } else if (refreshingTmpBufUnionSelector == Int8(1)) {
            refreshingTmpBuf = Union_Boolean_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for refreshingTmpBuf has to be chosen through deserialisation.")
        }
        let refreshingTmpResult: Union_Boolean_Bindable = match (refreshingTmpBuf as Union_Boolean_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            let offsetTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetTmpBuf_: Union_Number_String 
            if (offsetTmpBuf_UnionSelector == Int8(0)) {
                offsetTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetTmpBuf_UnionSelector == Int8(1)) {
                offsetTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for offsetTmpBuf_ has to be chosen through deserialisation.")
            }
            offsetTmpBuf = match (offsetTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetTmpResult: Option<Union_Number_String> = offsetTmpBuf
        let frictionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var frictionTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(frictionTmpBuf_runtimeType))) {
            let frictionTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var frictionTmpBuf_: Union_Number_String 
            if (frictionTmpBuf_UnionSelector == Int8(0)) {
                frictionTmpBuf_ = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (frictionTmpBuf_UnionSelector == Int8(1)) {
                frictionTmpBuf_ = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for frictionTmpBuf_ has to be chosen through deserialisation.")
            }
            frictionTmpBuf = match (frictionTmpBuf_ as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let frictionTmpResult: Option<Union_Number_String> = frictionTmpBuf
        let promptTextTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var promptTextTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(promptTextTmpBuf_runtimeType))) {
            let promptTextTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var promptTextTmpBuf_: ResourceStr 
            if (promptTextTmpBuf_UnionSelector == Int8(0)) {
                promptTextTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (promptTextTmpBuf_UnionSelector == Int8(1)) {
                promptTextTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for promptTextTmpBuf_ has to be chosen through deserialisation.")
            }
            promptTextTmpBuf = match (promptTextTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let promptTextTmpResult: Option<ResourceStr> = promptTextTmpBuf
        let builderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var builderTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(builderTmpBuf_runtimeType))) {
            let builderTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let builderTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let builderTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            builderTmpBuf = { => let builderTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
builderTmpBuf_BufArgsSerializer.writeInt32(builderTmpBuf_BufResource.resourceId);
builderTmpBuf_BufArgsSerializer.writePointer(builderTmpBuf_BufCall);
builderTmpBuf_BufArgsSerializer.writePointer(builderTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, builderTmpBuf_BufArgsSerializer.asBuffer(), builderTmpBuf_BufArgsSerializer.length());
builderTmpBuf_BufArgsSerializer.release();
return; }
        }
        let builderTmpResult: Option<CustomBuilder> = builderTmpBuf
        let refreshingContentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var refreshingContentTmpBuf: Option<ComponentContent> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(refreshingContentTmpBuf_runtimeType))) {
            refreshingContentTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let refreshingContentTmpResult: Option<ComponentContent> = refreshingContentTmpBuf
        var value: RefreshOptions = RefreshOptions(refreshingTmpResult, offsetTmpResult, frictionTmpResult, promptTextTmpResult, builderTmpResult, refreshingContentTmpResult)
        return value
    }
}
