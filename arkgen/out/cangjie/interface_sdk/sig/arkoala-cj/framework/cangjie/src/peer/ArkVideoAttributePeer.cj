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
public open class ArkVideoPeer <: ArkCommonMethodPeer {
    protected ArkVideoPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkVideoPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Video_construct(peerId, flags)
        let _peer = ArkVideoPeer(_peerPtr, peerId, "Video", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setVideoOptionsAttribute(value: VideoOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        VideoOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._VideoInterface_setVideoOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMutedAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._VideoAttribute_setMuted(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setAutoPlayAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._VideoAttribute_setAutoPlay(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setControlsAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._VideoAttribute_setControls(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setLoopAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._VideoAttribute_setLoop(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setObjectFitAttribute(value: ImageFit): Unit {
        ArkUIGeneratedNativeModule._VideoAttribute_setObjectFit(this.peer.ptr, value.value);
    }
    public open func setOnStartAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPauseAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnPause(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFinishAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnFinish(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFullscreenChangeAttribute(callback_: ((parameter: FullscreenInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnFullscreenChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPreparedAttribute(callback_: ((parameter: PreparedInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnPrepared(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSeekingAttribute(callback_: ((parameter: PlaybackInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnSeeking(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSeekedAttribute(callback_: ((parameter: PlaybackInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnSeeked(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnUpdateAttribute(callback_: ((parameter: PlaybackInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnUpdate(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnError0Attribute(event: Union_VoidCallback_): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (event.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let eventForIdx0 = event.getValue0()
            thisSerializer.holdAndWriteCallback(eventForIdx0);
        } else if (event.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let eventForIdx1 = event.getValue1()
            thisSerializer.writeCustomObject("Any", eventForIdx1);
        }
        ArkUIGeneratedNativeModule._VideoAttribute_setOnError0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnError1Attribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnError1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnStopAttribute(event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._VideoAttribute_setOnStop(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableAnalyzerAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._VideoAttribute_setEnableAnalyzer(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setAnalyzerConfigAttribute(config: ImageAnalyzerConfig): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ImageAnalyzerConfig_serializer.write(thisSerializer, config);
        ArkUIGeneratedNativeModule._VideoAttribute_setAnalyzerConfig(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSurfaceBackgroundColorAttribute(color: ColorMetrics): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", color);
        ArkUIGeneratedNativeModule._VideoAttribute_setSurfaceBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableShortcutKeyAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._VideoAttribute_setEnableShortcutKey(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
}
