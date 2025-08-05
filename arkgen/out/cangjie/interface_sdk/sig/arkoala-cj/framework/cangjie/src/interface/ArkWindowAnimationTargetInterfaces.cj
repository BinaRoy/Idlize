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
public interface WindowAnimationTargetInterfaces <:  {
    public open prop bundleName: String
    public open prop abilityName: String
    public open prop windowBounds: RRect
    public open prop missionId: Float64
}
public open class WindowAnimationTarget <: WindowAnimationTargetInterfaces {
    private var bundleName_container: String
    public open prop bundleName: String
    {
        get() {
            return bundleName_container
        }
    }
    private var abilityName_container: String
    public open prop abilityName: String
    {
        get() {
            return abilityName_container
        }
    }
    private var windowBounds_container: RRect
    public open prop windowBounds: RRect
    {
        get() {
            return windowBounds_container
        }
    }
    private var missionId_container: Float64
    public open prop missionId: Float64
    {
        get() {
            return missionId_container
        }
    }
    WindowAnimationTarget(bundleName: String, abilityName: String, windowBounds: RRect, missionId: Float64) {
        this.bundleName_container = bundleName
        this.abilityName_container = abilityName
        this.windowBounds_container = windowBounds
        this.missionId_container = missionId
    }
}
public open class WindowAnimationTarget_serializer {
    public static func write(buffer: SerializerBase, value: WindowAnimationTarget): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBundleName = value.bundleName
        valueSerializer.writeString(valueHolderForBundleName);
        let valueHolderForAbilityName = value.abilityName
        valueSerializer.writeString(valueHolderForAbilityName);
        let valueHolderForWindowBounds = value.windowBounds
        RRect_serializer.write(valueSerializer, valueHolderForWindowBounds);
        let valueHolderForMissionId = value.missionId
        valueSerializer.writeNumber(valueHolderForMissionId);
    }
    public static func read(buffer: DeserializerBase): WindowAnimationTarget {
        var valueDeserializer: DeserializerBase = buffer
        let bundleNameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let abilityNameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let windowBoundsTmpResult: RRect = RRect_serializer.read(valueDeserializer)
        let missionIdTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: WindowAnimationTarget = WindowAnimationTarget(bundleNameTmpResult, abilityNameTmpResult, windowBoundsTmpResult, missionIdTmpResult)
        return value
    }
}
