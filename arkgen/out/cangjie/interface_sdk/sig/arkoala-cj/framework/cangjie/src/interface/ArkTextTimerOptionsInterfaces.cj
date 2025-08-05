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
public interface TextTimerOptionsInterfaces <:  {
    public mut open prop isCountDown: Option<Bool>
    public mut open prop count: Option<Float64>
    public mut open prop controller: Option<TextTimerController>
}
public open class TextTimerOptions <: TextTimerOptionsInterfaces {
    private var isCountDown_container: Option<Bool>
    public mut open prop isCountDown: Option<Bool>
    {
        get() {
            return isCountDown_container
        }
        set(isCountDown) {
            isCountDown_container = isCountDown
        }
    }
    private var count_container: Option<Float64>
    public mut open prop count: Option<Float64>
    {
        get() {
            return count_container
        }
        set(count) {
            count_container = count
        }
    }
    private var controller_container: Option<TextTimerController>
    public mut open prop controller: Option<TextTimerController>
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    TextTimerOptions(isCountDown: Option<Bool>, count: Option<Float64>, controller: Option<TextTimerController>) {
        this.isCountDown_container = isCountDown
        this.count_container = count
        this.controller_container = controller
    }
}
public open class TextTimerOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextTimerOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsCountDown = value.isCountDown
        if (valueHolderForIsCountDown.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsCountDownTmpValue = valueHolderForIsCountDown
            valueSerializer.writeBoolean(valueHolderForIsCountDownTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCount = value.count
        if (valueHolderForCount.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCountTmpValue = valueHolderForCount
            valueSerializer.writeNumber(valueHolderForCountTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForController = value.controller
        if (valueHolderForController.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForControllerTmpValue = valueHolderForController
            TextTimerController_serializer.write(valueSerializer, valueHolderForControllerTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): TextTimerOptions {
        var valueDeserializer: DeserializerBase = buffer
        let isCountDownTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isCountDownTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isCountDownTmpBuf_runtimeType))) {
            isCountDownTmpBuf = valueDeserializer.readBoolean()
        }
        let isCountDownTmpResult: Option<Bool> = isCountDownTmpBuf
        let countTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var countTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(countTmpBuf_runtimeType))) {
            countTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let countTmpResult: Option<Float64> = countTmpBuf
        let controllerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var controllerTmpBuf: Option<TextTimerController> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(controllerTmpBuf_runtimeType))) {
            controllerTmpBuf = match (TextTimerController_serializer.read(valueDeserializer) as TextTimerController) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let controllerTmpResult: Option<TextTimerController> = controllerTmpBuf
        var value: TextTimerOptions = TextTimerOptions(isCountDownTmpResult, countTmpResult, controllerTmpResult)
        return value
    }
}
