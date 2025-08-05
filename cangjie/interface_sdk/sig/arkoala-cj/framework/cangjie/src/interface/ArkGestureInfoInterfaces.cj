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
public interface GestureInfoInterfaces <:  {
    public mut open prop tag: Option<String>
    public mut open prop type_: GestureControlGestureType
    public mut open prop isSystemGesture: Bool
}
public open class GestureInfo <: GestureInfoInterfaces {
    private var tag_container: Option<String>
    public mut open prop tag: Option<String>
    {
        get() {
            return tag_container
        }
        set(tag) {
            tag_container = tag
        }
    }
    private var type_container: GestureControlGestureType
    public mut open prop type_: GestureControlGestureType
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var isSystemGesture_container: Bool
    public mut open prop isSystemGesture: Bool
    {
        get() {
            return isSystemGesture_container
        }
        set(isSystemGesture) {
            isSystemGesture_container = isSystemGesture
        }
    }
    GestureInfo(tag: Option<String>, type_: GestureControlGestureType, isSystemGesture: Bool) {
        this.tag_container = tag
        this.type_container = type_
        this.isSystemGesture_container = isSystemGesture
    }
}
public open class GestureInfo_serializer {
    public static func write(buffer: SerializerBase, value: GestureInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTag = value.tag
        if (valueHolderForTag.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTagTmpValue = valueHolderForTag
            valueSerializer.writeString(valueHolderForTagTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForType = value.type_
        valueSerializer.writeInt32(valueHolderForType.value);
        let valueHolderForIsSystemGesture = value.isSystemGesture
        valueSerializer.writeBoolean(valueHolderForIsSystemGesture);
    }
    public static func read(buffer: DeserializerBase): GestureInfo {
        var valueDeserializer: DeserializerBase = buffer
        let tagTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var tagTmpBuf: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(tagTmpBuf_runtimeType))) {
            tagTmpBuf = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let tagTmpResult: Option<String> = tagTmpBuf
        let typeTmpResult: GestureControlGestureType = GestureControlGestureType(valueDeserializer.readInt32())
        let isSystemGestureTmpResult: Bool = valueDeserializer.readBoolean()
        var value: GestureInfo = GestureInfo(tagTmpResult, typeTmpResult, isSystemGestureTmpResult)
        return value
    }
}
