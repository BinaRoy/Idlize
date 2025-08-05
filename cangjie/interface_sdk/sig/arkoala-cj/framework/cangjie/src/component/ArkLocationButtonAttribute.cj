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
public interface LocationButtonAttributeInterfaces <: SecurityComponentMethodInterfaces {
}
public open class LocationButtonAttribute <: LocationButtonAttributeInterfaces {
    LocationButtonAttribute() {
    }
}
public interface LocationButtonAttribute {
}
public open class ArkLocationButtonComponent <: ArkSecurityComponentMethodComponent & LocationButtonAttribute {
    public open func getPeer(): ArkLocationButtonPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkLocationButtonPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setLocationButtonOptions(): Unit {
        if (this.checkPriority("setLocationButtonOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setLocationButtonOptions0Attribute()
            return
        }
        return
    }
    )
    public open func setLocationButtonOptions(options: LocationButtonOptions): Unit {
        if (this.checkPriority("setLocationButtonOptions")) {
            let options_casted: LocationButtonOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setLocationButtonOptions1Attribute(options_casted)
            return
        }
        return
    }
    )
    public open func onClick(event: LocationButtonCallback): Unit {
        if (this.checkPriority("onClick")) {
            let event_casted: LocationButtonCallback = event
            let thisPeer = this.getPeer()
            thisPeer.setOnClickAttribute(event_casted)
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
class LocationButtonAttributeStyleHolder {
    var value: ?((attributes: LocationButtonAttribute) -> Unit)
    init (value: ?((attributes: LocationButtonAttribute) -> Unit)) {
        this.value = value
    }
}

class LocationButtonAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkLocationButton(
        style: ?((attributes: LocationButtonAttribute) -> Unit),
        content_: ?(() -> Unit),
options: Option<LocationButtonOptions>
    ): Unit {
        let styleHolder = LocationButtonAttributeStyleHolder(style)
        let contentHolder = LocationButtonAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkLocationButtonComponent()
        })
        NodeAttach<ArkLocationButtonPeer>({ => ArkLocationButtonPeer.create(receiver, 0) }) {
            receiver.setLocationButtonOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
