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
public interface OnSearchResultReceiveEventInterfaces <:  {
    public mut open prop activeMatchOrdinal: Float64
    public mut open prop numberOfMatches: Float64
    public mut open prop isDoneCounting: Bool
}
public open class OnSearchResultReceiveEvent <: OnSearchResultReceiveEventInterfaces {
    private var activeMatchOrdinal_container: Float64
    public mut open prop activeMatchOrdinal: Float64
    {
        get() {
            return activeMatchOrdinal_container
        }
        set(activeMatchOrdinal) {
            activeMatchOrdinal_container = activeMatchOrdinal
        }
    }
    private var numberOfMatches_container: Float64
    public mut open prop numberOfMatches: Float64
    {
        get() {
            return numberOfMatches_container
        }
        set(numberOfMatches) {
            numberOfMatches_container = numberOfMatches
        }
    }
    private var isDoneCounting_container: Bool
    public mut open prop isDoneCounting: Bool
    {
        get() {
            return isDoneCounting_container
        }
        set(isDoneCounting) {
            isDoneCounting_container = isDoneCounting
        }
    }
    OnSearchResultReceiveEvent(activeMatchOrdinal: Float64, numberOfMatches: Float64, isDoneCounting: Bool) {
        this.activeMatchOrdinal_container = activeMatchOrdinal
        this.numberOfMatches_container = numberOfMatches
        this.isDoneCounting_container = isDoneCounting
    }
}
public open class OnSearchResultReceiveEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnSearchResultReceiveEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForActiveMatchOrdinal = value.activeMatchOrdinal
        valueSerializer.writeNumber(valueHolderForActiveMatchOrdinal);
        let valueHolderForNumberOfMatches = value.numberOfMatches
        valueSerializer.writeNumber(valueHolderForNumberOfMatches);
        let valueHolderForIsDoneCounting = value.isDoneCounting
        valueSerializer.writeBoolean(valueHolderForIsDoneCounting);
    }
    public static func read(buffer: DeserializerBase): OnSearchResultReceiveEvent {
        var valueDeserializer: DeserializerBase = buffer
        let activeMatchOrdinalTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let numberOfMatchesTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let isDoneCountingTmpResult: Bool = valueDeserializer.readBoolean()
        var value: OnSearchResultReceiveEvent = OnSearchResultReceiveEvent(activeMatchOrdinalTmpResult, numberOfMatchesTmpResult, isDoneCountingTmpResult)
        return value
    }
}
