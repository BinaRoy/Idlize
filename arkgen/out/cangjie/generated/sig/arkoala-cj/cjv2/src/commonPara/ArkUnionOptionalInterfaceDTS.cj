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

public class UnionOptionalInterfaceDTS {
    public var unionProp: String
    init(unionProp: String) {
        this.unionProp = unionProp
    }
}
public class UnionOptionalInterfaceDTS_serializer {
    public  static func write(buffer: SerializerBase, value: UnionOptionalInterfaceDTS): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForUnionProp = value.unionProp
        valueSerializer.writeString(valueHolderForUnionProp)
    }
    public  static func read(buffer: DeserializerBase): UnionOptionalInterfaceDTS {
        var valueDeserializer: DeserializerBase = buffer
        let unionPropTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: UnionOptionalInterfaceDTS = UnionOptionalInterfaceDTS(unionPropTmpResult)
        return value
    }
}
