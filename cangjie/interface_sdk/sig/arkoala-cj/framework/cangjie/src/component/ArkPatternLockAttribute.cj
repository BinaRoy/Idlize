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
public interface PatternLockAttributeInterfaces <: CommonMethodInterfaces {
}
public open class PatternLockAttribute <: PatternLockAttributeInterfaces {
    PatternLockAttribute() {
    }
}
public interface PatternLockAttribute {
}
public open class ArkPatternLockComponent <: ArkCommonMethodComponent & PatternLockAttribute {
    public open func getPeer(): ArkPatternLockPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkPatternLockPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setPatternLockOptions(controller: Option<PatternLockController>): Unit {
        if (this.checkPriority("setPatternLockOptions")) {
            let controller_casted: Option<PatternLockController> = if (let Some(controller) <- controller) {controller} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setPatternLockOptionsAttribute(controller_casted)
            return
        }
        return
    }
    )
    public open func sideLength(value: Length): Unit {
        if (this.checkPriority("sideLength")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setSideLengthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func circleRadius(value: Length): Unit {
        if (this.checkPriority("circleRadius")) {
            let value_casted: Length = value
            let thisPeer = this.getPeer()
            thisPeer.setCircleRadiusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func backgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("backgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func regularColor(value: ResourceColor): Unit {
        if (this.checkPriority("regularColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setRegularColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectedColor(value: ResourceColor): Unit {
        if (this.checkPriority("selectedColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectedColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func activeColor(value: ResourceColor): Unit {
        if (this.checkPriority("activeColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setActiveColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func pathColor(value: ResourceColor): Unit {
        if (this.checkPriority("pathColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setPathColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func pathStrokeWidth(value: Union_Number_String): Unit {
        if (this.checkPriority("pathStrokeWidth")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setPathStrokeWidthAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onPatternComplete(callback_: ((input: ArrayList<Float64>) -> Unit)): Unit {
        if (this.checkPriority("onPatternComplete")) {
            let callback__casted: ((input: ArrayList<Float64>) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPatternCompleteAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func autoReset(value: Bool): Unit {
        if (this.checkPriority("autoReset")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAutoResetAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onDotConnect(callback_: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onDotConnect")) {
            let callback__casted: ((parameter: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDotConnect0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDotConnect(callback_: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onDotConnect")) {
            let callback__casted: ((parameter: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDotConnect1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func activateCircleStyle(options: Option<CircleStyleOptions>): Unit {
        if (this.checkPriority("activateCircleStyle")) {
            let options_casted: Option<CircleStyleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setActivateCircleStyleAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func skipUnselectedPoint(skipped: Bool): Unit {
        if (this.checkPriority("skipUnselectedPoint")) {
            let skipped_casted: Bool = skipped
            let thisPeer = this.getPeer()
            thisPeer.setSkipUnselectedPointAttribute(skipped_casted)
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
class PatternLockAttributeStyleHolder {
    var value: ?((attributes: PatternLockAttribute) -> Unit)
    init (value: ?((attributes: PatternLockAttribute) -> Unit)) {
        this.value = value
    }
}

class PatternLockAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkPatternLock(
        style: ?((attributes: PatternLockAttribute) -> Unit),
        content_: ?(() -> Unit),
controller: Option<PatternLockController>
    ): Unit {
        let styleHolder = PatternLockAttributeStyleHolder(style)
        let contentHolder = PatternLockAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkPatternLockComponent()
        })
        NodeAttach<ArkPatternLockPeer>({ => ArkPatternLockPeer.create(receiver, 0) }) {
            receiver.setPatternLockOptions(controller)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
