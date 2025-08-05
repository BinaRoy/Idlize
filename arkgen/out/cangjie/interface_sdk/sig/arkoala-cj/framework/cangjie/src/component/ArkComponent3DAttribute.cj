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
public interface Component3DAttributeInterfaces <: CommonMethodInterfaces {
}
public open class Component3DAttribute <: Component3DAttributeInterfaces {
    Component3DAttribute() {
    }
}
public interface Component3DAttribute {
}
public open class ArkComponent3DComponent <: ArkCommonMethodComponent & Component3DAttribute {
    public open func getPeer(): ArkComponent3DPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkComponent3DPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setComponent3DOptions(sceneOptions: Option<SceneOptions>): Unit {
        if (this.checkPriority("setComponent3DOptions")) {
            let sceneOptions_casted: Option<SceneOptions> = if (let Some(sceneOptions) <- sceneOptions) {sceneOptions} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setComponent3DOptionsAttribute(sceneOptions_casted)
            return
        }
        return
    }
    )
    public open func environment(uri: ResourceStr): Unit {
        if (this.checkPriority("environment")) {
            let uri_casted: ResourceStr = uri
            let thisPeer = this.getPeer()
            thisPeer.setEnvironmentAttribute(uri_casted)
            return
        }
        return
    }
    )
    public open func customRender(uri: ResourceStr, selfRenderUpdate: Bool): Unit {
        if (this.checkPriority("customRender")) {
            let uri_casted: ResourceStr = uri
            let selfRenderUpdate_casted: Bool = selfRenderUpdate
            let thisPeer = this.getPeer()
            thisPeer.setCustomRenderAttribute(uri_casted, selfRenderUpdate_casted)
            return
        }
        return
    }
    )
    public open func shader(uri: ResourceStr): Unit {
        if (this.checkPriority("shader")) {
            let uri_casted: ResourceStr = uri
            let thisPeer = this.getPeer()
            thisPeer.setShaderAttribute(uri_casted)
            return
        }
        return
    }
    )
    public open func shaderImageTexture(uri: ResourceStr): Unit {
        if (this.checkPriority("shaderImageTexture")) {
            let uri_casted: ResourceStr = uri
            let thisPeer = this.getPeer()
            thisPeer.setShaderImageTextureAttribute(uri_casted)
            return
        }
        return
    }
    )
    public open func shaderInputBuffer(buffer: ArrayList<Float64>): Unit {
        if (this.checkPriority("shaderInputBuffer")) {
            let buffer_casted: ArrayList<Float64> = buffer
            let thisPeer = this.getPeer()
            thisPeer.setShaderInputBufferAttribute(buffer_casted)
            return
        }
        return
    }
    )
    public open func renderWidth(value: Dimension): Unit {
        if (this.checkPriority("renderWidth")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setRenderWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func renderHeight(value: Dimension): Unit {
        if (this.checkPriority("renderHeight")) {
            let value_casted: Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setRenderHeightAttribute(value_casted)
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
class Component3DAttributeStyleHolder {
    var value: ?((attributes: Component3DAttribute) -> Unit)
    init (value: ?((attributes: Component3DAttribute) -> Unit)) {
        this.value = value
    }
}

class Component3DAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkComponent3D(
        style: ?((attributes: Component3DAttribute) -> Unit),
        content_: ?(() -> Unit),
sceneOptions: Option<SceneOptions>
    ): Unit {
        let styleHolder = Component3DAttributeStyleHolder(style)
        let contentHolder = Component3DAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkComponent3DComponent()
        })
        NodeAttach<ArkComponent3DPeer>({ => ArkComponent3DPeer.create(receiver, 0) }) {
            receiver.setComponent3DOptions(sceneOptions)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
