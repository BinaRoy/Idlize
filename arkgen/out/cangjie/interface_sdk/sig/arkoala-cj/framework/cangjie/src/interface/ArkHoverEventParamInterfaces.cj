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
public interface HoverEventParamInterfaces <:  {
    public mut open prop foldStatus: FoldStatus
    public mut open prop isHoverMode: Bool
    public mut open prop appRotation: AppRotation
    public mut open prop windowStatusType: WindowStatusType
}
public open class HoverEventParam <: HoverEventParamInterfaces {
    private var foldStatus_container: FoldStatus
    public mut open prop foldStatus: FoldStatus
    {
        get() {
            return foldStatus_container
        }
        set(foldStatus) {
            foldStatus_container = foldStatus
        }
    }
    private var isHoverMode_container: Bool
    public mut open prop isHoverMode: Bool
    {
        get() {
            return isHoverMode_container
        }
        set(isHoverMode) {
            isHoverMode_container = isHoverMode
        }
    }
    private var appRotation_container: AppRotation
    public mut open prop appRotation: AppRotation
    {
        get() {
            return appRotation_container
        }
        set(appRotation) {
            appRotation_container = appRotation
        }
    }
    private var windowStatusType_container: WindowStatusType
    public mut open prop windowStatusType: WindowStatusType
    {
        get() {
            return windowStatusType_container
        }
        set(windowStatusType) {
            windowStatusType_container = windowStatusType
        }
    }
    HoverEventParam(foldStatus: FoldStatus, isHoverMode: Bool, appRotation: AppRotation, windowStatusType: WindowStatusType) {
        this.foldStatus_container = foldStatus
        this.isHoverMode_container = isHoverMode
        this.appRotation_container = appRotation
        this.windowStatusType_container = windowStatusType
    }
}
public open class HoverEventParam_serializer {
    public static func write(buffer: SerializerBase, value: HoverEventParam): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFoldStatus = value.foldStatus
        valueSerializer.writeInt32(valueHolderForFoldStatus.value);
        let valueHolderForIsHoverMode = value.isHoverMode
        valueSerializer.writeBoolean(valueHolderForIsHoverMode);
        let valueHolderForAppRotation = value.appRotation
        valueSerializer.writeInt32(valueHolderForAppRotation.value);
        let valueHolderForWindowStatusType = value.windowStatusType
        valueSerializer.writeCustomObject("Any", valueHolderForWindowStatusType);
    }
    public static func read(buffer: DeserializerBase): HoverEventParam {
        var valueDeserializer: DeserializerBase = buffer
        let foldStatusTmpResult: FoldStatus = FoldStatus(valueDeserializer.readInt32())
        let isHoverModeTmpResult: Bool = valueDeserializer.readBoolean()
        let appRotationTmpResult: AppRotation = AppRotation(valueDeserializer.readInt32())
        let windowStatusTypeTmpResult: WindowStatusType = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: HoverEventParam = HoverEventParam(foldStatusTmpResult, isHoverModeTmpResult, appRotationTmpResult, windowStatusTypeTmpResult)
        return value
    }
}
