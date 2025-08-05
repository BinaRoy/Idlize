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
public interface RatingOptionsInterfaces <:  {
    public mut open prop rating: Option<Union_Number_Bindable>
    public mut open prop indicator: Option<Bool>
}
public open class RatingOptions <: RatingOptionsInterfaces {
    private var rating_container: Option<Union_Number_Bindable>
    public mut open prop rating: Option<Union_Number_Bindable>
    {
        get() {
            return rating_container
        }
        set(rating) {
            rating_container = rating
        }
    }
    private var indicator_container: Option<Bool>
    public mut open prop indicator: Option<Bool>
    {
        get() {
            return indicator_container
        }
        set(indicator) {
            indicator_container = indicator
        }
    }
    RatingOptions(rating: Option<Union_Number_Bindable>, indicator: Option<Bool>) {
        this.rating_container = rating
        this.indicator_container = indicator
    }
}
public open class RatingOptions_serializer {
    public static func write(buffer: SerializerBase, value: RatingOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRating = value.rating
        if (valueHolderForRating.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRatingTmpValue = valueHolderForRating
            if (valueHolderForRatingTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForRatingTmpValueForIdx0 = valueHolderForRatingTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForRatingTmpValueForIdx0);
            } else if (valueHolderForRatingTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForRatingTmpValueForIdx1 = valueHolderForRatingTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForRatingTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIndicator = value.indicator
        if (valueHolderForIndicator.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIndicatorTmpValue = valueHolderForIndicator
            valueSerializer.writeBoolean(valueHolderForIndicatorTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): RatingOptions {
        var valueDeserializer: DeserializerBase = buffer
        let ratingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var ratingTmpBuf: Option<Union_Number_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(ratingTmpBuf_runtimeType))) {
            let ratingTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var ratingTmpBuf_: Union_Number_Bindable 
            if (ratingTmpBuf_UnionSelector == Int8(0)) {
                ratingTmpBuf_ = Union_Number_Bindable(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (ratingTmpBuf_UnionSelector == Int8(1)) {
                ratingTmpBuf_ = Union_Number_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for ratingTmpBuf_ has to be chosen through deserialisation.")
            }
            ratingTmpBuf = match (ratingTmpBuf_ as Union_Number_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let ratingTmpResult: Option<Union_Number_Bindable> = ratingTmpBuf
        let indicatorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var indicatorTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(indicatorTmpBuf_runtimeType))) {
            indicatorTmpBuf = valueDeserializer.readBoolean()
        }
        let indicatorTmpResult: Option<Bool> = indicatorTmpBuf
        var value: RatingOptions = RatingOptions(ratingTmpResult, indicatorTmpResult)
        return value
    }
}
