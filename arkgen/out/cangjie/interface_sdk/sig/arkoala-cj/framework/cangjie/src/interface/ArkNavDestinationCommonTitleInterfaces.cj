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
public interface NavDestinationCommonTitleInterfaces <:  {
    public mut open prop main_: Union_String_Resource
    public mut open prop sub: Union_String_Resource
}
public open class NavDestinationCommonTitle <: NavDestinationCommonTitleInterfaces {
    private var main_container: Union_String_Resource
    public mut open prop main_: Union_String_Resource
    {
        get() {
            return main_container
        }
        set(main_) {
            main_container = main_
        }
    }
    private var sub_container: Union_String_Resource
    public mut open prop sub: Union_String_Resource
    {
        get() {
            return sub_container
        }
        set(sub) {
            sub_container = sub
        }
    }
    NavDestinationCommonTitle(main_: Union_String_Resource, sub: Union_String_Resource) {
        this.main_container = main_
        this.sub_container = sub
    }
}
public open class NavDestinationCommonTitle_serializer {
    public static func write(buffer: SerializerBase, value: NavDestinationCommonTitle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMain = value.main_
        if (valueHolderForMain.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForMainForIdx0 = valueHolderForMain.getValue0()
            valueSerializer.writeString(valueHolderForMainForIdx0);
        } else if (valueHolderForMain.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForMainForIdx1 = valueHolderForMain.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForMainForIdx1);
        }
        let valueHolderForSub = value.sub
        if (valueHolderForSub.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForSubForIdx0 = valueHolderForSub.getValue0()
            valueSerializer.writeString(valueHolderForSubForIdx0);
        } else if (valueHolderForSub.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForSubForIdx1 = valueHolderForSub.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForSubForIdx1);
        }
    }
    public static func read(buffer: DeserializerBase): NavDestinationCommonTitle {
        var valueDeserializer: DeserializerBase = buffer
        let mainTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var mainTmpBuf: Union_String_Resource 
        if (mainTmpBufUnionSelector == Int8(0)) {
            mainTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (mainTmpBufUnionSelector == Int8(1)) {
            mainTmpBuf = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for mainTmpBuf has to be chosen through deserialisation.")
        }
        let mainTmpResult: Union_String_Resource = match (mainTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let subTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var subTmpBuf: Union_String_Resource 
        if (subTmpBufUnionSelector == Int8(0)) {
            subTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (subTmpBufUnionSelector == Int8(1)) {
            subTmpBuf = Union_String_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for subTmpBuf has to be chosen through deserialisation.")
        }
        let subTmpResult: Union_String_Resource = match (subTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: NavDestinationCommonTitle = NavDestinationCommonTitle(mainTmpResult, subTmpResult)
        return value
    }
}
