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
public interface NavDestinationCustomTitleInterfaces <:  {
    public mut open prop builder: CustomBuilder
    public mut open prop height: Union_TitleHeight_Length
}
public open class NavDestinationCustomTitle <: NavDestinationCustomTitleInterfaces {
    private var builder_container: CustomBuilder
    public mut open prop builder: CustomBuilder
    {
        get() {
            return builder_container
        }
        set(builder) {
            builder_container = builder
        }
    }
    private var height_container: Union_TitleHeight_Length
    public mut open prop height: Union_TitleHeight_Length
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    NavDestinationCustomTitle(builder: CustomBuilder, height: Union_TitleHeight_Length) {
        this.builder_container = builder
        this.height_container = height
    }
}
public open class NavDestinationCustomTitle_serializer {
    public static func write(buffer: SerializerBase, value: NavDestinationCustomTitle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBuilder = value.builder
        valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForBuilder));
        let valueHolderForHeight = value.height
        if (valueHolderForHeight.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForHeightForIdx0 = valueHolderForHeight.getValue0()
            valueSerializer.writeInt32(valueHolderForHeightForIdx0.value);
        } else if (valueHolderForHeight.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForHeightForIdx1 = valueHolderForHeight.getValue1()
            if (valueHolderForHeightForIdx1.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHeightForIdx1ForIdx0 = valueHolderForHeightForIdx1.getValue0()
                valueSerializer.writeString(valueHolderForHeightForIdx1ForIdx0);
            } else if (valueHolderForHeightForIdx1.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHeightForIdx1ForIdx1 = valueHolderForHeightForIdx1.getValue1()
                valueSerializer.writeNumber(valueHolderForHeightForIdx1ForIdx1);
            } else if (valueHolderForHeightForIdx1.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForHeightForIdx1ForIdx2 = valueHolderForHeightForIdx1.getValue2()
                valueSerializer.writeCustomObject("Any", valueHolderForHeightForIdx1ForIdx2);
            }
        }
    }
    public static func read(buffer: DeserializerBase): NavDestinationCustomTitle {
        var valueDeserializer: DeserializerBase = buffer
        let builderTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let builderTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let builderTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let builderTmpResult: CustomBuilder = { => let builderTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
builderTmpBufBufArgsSerializer.writeInt32(builderTmpBufBufResource.resourceId);
builderTmpBufBufArgsSerializer.writePointer(builderTmpBufBufCall);
builderTmpBufBufArgsSerializer.writePointer(builderTmpBufBufCallSync);
InteropNativeModule._CallCallback(737226752, builderTmpBufBufArgsSerializer.asBuffer(), builderTmpBufBufArgsSerializer.length());
builderTmpBufBufArgsSerializer.release();
return; }
        let heightTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var heightTmpBuf: Union_TitleHeight_Length 
        if (heightTmpBufUnionSelector == Int8(0)) {
            heightTmpBuf = Union_TitleHeight_Length(TitleHeight(valueDeserializer.readInt32()))
        } else if (heightTmpBufUnionSelector == Int8(1)) {
            let heightTmpBufBufUUnionSelector: Int8 = valueDeserializer.readInt8()
            var heightTmpBufBufU: Length 
            if (heightTmpBufBufUUnionSelector == Int8(0)) {
                heightTmpBufBufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBufBufUUnionSelector == Int8(1)) {
                heightTmpBufBufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBufBufUUnionSelector == Int8(2)) {
                heightTmpBufBufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for heightTmpBufBufU has to be chosen through deserialisation.")
            }
            heightTmpBuf = Union_TitleHeight_Length(match (heightTmpBufBufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for heightTmpBuf has to be chosen through deserialisation.")
        }
        let heightTmpResult: Union_TitleHeight_Length = match (heightTmpBuf as Union_TitleHeight_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: NavDestinationCustomTitle = NavDestinationCustomTitle(builderTmpResult, heightTmpResult)
        return value
    }
}
