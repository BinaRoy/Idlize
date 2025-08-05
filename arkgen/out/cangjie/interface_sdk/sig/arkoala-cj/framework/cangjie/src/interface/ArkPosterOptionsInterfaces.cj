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
public interface PosterOptionsInterfaces <:  {
    public mut open prop showFirstFrame: Option<Bool>
}
public open class PosterOptions <: PosterOptionsInterfaces {
    private var showFirstFrame_container: Option<Bool>
    public mut open prop showFirstFrame: Option<Bool>
    {
        get() {
            return showFirstFrame_container
        }
        set(showFirstFrame) {
            showFirstFrame_container = showFirstFrame
        }
    }
    PosterOptions(showFirstFrame: Option<Bool>) {
        this.showFirstFrame_container = showFirstFrame
    }
}
public open class PosterOptions_serializer {
    public static func write(buffer: SerializerBase, value: PosterOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForShowFirstFrame = value.showFirstFrame
        if (valueHolderForShowFirstFrame.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowFirstFrameTmpValue = valueHolderForShowFirstFrame
            valueSerializer.writeBoolean(valueHolderForShowFirstFrameTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PosterOptions {
        var valueDeserializer: DeserializerBase = buffer
        let showFirstFrameTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showFirstFrameTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showFirstFrameTmpBuf_runtimeType))) {
            showFirstFrameTmpBuf = valueDeserializer.readBoolean()
        }
        let showFirstFrameTmpResult: Option<Bool> = showFirstFrameTmpBuf
        var value: PosterOptions = PosterOptions(showFirstFrameTmpResult)
        return value
    }
}
