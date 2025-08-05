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
public interface DismissPopupActionInterfaces <:  {
    public mut open prop dismiss: (() -> Unit)
    public mut open prop reason: DismissReason
}
public open class DismissPopupAction <: DismissPopupActionInterfaces {
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
    private var reason_container: DismissReason
    public mut open prop reason: DismissReason
    {
        get() {
            return reason_container
        }
        set(reason) {
            reason_container = reason
        }
    }
    DismissPopupAction(dismiss: (() -> Unit), reason: DismissReason) {
        this.dismiss_container = dismiss
        this.reason_container = reason
    }
}
public open class DismissPopupAction_serializer {
    public static func write(buffer: SerializerBase, value: DismissPopupAction): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDismiss = value.dismiss
        valueSerializer.holdAndWriteCallback(valueHolderForDismiss);
        let valueHolderForReason = value.reason
        valueSerializer.writeInt32(valueHolderForReason.value);
    }
    public static func read(buffer: DeserializerBase): DismissPopupAction {
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
        let reasonTmpResult: DismissReason = DismissReason(valueDeserializer.readInt32())
        var value: DismissPopupAction = DismissPopupAction(dismissTmpResult, reasonTmpResult)
        return value
    }
}
