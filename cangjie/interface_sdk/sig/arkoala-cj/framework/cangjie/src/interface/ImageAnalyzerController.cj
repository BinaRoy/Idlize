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
public open class ImageAnalyzerControllerInternal {
    public static func fromPtr(ptr: UInt64): ImageAnalyzerController {
        return ImageAnalyzerController(ptr)
    }
}
public open class ImageAnalyzerController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    ImageAnalyzerController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ImageAnalyzerController.getFinalizer())
    }
    ImageAnalyzerController() {
        super(ImageAnalyzerController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ImageAnalyzerController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ImageAnalyzerController_getFinalizer()
    }
    public open func getImageAnalyzerSupportTypes(): ArrayList<ImageAnalyzerType> {
        return this.getImageAnalyzerSupportTypes_serialize()
    }
    private func getImageAnalyzerSupportTypes_serialize(): ArrayList<ImageAnalyzerType> {
        let retval = ArkUIGeneratedNativeModule._ImageAnalyzerController_getImageAnalyzerSupportTypes(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<ImageAnalyzerType> = ArrayList<ImageAnalyzerType>(Int64(bufferLength))
        buffer = ArrayList<ImageAnalyzerType>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = ImageAnalyzerType(retvalDeserializer.readInt32())
        }
        let returnResult: ArrayList<ImageAnalyzerType> = buffer
        return returnResult
    }
}
public open class ImageAnalyzerController_serializer {
    public static func write(buffer: SerializerBase, value: ImageAnalyzerController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ImageAnalyzerController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ImageAnalyzerControllerInternal.fromPtr(ptr)
    }
}
