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
public interface InputCounterOptionsInterfaces <:  {
    public mut open prop thresholdPercentage: Option<Float64>
    public mut open prop highlightBorder: Option<Bool>
}
public open class InputCounterOptions <: InputCounterOptionsInterfaces {
    private var thresholdPercentage_container: Option<Float64>
    public mut open prop thresholdPercentage: Option<Float64>
    {
        get() {
            return thresholdPercentage_container
        }
        set(thresholdPercentage) {
            thresholdPercentage_container = thresholdPercentage
        }
    }
    private var highlightBorder_container: Option<Bool>
    public mut open prop highlightBorder: Option<Bool>
    {
        get() {
            return highlightBorder_container
        }
        set(highlightBorder) {
            highlightBorder_container = highlightBorder
        }
    }
    InputCounterOptions(thresholdPercentage: Option<Float64>, highlightBorder: Option<Bool>) {
        this.thresholdPercentage_container = thresholdPercentage
        this.highlightBorder_container = highlightBorder
    }
}
public open class InputCounterOptions_serializer {
    public static func write(buffer: SerializerBase, value: InputCounterOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForThresholdPercentage = value.thresholdPercentage
        if (valueHolderForThresholdPercentage.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForThresholdPercentageTmpValue = valueHolderForThresholdPercentage
            valueSerializer.writeNumber(valueHolderForThresholdPercentageTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHighlightBorder = value.highlightBorder
        if (valueHolderForHighlightBorder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHighlightBorderTmpValue = valueHolderForHighlightBorder
            valueSerializer.writeBoolean(valueHolderForHighlightBorderTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): InputCounterOptions {
        var valueDeserializer: DeserializerBase = buffer
        let thresholdPercentageTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var thresholdPercentageTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(thresholdPercentageTmpBuf_runtimeType))) {
            thresholdPercentageTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let thresholdPercentageTmpResult: Option<Float64> = thresholdPercentageTmpBuf
        let highlightBorderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var highlightBorderTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(highlightBorderTmpBuf_runtimeType))) {
            highlightBorderTmpBuf = valueDeserializer.readBoolean()
        }
        let highlightBorderTmpResult: Option<Bool> = highlightBorderTmpBuf
        var value: InputCounterOptions = InputCounterOptions(thresholdPercentageTmpResult, highlightBorderTmpResult)
        return value
    }
}
