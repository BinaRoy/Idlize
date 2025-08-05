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
public interface OnGeolocationShowEventInterfaces <:  {
    public mut open prop origin: String
    public mut open prop geolocation: JsGeolocation
}
public open class OnGeolocationShowEvent <: OnGeolocationShowEventInterfaces {
    private var origin_container: String
    public mut open prop origin: String
    {
        get() {
            return origin_container
        }
        set(origin) {
            origin_container = origin
        }
    }
    private var geolocation_container: JsGeolocation
    public mut open prop geolocation: JsGeolocation
    {
        get() {
            return geolocation_container
        }
        set(geolocation) {
            geolocation_container = geolocation
        }
    }
    OnGeolocationShowEvent(origin: String, geolocation: JsGeolocation) {
        this.origin_container = origin
        this.geolocation_container = geolocation
    }
}
public open class OnGeolocationShowEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnGeolocationShowEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOrigin = value.origin
        valueSerializer.writeString(valueHolderForOrigin);
        let valueHolderForGeolocation = value.geolocation
        JsGeolocation_serializer.write(valueSerializer, valueHolderForGeolocation);
    }
    public static func read(buffer: DeserializerBase): OnGeolocationShowEvent {
        var valueDeserializer: DeserializerBase = buffer
        let originTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let geolocationTmpResult: JsGeolocation = match (JsGeolocation_serializer.read(valueDeserializer) as JsGeolocation) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnGeolocationShowEvent = OnGeolocationShowEvent(originTmpResult, geolocationTmpResult)
        return value
    }
}
