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
public interface ScrollToIndexOptionsInterfaces <:  {
    public mut open prop extraOffset: Option<LengthMetrics>
}
public open class ScrollToIndexOptions <: ScrollToIndexOptionsInterfaces {
    private var extraOffset_container: Option<LengthMetrics>
    public mut open prop extraOffset: Option<LengthMetrics>
    {
        get() {
            return extraOffset_container
        }
        set(extraOffset) {
            extraOffset_container = extraOffset
        }
    }
    ScrollToIndexOptions(extraOffset: Option<LengthMetrics>) {
        this.extraOffset_container = extraOffset
    }
}
public open class ScrollToIndexOptions_serializer {
    public static func write(buffer: SerializerBase, value: ScrollToIndexOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForExtraOffset = value.extraOffset
        if (valueHolderForExtraOffset.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForExtraOffsetTmpValue = valueHolderForExtraOffset
            valueSerializer.writeCustomObject("Any", valueHolderForExtraOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ScrollToIndexOptions {
        var valueDeserializer: DeserializerBase = buffer
        let extraOffsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var extraOffsetTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(extraOffsetTmpBuf_runtimeType))) {
            extraOffsetTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let extraOffsetTmpResult: Option<LengthMetrics> = extraOffsetTmpBuf
        var value: ScrollToIndexOptions = ScrollToIndexOptions(extraOffsetTmpResult)
        return value
    }
}
