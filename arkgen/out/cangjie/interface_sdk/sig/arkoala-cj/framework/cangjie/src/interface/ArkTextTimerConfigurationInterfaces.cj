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
public interface TextTimerConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop count: Float64
    public mut open prop isCountDown: Bool
    public mut open prop started: Bool
    public mut open prop elapsedTime: Float64
}
public open class TextTimerConfiguration <: TextTimerConfigurationInterfaces {
    private var count_container: Float64
    public mut open prop count: Float64
    {
        get() {
            return count_container
        }
        set(count) {
            count_container = count
        }
    }
    private var isCountDown_container: Bool
    public mut open prop isCountDown: Bool
    {
        get() {
            return isCountDown_container
        }
        set(isCountDown) {
            isCountDown_container = isCountDown
        }
    }
    private var started_container: Bool
    public mut open prop started: Bool
    {
        get() {
            return started_container
        }
        set(started) {
            started_container = started
        }
    }
    private var elapsedTime_container: Float64
    public mut open prop elapsedTime: Float64
    {
        get() {
            return elapsedTime_container
        }
        set(elapsedTime) {
            elapsedTime_container = elapsedTime
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
    TextTimerConfiguration(count: Float64, isCountDown: Bool, started: Bool, elapsedTime: Float64, enabled: Bool, contentModifier: ContentModifier<T>) {
        this.count_container = count
        this.isCountDown_container = isCountDown
        this.started_container = started
        this.elapsedTime_container = elapsedTime
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class TextTimerConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: TextTimerConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForCount = value.count
        valueSerializer.writeNumber(valueHolderForCount);
        let valueHolderForIsCountDown = value.isCountDown
        valueSerializer.writeBoolean(valueHolderForIsCountDown);
        let valueHolderForStarted = value.started
        valueSerializer.writeBoolean(valueHolderForStarted);
        let valueHolderForElapsedTime = value.elapsedTime
        valueSerializer.writeNumber(valueHolderForElapsedTime);
    }
    public static func read(buffer: DeserializerBase): TextTimerConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<TextTimerConfiguration> = match (valueDeserializer.readObject() as ContentModifier<TextTimerConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let countTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let isCountDownTmpResult: Bool = valueDeserializer.readBoolean()
        let startedTmpResult: Bool = valueDeserializer.readBoolean()
        let elapsedTimeTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TextTimerConfiguration = TextTimerConfiguration(countTmpResult, isCountDownTmpResult, startedTmpResult, elapsedTimeTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
