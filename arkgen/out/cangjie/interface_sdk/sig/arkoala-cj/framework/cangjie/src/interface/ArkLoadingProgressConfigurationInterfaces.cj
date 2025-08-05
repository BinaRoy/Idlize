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
public interface LoadingProgressConfigurationInterfaces <: CommonConfigurationInterfaces {
    public mut open prop enableLoading: Bool
}
public open class LoadingProgressConfiguration <: LoadingProgressConfigurationInterfaces {
    private var enableLoading_container: Bool
    public mut open prop enableLoading: Bool
    {
        get() {
            return enableLoading_container
        }
        set(enableLoading) {
            enableLoading_container = enableLoading
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
    LoadingProgressConfiguration(enableLoading: Bool, enabled: Bool, contentModifier: ContentModifier<T>) {
        this.enableLoading_container = enableLoading
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public open class LoadingProgressConfiguration_serializer {
    public static func write(buffer: SerializerBase, value: LoadingProgressConfiguration): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForEnabled = value.enabled
        valueSerializer.writeBoolean(valueHolderForEnabled);
        let valueHolderForContentModifier = value.contentModifier
        valueSerializer.holdAndWriteObject(valueHolderForContentModifier);
        let valueHolderForEnableLoading = value.enableLoading
        valueSerializer.writeBoolean(valueHolderForEnableLoading);
    }
    public static func read(buffer: DeserializerBase): LoadingProgressConfiguration {
        var valueDeserializer: DeserializerBase = buffer
        let enabledTmpResult: Bool = valueDeserializer.readBoolean()
        let contentModifierTmpResult: ContentModifier<LoadingProgressConfiguration> = match (valueDeserializer.readObject() as ContentModifier<LoadingProgressConfiguration>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let enableLoadingTmpResult: Bool = valueDeserializer.readBoolean()
        var value: LoadingProgressConfiguration = LoadingProgressConfiguration(enableLoadingTmpResult, enabledTmpResult, contentModifierTmpResult)
        return value
    }
}
