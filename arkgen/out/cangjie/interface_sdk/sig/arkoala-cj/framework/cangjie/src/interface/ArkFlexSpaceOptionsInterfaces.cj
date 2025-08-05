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
public interface FlexSpaceOptionsInterfaces <:  {
    public mut open prop main_: Option<LengthMetrics>
    public mut open prop cross: Option<LengthMetrics>
}
public open class FlexSpaceOptions <: FlexSpaceOptionsInterfaces {
    private var main_container: Option<LengthMetrics>
    public mut open prop main_: Option<LengthMetrics>
    {
        get() {
            return main_container
        }
        set(main_) {
            main_container = main_
        }
    }
    private var cross_container: Option<LengthMetrics>
    public mut open prop cross: Option<LengthMetrics>
    {
        get() {
            return cross_container
        }
        set(cross) {
            cross_container = cross
        }
    }
    FlexSpaceOptions(main_: Option<LengthMetrics>, cross: Option<LengthMetrics>) {
        this.main_container = main_
        this.cross_container = cross
    }
}
public open class FlexSpaceOptions_serializer {
    public static func write(buffer: SerializerBase, value: FlexSpaceOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMain = value.main_
        if (valueHolderForMain.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMainTmpValue = valueHolderForMain
            valueSerializer.writeCustomObject("Any", valueHolderForMainTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForCross = value.cross
        if (valueHolderForCross.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCrossTmpValue = valueHolderForCross
            valueSerializer.writeCustomObject("Any", valueHolderForCrossTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FlexSpaceOptions {
        var valueDeserializer: DeserializerBase = buffer
        let mainTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var mainTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(mainTmpBuf_runtimeType))) {
            mainTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let mainTmpResult: Option<LengthMetrics> = mainTmpBuf
        let crossTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var crossTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(crossTmpBuf_runtimeType))) {
            crossTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let crossTmpResult: Option<LengthMetrics> = crossTmpBuf
        var value: FlexSpaceOptions = FlexSpaceOptions(mainTmpResult, crossTmpResult)
        return value
    }
}
