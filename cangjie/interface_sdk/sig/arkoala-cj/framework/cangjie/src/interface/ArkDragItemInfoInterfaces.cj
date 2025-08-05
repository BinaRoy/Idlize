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
public interface DragItemInfoInterfaces <:  {
    public mut open prop pixelMap: Option<PixelMap>
    public mut open prop builder: Option<CustomBuilder>
    public mut open prop extraInfo: Option<String>
}
public open class DragItemInfo <: DragItemInfoInterfaces {
    private var pixelMap_container: Option<PixelMap>
    public mut open prop pixelMap: Option<PixelMap>
    {
        get() {
            return pixelMap_container
        }
        set(pixelMap) {
            pixelMap_container = pixelMap
        }
    }
    private var builder_container: Option<CustomBuilder>
    public mut open prop builder: Option<CustomBuilder>
    {
        get() {
            return builder_container
        }
        set(builder) {
            builder_container = builder
        }
    }
    private var extraInfo_container: Option<String>
    public mut open prop extraInfo: Option<String>
    {
        get() {
            return extraInfo_container
        }
        set(extraInfo) {
            extraInfo_container = extraInfo
        }
    }
    DragItemInfo(pixelMap: Option<PixelMap>, builder: Option<CustomBuilder>, extraInfo: Option<String>) {
        this.pixelMap_container = pixelMap
        this.builder_container = builder
        this.extraInfo_container = extraInfo
    }
}
public open class DragItemInfo_serializer {
    public static func write(buffer: SerializerBase, value: DragItemInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForPixelMap = value.pixelMap
        if (valueHolderForPixelMap.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPixelMapTmpValue = valueHolderForPixelMap
            valueSerializer.writeCustomObject("Any", valueHolderForPixelMapTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBuilder = value.builder
        if (valueHolderForBuilder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBuilderTmpValue = valueHolderForBuilder
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForBuilderTmpValue));
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForExtraInfo = value.extraInfo
        if (valueHolderForExtraInfo.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForExtraInfoTmpValue = valueHolderForExtraInfo
            valueSerializer.writeString(valueHolderForExtraInfoTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DragItemInfo {
        var valueDeserializer: DeserializerBase = buffer
        let pixelMapTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var pixelMapTmpBuf: Option<PixelMap> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(pixelMapTmpBuf_runtimeType))) {
            pixelMapTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let pixelMapTmpResult: Option<PixelMap> = pixelMapTmpBuf
        let builderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var builderTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(builderTmpBuf_runtimeType))) {
            let builderTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let builderTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let builderTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            builderTmpBuf = { => let builderTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
builderTmpBuf_BufArgsSerializer.writeInt32(builderTmpBuf_BufResource.resourceId);
builderTmpBuf_BufArgsSerializer.writePointer(builderTmpBuf_BufCall);
builderTmpBuf_BufArgsSerializer.writePointer(builderTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, builderTmpBuf_BufArgsSerializer.asBuffer(), builderTmpBuf_BufArgsSerializer.length());
builderTmpBuf_BufArgsSerializer.release();
return; }
        }
        let builderTmpResult: Option<CustomBuilder> = builderTmpBuf
        let extraInfoTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var extraInfoTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(extraInfoTmpBuf_runtimeType))) {
            extraInfoTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let extraInfoTmpResult: Option<String> = extraInfoTmpBuf
        var value: DragItemInfo = DragItemInfo(pixelMapTmpResult, builderTmpResult, extraInfoTmpResult)
        return value
    }
}
