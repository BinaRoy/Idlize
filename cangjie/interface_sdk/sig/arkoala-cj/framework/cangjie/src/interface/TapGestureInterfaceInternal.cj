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
public interface TapGestureInterface {
    public open func onAction(event: ((event: GestureEvent) -> Unit)): TapGestureInterface
}
public open class TapGestureInterfaceInternal <: MaterializedBase & GestureInterfaceInterface<TapGestureInterface> & TapGestureInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    TapGestureInterfaceInternal(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TapGestureInterfaceInternal.getFinalizer())
    }
    init () {
        TapGestureInterfaceInternal(Option.None)
    }
    TapGestureInterfaceInternal(value: Option<TapGestureParameters>) {
        super(false, TapGestureInterfaceInternal.construct(value))
    }
    static func construct(value: Option<TapGestureParameters>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            TapGestureParameters_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TapGestureInterface_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TapGestureInterface_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): TapGestureInterfaceInternal {
        return TapGestureInterfaceInternal(false, ptr)
    }
    public open func onAction(event: ((event: GestureEvent) -> Unit)): TapGestureInterface {
        let event_casted: ((event: GestureEvent) -> Unit) = event
        return this.onAction_serialize(event_casted)
    }
    private func onAction_serialize(event: ((event: GestureEvent) -> Unit)): TapGestureInterface {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        let retval = ArkUIGeneratedNativeModule._TapGestureInterface_onAction(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: TapGestureInterface = TapGestureInterfaceInternal.fromPtr(retval)
        return obj
    }
}
public open class TapGestureInterface_serializer {
    public static func write(buffer: SerializerBase, value: TapGestureInterface): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TapGestureInterface {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TapGestureInterfaceInternal.fromPtr(ptr)
    }
}
