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
public interface StarStyleOptionsInterfaces <:  {
    public mut open prop backgroundUri: ResourceStr
    public mut open prop foregroundUri: ResourceStr
    public mut open prop secondaryUri: Option<ResourceStr>
}
public open class StarStyleOptions <: StarStyleOptionsInterfaces {
    private var backgroundUri_container: ResourceStr
    public mut open prop backgroundUri: ResourceStr
    {
        get() {
            return backgroundUri_container
        }
        set(backgroundUri) {
            backgroundUri_container = backgroundUri
        }
    }
    private var foregroundUri_container: ResourceStr
    public mut open prop foregroundUri: ResourceStr
    {
        get() {
            return foregroundUri_container
        }
        set(foregroundUri) {
            foregroundUri_container = foregroundUri
        }
    }
    private var secondaryUri_container: Option<ResourceStr>
    public mut open prop secondaryUri: Option<ResourceStr>
    {
        get() {
            return secondaryUri_container
        }
        set(secondaryUri) {
            secondaryUri_container = secondaryUri
        }
    }
    StarStyleOptions(backgroundUri: ResourceStr, foregroundUri: ResourceStr, secondaryUri: Option<ResourceStr>) {
        this.backgroundUri_container = backgroundUri
        this.foregroundUri_container = foregroundUri
        this.secondaryUri_container = secondaryUri
    }
}
public open class StarStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: StarStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBackgroundUri = value.backgroundUri
        if (valueHolderForBackgroundUri.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForBackgroundUriForIdx0 = valueHolderForBackgroundUri.getValue0()
            valueSerializer.writeString(valueHolderForBackgroundUriForIdx0);
        } else if (valueHolderForBackgroundUri.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForBackgroundUriForIdx1 = valueHolderForBackgroundUri.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForBackgroundUriForIdx1);
        }
        let valueHolderForForegroundUri = value.foregroundUri
        if (valueHolderForForegroundUri.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForForegroundUriForIdx0 = valueHolderForForegroundUri.getValue0()
            valueSerializer.writeString(valueHolderForForegroundUriForIdx0);
        } else if (valueHolderForForegroundUri.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForForegroundUriForIdx1 = valueHolderForForegroundUri.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForForegroundUriForIdx1);
        }
        let valueHolderForSecondaryUri = value.secondaryUri
        if (valueHolderForSecondaryUri.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSecondaryUriTmpValue = valueHolderForSecondaryUri
            if (valueHolderForSecondaryUriTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSecondaryUriTmpValueForIdx0 = valueHolderForSecondaryUriTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSecondaryUriTmpValueForIdx0);
            } else if (valueHolderForSecondaryUriTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSecondaryUriTmpValueForIdx1 = valueHolderForSecondaryUriTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSecondaryUriTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): StarStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let backgroundUriTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var backgroundUriTmpBuf: ResourceStr 
        if (backgroundUriTmpBufUnionSelector == Int8(0)) {
            backgroundUriTmpBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (backgroundUriTmpBufUnionSelector == Int8(1)) {
            backgroundUriTmpBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for backgroundUriTmpBuf has to be chosen through deserialisation.")
        }
        let backgroundUriTmpResult: ResourceStr = match (backgroundUriTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let foregroundUriTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var foregroundUriTmpBuf: ResourceStr 
        if (foregroundUriTmpBufUnionSelector == Int8(0)) {
            foregroundUriTmpBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (foregroundUriTmpBufUnionSelector == Int8(1)) {
            foregroundUriTmpBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for foregroundUriTmpBuf has to be chosen through deserialisation.")
        }
        let foregroundUriTmpResult: ResourceStr = match (foregroundUriTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let secondaryUriTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var secondaryUriTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(secondaryUriTmpBuf_runtimeType))) {
            let secondaryUriTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var secondaryUriTmpBuf_: ResourceStr 
            if (secondaryUriTmpBuf_UnionSelector == Int8(0)) {
                secondaryUriTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (secondaryUriTmpBuf_UnionSelector == Int8(1)) {
                secondaryUriTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for secondaryUriTmpBuf_ has to be chosen through deserialisation.")
            }
            secondaryUriTmpBuf = match (secondaryUriTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let secondaryUriTmpResult: Option<ResourceStr> = secondaryUriTmpBuf
        var value: StarStyleOptions = StarStyleOptions(backgroundUriTmpResult, foregroundUriTmpResult, secondaryUriTmpResult)
        return value
    }
}
