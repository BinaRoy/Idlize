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
public interface OnFaviconReceivedEventInterfaces <:  {
    public mut open prop favicon: PixelMap
    public mut open prop favicon: PixelMap
}
public open class OnFaviconReceivedEvent <: OnFaviconReceivedEventInterfaces {
    private var favicon_container: PixelMap
    public mut open prop favicon: PixelMap
    {
        get() {
            return favicon_container
        }
        set(favicon) {
            favicon_container = favicon
        }
    }
    private var favicon_container: PixelMap
    public mut open prop favicon: PixelMap
    {
        get() {
            return favicon_container
        }
        set(favicon) {
            favicon_container = favicon
        }
    }
    OnFaviconReceivedEvent(favicon: PixelMap, favicon: PixelMap) {
        this.favicon_container = favicon
        this.favicon_container = favicon
    }
}
public open class OnFaviconReceivedEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnFaviconReceivedEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFavicon = value.favicon
        valueSerializer.writeCustomObject("Any", valueHolderForFavicon);
        let valueHolderForFavicon = value.favicon
        valueSerializer.writeCustomObject("Any", valueHolderForFavicon);
    }
    public static func read(buffer: DeserializerBase): OnFaviconReceivedEvent {
        var valueDeserializer: DeserializerBase = buffer
        let faviconTmpResult: PixelMap = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let faviconTmpResult: PixelMap = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnFaviconReceivedEvent = OnFaviconReceivedEvent(faviconTmpResult, faviconTmpResult)
        return value
    }
}
