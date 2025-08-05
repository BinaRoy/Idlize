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
public open class NumericTextTransitionInternal {
    public static func fromPtr(ptr: UInt64): NumericTextTransition {
        return NumericTextTransition(false, ptr)
    }
}
public open class NumericTextTransition <: MaterializedBase & ContentTransitionInterface {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop flipDirection: Option<FlipDirection>
    {
        get() {
            return this.getFlipDirection()
        }
        set(flipDirection) {
            let flipDirection_NonNull = match (flipDirection as FlipDirection) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setFlipDirection(flipDirection_NonNull)
        }
    }
    public mut open prop enableBlur: Option<Bool>
    {
        get() {
            return this.getEnableBlur()
        }
        set(enableBlur) {
            let enableBlur_NonNull = match (enableBlur as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setEnableBlur(enableBlur_NonNull)
        }
    }
    NumericTextTransition(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, NumericTextTransition.getFinalizer())
    }
    init () {
        NumericTextTransition(Option.None)
    }
    NumericTextTransition(options: Option<NumericTextTransitionOptions>) {
        super(false, NumericTextTransition.construct(options))
    }
    static func construct(options: Option<NumericTextTransitionOptions>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NumericTextTransitionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._NumericTextTransition_construct(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._NumericTextTransition_getFinalizer()
    }
    private func getFlipDirection(): Option<FlipDirection> {
        return this.getFlipDirection_serialize()
    }
    private func setFlipDirection(flipDirection: Option<FlipDirection>): Unit {
        let flipDirection_casted: Option<FlipDirection> = if (let Some(flipDirection) <- flipDirection) {flipDirection} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setFlipDirection_serialize(flipDirection_casted)
        return
    }
    private func getEnableBlur(): Option<Bool> {
        return this.getEnableBlur_serialize()
    }
    private func setEnableBlur(enableBlur: Option<Bool>): Unit {
        let enableBlur_casted: Option<Bool> = if (let Some(enableBlur) <- enableBlur) {enableBlur} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setEnableBlur_serialize(enableBlur_casted)
        return
    }
    private func getFlipDirection_serialize(): Option<FlipDirection> {
        let retval = ArkUIGeneratedNativeModule._NumericTextTransition_getFlipDirection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<FlipDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = FlipDirection(retvalDeserializer.readInt32())
        }
        let returnResult: Option<FlipDirection> = buffer
        return returnResult
    }
    private func setFlipDirection_serialize(flipDirection: Option<FlipDirection>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (flipDirection.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let flipDirectionTmpValue = flipDirection
            thisSerializer.writeInt32(flipDirectionTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NumericTextTransition_setFlipDirection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getEnableBlur_serialize(): Option<Bool> {
        let retval = ArkUIGeneratedNativeModule._NumericTextTransition_getEnableBlur(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = retvalDeserializer.readBoolean()
        }
        let returnResult: Option<Bool> = buffer
        return returnResult
    }
    private func setEnableBlur_serialize(enableBlur: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (enableBlur.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let enableBlurTmpValue = enableBlur
            thisSerializer.writeBoolean(enableBlurTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NumericTextTransition_setEnableBlur(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class NumericTextTransition_serializer {
    public static func write(buffer: SerializerBase, value: NumericTextTransition): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): NumericTextTransition {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return NumericTextTransitionInternal.fromPtr(ptr)
    }
}
