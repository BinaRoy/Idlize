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
public interface IntelligentTrackingPreventionDetailsInterfaces <:  {
    public mut open prop host: String
    public mut open prop trackerHost: String
}
public open class IntelligentTrackingPreventionDetails <: IntelligentTrackingPreventionDetailsInterfaces {
    private var host_container: String
    public mut open prop host: String
    {
        get() {
            return host_container
        }
        set(host) {
            host_container = host
        }
    }
    private var trackerHost_container: String
    public mut open prop trackerHost: String
    {
        get() {
            return trackerHost_container
        }
        set(trackerHost) {
            trackerHost_container = trackerHost
        }
    }
    IntelligentTrackingPreventionDetails(host: String, trackerHost: String) {
        this.host_container = host
        this.trackerHost_container = trackerHost
    }
}
public open class IntelligentTrackingPreventionDetails_serializer {
    public static func write(buffer: SerializerBase, value: IntelligentTrackingPreventionDetails): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHost = value.host
        valueSerializer.writeString(valueHolderForHost);
        let valueHolderForTrackerHost = value.trackerHost
        valueSerializer.writeString(valueHolderForTrackerHost);
    }
    public static func read(buffer: DeserializerBase): IntelligentTrackingPreventionDetails {
        var valueDeserializer: DeserializerBase = buffer
        let hostTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let trackerHostTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: IntelligentTrackingPreventionDetails = IntelligentTrackingPreventionDetails(hostTmpResult, trackerHostTmpResult)
        return value
    }
}
