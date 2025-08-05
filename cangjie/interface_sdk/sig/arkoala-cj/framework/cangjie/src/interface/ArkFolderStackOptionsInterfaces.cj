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
public interface FolderStackOptionsInterfaces <:  {
    public mut open prop upperItems: Option<ArrayList<String>>
}
public open class FolderStackOptions <: FolderStackOptionsInterfaces {
    private var upperItems_container: Option<ArrayList<String>>
    public mut open prop upperItems: Option<ArrayList<String>>
    {
        get() {
            return upperItems_container
        }
        set(upperItems) {
            upperItems_container = upperItems
        }
    }
    FolderStackOptions(upperItems: Option<ArrayList<String>>) {
        this.upperItems_container = upperItems
    }
}
public open class FolderStackOptions_serializer {
    public static func write(buffer: SerializerBase, value: FolderStackOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForUpperItems = value.upperItems
        if (valueHolderForUpperItems.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUpperItemsTmpValue = valueHolderForUpperItems
            valueSerializer.writeInt32(Int32(valueHolderForUpperItemsTmpValue.size));
            for (valueHolderForUpperItemsTmpValueCounterI in 0..valueHolderForUpperItemsTmpValue.size) {
                let valueHolderForUpperItemsTmpValueTmpElement: String = valueHolderForUpperItemsTmpValue[Int64(valueHolderForUpperItemsTmpValueCounterI)]
                valueSerializer.writeString(valueHolderForUpperItemsTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FolderStackOptions {
        var valueDeserializer: DeserializerBase = buffer
        let upperItemsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var upperItemsTmpBuf: Option<ArrayList<String>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(upperItemsTmpBuf_runtimeType))) {
            let upperItemsTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var upperItemsTmpBuf_: ArrayList<String> = ArrayList<String>(Int64(upperItemsTmpBuf_Length))
            upperItemsTmpBuf_ = ArrayList<String>(Int64(upperItemsTmpBuf_Length))
            for (upperItemsTmpBuf_BufCounterI in 0..upperItemsTmpBuf_Length) {
                upperItemsTmpBuf_[Int64(upperItemsTmpBuf_BufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            upperItemsTmpBuf = upperItemsTmpBuf_
        }
        let upperItemsTmpResult: Option<ArrayList<String>> = upperItemsTmpBuf
        var value: FolderStackOptions = FolderStackOptions(upperItemsTmpResult)
        return value
    }
}
