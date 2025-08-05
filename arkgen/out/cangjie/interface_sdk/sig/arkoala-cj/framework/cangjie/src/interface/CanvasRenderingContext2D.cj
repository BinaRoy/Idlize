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
public open class CanvasRenderingContext2DInternal {
    public static func fromPtr(ptr: UInt64): CanvasRenderingContext2D {
        return CanvasRenderingContext2D(false, false, ptr)
    }
}
public open class CanvasRenderingContext2D <: CanvasRenderer & MaterializedBase {
    public open prop height: Float64
    public open prop width: Float64
    public open prop canvas: FrameNode
    public open prop height: Float64
    public open prop width: Float64
    public open prop canvas: FrameNode
    CanvasRenderingContext2D(_0: Bool, _1: Bool, peerPtr: UInt64) {
        super(peerPtr)
        height = this.getHeight()
        width = this.getWidth()
        canvas = this.getCanvas()
        height = this.getHeight()
        width = this.getWidth()
        canvas = this.getCanvas()
    }
    init () {
        CanvasRenderingContext2D(Option.None)
    }
    CanvasRenderingContext2D(settings: Option<RenderingContextSettings>) {
        super(false, false, CanvasRenderingContext2D.construct0(settings))
    }
    init (settings: Option<RenderingContextSettings>) {
        CanvasRenderingContext2D(settings, Option.None)
    }
    init () {
        CanvasRenderingContext2D(Option.None, Option.None)
    }
    CanvasRenderingContext2D(settings: Option<RenderingContextSettings>, unit: Option<LengthMetricsUnit>) {
        super(false, false, CanvasRenderingContext2D.construct1(settings, unit))
    }
    static func construct0(settings: Option<RenderingContextSettings>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (settings.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let settingsTmpValue = settings
            RenderingContextSettings_serializer.write(thisSerializer, settingsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_construct0(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func construct1(settings: Option<RenderingContextSettings>, unit: Option<LengthMetricsUnit>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (settings.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let settingsTmpValue = settings
            RenderingContextSettings_serializer.write(thisSerializer, settingsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (unit.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let unitTmpValue = unit
            thisSerializer.writeCustomObject("Any", unitTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_construct1(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._CanvasRenderingContext2D_getFinalizer()
    }
    public open func toDataURL(type_: Option<String>, quality: Option<Float32>): String {
        let type_casted: Option<String> = if (let Some(type_) <- type_) {type_} else { throw Exception("Type has to be not None")}
        let quality_casted: Option<Float32> = if (let Some(quality) <- quality) {quality} else { throw Exception("Type has to be not None")}
        return this.toDataURL_serialize(type_casted, quality_casted)
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
    public open func onOnAttach(callback_: (() -> Unit)): Unit {
        let callback__casted: (() -> Unit) = callback_
        let thisPeer = this
        thisPeer.onOnAttach_serialize(callback__casted)
        return
    }
    public open func onOnDetach(callback_: (() -> Unit)): Unit {
        let callback__casted: (() -> Unit) = callback_
        let thisPeer = this
        thisPeer.onOnDetach_serialize(callback__casted)
        return
    }
    public open func offOnAttach(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.offOnAttach_serialize(callback__casted)
        return
    }
    public open func offOnDetach(callback_: Option<(() -> Unit)>): Unit {
        let callback__casted: Option<(() -> Unit)> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.offOnDetach_serialize(callback__casted)
        return
    }
    private func getHeight(): Float64 {
        return this.getHeight0_serialize()
    }
    private func getWidth(): Float64 {
        return this.getWidth0_serialize()
    }
    private func getCanvas(): FrameNode {
        return this.getCanvas0_serialize()
    }
    private func getHeight(): Float64 {
        return this.getHeight1_serialize()
    }
    private func getWidth(): Float64 {
        return this.getWidth1_serialize()
    }
    private func getCanvas(): FrameNode {
        return this.getCanvas1_serialize()
    }
    public open func on(type_: String, callback_: (() -> Unit)): Unit {
        throw Exception("Improve")
    }
    public open func off(type_: String, callback_: (() -> Unit)): Unit {
        throw Exception("Improve")
    }
    private func toDataURL_serialize(type_: Option<String>, quality: Option<Float32>): String {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (type_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let typeTmpValue = type_
            thisSerializer.writeString(typeTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (quality.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let qualityTmpValue = quality
            thisSerializer.writeFloat32(qualityTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_toDataURL(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func startImageAnalyzer_serialize(config: ImageAnalyzerConfig): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ImageAnalyzerConfig_serializer.write(thisSerializer, config);
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._CanvasRenderingContext2D_startImageAnalyzer(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func stopImageAnalyzer_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderingContext2D_stopImageAnalyzer(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func onOnAttach_serialize(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CanvasRenderingContext2D_onOnAttach(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func onOnDetach_serialize(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CanvasRenderingContext2D_onOnDetach(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func offOnAttach_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderingContext2D_offOnAttach(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func offOnDetach_serialize(callback_: Option<(() -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (callback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderingContext2D_offOnDetach(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getHeight0_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_getHeight0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getWidth0_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_getWidth0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getCanvas0_serialize(): FrameNode {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_getCanvas0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func getHeight1_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_getHeight1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getWidth1_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_getWidth1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getCanvas1_serialize(): FrameNode {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderingContext2D_getCanvas1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
}
public open class CanvasRenderingContext2D_serializer {
    public static func write(buffer: SerializerBase, value: CanvasRenderingContext2D): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): CanvasRenderingContext2D {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return CanvasRenderingContext2DInternal.fromPtr(ptr)
    }
}
