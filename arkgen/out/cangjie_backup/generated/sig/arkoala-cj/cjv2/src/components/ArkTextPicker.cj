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

package idlize.components
import idlize.commonPara.*

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

// @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true, noninterop: true]
public type OnTextPickerStyleCallback = (attributes: TextPickerAttributeInterfaces) -> Unit
public type OnTextPickerContentCallback = () -> Unit
public open class ArkTextPickerComponent <: ArkCommonMethodComponent {
    protected  func getPeer(): ArkTextPickerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkTextPickerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func setTextPickerOptions(options!: Option<TextPickerOptions> = Option.None): This {
        this.getPeer().textPickerOptionsAttribute(options)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func defaultPickerItemHeight(value: Float64): This {
        this.getPeer().defaultPickerItemHeightAttribute(Some(value))
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func defaultPickerItemHeight(value: String): This {
        this.getPeer().defaultPickerItemHeightAttribute(Some(value))
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func canLoop(value: Bool): This {
        this.getPeer().canLoopAttribute(Some(value))
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func disappearTextStyle(value: Any): This {
        this.getPeer().disappearTextStyleAttribute(value)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func textStyle(value: Any): This {
        this.getPeer().textStyleAttribute(value)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func selectedTextStyle(value: Any): This {
        this.getPeer().selectedTextStyleAttribute(value)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", deprecated: since 10, crossplatform: true, atomicservice: true]
    public func onAccept(callback_: OnTextPickerAcceptCallback): This {
        this.getPeer().onAcceptAttribute(Some(callback_))
        return this
    }
    // @!APILevel[8, syscap: "SystemCapability.ArkUI.ArkUI.Full", deprecated: since 10]
    public func onCancel(callback_: OnTextPickerCancelCallback): This {
        this.getPeer().onCancelAttribute(callback_)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func onChange(callback_: OnTextPickerChangeCallback): This {
        this.getPeer().onChangeAttribute(callback_)
        return this
    }
    // @!APILevel[14, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func onScrollStop(callback_: TextPickerScrollStopCallback): This {
        this.getPeer().onScrollStopAttribute(callback_)
        return this
    }
    // @!APILevel[11, syscap: "SystemCapability.ArkUI.ArkUI.Full", deprecated: since 10, crossplatform: true, atomicservice: true]
    public func selectedIndex(value: Float64): This {
        this.getPeer().selectedIndexAttribute(Some(value))
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func divider(value: DividerOptions): This {
        this.getPeer().dividerAttribute(value)
        return this
    }
    // @!APILevel[12, syscap: "SystemCapability.ArkUI.ArkUI.Full", crossplatform: true, atomicservice: true]
    public func gradientHeight(value: Dimension): This {
        this.getPeer().gradientHeightAttribute(value)
        return this
    }
    public func onSelected(callback: OnTextPickerSelectedCallback): This {
        this.getPeer().onSelectedAttribute(Some(callback))
        return this
    }
    public func onValue(callback: OnTextPickerValueCallback): This {
        this.getPeer().onValueAttribute(Some(callback))
        return this
    }
    protected open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it protected
        super.applyAttributesFinish()
    }
}
class TextPickerAttributeStyleHolder {
    var value: Option<OnTextPickerStyleCallback>
    init (value: Option<OnTextPickerStyleCallback>) {
        this.value = value
    }
}

class TextPickerAttributeContentHolder {
    var value: Option<OnTextPickerContentCallback>
    init (value: Option<OnTextPickerContentCallback>) {
        this.value = value
    }
}


@Memo
public func ArkTextPicker(
    style: Option<OnTextPickerStyleCallback>,
    content_: Option<OnTextPickerContentCallback>,
options!: Option<TextPickerOptions> = Option.None
): Unit {
    let receiver = remember<ArkTextPickerComponent>({ => 
        ArkTextPickerComponent()
    })
    NodeAttach<ArkTextPickerPeer>(
        { => ArkTextPickerPeer.create(receiver, 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        },
        Option.None
    )
}

