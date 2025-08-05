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
public interface AdsBlockedDetailsInterfaces <:  {
    public mut open prop url: String
    public mut open prop adsBlocked: ArrayList<String>
}
public open class AdsBlockedDetails <: AdsBlockedDetailsInterfaces {
    private var url_container: String
    public mut open prop url: String
    {
        get() {
            return url_container
        }
        set(url) {
            url_container = url
        }
    }
    private var adsBlocked_container: ArrayList<String>
    public mut open prop adsBlocked: ArrayList<String>
    {
        get() {
            return adsBlocked_container
        }
        set(adsBlocked) {
            adsBlocked_container = adsBlocked
        }
    }
    AdsBlockedDetails(url: String, adsBlocked: ArrayList<String>) {
        this.url_container = url
        this.adsBlocked_container = adsBlocked
    }
}
public open class AdsBlockedDetails_serializer {
    public static func write(buffer: SerializerBase, value: AdsBlockedDetails): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForUrl = value.url
        valueSerializer.writeString(valueHolderForUrl);
        let valueHolderForAdsBlocked = value.adsBlocked
        valueSerializer.writeInt32(Int32(valueHolderForAdsBlocked.size));
        for (valueHolderForAdsBlockedCounterI in 0..valueHolderForAdsBlocked.size) {
            let valueHolderForAdsBlockedTmpElement: String = valueHolderForAdsBlocked[Int64(valueHolderForAdsBlockedCounterI)]
            valueSerializer.writeString(valueHolderForAdsBlockedTmpElement);
        }
    }
    public static func read(buffer: DeserializerBase): AdsBlockedDetails {
        var valueDeserializer: DeserializerBase = buffer
        let urlTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let adsBlockedTmpBufLength: Int32 = valueDeserializer.readInt32()
        var adsBlockedTmpBuf: ArrayList<String> = ArrayList<String>(Int64(adsBlockedTmpBufLength))
        adsBlockedTmpBuf = ArrayList<String>(Int64(adsBlockedTmpBufLength))
        for (adsBlockedTmpBufBufCounterI in 0..adsBlockedTmpBufLength) {
            adsBlockedTmpBuf[Int64(adsBlockedTmpBufBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let adsBlockedTmpResult: ArrayList<String> = adsBlockedTmpBuf
        var value: AdsBlockedDetails = AdsBlockedDetails(urlTmpResult, adsBlockedTmpResult)
        return value
    }
}
