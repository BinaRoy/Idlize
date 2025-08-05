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
public interface AlphabetIndexerAttributeInterfaces <: CommonMethodInterfaces {
}
public open class AlphabetIndexerAttribute <: AlphabetIndexerAttributeInterfaces {
    AlphabetIndexerAttribute() {
    }
}
public interface AlphabetIndexerAttribute {
}
public open class ArkAlphabetIndexerComponent <: ArkCommonMethodComponent & AlphabetIndexerAttribute {
    public open func getPeer(): ArkAlphabetIndexerPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkAlphabetIndexerPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setAlphabetIndexerOptions(options: AlphabetIndexerOptions): Unit {
        if (this.checkPriority("setAlphabetIndexerOptions")) {
            let options_casted: AlphabetIndexerOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setAlphabetIndexerOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func onSelected(callback_: ((parameter: Float64) -> Unit)): Unit {
        if (this.checkPriority("onSelected")) {
            let callback__casted: ((parameter: Float64) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSelectedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func color(value: ResourceColor): Unit {
        if (this.checkPriority("color")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setColorAttribute(value_casted)
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
    public open func popupColor(value: ResourceColor): Unit {
        if (this.checkPriority("popupColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectedBackgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("selectedBackgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectedBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupBackground(value: ResourceColor): Unit {
        if (this.checkPriority("popupBackground")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupBackgroundAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupSelectedColor(value: ResourceColor): Unit {
        if (this.checkPriority("popupSelectedColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupSelectedColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupUnselectedColor(value: ResourceColor): Unit {
        if (this.checkPriority("popupUnselectedColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupUnselectedColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupItemBackgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("popupItemBackgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupItemBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func usingPopup(value: Bool): Unit {
        if (this.checkPriority("usingPopup")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setUsingPopupAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func selectedFont(value: Font): Unit {
        if (this.checkPriority("selectedFont")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setSelectedFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupFont(value: Font): Unit {
        if (this.checkPriority("popupFont")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupItemFont(value: Font): Unit {
        if (this.checkPriority("popupItemFont")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupItemFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func itemSize(value: Union_String_Number): Unit {
        if (this.checkPriority("itemSize")) {
            let value_casted: Union_String_Number = value
            let thisPeer = this.getPeer()
            thisPeer.setItemSizeAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func font(value: Font): Unit {
        if (this.checkPriority("font")) {
            let value_casted: Font = value
            let thisPeer = this.getPeer()
            thisPeer.setFontAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func alignStyle(value: IndexerAlign, offset: Option<Length>): Unit {
        if (this.checkPriority("alignStyle")) {
            let value_casted: IndexerAlign = value
            let offset_casted: Option<Length> = if (let Some(offset) <- offset) {offset} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setAlignStyleAttribute(value_casted, offset_casted)
            return
        }
        return
    }
    )
    public open func onSelect(callback_: OnAlphabetIndexerSelectCallback): Unit {
        if (this.checkPriority("onSelect")) {
            let callback__casted: OnAlphabetIndexerSelectCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSelectAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRequestPopupData(callback_: OnAlphabetIndexerRequestPopupDataCallback): Unit {
        if (this.checkPriority("onRequestPopupData")) {
            let callback__casted: OnAlphabetIndexerRequestPopupDataCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRequestPopupDataAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onPopupSelect(callback_: OnAlphabetIndexerPopupSelectCallback): Unit {
        if (this.checkPriority("onPopupSelect")) {
            let callback__casted: OnAlphabetIndexerPopupSelectCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPopupSelectAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func selected(index: Union_Number_Bindable): Unit {
        if (this.checkPriority("selected")) {
            let index_casted: Union_Number_Bindable = index
            let thisPeer = this.getPeer()
            thisPeer.setSelectedAttribute(index_casted)
            return
        }
        return
    }
    )
    public open func popupPosition(value: Position): Unit {
        if (this.checkPriority("popupPosition")) {
            let value_casted: Position = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupPositionAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func autoCollapse(value: Bool): Unit {
        if (this.checkPriority("autoCollapse")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setAutoCollapseAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupItemBorderRadius(value: Float64): Unit {
        if (this.checkPriority("popupItemBorderRadius")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupItemBorderRadiusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func itemBorderRadius(value: Float64): Unit {
        if (this.checkPriority("itemBorderRadius")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setItemBorderRadiusAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupBackgroundBlurStyle(value: BlurStyle): Unit {
        if (this.checkPriority("popupBackgroundBlurStyle")) {
            let value_casted: BlurStyle = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupBackgroundBlurStyleAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func popupTitleBackground(value: ResourceColor): Unit {
        if (this.checkPriority("popupTitleBackground")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setPopupTitleBackgroundAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func enableHapticFeedback(value: Bool): Unit {
        if (this.checkPriority("enableHapticFeedback")) {
            let value_casted: Bool = value
            let thisPeer = this.getPeer()
            thisPeer.setEnableHapticFeedbackAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func _onChangeEvent_selected(callback: ((selected: Union_Number_Bindable) -> Unit)): Unit {
        if (this.checkPriority("_onChangeEvent_selected")) {
            let callback_casted: ((selected: Union_Number_Bindable) -> Unit) = callback
            let thisPeer = this.getPeer()
            thisPeer.set_onChangeEvent_selectedAttribute(callback_casted)
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
class AlphabetIndexerAttributeStyleHolder {
    var value: ?((attributes: AlphabetIndexerAttribute) -> Unit)
    init (value: ?((attributes: AlphabetIndexerAttribute) -> Unit)) {
        this.value = value
    }
}

class AlphabetIndexerAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkAlphabetIndexer(
        style: ?((attributes: AlphabetIndexerAttribute) -> Unit),
        content_: ?(() -> Unit),
options: AlphabetIndexerOptions
    ): Unit {
        let styleHolder = AlphabetIndexerAttributeStyleHolder(style)
        let contentHolder = AlphabetIndexerAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkAlphabetIndexerComponent()
        })
        NodeAttach<ArkAlphabetIndexerPeer>({ => ArkAlphabetIndexerPeer.create(receiver, 0) }) {
            receiver.setAlphabetIndexerOptions(options)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
