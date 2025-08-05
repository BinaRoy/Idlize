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
public interface NumericTextTransitionOptionsInterfaces <:  {
    public mut open prop flipDirection: Option<FlipDirection>
    public mut open prop enableBlur: Option<Bool>
}
public open class NumericTextTransitionOptions <: NumericTextTransitionOptionsInterfaces {
    private var flipDirection_container: Option<FlipDirection>
    public mut open prop flipDirection: Option<FlipDirection>
    {
        get() {
            return flipDirection_container
        }
        set(flipDirection) {
            flipDirection_container = flipDirection
        }
    }
    private var enableBlur_container: Option<Bool>
    public mut open prop enableBlur: Option<Bool>
    {
        get() {
            return enableBlur_container
        }
        set(enableBlur) {
            enableBlur_container = enableBlur
        }
    }
    NumericTextTransitionOptions(flipDirection: Option<FlipDirection>, enableBlur: Option<Bool>) {
        this.flipDirection_container = flipDirection
        this.enableBlur_container = enableBlur
    }
}
public open class NumericTextTransitionOptions_serializer {
    public static func write(buffer: SerializerBase, value: NumericTextTransitionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFlipDirection = value.flipDirection
        if (valueHolderForFlipDirection.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFlipDirectionTmpValue = valueHolderForFlipDirection
            valueSerializer.writeInt32(valueHolderForFlipDirectionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableBlur = value.enableBlur
        if (valueHolderForEnableBlur.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableBlurTmpValue = valueHolderForEnableBlur
            valueSerializer.writeBoolean(valueHolderForEnableBlurTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NumericTextTransitionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let flipDirectionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var flipDirectionTmpBuf: Option<FlipDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(flipDirectionTmpBuf_runtimeType))) {
            flipDirectionTmpBuf = FlipDirection(valueDeserializer.readInt32())
        }
        let flipDirectionTmpResult: Option<FlipDirection> = flipDirectionTmpBuf
        let enableBlurTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableBlurTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableBlurTmpBuf_runtimeType))) {
            enableBlurTmpBuf = valueDeserializer.readBoolean()
        }
        let enableBlurTmpResult: Option<Bool> = enableBlurTmpBuf
        var value: NumericTextTransitionOptions = NumericTextTransitionOptions(flipDirectionTmpResult, enableBlurTmpResult)
        return value
    }
}
