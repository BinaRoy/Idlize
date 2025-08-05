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
public interface CanvasAttributeInterfaces <: CommonMethodInterfaces {
}
public open class CanvasAttribute <: CanvasAttributeInterfaces {
    CanvasAttribute() {
    }
}
public interface CanvasAttribute {
}
public open class ArkCanvasComponent <: ArkCommonMethodComponent & CanvasAttribute {
    public open func getPeer(): ArkCanvasPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCanvasPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setCanvasOptions(context: Option<Union_CanvasRenderingContext2D_DrawingRenderingContext>): Unit {
        if (this.checkPriority("setCanvasOptions")) {
            let context_casted: Option<Union_CanvasRenderingContext2D_DrawingRenderingContext> = if (let Some(context) <- context) {context} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setCanvasOptions0Attribute(context_casted)
            return
        }
        return
    }
    )
    public open func setCanvasOptions(context: Union_CanvasRenderingContext2D_DrawingRenderingContext, imageAIOptions: ImageAIOptions): Unit {
        if (this.checkPriority("setCanvasOptions")) {
            let context_casted: Union_CanvasRenderingContext2D_DrawingRenderingContext = context
            let imageAIOptions_casted: ImageAIOptions = imageAIOptions
            let thisPeer = this.getPeer()
            thisPeer.setCanvasOptions1Attribute(context_casted, imageAIOptions_casted)
            return
        }
        return
    }
    )
    public open func onReady(event: VoidCallback): Unit {
        if (this.checkPriority("onReady")) {
            let event_casted: VoidCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnReadyAttribute(event_casted)
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
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class CanvasAttributeStyleHolder {
    var value: ?((attributes: CanvasAttribute) -> Unit)
    init (value: ?((attributes: CanvasAttribute) -> Unit)) {
        this.value = value
    }
}

class CanvasAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkCanvas(
        style: ?((attributes: CanvasAttribute) -> Unit),
        content_: ?(() -> Unit),
context: Option<Union_CanvasRenderingContext2D_DrawingRenderingContext>, imageAIOptions: Option<ImageAIOptions>
    ): Unit {
        let styleHolder = CanvasAttributeStyleHolder(style)
        let contentHolder = CanvasAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkCanvasComponent()
        })
        NodeAttach<ArkCanvasPeer>({ => ArkCanvasPeer.create(receiver, 0) }) {
            receiver.setCanvasOptions(context,imageAIOptions)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
