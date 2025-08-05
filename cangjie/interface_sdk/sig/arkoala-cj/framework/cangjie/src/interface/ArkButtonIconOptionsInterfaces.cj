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
public interface ButtonIconOptionsInterfaces <:  {
    public mut open prop shown: Union_String_PixelMap_Resource
    public mut open prop hidden: Union_String_PixelMap_Resource
    public mut open prop switching: Option<Union_String_PixelMap_Resource>
}
public open class ButtonIconOptions <: ButtonIconOptionsInterfaces {
    private var shown_container: Union_String_PixelMap_Resource
    public mut open prop shown: Union_String_PixelMap_Resource
    {
        get() {
            return shown_container
        }
        set(shown) {
            shown_container = shown
        }
    }
    private var hidden_container: Union_String_PixelMap_Resource
    public mut open prop hidden: Union_String_PixelMap_Resource
    {
        get() {
            return hidden_container
        }
        set(hidden) {
            hidden_container = hidden
        }
    }
    private var switching_container: Option<Union_String_PixelMap_Resource>
    public mut open prop switching: Option<Union_String_PixelMap_Resource>
    {
        get() {
            return switching_container
        }
        set(switching) {
            switching_container = switching
        }
    }
    ButtonIconOptions(shown: Union_String_PixelMap_Resource, hidden: Union_String_PixelMap_Resource, switching: Option<Union_String_PixelMap_Resource>) {
        this.shown_container = shown
        this.hidden_container = hidden
        this.switching_container = switching
    }
}
public open class ButtonIconOptions_serializer {
    public static func write(buffer: SerializerBase, value: ButtonIconOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForShown = value.shown
        if (valueHolderForShown.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForShownForIdx0 = valueHolderForShown.getValue0()
            valueSerializer.writeString(valueHolderForShownForIdx0);
        } else if (valueHolderForShown.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForShownForIdx1 = valueHolderForShown.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForShownForIdx1);
        } else if (valueHolderForShown.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForShownForIdx2 = valueHolderForShown.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForShownForIdx2);
        }
        let valueHolderForHidden = value.hidden
        if (valueHolderForHidden.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForHiddenForIdx0 = valueHolderForHidden.getValue0()
            valueSerializer.writeString(valueHolderForHiddenForIdx0);
        } else if (valueHolderForHidden.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForHiddenForIdx1 = valueHolderForHidden.getValue1()
            valueSerializer.writeCustomObject("Any", valueHolderForHiddenForIdx1);
        } else if (valueHolderForHidden.getSelector() == 2) {
            valueSerializer.writeInt8(Int8(2));
            let valueHolderForHiddenForIdx2 = valueHolderForHidden.getValue2()
            valueSerializer.writeCustomObject("Any", valueHolderForHiddenForIdx2);
        }
        let valueHolderForSwitching = value.switching
        if (valueHolderForSwitching.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSwitchingTmpValue = valueHolderForSwitching
            if (valueHolderForSwitchingTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSwitchingTmpValueForIdx0 = valueHolderForSwitchingTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSwitchingTmpValueForIdx0);
            } else if (valueHolderForSwitchingTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSwitchingTmpValueForIdx1 = valueHolderForSwitchingTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSwitchingTmpValueForIdx1);
            } else if (valueHolderForSwitchingTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForSwitchingTmpValueForIdx2 = valueHolderForSwitchingTmpValue.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForSwitchingTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ButtonIconOptions {
        var valueDeserializer: DeserializerBase = buffer
        let shownTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var shownTmpBuf: Union_String_PixelMap_Resource 
        if (shownTmpBufUnionSelector == Int8(0)) {
            shownTmpBuf = Union_String_PixelMap_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (shownTmpBufUnionSelector == Int8(1)) {
            shownTmpBuf = Union_String_PixelMap_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (shownTmpBufUnionSelector == Int8(2)) {
            shownTmpBuf = Union_String_PixelMap_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for shownTmpBuf has to be chosen through deserialisation.")
        }
        let shownTmpResult: Union_String_PixelMap_Resource = match (shownTmpBuf as Union_String_PixelMap_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let hiddenTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var hiddenTmpBuf: Union_String_PixelMap_Resource 
        if (hiddenTmpBufUnionSelector == Int8(0)) {
            hiddenTmpBuf = Union_String_PixelMap_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (hiddenTmpBufUnionSelector == Int8(1)) {
            hiddenTmpBuf = Union_String_PixelMap_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (hiddenTmpBufUnionSelector == Int8(2)) {
            hiddenTmpBuf = Union_String_PixelMap_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for hiddenTmpBuf has to be chosen through deserialisation.")
        }
        let hiddenTmpResult: Union_String_PixelMap_Resource = match (hiddenTmpBuf as Union_String_PixelMap_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let switchingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var switchingTmpBuf: Option<Union_String_PixelMap_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(switchingTmpBuf_runtimeType))) {
            let switchingTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var switchingTmpBuf_: Union_String_PixelMap_Resource 
            if (switchingTmpBuf_UnionSelector == Int8(0)) {
                switchingTmpBuf_ = Union_String_PixelMap_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (switchingTmpBuf_UnionSelector == Int8(1)) {
                switchingTmpBuf_ = Union_String_PixelMap_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (switchingTmpBuf_UnionSelector == Int8(2)) {
                switchingTmpBuf_ = Union_String_PixelMap_Resource(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for switchingTmpBuf_ has to be chosen through deserialisation.")
            }
            switchingTmpBuf = match (switchingTmpBuf_ as Union_String_PixelMap_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let switchingTmpResult: Option<Union_String_PixelMap_Resource> = switchingTmpBuf
        var value: ButtonIconOptions = ButtonIconOptions(shownTmpResult, hiddenTmpResult, switchingTmpResult)
        return value
    }
}
