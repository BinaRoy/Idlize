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
public interface SheetTitleOptionsInterfaces <:  {
    public mut open prop title: ResourceStr
    public mut open prop subtitle: Option<ResourceStr>
}
public open class SheetTitleOptions <: SheetTitleOptionsInterfaces {
    private var title_container: ResourceStr
    public mut open prop title: ResourceStr
    {
        get() {
            return title_container
        }
        set(title) {
            title_container = title
        }
    }
    private var subtitle_container: Option<ResourceStr>
    public mut open prop subtitle: Option<ResourceStr>
    {
        get() {
            return subtitle_container
        }
        set(subtitle) {
            subtitle_container = subtitle
        }
    }
    SheetTitleOptions(title: ResourceStr, subtitle: Option<ResourceStr>) {
        this.title_container = title
        this.subtitle_container = subtitle
    }
}
public open class SheetTitleOptions_serializer {
    public static func write(buffer: SerializerBase, value: SheetTitleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTitle = value.title
        if (valueHolderForTitle.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForTitleForIdx0 = valueHolderForTitle.getValue0()
            valueSerializer.writeString(valueHolderForTitleForIdx0);
        } else if (valueHolderForTitle.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForTitleForIdx1 = valueHolderForTitle.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForTitleForIdx1);
        }
        let valueHolderForSubtitle = value.subtitle
        if (valueHolderForSubtitle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSubtitleTmpValue = valueHolderForSubtitle
            if (valueHolderForSubtitleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSubtitleTmpValueForIdx0 = valueHolderForSubtitleTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSubtitleTmpValueForIdx0);
            } else if (valueHolderForSubtitleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSubtitleTmpValueForIdx1 = valueHolderForSubtitleTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSubtitleTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SheetTitleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let titleTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var titleTmpBuf: ResourceStr 
        if (titleTmpBufUnionSelector == Int8(0)) {
            titleTmpBuf = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (titleTmpBufUnionSelector == Int8(1)) {
            titleTmpBuf = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for titleTmpBuf has to be chosen through deserialisation.")
        }
        let titleTmpResult: ResourceStr = match (titleTmpBuf as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let subtitleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var subtitleTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(subtitleTmpBuf_runtimeType))) {
            let subtitleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var subtitleTmpBuf_: ResourceStr 
            if (subtitleTmpBuf_UnionSelector == Int8(0)) {
                subtitleTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (subtitleTmpBuf_UnionSelector == Int8(1)) {
                subtitleTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for subtitleTmpBuf_ has to be chosen through deserialisation.")
            }
            subtitleTmpBuf = match (subtitleTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let subtitleTmpResult: Option<ResourceStr> = subtitleTmpBuf
        var value: SheetTitleOptions = SheetTitleOptions(titleTmpResult, subtitleTmpResult)
        return value
    }
}
