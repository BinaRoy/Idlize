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
public open class Path2DInternal {
    public static func fromPtr(ptr: UInt64): Path2D {
        return Path2D(false, false, ptr)
    }
}
public open class Path2D <: CanvasPath & MaterializedBase {
    Path2D(_0: Bool, _1: Bool, peerPtr: UInt64) {
        super(peerPtr)
    }
    Path2D() {
        super(false, false, Path2D.construct0())
    }
    Path2D(unit: LengthMetricsUnit) {
        super(false, false, Path2D.construct1(unit))
    }
    Path2D(path: Path2D) {
        super(false, false, Path2D.construct2(path))
    }
    Path2D(path: Path2D, unit: LengthMetricsUnit) {
        super(false, false, Path2D.construct3(path, unit))
    }
    Path2D(d: String) {
        super(false, false, Path2D.construct4(d))
    }
    Path2D(description: String, unit: LengthMetricsUnit) {
        super(false, false, Path2D.construct5(description, unit))
    }
    static func construct0(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Path2D_construct0()
        return retval
    }
    static func construct1(unit: LengthMetricsUnit): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", unit);
        let retval = ArkUIGeneratedNativeModule._Path2D_construct1(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct2(path: Path2D): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Path2D_construct2(MaterializedBase.toPeerPtr(path))
        return retval
    }
    static func construct3(path: Path2D, unit: LengthMetricsUnit): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", unit);
        let retval = ArkUIGeneratedNativeModule._Path2D_construct3(MaterializedBase.toPeerPtr(path), thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct4(d: String): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Path2D_construct4(d)
        return retval
    }
    static func construct5(description: String, unit: LengthMetricsUnit): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", unit);
        let retval = ArkUIGeneratedNativeModule._Path2D_construct5(description, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._Path2D_getFinalizer()
    }
    public open func addPath(path: Path2D, transform: Option<Matrix2D>): Unit {
        let path_casted: Path2D = path
        let transform_casted: Option<Matrix2D> = if (let Some(transform) <- transform) {transform} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.addPath_serialize(path_casted, transform_casted)
        return
    }
    private func addPath_serialize(path: Path2D, transform: Option<Matrix2D>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (transform.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let transformTmpValue = transform
            Matrix2D_serializer.write(thisSerializer, transformTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Path2D_addPath(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(path), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class Path2D_serializer {
    public static func write(buffer: SerializerBase, value: Path2D): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): Path2D {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return Path2DInternal.fromPtr(ptr)
    }
}
