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
public interface CustomDialogControllerBuilderInterfaces <:  {
    public mut open prop buildOptions: CustomDialogBuildOptions
    public mut open prop build: CustomBuilder
}
public open class CustomDialogControllerBuilder <: CustomDialogControllerBuilderInterfaces {
    private var buildOptions_container: CustomDialogBuildOptions
    public mut open prop buildOptions: CustomDialogBuildOptions
    {
        get() {
            return buildOptions_container
        }
        set(buildOptions) {
            buildOptions_container = buildOptions
        }
    }
    private var build_container: CustomBuilder
    public mut open prop build: CustomBuilder
    {
        get() {
            return build_container
        }
        set(build) {
            build_container = build
        }
    }
    CustomDialogControllerBuilder(buildOptions: CustomDialogBuildOptions, build: CustomBuilder) {
        this.buildOptions_container = buildOptions
        this.build_container = build
    }
}
public open class CustomDialogControllerBuilder_serializer {
    public static func write(buffer: SerializerBase, value: CustomDialogControllerBuilder): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBuildOptions = value.buildOptions
        CustomDialogBuildOptions_serializer.write(valueSerializer, valueHolderForBuildOptions);
        let valueHolderForBuild = value.build
        valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForBuild));
    }
    public static func read(buffer: DeserializerBase): CustomDialogControllerBuilder {
        var valueDeserializer: DeserializerBase = buffer
        let buildOptionsTmpResult: CustomDialogBuildOptions = CustomDialogBuildOptions_serializer.read(valueDeserializer)
        let buildTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let buildTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let buildTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let buildTmpResult: CustomBuilder = { => let buildTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
buildTmpBufBufArgsSerializer.writeInt32(buildTmpBufBufResource.resourceId);
buildTmpBufBufArgsSerializer.writePointer(buildTmpBufBufCall);
buildTmpBufBufArgsSerializer.writePointer(buildTmpBufBufCallSync);
InteropNativeModule._CallCallback(737226752, buildTmpBufBufArgsSerializer.asBuffer(), buildTmpBufBufArgsSerializer.length());
buildTmpBufBufArgsSerializer.release();
return; }
        var value: CustomDialogControllerBuilder = CustomDialogControllerBuilder(buildOptionsTmpResult, buildTmpResult)
        return value
    }
}
