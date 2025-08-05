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
public interface TextOverflowOptionsInterfaces <:  {
    public mut open prop overflow: TextOverflow
}
public open class TextOverflowOptions <: TextOverflowOptionsInterfaces {
    private var overflow_container: TextOverflow
    public mut open prop overflow: TextOverflow
    {
        get() {
            return overflow_container
        }
        set(overflow) {
            overflow_container = overflow
        }
    }
    TextOverflowOptions(overflow: TextOverflow) {
        this.overflow_container = overflow
    }
}
public open class TextOverflowOptions_serializer {
    public static func write(buffer: SerializerBase, value: TextOverflowOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOverflow = value.overflow
        valueSerializer.writeInt32(valueHolderForOverflow.value);
    }
    public static func read(buffer: DeserializerBase): TextOverflowOptions {
        var valueDeserializer: DeserializerBase = buffer
        let overflowTmpResult: TextOverflow = TextOverflow(valueDeserializer.readInt32())
        var value: TextOverflowOptions = TextOverflowOptions(overflowTmpResult)
        return value
    }
}
