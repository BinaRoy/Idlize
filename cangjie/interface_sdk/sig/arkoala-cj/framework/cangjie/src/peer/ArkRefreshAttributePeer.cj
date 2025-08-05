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
public open class ArkRefreshPeer <: ArkCommonMethodPeer {
    protected ArkRefreshPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkRefreshPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Refresh_construct(peerId, flags)
        let _peer = ArkRefreshPeer(_peerPtr, peerId, "Refresh", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setRefreshOptionsAttribute(value: RefreshOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RefreshOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._RefreshInterface_setRefreshOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnStateChangeAttribute(callback_: ((state: RefreshStatus) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RefreshAttribute_setOnStateChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRefreshingAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RefreshAttribute_setOnRefreshing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRefreshOffsetAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._RefreshAttribute_setRefreshOffset(this.peer.ptr, value);
    }
    public open func setPullToRefreshAttribute(value: Bool): Unit {
        ArkUIGeneratedNativeModule._RefreshAttribute_setPullToRefresh(this.peer.ptr, if (value) { Int32(1) } else { Int32(0) });
    }
    public open func setOnOffsetChangeAttribute(callback_: ((parameter: Float64) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._RefreshAttribute_setOnOffsetChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPullDownRatioAttribute(ratio: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (ratio.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let ratioTmpValue = ratio
            thisSerializer.writeNumber(ratioTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RefreshAttribute_setPullDownRatio(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMaxPullDownDistanceAttribute(distance: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (distance.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let distanceTmpValue = distance
            thisSerializer.writeNumber(distanceTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._RefreshAttribute_setMaxPullDownDistance(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func set_onChangeEvent_refreshingAttribute(callback: ((refreshing: Union_Boolean_Bindable) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._RefreshAttribute_set_onChangeEvent_refreshing(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
