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
public interface WebKeyboardOptionsInterfaces <:  {
    public mut open prop useSystemKeyboard: Bool
    public mut open prop enterKeyType: Option<Int32>
    public mut open prop customKeyboard: Option<CustomBuilder>
}
public open class WebKeyboardOptions <: WebKeyboardOptionsInterfaces {
    private var useSystemKeyboard_container: Bool
    public mut open prop useSystemKeyboard: Bool
    {
        get() {
            return useSystemKeyboard_container
        }
        set(useSystemKeyboard) {
            useSystemKeyboard_container = useSystemKeyboard
        }
    }
    private var enterKeyType_container: Option<Int32>
    public mut open prop enterKeyType: Option<Int32>
    {
        get() {
            return enterKeyType_container
        }
        set(enterKeyType) {
            enterKeyType_container = enterKeyType
        }
    }
    private var customKeyboard_container: Option<CustomBuilder>
    public mut open prop customKeyboard: Option<CustomBuilder>
    {
        get() {
            return customKeyboard_container
        }
        set(customKeyboard) {
            customKeyboard_container = customKeyboard
        }
    }
    WebKeyboardOptions(useSystemKeyboard: Bool, enterKeyType: Option<Int32>, customKeyboard: Option<CustomBuilder>) {
        this.useSystemKeyboard_container = useSystemKeyboard
        this.enterKeyType_container = enterKeyType
        this.customKeyboard_container = customKeyboard
    }
}
public open class WebKeyboardOptions_serializer {
    public static func write(buffer: SerializerBase, value: WebKeyboardOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForUseSystemKeyboard = value.useSystemKeyboard
        valueSerializer.writeBoolean(valueHolderForUseSystemKeyboard);
        let valueHolderForEnterKeyType = value.enterKeyType
        if (valueHolderForEnterKeyType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnterKeyTypeTmpValue = valueHolderForEnterKeyType
            valueSerializer.writeInt32(valueHolderForEnterKeyTypeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCustomKeyboard = value.customKeyboard
        if (valueHolderForCustomKeyboard.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCustomKeyboardTmpValue = valueHolderForCustomKeyboard
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForCustomKeyboardTmpValue));
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): WebKeyboardOptions {
        var valueDeserializer: DeserializerBase = buffer
        let useSystemKeyboardTmpResult: Bool = valueDeserializer.readBoolean()
        let enterKeyTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enterKeyTypeTmpBuf: Option<Int32> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enterKeyTypeTmpBuf_runtimeType))) {
            enterKeyTypeTmpBuf = valueDeserializer.readInt32()
        }
        let enterKeyTypeTmpResult: Option<Int32> = enterKeyTypeTmpBuf
        let customKeyboardTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var customKeyboardTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(customKeyboardTmpBuf_runtimeType))) {
            let customKeyboardTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let customKeyboardTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let customKeyboardTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            customKeyboardTmpBuf = { => let customKeyboardTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
customKeyboardTmpBuf_BufArgsSerializer.writeInt32(customKeyboardTmpBuf_BufResource.resourceId);
customKeyboardTmpBuf_BufArgsSerializer.writePointer(customKeyboardTmpBuf_BufCall);
customKeyboardTmpBuf_BufArgsSerializer.writePointer(customKeyboardTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, customKeyboardTmpBuf_BufArgsSerializer.asBuffer(), customKeyboardTmpBuf_BufArgsSerializer.length());
customKeyboardTmpBuf_BufArgsSerializer.release();
return; }
        }
        let customKeyboardTmpResult: Option<CustomBuilder> = customKeyboardTmpBuf
        var value: WebKeyboardOptions = WebKeyboardOptions(useSystemKeyboardTmpResult, enterKeyTypeTmpResult, customKeyboardTmpResult)
        return value
    }
}
