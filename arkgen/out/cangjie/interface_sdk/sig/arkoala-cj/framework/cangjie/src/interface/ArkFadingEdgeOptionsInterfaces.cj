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
public interface FadingEdgeOptionsInterfaces <:  {
    public mut open prop fadingEdgeLength: Option<LengthMetrics>
}
public open class FadingEdgeOptions <: FadingEdgeOptionsInterfaces {
    private var fadingEdgeLength_container: Option<LengthMetrics>
    public mut open prop fadingEdgeLength: Option<LengthMetrics>
    {
        get() {
            return fadingEdgeLength_container
        }
        set(fadingEdgeLength) {
            fadingEdgeLength_container = fadingEdgeLength
        }
    }
    FadingEdgeOptions(fadingEdgeLength: Option<LengthMetrics>) {
        this.fadingEdgeLength_container = fadingEdgeLength
    }
}
public open class FadingEdgeOptions_serializer {
    public static func write(buffer: SerializerBase, value: FadingEdgeOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFadingEdgeLength = value.fadingEdgeLength
        if (valueHolderForFadingEdgeLength.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFadingEdgeLengthTmpValue = valueHolderForFadingEdgeLength
            valueSerializer.writeCustomObject("Any", valueHolderForFadingEdgeLengthTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FadingEdgeOptions {
        var valueDeserializer: DeserializerBase = buffer
        let fadingEdgeLengthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fadingEdgeLengthTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fadingEdgeLengthTmpBuf_runtimeType))) {
            fadingEdgeLengthTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let fadingEdgeLengthTmpResult: Option<LengthMetrics> = fadingEdgeLengthTmpBuf
        var value: FadingEdgeOptions = FadingEdgeOptions(fadingEdgeLengthTmpResult)
        return value
    }
}
