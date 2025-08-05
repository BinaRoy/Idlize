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
public interface TextClockConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop timeZoneOffset: Float64
    public mut open prop started: Bool
    public mut open prop timeValue: Float64
}
public open class TextClockConfiguration <: TextClockConfigurationInterfaces {
    private var timeZoneOffset_container: Float64
    public mut open prop timeZoneOffset: Float64
    {
        get() {
            return timeZoneOffset_container
        }
        set(timeZoneOffset) {
            timeZoneOffset_container = timeZoneOffset
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
    private var timeValue_container: Float64
    public mut open prop timeValue: Float64
    {
        get() {
            return timeValue_container
        }
        set(timeValue) {
            timeValue_container = timeValue
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
    TextClockConfiguration(timeZoneOffset: Float64, started: Bool, timeValue: Float64, enabled: Bool, contentModifier: ContentModifier<T>) {
        this.timeZoneOffset_container = timeZoneOffset
        this.started_container = started
        this.timeValue_container = timeValue
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class TextClockConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: TextClockConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForTimeZoneOffset = value.timeZoneOffset
        valueSerializer.writeNumber(valueHolderForTimeZoneOffset);
        let valueHolderForStarted = value.started
        valueSerializer.writeBoolean(valueHolderForStarted);
        let valueHolderForTimeValue = value.timeValue
        valueSerializer.writeNumber(valueHolderForTimeValue);
    }
    public static func read(buffer: DeserializerBase): TextClockConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<TextClockConfiguration> = match (valueDeserializer.readObject() as ContentModifier<TextClockConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let timeZoneOffsetTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let startedTmpResult: Bool = valueDeserializer.readBoolean()
        let timeValueTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TextClockConfiguration = TextClockConfiguration(timeZoneOffsetTmpResult, startedTmpResult, timeValueTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
