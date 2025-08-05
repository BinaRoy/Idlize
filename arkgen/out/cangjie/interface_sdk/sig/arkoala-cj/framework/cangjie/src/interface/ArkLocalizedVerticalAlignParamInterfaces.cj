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
public interface LocalizedVerticalAlignParamInterfaces <:  {
    public mut open prop anchor: String
    public mut open prop align: VerticalAlign
}
public open class LocalizedVerticalAlignParam <: LocalizedVerticalAlignParamInterfaces {
    private var anchor_container: String
    public mut open prop anchor: String
    {
        get() {
            return anchor_container
        }
        set(anchor) {
            anchor_container = anchor
        }
    }
    private var align_container: VerticalAlign
    public mut open prop align: VerticalAlign
    {
        get() {
            return align_container
        }
        set(align) {
            align_container = align
        }
    }
    LocalizedVerticalAlignParam(anchor: String, align: VerticalAlign) {
        this.anchor_container = anchor
        this.align_container = align
    }
}
public open class LocalizedVerticalAlignParam_serializer {
    public static func write(buffer: SerializerBase, value: LocalizedVerticalAlignParam): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAnchor = value.anchor
        valueSerializer.writeString(valueHolderForAnchor);
        let valueHolderForAlign = value.align
        valueSerializer.writeInt32(valueHolderForAlign.value);
    }
    public static func read(buffer: DeserializerBase): LocalizedVerticalAlignParam {
        var valueDeserializer: DeserializerBase = buffer
        let anchorTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let alignTmpResult: VerticalAlign = VerticalAlign(valueDeserializer.readInt32())
        var value: LocalizedVerticalAlignParam = LocalizedVerticalAlignParam(anchorTmpResult, alignTmpResult)
        return value
    }
}
