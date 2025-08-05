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
public interface FingerInfoInterfaces <:  {
    public mut open prop id: Float64
    public mut open prop globalDisplayX: Option<Float64>
    public mut open prop globalDisplayY: Option<Float64>
    public mut open prop globalX: Float64
    public mut open prop globalY: Float64
    public mut open prop localX: Float64
    public mut open prop localY: Float64
    public mut open prop displayX: Float64
    public mut open prop displayY: Float64
    public mut open prop hand: Option<InteractionHand>
}
public open class FingerInfo <: FingerInfoInterfaces {
    private var id_container: Float64
    public mut open prop id: Float64
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var globalDisplayX_container: Option<Float64>
    public mut open prop globalDisplayX: Option<Float64>
    {
        get() {
            return globalDisplayX_container
        }
        set(globalDisplayX) {
            globalDisplayX_container = globalDisplayX
        }
    }
    private var globalDisplayY_container: Option<Float64>
    public mut open prop globalDisplayY: Option<Float64>
    {
        get() {
            return globalDisplayY_container
        }
        set(globalDisplayY) {
            globalDisplayY_container = globalDisplayY
        }
    }
    private var globalX_container: Float64
    public mut open prop globalX: Float64
    {
        get() {
            return globalX_container
        }
        set(globalX) {
            globalX_container = globalX
        }
    }
    private var globalY_container: Float64
    public mut open prop globalY: Float64
    {
        get() {
            return globalY_container
        }
        set(globalY) {
            globalY_container = globalY
        }
    }
    private var localX_container: Float64
    public mut open prop localX: Float64
    {
        get() {
            return localX_container
        }
        set(localX) {
            localX_container = localX
        }
    }
    private var localY_container: Float64
    public mut open prop localY: Float64
    {
        get() {
            return localY_container
        }
        set(localY) {
            localY_container = localY
        }
    }
    private var displayX_container: Float64
    public mut open prop displayX: Float64
    {
        get() {
            return displayX_container
        }
        set(displayX) {
            displayX_container = displayX
        }
    }
    private var displayY_container: Float64
    public mut open prop displayY: Float64
    {
        get() {
            return displayY_container
        }
        set(displayY) {
            displayY_container = displayY
        }
    }
    private var hand_container: Option<InteractionHand>
    public mut open prop hand: Option<InteractionHand>
    {
        get() {
            return hand_container
        }
        set(hand) {
            hand_container = hand
        }
    }
    FingerInfo(id: Float64, globalDisplayX: Option<Float64>, globalDisplayY: Option<Float64>, globalX: Float64, globalY: Float64, localX: Float64, localY: Float64, displayX: Float64, displayY: Float64, hand: Option<InteractionHand>) {
        this.id_container = id
        this.globalDisplayX_container = globalDisplayX
        this.globalDisplayY_container = globalDisplayY
        this.globalX_container = globalX
        this.globalY_container = globalY
        this.localX_container = localX
        this.localY_container = localY
        this.displayX_container = displayX
        this.displayY_container = displayY
        this.hand_container = hand
    }
}
public open class FingerInfo_serializer {
    public static func write(buffer: SerializerBase, value: FingerInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForId = value.id
        valueSerializer.writeNumber(valueHolderForId);
        let valueHolderForGlobalDisplayX = value.globalDisplayX
        if (valueHolderForGlobalDisplayX.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGlobalDisplayXTmpValue = valueHolderForGlobalDisplayX
            valueSerializer.writeNumber(valueHolderForGlobalDisplayXTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForGlobalDisplayY = value.globalDisplayY
        if (valueHolderForGlobalDisplayY.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGlobalDisplayYTmpValue = valueHolderForGlobalDisplayY
            valueSerializer.writeNumber(valueHolderForGlobalDisplayYTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForGlobalX = value.globalX
        valueSerializer.writeNumber(valueHolderForGlobalX);
        let valueHolderForGlobalY = value.globalY
        valueSerializer.writeNumber(valueHolderForGlobalY);
        let valueHolderForLocalX = value.localX
        valueSerializer.writeNumber(valueHolderForLocalX);
        let valueHolderForLocalY = value.localY
        valueSerializer.writeNumber(valueHolderForLocalY);
        let valueHolderForDisplayX = value.displayX
        valueSerializer.writeNumber(valueHolderForDisplayX);
        let valueHolderForDisplayY = value.displayY
        valueSerializer.writeNumber(valueHolderForDisplayY);
        let valueHolderForHand = value.hand
        if (valueHolderForHand.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHandTmpValue = valueHolderForHand
            valueSerializer.writeInt32(valueHolderForHandTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FingerInfo {
        var valueDeserializer: DeserializerBase = buffer
        let idTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let globalDisplayXTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var globalDisplayXTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(globalDisplayXTmpBuf_runtimeType))) {
            globalDisplayXTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let globalDisplayXTmpResult: Option<Float64> = globalDisplayXTmpBuf
        let globalDisplayYTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var globalDisplayYTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(globalDisplayYTmpBuf_runtimeType))) {
            globalDisplayYTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let globalDisplayYTmpResult: Option<Float64> = globalDisplayYTmpBuf
        let globalXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let globalYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let localXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let localYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let displayXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let displayYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let handTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var handTmpBuf: Option<InteractionHand> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(handTmpBuf_runtimeType))) {
            handTmpBuf = InteractionHand(valueDeserializer.readInt32())
        }
        let handTmpResult: Option<InteractionHand> = handTmpBuf
        var value: FingerInfo = FingerInfo(idTmpResult, globalDisplayXTmpResult, globalDisplayYTmpResult, globalXTmpResult, globalYTmpResult, localXTmpResult, localYTmpResult, displayXTmpResult, displayYTmpResult, handTmpResult)
        return value
    }
}
