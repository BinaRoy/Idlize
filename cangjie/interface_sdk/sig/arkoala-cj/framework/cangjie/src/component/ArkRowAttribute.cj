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
public interface RowAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RowAttribute <: RowAttributeInterfaces {
    RowAttribute() {
    }
}
public interface RowAttribute {
}
public open class ArkRowComponent <: ArkCommonMethodComponent & RowAttribute {
    public open func getPeer(): ArkRowPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRowPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRowOptions(options: Option<RowOptions>): Unit {
        if (this.checkPriority("setRowOptions")) {
            let options_casted: Option<RowOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRowOptions0Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func setRowOptions(options: Option<Union_RowOptions_RowOptionsV2>): Unit {
        if (this.checkPriority("setRowOptions")) {
            let options_casted: Option<Union_RowOptions_RowOptionsV2> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setRowOptions1Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func alignItems(value: VerticalAlign): Unit {
        if (this.checkPriority("alignItems")) {
            let value_casted: VerticalAlign = value
            let thisPeer = this.getPeer()
            thisPeer.setAlignItemsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func justifyContent(value: FlexAlign): Unit {
        if (this.checkPriority("justifyContent")) {
            let value_casted: FlexAlign = value
            let thisPeer = this.getPeer()
            thisPeer.setJustifyContentAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func pointLight(value: PointLightStyle): Unit {
        if (this.checkPriority("pointLight")) {
            let value_casted: PointLightStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setPointLightAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func reverse(isReversed: Option<Bool>): Unit {
        if (this.checkPriority("reverse")) {
            let isReversed_casted: Option<Bool> = if (let Some(isReversed) <- isReversed) {isReversed} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setReverseAttribute(isReversed_casted)
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
class RowAttributeStyleHolder {
    var value: ?((attributes: RowAttribute) -> Unit)
    init (value: ?((attributes: RowAttribute) -> Unit)) {
        this.value = value
    }
}

class RowAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRow(
        style: ?((attributes: RowAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<Union_RowOptions_Union_RowOptions_RowOptionsV2>
    ): Unit {
        let styleHolder = RowAttributeStyleHolder(style)
        let contentHolder = RowAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRowComponent()
        })
        NodeAttach<ArkRowPeer>({ => ArkRowPeer.create(receiver, 0) }) {
            receiver.setRowOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
