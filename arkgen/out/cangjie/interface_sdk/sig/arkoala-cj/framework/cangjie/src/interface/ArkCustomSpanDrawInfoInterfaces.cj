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
public interface CustomSpanDrawInfoInterfaces <:  {
    public mut open prop x: Float64
    public mut open prop lineTop: Float64
    public mut open prop lineBottom: Float64
    public mut open prop baseline: Float64
}
public open class CustomSpanDrawInfo <: CustomSpanDrawInfoInterfaces {
    private var x_container: Float64
    public mut open prop x: Float64
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var lineTop_container: Float64
    public mut open prop lineTop: Float64
    {
        get() {
            return lineTop_container
        }
        set(lineTop) {
            lineTop_container = lineTop
        }
    }
    private var lineBottom_container: Float64
    public mut open prop lineBottom: Float64
    {
        get() {
            return lineBottom_container
        }
        set(lineBottom) {
            lineBottom_container = lineBottom
        }
    }
    private var baseline_container: Float64
    public mut open prop baseline: Float64
    {
        get() {
            return baseline_container
        }
        set(baseline) {
            baseline_container = baseline
        }
    }
    CustomSpanDrawInfo(x: Float64, lineTop: Float64, lineBottom: Float64, baseline: Float64) {
        this.x_container = x
        this.lineTop_container = lineTop
        this.lineBottom_container = lineBottom
        this.baseline_container = baseline
    }
}
public open class CustomSpanDrawInfo_serializer {
    public static func write(buffer: SerializerBase, value: CustomSpanDrawInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        valueSerializer.writeNumber(valueHolderForX);
        let valueHolderForLineTop = value.lineTop
        valueSerializer.writeNumber(valueHolderForLineTop);
        let valueHolderForLineBottom = value.lineBottom
        valueSerializer.writeNumber(valueHolderForLineBottom);
        let valueHolderForBaseline = value.baseline
        valueSerializer.writeNumber(valueHolderForBaseline);
    }
    public static func read(buffer: DeserializerBase): CustomSpanDrawInfo {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let lineTopTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let lineBottomTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let baselineTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: CustomSpanDrawInfo = CustomSpanDrawInfo(xTmpResult, lineTopTmpResult, lineBottomTmpResult, baselineTmpResult)
        return value
    }
}
