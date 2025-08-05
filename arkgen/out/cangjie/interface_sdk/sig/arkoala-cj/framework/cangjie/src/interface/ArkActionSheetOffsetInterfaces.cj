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
public interface ActionSheetOffsetInterfaces <:  {
    public mut open prop dx: Union_Number_String_Resource
    public mut open prop dy: Union_Number_String_Resource
}
public open class ActionSheetOffset <: ActionSheetOffsetInterfaces {
    private var dx_container: Union_Number_String_Resource
    public mut open prop dx: Union_Number_String_Resource
    {
        get() {
            return dx_container
        }
        set(dx) {
            dx_container = dx
        }
    }
    private var dy_container: Union_Number_String_Resource
    public mut open prop dy: Union_Number_String_Resource
    {
        get() {
            return dy_container
        }
        set(dy) {
            dy_container = dy
        }
    }
    ActionSheetOffset(dx: Union_Number_String_Resource, dy: Union_Number_String_Resource) {
        this.dx_container = dx
        this.dy_container = dy
    }
}
public open class ActionSheetOffset_serializer {
    public static func write(buffer: SerializerBase, value: ActionSheetOffset): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDx = value.dx
        if (valueHolderForDx.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForDxForIdx0 = valueHolderForDx.getValue0()
            valueSerializer.writeNumber(valueHolderForDxForIdx0);
        } else if (valueHolderForDx.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForDxForIdx1 = valueHolderForDx.getValue1()
            valueSerializer.writeString(valueHolderForDxForIdx1);
        } else if (valueHolderForDx.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForDxForIdx2 = valueHolderForDx.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForDxForIdx2);
        }
        let valueHolderForDy = value.dy
        if (valueHolderForDy.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForDyForIdx0 = valueHolderForDy.getValue0()
            valueSerializer.writeNumber(valueHolderForDyForIdx0);
        } else if (valueHolderForDy.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForDyForIdx1 = valueHolderForDy.getValue1()
            valueSerializer.writeString(valueHolderForDyForIdx1);
        } else if (valueHolderForDy.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForDyForIdx2 = valueHolderForDy.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForDyForIdx2);
        }
    }
    public static func read(buffer: DeserializerBase): ActionSheetOffset {
        var valueDeserializer: DeserializerBase = buffer
        let dxTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var dxTmpBuf: Union_Number_String_Resource 
        if (dxTmpBufUnionSelector == Int8(0)) {
            dxTmpBuf = Union_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (dxTmpBufUnionSelector == Int8(1)) {
            dxTmpBuf = Union_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (dxTmpBufUnionSelector == Int8(2)) {
            dxTmpBuf = Union_Number_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for dxTmpBuf has to be chosen through deserialisation.")
        }
        let dxTmpResult: Union_Number_String_Resource = match (dxTmpBuf as Union_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let dyTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var dyTmpBuf: Union_Number_String_Resource 
        if (dyTmpBufUnionSelector == Int8(0)) {
            dyTmpBuf = Union_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (dyTmpBufUnionSelector == Int8(1)) {
            dyTmpBuf = Union_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (dyTmpBufUnionSelector == Int8(2)) {
            dyTmpBuf = Union_Number_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for dyTmpBuf has to be chosen through deserialisation.")
        }
        let dyTmpResult: Union_Number_String_Resource = match (dyTmpBuf as Union_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: ActionSheetOffset = ActionSheetOffset(dxTmpResult, dyTmpResult)
        return value
    }
}
