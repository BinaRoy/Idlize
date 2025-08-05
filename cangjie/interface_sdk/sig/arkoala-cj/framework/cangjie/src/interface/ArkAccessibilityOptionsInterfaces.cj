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
public interface AccessibilityOptionsInterfaces <:  {
    public mut open prop accessibilityPreferred: Option<Bool>
}
public open class AccessibilityOptions <: AccessibilityOptionsInterfaces {
    private var accessibilityPreferred_container: Option<Bool>
    public mut open prop accessibilityPreferred: Option<Bool>
    {
        get() {
            return accessibilityPreferred_container
        }
        set(accessibilityPreferred) {
            accessibilityPreferred_container = accessibilityPreferred
        }
    }
    AccessibilityOptions(accessibilityPreferred: Option<Bool>) {
        this.accessibilityPreferred_container = accessibilityPreferred
    }
}
public open class AccessibilityOptions_serializer {
    public static func write(buffer: SerializerBase, value: AccessibilityOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAccessibilityPreferred = value.accessibilityPreferred
        if (valueHolderForAccessibilityPreferred.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAccessibilityPreferredTmpValue = valueHolderForAccessibilityPreferred
            valueSerializer.writeBoolean(valueHolderForAccessibilityPreferredTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): AccessibilityOptions {
        var valueDeserializer: DeserializerBase = buffer
        let accessibilityPreferredTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var accessibilityPreferredTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(accessibilityPreferredTmpBuf_runtimeType))) {
            accessibilityPreferredTmpBuf = valueDeserializer.readBoolean()
        }
        let accessibilityPreferredTmpResult: Option<Bool> = accessibilityPreferredTmpBuf
        var value: AccessibilityOptions = AccessibilityOptions(accessibilityPreferredTmpResult)
        return value
    }
}
