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
public interface SwipeActionItemInterfaces <:  {
    public mut open prop builder: Option<CustomBuilder>
    public mut open prop builderComponent: Option<ComponentContent>
    public mut open prop actionAreaDistance: Option<Length>
    public mut open prop onAction: Option<(() -> Unit)>
    public mut open prop onEnterActionArea: Option<(() -> Unit)>
    public mut open prop onExitActionArea: Option<(() -> Unit)>
    public mut open prop onStateChange: Option<((state: SwipeActionState) -> Unit)>
}
public open class SwipeActionItem <: SwipeActionItemInterfaces {
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
    private var builderComponent_container: Option<ComponentContent>
    public mut open prop builderComponent: Option<ComponentContent>
    {
        get() {
            return builderComponent_container
        }
        set(builderComponent) {
            builderComponent_container = builderComponent
        }
    }
    private var actionAreaDistance_container: Option<Length>
    public mut open prop actionAreaDistance: Option<Length>
    {
        get() {
            return actionAreaDistance_container
        }
        set(actionAreaDistance) {
            actionAreaDistance_container = actionAreaDistance
        }
    }
    private var onAction_container: Option<(() -> Unit)>
    public mut open prop onAction: Option<(() -> Unit)>
    {
        get() {
            return onAction_container
        }
        set(onAction) {
            onAction_container = onAction
        }
    }
    private var onEnterActionArea_container: Option<(() -> Unit)>
    public mut open prop onEnterActionArea: Option<(() -> Unit)>
    {
        get() {
            return onEnterActionArea_container
        }
        set(onEnterActionArea) {
            onEnterActionArea_container = onEnterActionArea
        }
    }
    private var onExitActionArea_container: Option<(() -> Unit)>
    public mut open prop onExitActionArea: Option<(() -> Unit)>
    {
        get() {
            return onExitActionArea_container
        }
        set(onExitActionArea) {
            onExitActionArea_container = onExitActionArea
        }
    }
    private var onStateChange_container: Option<((state: SwipeActionState) -> Unit)>
    public mut open prop onStateChange: Option<((state: SwipeActionState) -> Unit)>
    {
        get() {
            return onStateChange_container
        }
        set(onStateChange) {
            onStateChange_container = onStateChange
        }
    }
    SwipeActionItem(builder: Option<CustomBuilder>, builderComponent: Option<ComponentContent>, actionAreaDistance: Option<Length>, onAction: Option<(() -> Unit)>, onEnterActionArea: Option<(() -> Unit)>, onExitActionArea: Option<(() -> Unit)>, onStateChange: Option<((state: SwipeActionState) -> Unit)>) {
        this.builder_container = builder
        this.builderComponent_container = builderComponent
        this.actionAreaDistance_container = actionAreaDistance
        this.onAction_container = onAction
        this.onEnterActionArea_container = onEnterActionArea
        this.onExitActionArea_container = onExitActionArea
        this.onStateChange_container = onStateChange
    }
}
public open class SwipeActionItem_serializer {
    public static func write(buffer: SerializerBase, value: SwipeActionItem): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBuilder = value.builder
        if (valueHolderForBuilder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBuilderTmpValue = valueHolderForBuilder
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForBuilderTmpValue));
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBuilderComponent = value.builderComponent
        if (valueHolderForBuilderComponent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBuilderComponentTmpValue = valueHolderForBuilderComponent
            valueSerializer.writeCustomObject("Any", valueHolderForBuilderComponentTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForActionAreaDistance = value.actionAreaDistance
        if (valueHolderForActionAreaDistance.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForActionAreaDistanceTmpValue = valueHolderForActionAreaDistance
            if (valueHolderForActionAreaDistanceTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForActionAreaDistanceTmpValueForIdx0 = valueHolderForActionAreaDistanceTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForActionAreaDistanceTmpValueForIdx0);
            } else if (valueHolderForActionAreaDistanceTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForActionAreaDistanceTmpValueForIdx1 = valueHolderForActionAreaDistanceTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForActionAreaDistanceTmpValueForIdx1);
            } else if (valueHolderForActionAreaDistanceTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForActionAreaDistanceTmpValueForIdx2 = valueHolderForActionAreaDistanceTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForActionAreaDistanceTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnAction = value.onAction
        if (valueHolderForOnAction.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnActionTmpValue = valueHolderForOnAction
            valueSerializer.holdAndWriteCallback(valueHolderForOnActionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnEnterActionArea = value.onEnterActionArea
        if (valueHolderForOnEnterActionArea.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnEnterActionAreaTmpValue = valueHolderForOnEnterActionArea
            valueSerializer.holdAndWriteCallback(valueHolderForOnEnterActionAreaTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnExitActionArea = value.onExitActionArea
        if (valueHolderForOnExitActionArea.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnExitActionAreaTmpValue = valueHolderForOnExitActionArea
            valueSerializer.holdAndWriteCallback(valueHolderForOnExitActionAreaTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnStateChange = value.onStateChange
        if (valueHolderForOnStateChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnStateChangeTmpValue = valueHolderForOnStateChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnStateChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SwipeActionItem {
        var valueDeserializer: DeserializerBase = buffer
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
        let builderComponentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var builderComponentTmpBuf: Option<ComponentContent> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(builderComponentTmpBuf_runtimeType))) {
            builderComponentTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let builderComponentTmpResult: Option<ComponentContent> = builderComponentTmpBuf
        let actionAreaDistanceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var actionAreaDistanceTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(actionAreaDistanceTmpBuf_runtimeType))) {
            let actionAreaDistanceTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var actionAreaDistanceTmpBuf_: Length 
            if (actionAreaDistanceTmpBuf_UnionSelector == Int8(0)) {
                actionAreaDistanceTmpBuf_ = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (actionAreaDistanceTmpBuf_UnionSelector == Int8(1)) {
                actionAreaDistanceTmpBuf_ = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (actionAreaDistanceTmpBuf_UnionSelector == Int8(2)) {
                actionAreaDistanceTmpBuf_ = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for actionAreaDistanceTmpBuf_ has to be chosen through deserialisation.")
            }
            actionAreaDistanceTmpBuf = match (actionAreaDistanceTmpBuf_ as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let actionAreaDistanceTmpResult: Option<Length> = actionAreaDistanceTmpBuf
        let onActionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onActionTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onActionTmpBuf_runtimeType))) {
            let onActionTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onActionTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onActionTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onActionTmpBuf = { => let onActionTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onActionTmpBuf_BufArgsSerializer.writeInt32(onActionTmpBuf_BufResource.resourceId);
onActionTmpBuf_BufArgsSerializer.writePointer(onActionTmpBuf_BufCall);
onActionTmpBuf_BufArgsSerializer.writePointer(onActionTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onActionTmpBuf_BufArgsSerializer.asBuffer(), onActionTmpBuf_BufArgsSerializer.length());
onActionTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onActionTmpResult: Option<(() -> Unit)> = onActionTmpBuf
        let onEnterActionAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onEnterActionAreaTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onEnterActionAreaTmpBuf_runtimeType))) {
            let onEnterActionAreaTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onEnterActionAreaTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onEnterActionAreaTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onEnterActionAreaTmpBuf = { => let onEnterActionAreaTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onEnterActionAreaTmpBuf_BufArgsSerializer.writeInt32(onEnterActionAreaTmpBuf_BufResource.resourceId);
onEnterActionAreaTmpBuf_BufArgsSerializer.writePointer(onEnterActionAreaTmpBuf_BufCall);
onEnterActionAreaTmpBuf_BufArgsSerializer.writePointer(onEnterActionAreaTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onEnterActionAreaTmpBuf_BufArgsSerializer.asBuffer(), onEnterActionAreaTmpBuf_BufArgsSerializer.length());
onEnterActionAreaTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onEnterActionAreaTmpResult: Option<(() -> Unit)> = onEnterActionAreaTmpBuf
        let onExitActionAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onExitActionAreaTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onExitActionAreaTmpBuf_runtimeType))) {
            let onExitActionAreaTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onExitActionAreaTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onExitActionAreaTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onExitActionAreaTmpBuf = { => let onExitActionAreaTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onExitActionAreaTmpBuf_BufArgsSerializer.writeInt32(onExitActionAreaTmpBuf_BufResource.resourceId);
onExitActionAreaTmpBuf_BufArgsSerializer.writePointer(onExitActionAreaTmpBuf_BufCall);
onExitActionAreaTmpBuf_BufArgsSerializer.writePointer(onExitActionAreaTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onExitActionAreaTmpBuf_BufArgsSerializer.asBuffer(), onExitActionAreaTmpBuf_BufArgsSerializer.length());
onExitActionAreaTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onExitActionAreaTmpResult: Option<(() -> Unit)> = onExitActionAreaTmpBuf
        let onStateChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onStateChangeTmpBuf: Option<((state: SwipeActionState) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onStateChangeTmpBuf_runtimeType))) {
            let onStateChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onStateChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onStateChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onStateChangeTmpBuf = {state: SwipeActionState => let onStateChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onStateChangeTmpBuf_BufArgsSerializer.writeInt32(onStateChangeTmpBuf_BufResource.resourceId);
onStateChangeTmpBuf_BufArgsSerializer.writePointer(onStateChangeTmpBuf_BufCall);
onStateChangeTmpBuf_BufArgsSerializer.writePointer(onStateChangeTmpBuf_BufCallSync);
onStateChangeTmpBuf_BufArgsSerializer.writeInt32(state.value);
InteropNativeModule._CallCallback(-301561698, onStateChangeTmpBuf_BufArgsSerializer.asBuffer(), onStateChangeTmpBuf_BufArgsSerializer.length());
onStateChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onStateChangeTmpResult: Option<((state: SwipeActionState) -> Unit)> = onStateChangeTmpBuf
        var value: SwipeActionItem = SwipeActionItem(builderTmpResult, builderComponentTmpResult, actionAreaDistanceTmpResult, onActionTmpResult, onEnterActionAreaTmpResult, onExitActionAreaTmpResult, onStateChangeTmpResult)
        return value
    }
}
