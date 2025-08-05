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
public interface StackOptionsInterfaces <:  {
    public mut open prop alignContent: Option<Alignment>
}
public open class StackOptions <: StackOptionsInterfaces {
    private var alignContent_container: Option<Alignment>
    public mut open prop alignContent: Option<Alignment>
    {
        get() {
            return alignContent_container
        }
        set(alignContent) {
            alignContent_container = alignContent
        }
    }
    StackOptions(alignContent: Option<Alignment>) {
        this.alignContent_container = alignContent
    }
}
public open class StackOptions_serializer {
    public static func write(buffer: SerializerBase, value: StackOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAlignContent = value.alignContent
        if (valueHolderForAlignContent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAlignContentTmpValue = valueHolderForAlignContent
            valueSerializer.writeInt32(valueHolderForAlignContentTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): StackOptions {
        var valueDeserializer: DeserializerBase = buffer
        let alignContentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var alignContentTmpBuf: Option<Alignment> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(alignContentTmpBuf_runtimeType))) {
            alignContentTmpBuf = Alignment(valueDeserializer.readInt32())
        }
        let alignContentTmpResult: Option<Alignment> = alignContentTmpBuf
        var value: StackOptions = StackOptions(alignContentTmpResult)
        return value
    }
}
