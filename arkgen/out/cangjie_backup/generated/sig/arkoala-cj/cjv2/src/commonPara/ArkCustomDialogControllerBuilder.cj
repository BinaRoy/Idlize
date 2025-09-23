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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class CustomDialogControllerBuilder {
    public var buildOptions: Option<CustomDialogBuildOptions>
    public var build: Option<CustomBuilder>
    init(buildOptions: Option<CustomDialogBuildOptions>, build: Option<CustomBuilder>) {
        this.buildOptions = buildOptions
        this.build = build
    }
}
public class CustomDialogControllerBuilder_serializer {
    public  static func write(buffer: SerializerBase, value: CustomDialogControllerBuilder): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBuildOptions = value.buildOptions
        if (let Some(valueHolderForBuildOptions) <- valueHolderForBuildOptions) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBuildOptionsTmpValue = valueHolderForBuildOptions
            CustomDialogBuildOptions_serializer.write(valueSerializer, valueHolderForBuildOptionsTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBuild = value.build
        if (let Some(valueHolderForBuild) <- valueHolderForBuild) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBuildTmpValue = valueHolderForBuild
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForBuildTmpValue))
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): CustomDialogControllerBuilder {
        var valueDeserializer: DeserializerBase = buffer
        let buildOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buildOptionsTmpBuf: Option<CustomDialogBuildOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buildOptionsTmpBuf_runtimeType))) {
            buildOptionsTmpBuf = CustomDialogBuildOptions_serializer.read(valueDeserializer)
        }
        let buildOptionsTmpResult: Option<CustomDialogBuildOptions> = buildOptionsTmpBuf
        let buildTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buildTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buildTmpBuf_runtimeType))) {
            let buildTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let buildTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let buildTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            buildTmpBuf = { => let buildTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
buildTmpBuf_BufArgsSerializer.writeInt32(buildTmpBuf_BufResource.resourceId);
buildTmpBuf_BufArgsSerializer.writePointer(buildTmpBuf_BufCall);
buildTmpBuf_BufArgsSerializer.writePointer(buildTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, buildTmpBuf_BufArgsSerializer.asBuffer(), buildTmpBuf_BufArgsSerializer.length());
buildTmpBuf_BufArgsSerializer.release();
return; }
        }
        let buildTmpResult: Option<CustomBuilder> = buildTmpBuf
        var value: CustomDialogControllerBuilder = CustomDialogControllerBuilder(buildOptionsTmpResult, buildTmpResult)
        return value
    }
}
