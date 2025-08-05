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
public interface StepperOptionsInterfaces <:  {
    public mut open prop index: Option<Union_Number_Bindable>
}
public open class StepperOptions <: StepperOptionsInterfaces {
    private var index_container: Option<Union_Number_Bindable>
    public mut open prop index: Option<Union_Number_Bindable>
    {
        get() {
            return index_container
        }
        set(index) {
            index_container = index
        }
    }
    StepperOptions(index: Option<Union_Number_Bindable>) {
        this.index_container = index
    }
}
public open class StepperOptions_serializer {
    public static func write(buffer: SerializerBase, value: StepperOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIndex = value.index
        if (valueHolderForIndex.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIndexTmpValue = valueHolderForIndex
            if (valueHolderForIndexTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForIndexTmpValueForIdx0 = valueHolderForIndexTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForIndexTmpValueForIdx0);
            } else if (valueHolderForIndexTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForIndexTmpValueForIdx1 = valueHolderForIndexTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForIndexTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): StepperOptions {
        var valueDeserializer: DeserializerBase = buffer
        let indexTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var indexTmpBuf: Option<Union_Number_Bindable> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(indexTmpBuf_runtimeType))) {
            let indexTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var indexTmpBuf_: Union_Number_Bindable 
            if (indexTmpBuf_UnionSelector == Int8(0)) {
                indexTmpBuf_ = Union_Number_Bindable(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (indexTmpBuf_UnionSelector == Int8(1)) {
                indexTmpBuf_ = Union_Number_Bindable(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for indexTmpBuf_ has to be chosen through deserialisation.")
            }
            indexTmpBuf = match (indexTmpBuf_ as Union_Number_Bindable) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let indexTmpResult: Option<Union_Number_Bindable> = indexTmpBuf
        var value: StepperOptions = StepperOptions(indexTmpResult)
        return value
    }
}
