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
public interface VideoAttributeInterfaces <: CommonMethodInterfaces {
}
public open class VideoAttribute <: VideoAttributeInterfaces {
    VideoAttribute() {
    }
}
public interface VideoAttribute {
}
public open class ArkVideoComponent <: ArkCommonMethodComponent & VideoAttribute {
    public open func getPeer(): ArkVideoPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkVideoPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setVideoOptions(value: VideoOptions): Unit {
        if (this.checkPriority("setVideoOptions")) {
            let value_casted: VideoOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setVideoOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func muted(value: Bool): Unit {
        if (this.checkPriority("muted")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setMutedAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func autoPlay(value: Bool): Unit {
        if (this.checkPriority("autoPlay")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAutoPlayAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func controls(value: Bool): Unit {
        if (this.checkPriority("controls")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setControlsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func loop(value: Bool): Unit {
        if (this.checkPriority("loop")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setLoopAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func objectFit(value: ImageFit): Unit {
        if (this.checkPriority("objectFit")) {
            let value_casted: ImageFit = value
            let thisPeer = this.getPeer()
            thisPeer.setObjectFitAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onStart(event: VoidCallback): Unit {
        if (this.checkPriority("onStart")) {
            let event_casted: VoidCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnStartAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onPause(event: VoidCallback): Unit {
        if (this.checkPriority("onPause")) {
            let event_casted: VoidCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnPauseAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onFinish(event: VoidCallback): Unit {
        if (this.checkPriority("onFinish")) {
            let event_casted: VoidCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnFinishAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func onFullscreenChange(callback_: ((parameter: FullscreenInfo) -> Unit)): Unit {
        if (this.checkPriority("onFullscreenChange")) {
            let callback__casted: ((parameter: FullscreenInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFullscreenChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onPrepared(callback_: ((parameter: PreparedInfo) -> Unit)): Unit {
        if (this.checkPriority("onPrepared")) {
            let callback__casted: ((parameter: PreparedInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPreparedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSeeking(callback_: ((parameter: PlaybackInfo) -> Unit)): Unit {
        if (this.checkPriority("onSeeking")) {
            let callback__casted: ((parameter: PlaybackInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSeekingAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSeeked(callback_: ((parameter: PlaybackInfo) -> Unit)): Unit {
        if (this.checkPriority("onSeeked")) {
            let callback__casted: ((parameter: PlaybackInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSeekedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onUpdate(callback_: ((parameter: PlaybackInfo) -> Unit)): Unit {
        if (this.checkPriority("onUpdate")) {
            let callback__casted: ((parameter: PlaybackInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnUpdateAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onError(event: Union_VoidCallback_): Unit {
        if (this.checkPriority("onError")) {
            let event_casted: Union_VoidCallback_ = event
            let thisPeer = this.getPeer()
            thisPeer.setOnError0Attribute(event_casted)
            return
        }
        return
    }
    )
    public open func onError(event: (() -> Unit)): Unit {
        if (this.checkPriority("onError")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnError1Attribute(event_casted)
            return
        }
        return
    }
    )
    public open func onStop(event: (() -> Unit)): Unit {
        if (this.checkPriority("onStop")) {
            let event_casted: (() -> Unit) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnStopAttribute(event_casted)
            return
        }
        return
    }
    )
    public open func enableAnalyzer(enable: Bool): Unit {
        if (this.checkPriority("enableAnalyzer")) {
            let enable_casted: Bool = enable
            let thisPeer = this.getPeer()
            thisPeer.setEnableAnalyzerAttribute(enable_casted)
            return
        }
        return
    }
    )
    public open func analyzerConfig(config: ImageAnalyzerConfig): Unit {
        if (this.checkPriority("analyzerConfig")) {
            let config_casted: ImageAnalyzerConfig = config
            let thisPeer = this.getPeer()
            thisPeer.setAnalyzerConfigAttribute(config_casted)
            return
        }
        return
    }
    )
    public open func surfaceBackgroundColor(color: ColorMetrics): Unit {
        if (this.checkPriority("surfaceBackgroundColor")) {
            let color_casted: ColorMetrics = color
            let thisPeer = this.getPeer()
            thisPeer.setSurfaceBackgroundColorAttribute(color_casted)
            return
        }
        return
    }
    )
    public open func enableShortcutKey(enabled: Bool): Unit {
        if (this.checkPriority("enableShortcutKey")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setEnableShortcutKeyAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class VideoAttributeStyleHolder {
    var value: ?((attributes: VideoAttribute) -> Unit)
    init (value: ?((attributes: VideoAttribute) -> Unit)) {
        this.value = value
    }
}

class VideoAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkVideo(
        style: ?((attributes: VideoAttribute) -> Unit),
        content_: ?(() -> Unit),
value: VideoOptions
    ): Unit {
        let styleHolder = VideoAttributeStyleHolder(style)
        let contentHolder = VideoAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkVideoComponent()
        })
        NodeAttach<ArkVideoPeer>({ => ArkVideoPeer.create(receiver, 0) }) {
            receiver.setVideoOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
