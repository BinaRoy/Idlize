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
public open class ContentModifierHelper {
    static private func contentModifierButton_serialize(node: UInt64, contentModifier: ContentModifier<ButtonConfiguration>, builder: ((parentNode: UInt64, config: ButtonConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierButton(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierCheckBox_serialize(node: UInt64, contentModifier: ContentModifier<CheckBoxConfiguration>, builder: ((parentNode: UInt64, config: CheckBoxConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierCheckBox(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierDataPanel_serialize(node: UInt64, contentModifier: ContentModifier<DataPanelConfiguration>, builder: ((parentNode: UInt64, config: DataPanelConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierDataPanel(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierGauge_serialize(node: UInt64, contentModifier: ContentModifier<GaugeConfiguration>, builder: ((parentNode: UInt64, config: GaugeConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierGauge(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierLoadingProgress_serialize(node: UInt64, contentModifier: ContentModifier<LoadingProgressConfiguration>, builder: ((parentNode: UInt64, config: LoadingProgressConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierLoadingProgress(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierProgress_serialize(node: UInt64, contentModifier: ContentModifier<ProgressConfiguration>, builder: ((parentNode: UInt64, config: ProgressConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierProgress(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierRadio_serialize(node: UInt64, contentModifier: ContentModifier<RadioConfiguration>, builder: ((parentNode: UInt64, config: RadioConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierRadio(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierRating_serialize(node: UInt64, contentModifier: ContentModifier<RatingConfiguration>, builder: ((parentNode: UInt64, config: RatingConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierRating(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierMenuItem_serialize(node: UInt64, contentModifier: ContentModifier<MenuItemConfiguration>, builder: ((parentNode: UInt64, config: MenuItemConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierMenuItem(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierSlider_serialize(node: UInt64, contentModifier: ContentModifier<SliderConfiguration>, builder: ((parentNode: UInt64, config: SliderConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierSlider(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierTextClock_serialize(node: UInt64, contentModifier: ContentModifier<TextClockConfiguration>, builder: ((parentNode: UInt64, config: TextClockConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierTextClock(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierTextTimer_serialize(node: UInt64, contentModifier: ContentModifier<TextTimerConfiguration>, builder: ((parentNode: UInt64, config: TextTimerConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierTextTimer(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func contentModifierToggle_serialize(node: UInt64, contentModifier: ContentModifier<ToggleConfiguration>, builder: ((parentNode: UInt64, config: ToggleConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier);
        thisSerializer.holdAndWriteCallback(builder);
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierToggle(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static public func contentModifierButton(node: UInt64, contentModifier: ContentModifier<ButtonConfiguration>, builder: ((parentNode: UInt64, config: ButtonConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<ButtonConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: ButtonConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierButton_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierCheckBox(node: UInt64, contentModifier: ContentModifier<CheckBoxConfiguration>, builder: ((parentNode: UInt64, config: CheckBoxConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<CheckBoxConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: CheckBoxConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierCheckBox_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierDataPanel(node: UInt64, contentModifier: ContentModifier<DataPanelConfiguration>, builder: ((parentNode: UInt64, config: DataPanelConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<DataPanelConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: DataPanelConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierDataPanel_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierGauge(node: UInt64, contentModifier: ContentModifier<GaugeConfiguration>, builder: ((parentNode: UInt64, config: GaugeConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<GaugeConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: GaugeConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierGauge_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierLoadingProgress(node: UInt64, contentModifier: ContentModifier<LoadingProgressConfiguration>, builder: ((parentNode: UInt64, config: LoadingProgressConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<LoadingProgressConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: LoadingProgressConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierLoadingProgress_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierProgress(node: UInt64, contentModifier: ContentModifier<ProgressConfiguration>, builder: ((parentNode: UInt64, config: ProgressConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<ProgressConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: ProgressConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierProgress_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierRadio(node: UInt64, contentModifier: ContentModifier<RadioConfiguration>, builder: ((parentNode: UInt64, config: RadioConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<RadioConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: RadioConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierRadio_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierRating(node: UInt64, contentModifier: ContentModifier<RatingConfiguration>, builder: ((parentNode: UInt64, config: RatingConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<RatingConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: RatingConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierRating_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierMenuItem(node: UInt64, contentModifier: ContentModifier<MenuItemConfiguration>, builder: ((parentNode: UInt64, config: MenuItemConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<MenuItemConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: MenuItemConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierMenuItem_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierSlider(node: UInt64, contentModifier: ContentModifier<SliderConfiguration>, builder: ((parentNode: UInt64, config: SliderConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<SliderConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: SliderConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierSlider_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierTextClock(node: UInt64, contentModifier: ContentModifier<TextClockConfiguration>, builder: ((parentNode: UInt64, config: TextClockConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<TextClockConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: TextClockConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierTextClock_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierTextTimer(node: UInt64, contentModifier: ContentModifier<TextTimerConfiguration>, builder: ((parentNode: UInt64, config: TextTimerConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<TextTimerConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: TextTimerConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierTextTimer_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    static public func contentModifierToggle(node: UInt64, contentModifier: ContentModifier<ToggleConfiguration>, builder: ((parentNode: UInt64, config: ToggleConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<ToggleConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: ToggleConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierToggle_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
}
