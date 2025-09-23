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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime
public interface ContentModifier<T> {}

public class ContentModifierHelper {
    private  static func contentModifierButton_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierButton(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierButton_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierButton(node)
    }
    private  static func contentModifierCheckBox_serialize(node: UInt64, contentModifier: ContentModifier<CheckBoxConfiguration>, builder: ((parentNode: UInt64, config: CheckBoxConfiguration) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierCheckBox(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierCheckBox_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierCheckBox(node)
    }
    private  static func contentModifierDataPanel_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierDataPanel(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierDataPanel_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierDataPanel(node)
    }
    private  static func contentModifierGauge_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierGauge(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierGauge_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierGauge(node)
    }
    private  static func contentModifierLoadingProgress_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierLoadingProgress(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierLoadingProgress_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierLoadingProgress(node)
    }
    private  static func contentModifierProgress_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierProgress(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierProgress_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierProgress(node)
    }
    private  static func contentModifierRadio_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierRadio(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierRadio_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierRadio(node)
    }
    private  static func contentModifierRating_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierRating(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierRating_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierRating(node)
    }
    private  static func contentModifierMenuItem_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierMenuItem(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierMenuItem_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierMenuItem(node)
    }
    private  static func contentModifierSlider_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierSlider(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierSlider_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierSlider(node)
    }
    private  static func contentModifierTextClock_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierTextClock(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierTextClock_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierTextClock(node)
    }
    private  static func contentModifierTextTimer_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierTextTimer(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierTextTimer_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierTextTimer(node)
    }
    private  static func contentModifierToggle_serialize(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(contentModifier)
        thisSerializer.holdAndWriteCallback(builder)
        ArkUIGeneratedNativeModule._ContentModifierHelper_contentModifierToggle(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func resetContentModifierToggle_serialize(node: UInt64): Unit {
        ArkUIGeneratedNativeModule._ContentModifierHelper_resetContentModifierToggle(node)
    }
    public  static func contentModifierButton(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierButton_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierButton(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierButton_serialize(node_casted)
        return
    }
    public  static func contentModifierCheckBox(node: UInt64, contentModifier: ContentModifier<CheckBoxConfiguration>, builder: ((parentNode: UInt64, config: CheckBoxConfiguration) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<CheckBoxConfiguration> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: CheckBoxConfiguration) -> UInt64) = builder
        ContentModifierHelper.contentModifierCheckBox_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierCheckBox(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierCheckBox_serialize(node_casted)
        return
    }
    public  static func contentModifierDataPanel(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierDataPanel_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierDataPanel(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierDataPanel_serialize(node_casted)
        return
    }
    public  static func contentModifierGauge(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierGauge_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierGauge(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierGauge_serialize(node_casted)
        return
    }
    public  static func contentModifierLoadingProgress(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierLoadingProgress_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierLoadingProgress(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierLoadingProgress_serialize(node_casted)
        return
    }
    public  static func contentModifierProgress(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierProgress_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierProgress(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierProgress_serialize(node_casted)
        return
    }
    public  static func contentModifierRadio(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierRadio_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierRadio(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierRadio_serialize(node_casted)
        return
    }
    public  static func contentModifierRating(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierRating_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierRating(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierRating_serialize(node_casted)
        return
    }
    public  static func contentModifierMenuItem(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierMenuItem_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierMenuItem(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierMenuItem_serialize(node_casted)
        return
    }
    public  static func contentModifierSlider(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierSlider_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierSlider(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierSlider_serialize(node_casted)
        return
    }
    public  static func contentModifierTextClock(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierTextClock_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierTextClock(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierTextClock_serialize(node_casted)
        return
    }
    public  static func contentModifierTextTimer(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierTextTimer_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierTextTimer(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierTextTimer_serialize(node_casted)
        return
    }
    public  static func contentModifierToggle(node: UInt64, contentModifier: ContentModifier<Any>, builder: ((parentNode: UInt64, config: Any) -> UInt64)): Unit {
        let node_casted: UInt64 = node
        let contentModifier_casted: ContentModifier<Any> = contentModifier
        let builder_casted: ((parentNode: UInt64, config: Any) -> UInt64) = builder
        ContentModifierHelper.contentModifierToggle_serialize(node_casted, contentModifier_casted, builder_casted)
        return
    }
    public  static func resetContentModifierToggle(node: UInt64): Unit {
        let node_casted: UInt64 = node
        ContentModifierHelper.resetContentModifierToggle_serialize(node_casted)
        return
    }
}
