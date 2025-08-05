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
public interface SwiperAutoFillInterfaces <:  {
    public mut open prop minSize: VP
}
public open class SwiperAutoFill <: SwiperAutoFillInterfaces {
    private var minSize_container: VP
    public mut open prop minSize: VP
    {
        get() {
            return minSize_container
        }
        set(minSize) {
            minSize_container = minSize
        }
    }
    SwiperAutoFill(minSize: VP) {
        this.minSize_container = minSize
    }
}
public open class SwiperAutoFill_serializer {
    public static func write(buffer: SerializerBase, value: SwiperAutoFill): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMinSize = value.minSize
        if (valueHolderForMinSize.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForMinSizeForIdx0 = valueHolderForMinSize.getValue0()
            valueSerializer.writeString(valueHolderForMinSizeForIdx0);
        } else if (valueHolderForMinSize.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForMinSizeForIdx1 = valueHolderForMinSize.getValue1()
            valueSerializer.writeNumber(valueHolderForMinSizeForIdx1);
        }
    }
    public static func read(buffer: DeserializerBase): SwiperAutoFill {
        var valueDeserializer: DeserializerBase = buffer
        let minSizeTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var minSizeTmpBuf: VP 
        if (minSizeTmpBufUnionSelector == Int8(0)) {
            minSizeTmpBuf = VP(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (minSizeTmpBufUnionSelector == Int8(1)) {
            minSizeTmpBuf = VP(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for minSizeTmpBuf has to be chosen through deserialisation.")
        }
        let minSizeTmpResult: VP = match (minSizeTmpBuf as VP) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: SwiperAutoFill = SwiperAutoFill(minSizeTmpResult)
        return value
    }
}
