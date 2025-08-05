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
public interface RichEditorUrlStyleInterfaces <:  {
    public mut open prop url: Option<ResourceStr>
}
public open class RichEditorUrlStyle <: RichEditorUrlStyleInterfaces {
    private var url_container: Option<ResourceStr>
    public mut open prop url: Option<ResourceStr>
    {
        get() {
            return url_container
        }
        set(url) {
            url_container = url
        }
    }
    RichEditorUrlStyle(url: Option<ResourceStr>) {
        this.url_container = url
    }
}
public open class RichEditorUrlStyle_serializer {
    public static func write(buffer: SerializerBase, value: RichEditorUrlStyle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForUrl = value.url
        if (valueHolderForUrl.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUrlTmpValue = valueHolderForUrl
            if (valueHolderForUrlTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForUrlTmpValueForIdx0 = valueHolderForUrlTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForUrlTmpValueForIdx0);
            } else if (valueHolderForUrlTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForUrlTmpValueForIdx1 = valueHolderForUrlTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForUrlTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RichEditorUrlStyle {
        var valueDeserializer: DeserializerBase = buffer
        let urlTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var urlTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(urlTmpBuf_runtimeType))) {
            let urlTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var urlTmpBuf_: ResourceStr 
            if (urlTmpBuf_UnionSelector == Int8(0)) {
                urlTmpBuf_ = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (urlTmpBuf_UnionSelector == Int8(1)) {
                urlTmpBuf_ = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for urlTmpBuf_ has to be chosen through deserialisation.")
            }
            urlTmpBuf = match (urlTmpBuf_ as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let urlTmpResult: Option<ResourceStr> = urlTmpBuf
        var value: RichEditorUrlStyle = RichEditorUrlStyle(urlTmpResult)
        return value
    }
}
