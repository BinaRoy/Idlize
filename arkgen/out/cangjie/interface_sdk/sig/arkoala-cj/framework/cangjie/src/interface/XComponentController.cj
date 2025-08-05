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
public open class XComponentControllerInternal {
    public static func fromPtr(ptr: UInt64): XComponentController {
        return XComponentController(ptr)
    }
}
public open class XComponentController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop onSurfaceCreated: ((breakpoints: String) -> Unit)
    {
        get() {
            return this.getOnSurfaceCreated()
        }
        set(onSurfaceCreated) {
            this.setOnSurfaceCreated(onSurfaceCreated)
        }
    }
    public mut open prop onSurfaceChanged: ((surfaceId: String, rect: SurfaceRect) -> Unit)
    {
        get() {
            return this.getOnSurfaceChanged()
        }
        set(onSurfaceChanged) {
            this.setOnSurfaceChanged(onSurfaceChanged)
        }
    }
    public mut open prop onSurfaceDestroyed: ((breakpoints: String) -> Unit)
    {
        get() {
            return this.getOnSurfaceDestroyed()
        }
        set(onSurfaceDestroyed) {
            this.setOnSurfaceDestroyed(onSurfaceDestroyed)
        }
    }
    XComponentController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, XComponentController.getFinalizer())
    }
    XComponentController() {
        super(XComponentController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._XComponentController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._XComponentController_getFinalizer()
    }
    public open func getXComponentSurfaceId(): String {
        return this.getXComponentSurfaceId_serialize()
    }
    public open func getXComponentContext(): Any {
        return this.getXComponentContext_serialize()
    }
    public open func setXComponentSurfaceSize(value: Literal_Number_surfaceHeight_surfaceWidth): Unit {
        let value_casted: Literal_Number_surfaceHeight_surfaceWidth = value
        let thisPeer = this
        thisPeer.setXComponentSurfaceSize_serialize(value_casted)
        return
    }
    public open func setXComponentSurfaceRect(rect: SurfaceRect): Unit {
        let rect_casted: SurfaceRect = rect
        let thisPeer = this
        thisPeer.setXComponentSurfaceRect_serialize(rect_casted)
        return
    }
    public open func getXComponentSurfaceRect(): SurfaceRect {
        return this.getXComponentSurfaceRect_serialize()
    }
    public open func setXComponentSurfaceRotation(rotationOptions: SurfaceRotationOptions): Unit {
        let rotationOptions_casted: SurfaceRotationOptions = rotationOptions
        let thisPeer = this
        thisPeer.setXComponentSurfaceRotation_serialize(rotationOptions_casted)
        return
    }
    public open func getXComponentSurfaceRotation(): SurfaceRotationOptions {
        return this.getXComponentSurfaceRotation_serialize()
    }
    public open func startImageAnalyzer(config: ImageAnalyzerConfig): Any {
        let config_casted: ImageAnalyzerConfig = config
        return this.startImageAnalyzer_serialize(config_casted)
    }
    public open func stopImageAnalyzer(): Unit {
        let thisPeer = this
        thisPeer.stopImageAnalyzer_serialize()
        return
    }
    public open func lockCanvas(): Option<DrawingCanvas> {
        return this.lockCanvas_serialize()
    }
    public open func unlockCanvasAndPost(canvas: DrawingCanvas): Unit {
        let canvas_casted: DrawingCanvas = canvas
        let thisPeer = this
        thisPeer.unlockCanvasAndPost_serialize(canvas_casted)
        return
    }
    private func getOnSurfaceCreated(): ((breakpoints: String) -> Unit) {
        return this.getOnSurfaceCreated_serialize()
    }
    private func setOnSurfaceCreated(onSurfaceCreated: ((breakpoints: String) -> Unit)): Unit {
        let onSurfaceCreated_casted: ((breakpoints: String) -> Unit) = onSurfaceCreated
        let thisPeer = this
        thisPeer.setOnSurfaceCreated_serialize(onSurfaceCreated_casted)
        return
    }
    private func getOnSurfaceChanged(): ((surfaceId: String, rect: SurfaceRect) -> Unit) {
        return this.getOnSurfaceChanged_serialize()
    }
    private func setOnSurfaceChanged(onSurfaceChanged: ((surfaceId: String, rect: SurfaceRect) -> Unit)): Unit {
        let onSurfaceChanged_casted: ((surfaceId: String, rect: SurfaceRect) -> Unit) = onSurfaceChanged
        let thisPeer = this
        thisPeer.setOnSurfaceChanged_serialize(onSurfaceChanged_casted)
        return
    }
    private func getOnSurfaceDestroyed(): ((breakpoints: String) -> Unit) {
        return this.getOnSurfaceDestroyed_serialize()
    }
    private func setOnSurfaceDestroyed(onSurfaceDestroyed: ((breakpoints: String) -> Unit)): Unit {
        let onSurfaceDestroyed_casted: ((breakpoints: String) -> Unit) = onSurfaceDestroyed
        let thisPeer = this
        thisPeer.setOnSurfaceDestroyed_serialize(onSurfaceDestroyed_casted)
        return
    }
    private func getXComponentSurfaceId_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._XComponentController_getXComponentSurfaceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getXComponentContext_serialize(): Any {
        let retval = ArkUIGeneratedNativeModule._XComponentController_getXComponentContext(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setXComponentSurfaceSize_serialize(value: Literal_Number_surfaceHeight_surfaceWidth): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let valueSurfaceWidth = value.surfaceWidth
        thisSerializer.writeNumber(valueSurfaceWidth);
        let valueSurfaceHeight = value.surfaceHeight
        thisSerializer.writeNumber(valueSurfaceHeight);
        ArkUIGeneratedNativeModule._XComponentController_setXComponentSurfaceSize(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setXComponentSurfaceRect_serialize(rect: SurfaceRect): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SurfaceRect_serializer.write(thisSerializer, rect);
        ArkUIGeneratedNativeModule._XComponentController_setXComponentSurfaceRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getXComponentSurfaceRect_serialize(): SurfaceRect {
        let retval = ArkUIGeneratedNativeModule._XComponentController_getXComponentSurfaceRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: SurfaceRect = SurfaceRect_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func setXComponentSurfaceRotation_serialize(rotationOptions: SurfaceRotationOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        SurfaceRotationOptions_serializer.write(thisSerializer, rotationOptions);
        ArkUIGeneratedNativeModule._XComponentController_setXComponentSurfaceRotation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getXComponentSurfaceRotation_serialize(): SurfaceRotationOptions {
        let retval = ArkUIGeneratedNativeModule._XComponentController_getXComponentSurfaceRotation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: SurfaceRotationOptions = SurfaceRotationOptions_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func startImageAnalyzer_serialize(config: ImageAnalyzerConfig): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ImageAnalyzerConfig_serializer.write(thisSerializer, config);
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._XComponentController_startImageAnalyzer(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func stopImageAnalyzer_serialize(): Unit {
        ArkUIGeneratedNativeModule._XComponentController_stopImageAnalyzer(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func lockCanvas_serialize(): Option<DrawingCanvas> {
        let retval = ArkUIGeneratedNativeModule._XComponentController_lockCanvas(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<DrawingCanvas> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<DrawingCanvas> = buffer
        return returnResult
    }
    private func unlockCanvasAndPost_serialize(canvas: DrawingCanvas): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", canvas);
        ArkUIGeneratedNativeModule._XComponentController_unlockCanvasAndPost(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnSurfaceCreated_serialize(): ((breakpoints: String) -> Unit) {
        let retval = ArkUIGeneratedNativeModule._XComponentController_getOnSurfaceCreated(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setOnSurfaceCreated_serialize(onSurfaceCreated: ((breakpoints: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(onSurfaceCreated);
        ArkUIGeneratedNativeModule._XComponentController_setOnSurfaceCreated(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnSurfaceChanged_serialize(): ((surfaceId: String, rect: SurfaceRect) -> Unit) {
        let retval = ArkUIGeneratedNativeModule._XComponentController_getOnSurfaceChanged(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setOnSurfaceChanged_serialize(onSurfaceChanged: ((surfaceId: String, rect: SurfaceRect) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(onSurfaceChanged);
        ArkUIGeneratedNativeModule._XComponentController_setOnSurfaceChanged(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getOnSurfaceDestroyed_serialize(): ((breakpoints: String) -> Unit) {
        let retval = ArkUIGeneratedNativeModule._XComponentController_getOnSurfaceDestroyed(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setOnSurfaceDestroyed_serialize(onSurfaceDestroyed: ((breakpoints: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(onSurfaceDestroyed);
        ArkUIGeneratedNativeModule._XComponentController_setOnSurfaceDestroyed(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class XComponentController_serializer {
    public static func write(buffer: SerializerBase, value: XComponentController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): XComponentController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return XComponentControllerInternal.fromPtr(ptr)
    }
}
