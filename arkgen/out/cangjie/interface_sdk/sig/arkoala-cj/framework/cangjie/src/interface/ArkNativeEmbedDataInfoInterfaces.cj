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
public interface NativeEmbedDataInfoInterfaces <:  {
    public mut open prop status: Option<NativeEmbedStatus>
    public mut open prop surfaceId: Option<String>
    public mut open prop embedId: Option<String>
    public mut open prop info: Option<NativeEmbedInfo>
}
public open class NativeEmbedDataInfo <: NativeEmbedDataInfoInterfaces {
    private var status_container: Option<NativeEmbedStatus>
    public mut open prop status: Option<NativeEmbedStatus>
    {
        get() {
            return status_container
        }
        set(status) {
            status_container = status
        }
    }
    private var surfaceId_container: Option<String>
    public mut open prop surfaceId: Option<String>
    {
        get() {
            return surfaceId_container
        }
        set(surfaceId) {
            surfaceId_container = surfaceId
        }
    }
    private var embedId_container: Option<String>
    public mut open prop embedId: Option<String>
    {
        get() {
            return embedId_container
        }
        set(embedId) {
            embedId_container = embedId
        }
    }
    private var info_container: Option<NativeEmbedInfo>
    public mut open prop info: Option<NativeEmbedInfo>
    {
        get() {
            return info_container
        }
        set(info) {
            info_container = info
        }
    }
    NativeEmbedDataInfo(status: Option<NativeEmbedStatus>, surfaceId: Option<String>, embedId: Option<String>, info: Option<NativeEmbedInfo>) {
        this.status_container = status
        this.surfaceId_container = surfaceId
        this.embedId_container = embedId
        this.info_container = info
    }
}
public open class NativeEmbedDataInfo_serializer {
    public static func write(buffer: SerializerBase, value: NativeEmbedDataInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStatus = value.status
        if (valueHolderForStatus.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStatusTmpValue = valueHolderForStatus
            valueSerializer.writeInt32(valueHolderForStatusTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSurfaceId = value.surfaceId
        if (valueHolderForSurfaceId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSurfaceIdTmpValue = valueHolderForSurfaceId
            valueSerializer.writeString(valueHolderForSurfaceIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEmbedId = value.embedId
        if (valueHolderForEmbedId.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEmbedIdTmpValue = valueHolderForEmbedId
            valueSerializer.writeString(valueHolderForEmbedIdTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForInfo = value.info
        if (valueHolderForInfo.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForInfoTmpValue = valueHolderForInfo
            NativeEmbedInfo_serializer.write(valueSerializer, valueHolderForInfoTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NativeEmbedDataInfo {
        var valueDeserializer: DeserializerBase = buffer
        let statusTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var statusTmpBuf: Option<NativeEmbedStatus> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(statusTmpBuf_runtimeType))) {
            statusTmpBuf = NativeEmbedStatus(valueDeserializer.readInt32())
        }
        let statusTmpResult: Option<NativeEmbedStatus> = statusTmpBuf
        let surfaceIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var surfaceIdTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(surfaceIdTmpBuf_runtimeType))) {
            surfaceIdTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let surfaceIdTmpResult: Option<String> = surfaceIdTmpBuf
        let embedIdTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var embedIdTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(embedIdTmpBuf_runtimeType))) {
            embedIdTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let embedIdTmpResult: Option<String> = embedIdTmpBuf
        let infoTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var infoTmpBuf: Option<NativeEmbedInfo> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(infoTmpBuf_runtimeType))) {
            infoTmpBuf = NativeEmbedInfo_serializer.read(valueDeserializer)
        }
        let infoTmpResult: Option<NativeEmbedInfo> = infoTmpBuf
        var value: NativeEmbedDataInfo = NativeEmbedDataInfo(statusTmpResult, surfaceIdTmpResult, embedIdTmpResult, infoTmpResult)
        return value
    }
}
