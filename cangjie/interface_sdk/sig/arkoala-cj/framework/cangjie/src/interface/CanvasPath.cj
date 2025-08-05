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
public open class CanvasPathInternal {
    public static func fromPtr(ptr: UInt64): CanvasPath {
        return CanvasPath(ptr)
    }
}
public open class CanvasPath <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    CanvasPath(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, CanvasPath.getFinalizer())
    }
    CanvasPath() {
        super(CanvasPath.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._CanvasPath_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._CanvasPath_getFinalizer()
    }
    public open func arc(x: Float64, y: Float64, radius: Float64, startAngle: Float64, endAngle: Float64, counterclockwise: Option<Bool>): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let radius_casted: Float64 = radius
        let startAngle_casted: Float64 = startAngle
        let endAngle_casted: Float64 = endAngle
        let counterclockwise_casted: Option<Bool> = if (let Some(counterclockwise) <- counterclockwise) {counterclockwise} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.arc_serialize(x_casted, y_casted, radius_casted, startAngle_casted, endAngle_casted, counterclockwise_casted)
        return
    }
    public open func arcTo(x1: Float64, y1: Float64, x2: Float64, y2: Float64, radius: Float64): Unit {
        let x1_casted: Float64 = x1
        let y1_casted: Float64 = y1
        let x2_casted: Float64 = x2
        let y2_casted: Float64 = y2
        let radius_casted: Float64 = radius
        let thisPeer = this
        thisPeer.arcTo_serialize(x1_casted, y1_casted, x2_casted, y2_casted, radius_casted)
        return
    }
    public open func bezierCurveTo(cp1x: Float64, cp1y: Float64, cp2x: Float64, cp2y: Float64, x: Float64, y: Float64): Unit {
        let cp1x_casted: Float64 = cp1x
        let cp1y_casted: Float64 = cp1y
        let cp2x_casted: Float64 = cp2x
        let cp2y_casted: Float64 = cp2y
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.bezierCurveTo_serialize(cp1x_casted, cp1y_casted, cp2x_casted, cp2y_casted, x_casted, y_casted)
        return
    }
    public open func closePath(): Unit {
        let thisPeer = this
        thisPeer.closePath_serialize()
        return
    }
    public open func ellipse(x: Float64, y: Float64, radiusX: Float64, radiusY: Float64, rotation: Float64, startAngle: Float64, endAngle: Float64, counterclockwise: Option<Bool>): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let radiusX_casted: Float64 = radiusX
        let radiusY_casted: Float64 = radiusY
        let rotation_casted: Float64 = rotation
        let startAngle_casted: Float64 = startAngle
        let endAngle_casted: Float64 = endAngle
        let counterclockwise_casted: Option<Bool> = if (let Some(counterclockwise) <- counterclockwise) {counterclockwise} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.ellipse_serialize(x_casted, y_casted, radiusX_casted, radiusY_casted, rotation_casted, startAngle_casted, endAngle_casted, counterclockwise_casted)
        return
    }
    public open func lineTo(x: Float64, y: Float64): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.lineTo_serialize(x_casted, y_casted)
        return
    }
    public open func moveTo(x: Float64, y: Float64): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.moveTo_serialize(x_casted, y_casted)
        return
    }
    public open func quadraticCurveTo(cpx: Float64, cpy: Float64, x: Float64, y: Float64): Unit {
        let cpx_casted: Float64 = cpx
        let cpy_casted: Float64 = cpy
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.quadraticCurveTo_serialize(cpx_casted, cpy_casted, x_casted, y_casted)
        return
    }
    public open func rect(x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let w_casted: Float64 = w
        let h_casted: Float64 = h
        let thisPeer = this
        thisPeer.rect_serialize(x_casted, y_casted, w_casted, h_casted)
        return
    }
    public open func roundRect(x: Float64, y: Float64, w: Float64, h: Float64, radii: Option<Union_Number_Array_Number>): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let w_casted: Float64 = w
        let h_casted: Float64 = h
        let radii_casted: Option<Union_Number_Array_Number> = if (let Some(radii) <- radii) {radii} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.roundRect_serialize(x_casted, y_casted, w_casted, h_casted, radii_casted)
        return
    }
    private func arc_serialize(x: Float64, y: Float64, radius: Float64, startAngle: Float64, endAngle: Float64, counterclockwise: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (counterclockwise.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let counterclockwiseTmpValue = counterclockwise
            thisSerializer.writeBoolean(counterclockwiseTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasPath_arc(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y, radius, startAngle, endAngle, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func arcTo_serialize(x1: Float64, y1: Float64, x2: Float64, y2: Float64, radius: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasPath_arcTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x1, y1, x2, y2, radius);
    }
    private func bezierCurveTo_serialize(cp1x: Float64, cp1y: Float64, cp2x: Float64, cp2y: Float64, x: Float64, y: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasPath_bezierCurveTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, cp1x, cp1y, cp2x, cp2y, x, y);
    }
    private func closePath_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasPath_closePath(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func ellipse_serialize(x: Float64, y: Float64, radiusX: Float64, radiusY: Float64, rotation: Float64, startAngle: Float64, endAngle: Float64, counterclockwise: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (counterclockwise.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let counterclockwiseTmpValue = counterclockwise
            thisSerializer.writeBoolean(counterclockwiseTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasPath_ellipse(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y, radiusX, radiusY, rotation, startAngle, endAngle, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func lineTo_serialize(x: Float64, y: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasPath_lineTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y);
    }
    private func moveTo_serialize(x: Float64, y: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasPath_moveTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y);
    }
    private func quadraticCurveTo_serialize(cpx: Float64, cpy: Float64, x: Float64, y: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasPath_quadraticCurveTo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, cpx, cpy, x, y);
    }
    private func rect_serialize(x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasPath_rect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y, w, h);
    }
    private func roundRect_serialize(x: Float64, y: Float64, w: Float64, h: Float64, radii: Option<Union_Number_Array_Number>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (radii.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let radiiTmpValue = radii
            if (radiiTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let radiiTmpValueForIdx0 = radiiTmpValue.getValue0()
                thisSerializer.writeNumber(radiiTmpValueForIdx0);
            } else if (radiiTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let radiiTmpValueForIdx1 = radiiTmpValue.getValue1()
                thisSerializer.writeInt32(Int32(radiiTmpValueForIdx1.size));
                for (radiiTmpValueForIdx1CounterI in 0..radiiTmpValueForIdx1.size) {
                    let radiiTmpValueForIdx1TmpElement: Float64 = radiiTmpValueForIdx1[Int64(radiiTmpValueForIdx1CounterI)]
                    thisSerializer.writeNumber(radiiTmpValueForIdx1TmpElement);
                }
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasPath_roundRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y, w, h, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class CanvasPath_serializer {
    public static func write(buffer: SerializerBase, value: CanvasPath): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): CanvasPath {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return CanvasPathInternal.fromPtr(ptr)
    }
}
