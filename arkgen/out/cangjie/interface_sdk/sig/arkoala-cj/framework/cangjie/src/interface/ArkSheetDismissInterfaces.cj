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
public interface SheetDismissInterfaces <:  {
    public mut open prop dismiss: (() -> Unit)
}
public open class SheetDismiss <: SheetDismissInterfaces {
    private var dismiss_container: (() -> Unit)
    public mut open prop dismiss: (() -> Unit)
    {
        get() {
            return dismiss_container
        }
        set(dismiss) {
            dismiss_container = dismiss
        }
    }
    SheetDismiss(dismiss: (() -> Unit)) {
        this.dismiss_container = dismiss
    }
}
public open class SheetDismiss_serializer {
    public static func write(buffer: SerializerBase, value: SheetDismiss): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDismiss = value.dismiss
        valueSerializer.holdAndWriteCallback(valueHolderForDismiss);
    }
    public static func read(buffer: DeserializerBase): SheetDismiss {
        var valueDeserializer: DeserializerBase = buffer
        let dismissTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let dismissTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let dismissTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let dismissTmpResult: (() -> Unit) = { => let dismissTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
dismissTmpBufBufArgsSerializer.writeInt32(dismissTmpBufBufResource.resourceId);
dismissTmpBufBufArgsSerializer.writePointer(dismissTmpBufBufCall);
dismissTmpBufBufArgsSerializer.writePointer(dismissTmpBufBufCallSync);
InteropNativeModule._CallCallback(-1867723152, dismissTmpBufBufArgsSerializer.asBuffer(), dismissTmpBufBufArgsSerializer.length());
dismissTmpBufBufArgsSerializer.release();
return; }
        var value: SheetDismiss = SheetDismiss(dismissTmpResult)
        return value
    }
}
