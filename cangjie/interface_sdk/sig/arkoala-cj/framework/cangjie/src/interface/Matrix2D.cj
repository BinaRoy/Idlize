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
public open class Matrix2DInternal {
    public static func fromPtr(ptr: UInt64): Matrix2D {
        return Matrix2D(false, ptr)
    }
}
public open class Matrix2D <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop scaleX: Option<Float64>
    {
        get() {
            return this.getScaleX()
        }
        set(scaleX) {
            let scaleX_NonNull = match (scaleX as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setScaleX(scaleX_NonNull)
        }
    }
    public mut open prop rotateY: Option<Float64>
    {
        get() {
            return this.getRotateY()
        }
        set(rotateY) {
            let rotateY_NonNull = match (rotateY as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setRotateY(rotateY_NonNull)
        }
    }
    public mut open prop rotateX: Option<Float64>
    {
        get() {
            return this.getRotateX()
        }
        set(rotateX) {
            let rotateX_NonNull = match (rotateX as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setRotateX(rotateX_NonNull)
        }
    }
    public mut open prop scaleY: Option<Float64>
    {
        get() {
            return this.getScaleY()
        }
        set(scaleY) {
            let scaleY_NonNull = match (scaleY as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setScaleY(scaleY_NonNull)
        }
    }
    public mut open prop translateX: Option<Float64>
    {
        get() {
            return this.getTranslateX()
        }
        set(translateX) {
            let translateX_NonNull = match (translateX as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setTranslateX(translateX_NonNull)
        }
    }
    public mut open prop translateY: Option<Float64>
    {
        get() {
            return this.getTranslateY()
        }
        set(translateY) {
            let translateY_NonNull = match (translateY as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setTranslateY(translateY_NonNull)
        }
    }
    Matrix2D(_0: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, Matrix2D.getFinalizer())
    }
    Matrix2D() {
        super(false, Matrix2D.construct0())
    }
    Matrix2D(unit: LengthMetricsUnit) {
        super(false, Matrix2D.construct1(unit))
    }
    static func construct0(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_construct0()
        return retval
    }
    static func construct1(unit: LengthMetricsUnit): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", unit);
        let retval = ArkUIGeneratedNativeModule._Matrix2D_construct1(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._Matrix2D_getFinalizer()
    }
    public open func identity(): Matrix2D {
        return this.identity_serialize()
    }
    public open func invert(): Matrix2D {
        return this.invert_serialize()
    }
    public open func multiply(other: Option<Matrix2D>): Matrix2D {
        let other_casted: Option<Matrix2D> = if (let Some(other) <- other) {other} else { throw Exception("Type has to be not None")}
        return this.multiply_serialize(other_casted)
    }
    public open func rotate(rx: Option<Float64>, ry: Option<Float64>): Matrix2D {
        let rx_casted: Option<Float64> = if (let Some(rx) <- rx) {rx} else { throw Exception("Type has to be not None")}
        let ry_casted: Option<Float64> = if (let Some(ry) <- ry) {ry} else { throw Exception("Type has to be not None")}
        return this.rotate0_serialize(rx_casted, ry_casted)
    }
    public open func rotate(degree: Float64, rx: Option<Float64>, ry: Option<Float64>): Matrix2D {
        let degree_casted: Float64 = degree
        let rx_casted: Option<Float64> = if (let Some(rx) <- rx) {rx} else { throw Exception("Type has to be not None")}
        let ry_casted: Option<Float64> = if (let Some(ry) <- ry) {ry} else { throw Exception("Type has to be not None")}
        return this.rotate1_serialize(degree_casted, rx_casted, ry_casted)
    }
    public open func translate(tx: Option<Float64>, ty: Option<Float64>): Matrix2D {
        let tx_casted: Option<Float64> = if (let Some(tx) <- tx) {tx} else { throw Exception("Type has to be not None")}
        let ty_casted: Option<Float64> = if (let Some(ty) <- ty) {ty} else { throw Exception("Type has to be not None")}
        return this.translate_serialize(tx_casted, ty_casted)
    }
    public open func scale(sx: Option<Float64>, sy: Option<Float64>): Matrix2D {
        let sx_casted: Option<Float64> = if (let Some(sx) <- sx) {sx} else { throw Exception("Type has to be not None")}
        let sy_casted: Option<Float64> = if (let Some(sy) <- sy) {sy} else { throw Exception("Type has to be not None")}
        return this.scale_serialize(sx_casted, sy_casted)
    }
    private func getScaleX(): Option<Float64> {
        return this.getScaleX_serialize()
    }
    private func setScaleX(scaleX: Option<Float64>): Unit {
        let scaleX_casted: Option<Float64> = if (let Some(scaleX) <- scaleX) {scaleX} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setScaleX_serialize(scaleX_casted)
        return
    }
    private func getRotateY(): Option<Float64> {
        return this.getRotateY_serialize()
    }
    private func setRotateY(rotateY: Option<Float64>): Unit {
        let rotateY_casted: Option<Float64> = if (let Some(rotateY) <- rotateY) {rotateY} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setRotateY_serialize(rotateY_casted)
        return
    }
    private func getRotateX(): Option<Float64> {
        return this.getRotateX_serialize()
    }
    private func setRotateX(rotateX: Option<Float64>): Unit {
        let rotateX_casted: Option<Float64> = if (let Some(rotateX) <- rotateX) {rotateX} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setRotateX_serialize(rotateX_casted)
        return
    }
    private func getScaleY(): Option<Float64> {
        return this.getScaleY_serialize()
    }
    private func setScaleY(scaleY: Option<Float64>): Unit {
        let scaleY_casted: Option<Float64> = if (let Some(scaleY) <- scaleY) {scaleY} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setScaleY_serialize(scaleY_casted)
        return
    }
    private func getTranslateX(): Option<Float64> {
        return this.getTranslateX_serialize()
    }
    private func setTranslateX(translateX: Option<Float64>): Unit {
        let translateX_casted: Option<Float64> = if (let Some(translateX) <- translateX) {translateX} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTranslateX_serialize(translateX_casted)
        return
    }
    private func getTranslateY(): Option<Float64> {
        return this.getTranslateY_serialize()
    }
    private func setTranslateY(translateY: Option<Float64>): Unit {
        let translateY_casted: Option<Float64> = if (let Some(translateY) <- translateY) {translateY} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTranslateY_serialize(translateY_casted)
        return
    }
    private func identity_serialize(): Matrix2D {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_identity(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: Matrix2D = Matrix2DInternal.fromPtr(retval)
        return obj
    }
    private func invert_serialize(): Matrix2D {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_invert(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: Matrix2D = Matrix2DInternal.fromPtr(retval)
        return obj
    }
    private func multiply_serialize(other: Option<Matrix2D>): Matrix2D {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (other.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let otherTmpValue = other
            Matrix2D_serializer.write(thisSerializer, otherTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._Matrix2D_multiply(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: Matrix2D = Matrix2DInternal.fromPtr(retval)
        return obj
    }
    private func rotate0_serialize(rx: Option<Float64>, ry: Option<Float64>): Matrix2D {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (rx.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rxTmpValue = rx
            thisSerializer.writeNumber(rxTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (ry.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let ryTmpValue = ry
            thisSerializer.writeNumber(ryTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._Matrix2D_rotate0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: Matrix2D = Matrix2DInternal.fromPtr(retval)
        return obj
    }
    private func rotate1_serialize(degree: Float64, rx: Option<Float64>, ry: Option<Float64>): Matrix2D {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (rx.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rxTmpValue = rx
            thisSerializer.writeNumber(rxTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (ry.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let ryTmpValue = ry
            thisSerializer.writeNumber(ryTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._Matrix2D_rotate1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, degree, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: Matrix2D = Matrix2DInternal.fromPtr(retval)
        return obj
    }
    private func translate_serialize(tx: Option<Float64>, ty: Option<Float64>): Matrix2D {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (tx.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let txTmpValue = tx
            thisSerializer.writeNumber(txTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (ty.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let tyTmpValue = ty
            thisSerializer.writeNumber(tyTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._Matrix2D_translate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: Matrix2D = Matrix2DInternal.fromPtr(retval)
        return obj
    }
    private func scale_serialize(sx: Option<Float64>, sy: Option<Float64>): Matrix2D {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (sx.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let sxTmpValue = sx
            thisSerializer.writeNumber(sxTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (sy.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let syTmpValue = sy
            thisSerializer.writeNumber(syTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._Matrix2D_scale(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: Matrix2D = Matrix2DInternal.fromPtr(retval)
        return obj
    }
    private func getScaleX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_getScaleX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setScaleX_serialize(scaleX: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scaleX.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let scaleXTmpValue = scaleX
            thisSerializer.writeNumber(scaleXTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Matrix2D_setScaleX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getRotateY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_getRotateY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setRotateY_serialize(rotateY: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (rotateY.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rotateYTmpValue = rotateY
            thisSerializer.writeNumber(rotateYTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Matrix2D_setRotateY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getRotateX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_getRotateX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setRotateX_serialize(rotateX: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (rotateX.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let rotateXTmpValue = rotateX
            thisSerializer.writeNumber(rotateXTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Matrix2D_setRotateX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getScaleY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_getScaleY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setScaleY_serialize(scaleY: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (scaleY.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let scaleYTmpValue = scaleY
            thisSerializer.writeNumber(scaleYTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Matrix2D_setScaleY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getTranslateX_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_getTranslateX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setTranslateX_serialize(translateX: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (translateX.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let translateXTmpValue = translateX
            thisSerializer.writeNumber(translateXTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Matrix2D_setTranslateX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getTranslateY_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._Matrix2D_getTranslateY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setTranslateY_serialize(translateY: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (translateY.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let translateYTmpValue = translateY
            thisSerializer.writeNumber(translateYTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._Matrix2D_setTranslateY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class Matrix2D_serializer {
    public static func write(buffer: SerializerBase, value: Matrix2D): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): Matrix2D {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return Matrix2DInternal.fromPtr(ptr)
    }
}
