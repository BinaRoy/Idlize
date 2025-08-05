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
public interface OnShowFileSelectorEventInterfaces <:  {
    public mut open prop result: FileSelectorResult
    public mut open prop fileSelector: FileSelectorParam
}
public open class OnShowFileSelectorEvent <: OnShowFileSelectorEventInterfaces {
    private var result_container: FileSelectorResult
    public mut open prop result: FileSelectorResult
    {
        get() {
            return result_container
        }
        set(result) {
            result_container = result
        }
    }
    private var fileSelector_container: FileSelectorParam
    public mut open prop fileSelector: FileSelectorParam
    {
        get() {
            return fileSelector_container
        }
        set(fileSelector) {
            fileSelector_container = fileSelector
        }
    }
    OnShowFileSelectorEvent(result: FileSelectorResult, fileSelector: FileSelectorParam) {
        this.result_container = result
        this.fileSelector_container = fileSelector
    }
}
public open class OnShowFileSelectorEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnShowFileSelectorEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForResult = value.result
        FileSelectorResult_serializer.write(valueSerializer, valueHolderForResult);
        let valueHolderForFileSelector = value.fileSelector
        FileSelectorParam_serializer.write(valueSerializer, valueHolderForFileSelector);
    }
    public static func read(buffer: DeserializerBase): OnShowFileSelectorEvent {
        var valueDeserializer: DeserializerBase = buffer
        let resultTmpResult: FileSelectorResult = match (FileSelectorResult_serializer.read(valueDeserializer) as FileSelectorResult) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let fileSelectorTmpResult: FileSelectorParam = match (FileSelectorParam_serializer.read(valueDeserializer) as FileSelectorParam) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: OnShowFileSelectorEvent = OnShowFileSelectorEvent(resultTmpResult, fileSelectorTmpResult)
        return value
    }
}
