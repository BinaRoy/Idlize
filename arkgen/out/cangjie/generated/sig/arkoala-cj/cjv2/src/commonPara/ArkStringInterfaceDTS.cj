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

public class StringInterfaceDTS {
    public var valString: String
    init(valString: String) {
        this.valString = valString
    }
}
public class StringInterfaceDTS_serializer {
    public  static func write(buffer: SerializerBase, value: StringInterfaceDTS): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForValString = value.valString
        valueSerializer.writeString(valueHolderForValString)
    }
    public  static func read(buffer: DeserializerBase): StringInterfaceDTS {
        var valueDeserializer: DeserializerBase = buffer
        let valStringTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: StringInterfaceDTS = StringInterfaceDTS(valStringTmpResult)
        return value
    }
}
