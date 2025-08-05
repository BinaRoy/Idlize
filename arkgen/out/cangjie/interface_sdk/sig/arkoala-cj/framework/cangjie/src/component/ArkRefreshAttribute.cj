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
public interface RefreshAttributeInterfaces <: CommonMethodInterfaces {
}
public open class RefreshAttribute <: RefreshAttributeInterfaces {
    RefreshAttribute() {
    }
}
public interface RefreshAttribute {
}
public open class ArkRefreshComponent <: ArkCommonMethodComponent & RefreshAttribute {
    public open func getPeer(): ArkRefreshPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkRefreshPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setRefreshOptions(value: RefreshOptions): Unit {
        if (this.checkPriority("setRefreshOptions")) {
            let value_casted: RefreshOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setRefreshOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onStateChange(callback_: ((state: RefreshStatus) -> Unit)): Unit {
        if (this.checkPriority("onStateChange")) {
            let callback__casted: ((state: RefreshStatus) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnStateChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRefreshing(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onRefreshing")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRefreshingAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func refreshOffset(value: Float64): Unit {
        if (this.checkPriority("refreshOffset")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setRefreshOffsetAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func pullToRefresh(value: Bool): Unit {
        if (this.checkPriority("pullToRefresh")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setPullToRefreshAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onOffsetChange(callback_: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onOffsetChange")) {
            let callback__casted: ((parameter: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnOffsetChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func pullDownRatio(ratio: Option<Float64>): Unit {
        if (this.checkPriority("pullDownRatio")) {
            let ratio_casted: Option<Float64> = if (let Some(ratio) <- ratio) {ratio} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPullDownRatioAttribute(ratio_casted)
            return
        }
        return
    }
    )
    public open func maxPullDownDistance(distance: Option<Float64>): Unit {
        if (this.checkPriority("maxPullDownDistance")) {
            let distance_casted: Option<Float64> = if (let Some(distance) <- distance) {distance} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setMaxPullDownDistanceAttribute(distance_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_refreshing(callback: ((refreshing: Union_Boolean_Bindable) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_refreshing")) {
            let callback_casted: ((refreshing: Union_Boolean_Bindable) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_refreshingAttribute(callback_casted)
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
class RefreshAttributeStyleHolder {
    var value: ?((attributes: RefreshAttribute) -> Unit)
    init (value: ?((attributes: RefreshAttribute) -> Unit)) {
        this.value = value
    }
}

class RefreshAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkRefresh(
        style: ?((attributes: RefreshAttribute) -> Unit),
        content_: ?(() -> Unit),
value: RefreshOptions
    ): Unit {
        let styleHolder = RefreshAttributeStyleHolder(style)
        let contentHolder = RefreshAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkRefreshComponent()
        })
        NodeAttach<ArkRefreshPeer>({ => ArkRefreshPeer.create(receiver, 0) }) {
            receiver.setRefreshOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
