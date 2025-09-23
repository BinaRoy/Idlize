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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class SheetTitleOptions {
    public var title: Option<ResourceStr>
    public var subtitle: Option<ResourceStr>
    init(title: Option<ResourceStr>, subtitle: Option<ResourceStr>) {
        this.title = title
        this.subtitle = subtitle
    }
}
public class SheetTitleOptions_serializer {
    public  static func write(buffer: SerializerBase, value: SheetTitleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTitle = value.title
        if (let Some(valueHolderForTitle) <- valueHolderForTitle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTitleTmpValue = valueHolderForTitle
            if (valueHolderForTitleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForTitleTmpValueForIdx0 = valueHolderForTitleTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForTitleTmpValueForIdx0)
            } else if (valueHolderForTitleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForTitleTmpValueForIdx1 = valueHolderForTitleTmpValue.getValue1()
                Resource_serializer.write(valueSerializer, valueHolderForTitleTmpValueForIdx1)
            } else {
                throw Exception("One of the branches for valueHolderForTitleTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForSubtitle = value.subtitle
        if (let Some(valueHolderForSubtitle) <- valueHolderForSubtitle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForSubtitleTmpValue = valueHolderForSubtitle
            if (valueHolderForSubtitleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForSubtitleTmpValueForIdx0 = valueHolderForSubtitleTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSubtitleTmpValueForIdx0)
            } else if (valueHolderForSubtitleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForSubtitleTmpValueForIdx1 = valueHolderForSubtitleTmpValue.getValue1()
                Resource_serializer.write(valueSerializer, valueHolderForSubtitleTmpValueForIdx1)
            } else {
                throw Exception("One of the branches for valueHolderForSubtitleTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): SheetTitleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let titleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var titleTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(titleTmpBuf_runtimeType))) {
            let titleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var titleTmpBuf_: ResourceStr 
            if (titleTmpBuf_UnionSelector == Int8(0)) {
                titleTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (titleTmpBuf_UnionSelector == Int8(1)) {
                titleTmpBuf_ = ResourceStr(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for titleTmpBuf_ has to be chosen through deserialisation.")
            }
            titleTmpBuf = match (titleTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let titleTmpResult: Option<ResourceStr> = titleTmpBuf
        let subtitleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var subtitleTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(subtitleTmpBuf_runtimeType))) {
            let subtitleTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var subtitleTmpBuf_: ResourceStr 
            if (subtitleTmpBuf_UnionSelector == Int8(0)) {
                subtitleTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (subtitleTmpBuf_UnionSelector == Int8(1)) {
                subtitleTmpBuf_ = ResourceStr(Resource_serializer.read(valueDeserializer))
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
