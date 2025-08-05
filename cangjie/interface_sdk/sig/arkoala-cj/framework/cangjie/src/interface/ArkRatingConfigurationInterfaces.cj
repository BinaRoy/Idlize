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
public interface RatingConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop rating: Float64
    public mut open prop indicator: Bool
    public mut open prop stars: Float64
    public mut open prop stepSize: Float64
    public mut open prop triggerChange: ((parameter: Float64) -> Unit)
}
public open class RatingConfiguration <: RatingConfigurationInterfaces {
    private var rating_container: Float64
    public mut open prop rating: Float64
    {
        get() {
            return rating_container
        }
        set(rating) {
            rating_container = rating
        }
    }
    private var indicator_container: Bool
    public mut open prop indicator: Bool
    {
        get() {
            return indicator_container
        }
        set(indicator) {
            indicator_container = indicator
        }
    }
    private var stars_container: Float64
    public mut open prop stars: Float64
    {
        get() {
            return stars_container
        }
        set(stars) {
            stars_container = stars
        }
    }
    private var stepSize_container: Float64
    public mut open prop stepSize: Float64
    {
        get() {
            return stepSize_container
        }
        set(stepSize) {
            stepSize_container = stepSize
        }
    }
    private var triggerChange_container: ((parameter: Float64) -> Unit)
    public mut open prop triggerChange: ((parameter: Float64) -> Unit)
    {
        get() {
            return triggerChange_container
        }
        set(triggerChange) {
            triggerChange_container = triggerChange
        }
    }
    private var enabled_container: Bool
    public mut open prop enabled: Bool
    {
        get() {
            return enabled_container
        }
        set(enabled) {
            enabled_container = enabled
        }
    }
    private var contentModifier_container: ContentModifier<T>
    public mut open prop contentModifier: ContentModifier<T>
    {
        get() {
            return contentModifier_container
        }
        set(contentModifier) {
            contentModifier_container = contentModifier
        }
    }
    RatingConfiguration(rating: Float64, indicator: Bool, stars: Float64, stepSize: Float64, triggerChange: ((parameter: Float64) -> Unit), enabled: Bool, contentModifier: ContentModifier<T>) {
        this.rating_container = rating
        this.indicator_container = indicator
        this.stars_container = stars
        this.stepSize_container = stepSize
        this.triggerChange_container = triggerChange
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class RatingConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: RatingConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForRating = value.rating
        valueSerializer.writeNumber(valueHolderForRating);
        let valueHolderForIndicator = value.indicator
        valueSerializer.writeBoolean(valueHolderForIndicator);
        let valueHolderForStars = value.stars
        valueSerializer.writeNumber(valueHolderForStars);
        let valueHolderForStepSize = value.stepSize
        valueSerializer.writeNumber(valueHolderForStepSize);
        let valueHolderForTriggerChange = value.triggerChange
        valueSerializer.holdAndWriteCallback(valueHolderForTriggerChange);
    }
    public static func read(buffer: DeserializerBase): RatingConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<RatingConfiguration> = match (valueDeserializer.readObject() as ContentModifier<RatingConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let ratingTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let indicatorTmpResult: Bool = valueDeserializer.readBoolean()
        let starsTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let stepSizeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let triggerChangeTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let triggerChangeTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let triggerChangeTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let triggerChangeTmpResult: ((parameter: Float64) -> Unit) = {parameter: Float64 => let triggerChangeTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
triggerChangeTmpBufBufArgsSerializer.writeInt32(triggerChangeTmpBufBufResource.resourceId);
triggerChangeTmpBufBufArgsSerializer.writePointer(triggerChangeTmpBufBufCall);
triggerChangeTmpBufBufArgsSerializer.writePointer(triggerChangeTmpBufBufCallSync);
triggerChangeTmpBufBufArgsSerializer.writeNumber(parameter);
InteropNativeModule._CallCallback(36519084, triggerChangeTmpBufBufArgsSerializer.asBuffer(), triggerChangeTmpBufBufArgsSerializer.length());
triggerChangeTmpBufBufArgsSerializer.release();
return; }
        var value: RatingConfiguration = RatingConfiguration(ratingTmpResult, indicatorTmpResult, starsTmpResult, stepSizeTmpResult, triggerChangeTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
