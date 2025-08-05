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
public interface PreviewMenuOptionsInterfaces <:  {
    public mut open prop hapticFeedbackMode: Option<HapticFeedbackMode>
}
public open class PreviewMenuOptions <: PreviewMenuOptionsInterfaces {
    private var hapticFeedbackMode_container: Option<HapticFeedbackMode>
    public mut open prop hapticFeedbackMode: Option<HapticFeedbackMode>
    {
        get() {
            return hapticFeedbackMode_container
        }
        set(hapticFeedbackMode) {
            hapticFeedbackMode_container = hapticFeedbackMode
        }
    }
    PreviewMenuOptions(hapticFeedbackMode: Option<HapticFeedbackMode>) {
        this.hapticFeedbackMode_container = hapticFeedbackMode
    }
}
public open class PreviewMenuOptions_serializer {
    public static func write(buffer: SerializerBase, value: PreviewMenuOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHapticFeedbackMode = value.hapticFeedbackMode
        if (valueHolderForHapticFeedbackMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHapticFeedbackModeTmpValue = valueHolderForHapticFeedbackMode
            valueSerializer.writeInt32(valueHolderForHapticFeedbackModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PreviewMenuOptions {
        var valueDeserializer: DeserializerBase = buffer
        let hapticFeedbackModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hapticFeedbackModeTmpBuf: Option<HapticFeedbackMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hapticFeedbackModeTmpBuf_runtimeType))) {
            hapticFeedbackModeTmpBuf = HapticFeedbackMode(valueDeserializer.readInt32())
        }
        let hapticFeedbackModeTmpResult: Option<HapticFeedbackMode> = hapticFeedbackModeTmpBuf
        var value: PreviewMenuOptions = PreviewMenuOptions(hapticFeedbackModeTmpResult)
        return value
    }
}
