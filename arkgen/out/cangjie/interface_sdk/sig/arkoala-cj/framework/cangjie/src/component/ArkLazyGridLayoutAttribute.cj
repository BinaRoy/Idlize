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
public interface LazyGridLayoutAttributeInterfaces <: CommonMethodInterfaces {
}
public open class LazyGridLayoutAttribute <: LazyGridLayoutAttributeInterfaces {
    LazyGridLayoutAttribute() {
    }
}
public interface LazyGridLayoutAttribute {
}
public open class ArkLazyGridLayoutComponent <: ArkCommonMethodComponent & LazyGridLayoutAttribute {
    public open func getPeer(): ArkLazyGridLayoutPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkLazyGridLayoutPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func rowsGap(value: LengthMetrics): Unit {
        if (this.checkPriority("rowsGap")) {
            let value_casted: LengthMetrics = value
            let thisPeer = this.getPeer()
            thisPeer.setRowsGapAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func columnsGap(value: LengthMetrics): Unit {
        if (this.checkPriority("columnsGap")) {
            let value_casted: LengthMetrics = value
            let thisPeer = this.getPeer()
            thisPeer.setColumnsGapAttribute(value_casted)
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
