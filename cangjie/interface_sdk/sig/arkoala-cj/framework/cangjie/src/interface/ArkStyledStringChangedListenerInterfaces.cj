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
public interface StyledStringChangedListenerInterfaces <:  {
    public mut open prop onWillChange: Option<((parameter: StyledStringChangeValue) -> Bool)>
    public mut open prop onDidChange: Option<OnDidChangeCallback>
}
public open class StyledStringChangedListener <: StyledStringChangedListenerInterfaces {
    private var onWillChange_container: Option<((parameter: StyledStringChangeValue) -> Bool)>
    public mut open prop onWillChange: Option<((parameter: StyledStringChangeValue) -> Bool)>
    {
        get() {
            return onWillChange_container
        }
        set(onWillChange) {
            onWillChange_container = onWillChange
        }
    }
    private var onDidChange_container: Option<OnDidChangeCallback>
    public mut open prop onDidChange: Option<OnDidChangeCallback>
    {
        get() {
            return onDidChange_container
        }
        set(onDidChange) {
            onDidChange_container = onDidChange
        }
    }
    StyledStringChangedListener(onWillChange: Option<((parameter: StyledStringChangeValue) -> Bool)>, onDidChange: Option<OnDidChangeCallback>) {
        this.onWillChange_container = onWillChange
        this.onDidChange_container = onDidChange
    }
}
public open class StyledStringChangedListener_serializer {
    public static func write(buffer: SerializerBase, value: StyledStringChangedListener): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnWillChange = value.onWillChange
        if (valueHolderForOnWillChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillChangeTmpValue = valueHolderForOnWillChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDidChange = value.onDidChange
        if (valueHolderForOnDidChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDidChangeTmpValue = valueHolderForOnDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): StyledStringChangedListener {
        var valueDeserializer: DeserializerBase = buffer
        let onWillChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillChangeTmpBuf: Option<((parameter: StyledStringChangeValue) -> Bool)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillChangeTmpBuf_runtimeType))) {
            let onWillChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillChangeTmpBuf = {parameter: StyledStringChangeValue => let onWillChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillChangeTmpBuf_BufArgsSerializer.writeInt32(onWillChangeTmpBuf_BufResource.resourceId);
onWillChangeTmpBuf_BufArgsSerializer.writePointer(onWillChangeTmpBuf_BufCall);
onWillChangeTmpBuf_BufArgsSerializer.writePointer(onWillChangeTmpBuf_BufCallSync);
StyledStringChangeValue_serializer.write(onWillChangeTmpBuf_BufArgsSerializer, parameter);
let onWillChangeTmpBuf_BufContinuationValue = BoolHolder(None<Bool>);
let onWillChangeTmpBuf_BufContinuationCallback: ((parameter: Bool) -> Unit) = {value: Bool => onWillChangeTmpBuf_BufContinuationValue.value = value; }
onWillChangeTmpBuf_BufArgsSerializer.holdAndWriteCallback(onWillChangeTmpBuf_BufContinuationCallback);
InteropNativeModule._CallCallback(2116745428, onWillChangeTmpBuf_BufArgsSerializer.asBuffer(), onWillChangeTmpBuf_BufArgsSerializer.length());
onWillChangeTmpBuf_BufArgsSerializer.release();
return match (onWillChangeTmpBuf_BufContinuationValue.value as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} }
        }
        let onWillChangeTmpResult: Option<((parameter: StyledStringChangeValue) -> Bool)> = onWillChangeTmpBuf
        let onDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDidChangeTmpBuf: Option<OnDidChangeCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDidChangeTmpBuf_runtimeType))) {
            let onDidChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDidChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDidChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDidChangeTmpBuf = {rangeBefore: TextRange, rangeAfter: TextRange => let onDidChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDidChangeTmpBuf_BufArgsSerializer.writeInt32(onDidChangeTmpBuf_BufResource.resourceId);
onDidChangeTmpBuf_BufArgsSerializer.writePointer(onDidChangeTmpBuf_BufCall);
onDidChangeTmpBuf_BufArgsSerializer.writePointer(onDidChangeTmpBuf_BufCallSync);
TextRange_serializer.write(onDidChangeTmpBuf_BufArgsSerializer, rangeBefore);
TextRange_serializer.write(onDidChangeTmpBuf_BufArgsSerializer, rangeAfter);
InteropNativeModule._CallCallback(1648184341, onDidChangeTmpBuf_BufArgsSerializer.asBuffer(), onDidChangeTmpBuf_BufArgsSerializer.length());
onDidChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDidChangeTmpResult: Option<OnDidChangeCallback> = onDidChangeTmpBuf
        var value: StyledStringChangedListener = StyledStringChangedListener(onWillChangeTmpResult, onDidChangeTmpResult)
        return value
    }
}
