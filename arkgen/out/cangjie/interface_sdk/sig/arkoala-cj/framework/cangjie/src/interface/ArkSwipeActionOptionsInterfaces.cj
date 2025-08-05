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
public interface SwipeActionOptionsInterfaces <:  {
    public mut open prop start: Option<Union_CustomBuilder_SwipeActionItem>
    public mut open prop end: Option<Union_CustomBuilder_SwipeActionItem>
    public mut open prop edgeEffect: Option<SwipeEdgeEffect>
    public mut open prop onOffsetChange: Option<((parameter: Float64) -> Unit)>
}
public open class SwipeActionOptions <: SwipeActionOptionsInterfaces {
    private var start_container: Option<Union_CustomBuilder_SwipeActionItem>
    public mut open prop start: Option<Union_CustomBuilder_SwipeActionItem>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Option<Union_CustomBuilder_SwipeActionItem>
    public mut open prop end: Option<Union_CustomBuilder_SwipeActionItem>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var edgeEffect_container: Option<SwipeEdgeEffect>
    public mut open prop edgeEffect: Option<SwipeEdgeEffect>
    {
        get() {
            return edgeEffect_container
        }
        set(edgeEffect) {
            edgeEffect_container = edgeEffect
        }
    }
    private var onOffsetChange_container: Option<((parameter: Float64) -> Unit)>
    public mut open prop onOffsetChange: Option<((parameter: Float64) -> Unit)>
    {
        get() {
            return onOffsetChange_container
        }
        set(onOffsetChange) {
            onOffsetChange_container = onOffsetChange
        }
    }
    SwipeActionOptions(start: Option<Union_CustomBuilder_SwipeActionItem>, end: Option<Union_CustomBuilder_SwipeActionItem>, edgeEffect: Option<SwipeEdgeEffect>, onOffsetChange: Option<((parameter: Float64) -> Unit)>) {
        this.start_container = start
        this.end_container = end
        this.edgeEffect_container = edgeEffect
        this.onOffsetChange_container = onOffsetChange
    }
}
public open class SwipeActionOptions_serializer {
    public static func write(buffer: SerializerBase, value: SwipeActionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        if (valueHolderForStart.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            if (valueHolderForStartTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartTmpValueForIdx0 = valueHolderForStartTmpValue.getValue0()
                valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForStartTmpValueForIdx0));
            } else if (valueHolderForStartTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartTmpValueForIdx1 = valueHolderForStartTmpValue.getValue1()
                SwipeActionItem_serializer.write(valueSerializer, valueHolderForStartTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (valueHolderForEnd.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            if (valueHolderForEndTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForEndTmpValueForIdx0 = valueHolderForEndTmpValue.getValue0()
                valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForEndTmpValueForIdx0));
            } else if (valueHolderForEndTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForEndTmpValueForIdx1 = valueHolderForEndTmpValue.getValue1()
                SwipeActionItem_serializer.write(valueSerializer, valueHolderForEndTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEdgeEffect = value.edgeEffect
        if (valueHolderForEdgeEffect.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEdgeEffectTmpValue = valueHolderForEdgeEffect
            valueSerializer.writeInt32(valueHolderForEdgeEffectTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnOffsetChange = value.onOffsetChange
        if (valueHolderForOnOffsetChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnOffsetChangeTmpValue = valueHolderForOnOffsetChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnOffsetChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SwipeActionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<Union_CustomBuilder_SwipeActionItem> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            let startTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var startTmpBuf_: Union_CustomBuilder_SwipeActionItem 
            if (startTmpBuf_UnionSelector == Int8(0)) {
                let startTmpBuf_BufUBufResource: CallbackResource = valueDeserializer.readCallbackResource()
                let startTmpBuf_BufUBufCall: UInt64 = valueDeserializer.readPointer()
                let startTmpBuf_BufUBufCallSync: UInt64 = valueDeserializer.readPointer()
                startTmpBuf_ = Union_CustomBuilder_SwipeActionItem({ => let startTmpBuf_BufUBufArgsSerializer: SerializerBase = SerializerBase.hold();
startTmpBuf_BufUBufArgsSerializer.writeInt32(startTmpBuf_BufUBufResource.resourceId);
startTmpBuf_BufUBufArgsSerializer.writePointer(startTmpBuf_BufUBufCall);
startTmpBuf_BufUBufArgsSerializer.writePointer(startTmpBuf_BufUBufCallSync);
InteropNativeModule._CallCallback(737226752, startTmpBuf_BufUBufArgsSerializer.asBuffer(), startTmpBuf_BufUBufArgsSerializer.length());
startTmpBuf_BufUBufArgsSerializer.release();
return; })
            } else if (startTmpBuf_UnionSelector == Int8(1)) {
                startTmpBuf_ = Union_CustomBuilder_SwipeActionItem(SwipeActionItem_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for startTmpBuf_ has to be chosen through deserialisation.")
            }
            startTmpBuf = match (startTmpBuf_ as Union_CustomBuilder_SwipeActionItem) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startTmpResult: Option<Union_CustomBuilder_SwipeActionItem> = startTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<Union_CustomBuilder_SwipeActionItem> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            let endTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var endTmpBuf_: Union_CustomBuilder_SwipeActionItem 
            if (endTmpBuf_UnionSelector == Int8(0)) {
                let endTmpBuf_BufUBufResource: CallbackResource = valueDeserializer.readCallbackResource()
                let endTmpBuf_BufUBufCall: UInt64 = valueDeserializer.readPointer()
                let endTmpBuf_BufUBufCallSync: UInt64 = valueDeserializer.readPointer()
                endTmpBuf_ = Union_CustomBuilder_SwipeActionItem({ => let endTmpBuf_BufUBufArgsSerializer: SerializerBase = SerializerBase.hold();
endTmpBuf_BufUBufArgsSerializer.writeInt32(endTmpBuf_BufUBufResource.resourceId);
endTmpBuf_BufUBufArgsSerializer.writePointer(endTmpBuf_BufUBufCall);
endTmpBuf_BufUBufArgsSerializer.writePointer(endTmpBuf_BufUBufCallSync);
InteropNativeModule._CallCallback(737226752, endTmpBuf_BufUBufArgsSerializer.asBuffer(), endTmpBuf_BufUBufArgsSerializer.length());
endTmpBuf_BufUBufArgsSerializer.release();
return; })
            } else if (endTmpBuf_UnionSelector == Int8(1)) {
                endTmpBuf_ = Union_CustomBuilder_SwipeActionItem(SwipeActionItem_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for endTmpBuf_ has to be chosen through deserialisation.")
            }
            endTmpBuf = match (endTmpBuf_ as Union_CustomBuilder_SwipeActionItem) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endTmpResult: Option<Union_CustomBuilder_SwipeActionItem> = endTmpBuf
        let edgeEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var edgeEffectTmpBuf: Option<SwipeEdgeEffect> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(edgeEffectTmpBuf_runtimeType))) {
            edgeEffectTmpBuf = SwipeEdgeEffect(valueDeserializer.readInt32())
        }
        let edgeEffectTmpResult: Option<SwipeEdgeEffect> = edgeEffectTmpBuf
        let onOffsetChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onOffsetChangeTmpBuf: Option<((parameter: Float64) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onOffsetChangeTmpBuf_runtimeType))) {
            let onOffsetChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onOffsetChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onOffsetChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onOffsetChangeTmpBuf = {parameter: Float64 => let onOffsetChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onOffsetChangeTmpBuf_BufArgsSerializer.writeInt32(onOffsetChangeTmpBuf_BufResource.resourceId);
onOffsetChangeTmpBuf_BufArgsSerializer.writePointer(onOffsetChangeTmpBuf_BufCall);
onOffsetChangeTmpBuf_BufArgsSerializer.writePointer(onOffsetChangeTmpBuf_BufCallSync);
onOffsetChangeTmpBuf_BufArgsSerializer.writeNumber(parameter);
InteropNativeModule._CallCallback(36519084, onOffsetChangeTmpBuf_BufArgsSerializer.asBuffer(), onOffsetChangeTmpBuf_BufArgsSerializer.length());
onOffsetChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onOffsetChangeTmpResult: Option<((parameter: Float64) -> Unit)> = onOffsetChangeTmpBuf
        var value: SwipeActionOptions = SwipeActionOptions(startTmpResult, endTmpResult, edgeEffectTmpResult, onOffsetChangeTmpResult)
        return value
    }
}
