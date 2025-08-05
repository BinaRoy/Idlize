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
public interface TextClockOptionsInterfaces <:  {
    public mut open prop timeZoneOffset: Option<Float64>
    public mut open prop controller: Option<TextClockController>
}
public open class TextClockOptions <: TextClockOptionsInterfaces {
    private var timeZoneOffset_container: Option<Float64>
    public mut open prop timeZoneOffset: Option<Float64>
    {
        get() {
            return timeZoneOffset_container
        }
        set(timeZoneOffset) {
            timeZoneOffset_container = timeZoneOffset
        }
    }
    private var controller_container: Option<TextClockController>
    public mut open prop controller: Option<TextClockController>
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    TextClockOptions(timeZoneOffset: Option<Float64>, controller: Option<TextClockController>) {
        this.timeZoneOffset_container = timeZoneOffset
        this.controller_container = controller
    }
}
public open class TextClockOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextClockOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTimeZoneOffset = value.timeZoneOffset
        if (valueHolderForTimeZoneOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTimeZoneOffsetTmpValue = valueHolderForTimeZoneOffset
            valueSerializer.writeNumber(valueHolderForTimeZoneOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForController = value.controller
        if (valueHolderForController.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForControllerTmpValue = valueHolderForController
            TextClockController_serializer.write(valueSerializer, valueHolderForControllerTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextClockOptions {
        var valueDeserializer: DeserializerBase = buffer
        let timeZoneOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var timeZoneOffsetTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(timeZoneOffsetTmpBuf_runtimeType))) {
            timeZoneOffsetTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let timeZoneOffsetTmpResult: Option<Float64> = timeZoneOffsetTmpBuf
        let controllerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var controllerTmpBuf: Option<TextClockController> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(controllerTmpBuf_runtimeType))) {
            controllerTmpBuf = match (TextClockController_serializer.read(valueDeserializer) as TextClockController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let controllerTmpResult: Option<TextClockController> = controllerTmpBuf
        var value: TextClockOptions = TextClockOptions(timeZoneOffsetTmpResult, controllerTmpResult)
        return value
    }
}
