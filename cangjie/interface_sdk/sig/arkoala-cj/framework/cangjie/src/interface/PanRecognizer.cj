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
public open class PanRecognizerInternal {
    public static func fromPtr(ptr: UInt64): PanRecognizer {
        return PanRecognizer(ptr)
    }
}
public open class PanRecognizer <: GestureRecognizer & MaterializedBase {
    PanRecognizer(peerPtr: UInt64) {
        super(peerPtr)
    }
    PanRecognizer() {
        super(PanRecognizer.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._PanRecognizer_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._PanRecognizer_getFinalizer()
    }
    public open func getPanGestureOptions(): PanGestureOptions {
        return this.getPanGestureOptions_serialize()
    }
    public open func getDirection(): PanDirection {
        return this.getDirection_serialize()
    }
    public open func getDistance(): Float64 {
        return this.getDistance_serialize()
    }
    public open func getDistanceMap(): HashMap<Int64, Float64> {
        return this.getDistanceMap_serialize()
    }
    private func getPanGestureOptions_serialize(): PanGestureOptions {
        let retval = ArkUIGeneratedNativeModule._PanRecognizer_getPanGestureOptions(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: PanGestureOptions = PanGestureOptionsInternal.fromPtr(retval)
        return obj
    }
    private func getDirection_serialize(): PanDirection {
        let retval = ArkUIGeneratedNativeModule._PanRecognizer_getDirection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return PanDirection(retval)
    }
    private func getDistance_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._PanRecognizer_getDistance(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getDistanceMap_serialize(): HashMap<Int64, Float64> {
        let retval = ArkUIGeneratedNativeModule._PanRecognizer_getDistanceMap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferSizeVar: Int32 = retvalDeserializer.readInt32()
        var buffer: HashMap<Int64, Float64> = HashMap<Int64, Float64>()
        // TODO: TS map resize;
        for (bufferIVar in 0..bufferSizeVar) {
            let bufferKeyVar: SourceTool = SourceTool(retvalDeserializer.readInt32())
            let bufferValueVar: Float64 = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            buffer.add(bufferKeyVar, bufferValueVar);
        }
        let returnResult: HashMap<Int64, Float64> = buffer
        return returnResult
    }
}
public open class PanRecognizer_serializer {
    public static func write(buffer: SerializerBase, value: PanRecognizer): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): PanRecognizer {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return PanRecognizerInternal.fromPtr(ptr)
    }
}
