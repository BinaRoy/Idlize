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
public interface CommonShapeMethodInterfaces <: CommonMethodInterfaces {
}
public open class CommonShapeMethod <: CommonShapeMethodInterfaces {
    CommonShapeMethod() {
    }
}
public interface CommonShapeMethod {
}
public open class ArkCommonShapeMethodComponent <: ArkCommonMethodComponent & CommonShapeMethod {
    public open func getPeer(): ArkCommonShapeMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonShapeMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func stroke(value: ResourceColor): Unit {
        if (this.checkPriority("stroke")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fill(value: ResourceColor): Unit {
        if (this.checkPriority("fill")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setFillAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func strokeDashOffset(value: Union_Number_String): Unit {
        if (this.checkPriority("strokeDashOffset")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeDashOffsetAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func strokeLineCap(value: LineCapStyle): Unit {
        if (this.checkPriority("strokeLineCap")) {
            let value_casted: LineCapStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeLineCapAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func strokeLineJoin(value: LineJoinStyle): Unit {
        if (this.checkPriority("strokeLineJoin")) {
            let value_casted: LineJoinStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeLineJoinAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func strokeMiterLimit(value: Union_Number_String): Unit {
        if (this.checkPriority("strokeMiterLimit")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeMiterLimitAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func strokeOpacity(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("strokeOpacity")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeOpacityAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func fillOpacity(value: Union_Number_String_Resource): Unit {
        if (this.checkPriority("fillOpacity")) {
            let value_casted: Union_Number_String_Resource = value
            let thisPeer = this.getPeer()
            thisPeer.setFillOpacityAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func strokeWidth(value: Length): Unit {
        if (this.checkPriority("strokeWidth")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func antiAlias(value: Bool): Unit {
        if (this.checkPriority("antiAlias")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAntiAliasAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func strokeDashArray(value: ArrayList<Length>): Unit {
        if (this.checkPriority("strokeDashArray")) {
            let value_casted: ArrayList<Length> = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeDashArrayAttribute(value_casted)
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
