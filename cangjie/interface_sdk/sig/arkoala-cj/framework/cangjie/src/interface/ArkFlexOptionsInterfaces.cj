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
public interface FlexOptionsInterfaces <:  {
    public mut open prop direction: Option<FlexDirection>
    public mut open prop wrap: Option<FlexWrap>
    public mut open prop justifyContent: Option<FlexAlign>
    public mut open prop alignItems: Option<ItemAlign>
    public mut open prop alignContent: Option<FlexAlign>
    public mut open prop space: Option<FlexSpaceOptions>
}
public open class FlexOptions <: FlexOptionsInterfaces {
    private var direction_container: Option<FlexDirection>
    public mut open prop direction: Option<FlexDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var wrap_container: Option<FlexWrap>
    public mut open prop wrap: Option<FlexWrap>
    {
        get() {
            return wrap_container
        }
        set(wrap) {
            wrap_container = wrap
        }
    }
    private var justifyContent_container: Option<FlexAlign>
    public mut open prop justifyContent: Option<FlexAlign>
    {
        get() {
            return justifyContent_container
        }
        set(justifyContent) {
            justifyContent_container = justifyContent
        }
    }
    private var alignItems_container: Option<ItemAlign>
    public mut open prop alignItems: Option<ItemAlign>
    {
        get() {
            return alignItems_container
        }
        set(alignItems) {
            alignItems_container = alignItems
        }
    }
    private var alignContent_container: Option<FlexAlign>
    public mut open prop alignContent: Option<FlexAlign>
    {
        get() {
            return alignContent_container
        }
        set(alignContent) {
            alignContent_container = alignContent
        }
    }
    private var space_container: Option<FlexSpaceOptions>
    public mut open prop space: Option<FlexSpaceOptions>
    {
        get() {
            return space_container
        }
        set(space) {
            space_container = space
        }
    }
    FlexOptions(direction: Option<FlexDirection>, wrap: Option<FlexWrap>, justifyContent: Option<FlexAlign>, alignItems: Option<ItemAlign>, alignContent: Option<FlexAlign>, space: Option<FlexSpaceOptions>) {
        this.direction_container = direction
        this.wrap_container = wrap
        this.justifyContent_container = justifyContent
        this.alignItems_container = alignItems
        this.alignContent_container = alignContent
        this.space_container = space
    }
}
public open class FlexOptions_serializer {
    public static func write(buffer: SerializerBase, value: FlexOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDirection = value.direction
        if (valueHolderForDirection.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDirectionTmpValue = valueHolderForDirection
            valueSerializer.writeInt32(valueHolderForDirectionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWrap = value.wrap
        if (valueHolderForWrap.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWrapTmpValue = valueHolderForWrap
            valueSerializer.writeInt32(valueHolderForWrapTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForJustifyContent = value.justifyContent
        if (valueHolderForJustifyContent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForJustifyContentTmpValue = valueHolderForJustifyContent
            valueSerializer.writeInt32(valueHolderForJustifyContentTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAlignItems = value.alignItems
        if (valueHolderForAlignItems.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAlignItemsTmpValue = valueHolderForAlignItems
            valueSerializer.writeInt32(valueHolderForAlignItemsTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAlignContent = value.alignContent
        if (valueHolderForAlignContent.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAlignContentTmpValue = valueHolderForAlignContent
            valueSerializer.writeInt32(valueHolderForAlignContentTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSpace = value.space
        if (valueHolderForSpace.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSpaceTmpValue = valueHolderForSpace
            FlexSpaceOptions_serializer.write(valueSerializer, valueHolderForSpaceTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): FlexOptions {
        var valueDeserializer: DeserializerBase = buffer
        let directionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var directionTmpBuf: Option<FlexDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(directionTmpBuf_runtimeType))) {
            directionTmpBuf = FlexDirection(valueDeserializer.readInt32())
        }
        let directionTmpResult: Option<FlexDirection> = directionTmpBuf
        let wrapTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var wrapTmpBuf: Option<FlexWrap> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(wrapTmpBuf_runtimeType))) {
            wrapTmpBuf = FlexWrap(valueDeserializer.readInt32())
        }
        let wrapTmpResult: Option<FlexWrap> = wrapTmpBuf
        let justifyContentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var justifyContentTmpBuf: Option<FlexAlign> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(justifyContentTmpBuf_runtimeType))) {
            justifyContentTmpBuf = FlexAlign(valueDeserializer.readInt32())
        }
        let justifyContentTmpResult: Option<FlexAlign> = justifyContentTmpBuf
        let alignItemsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var alignItemsTmpBuf: Option<ItemAlign> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(alignItemsTmpBuf_runtimeType))) {
            alignItemsTmpBuf = ItemAlign(valueDeserializer.readInt32())
        }
        let alignItemsTmpResult: Option<ItemAlign> = alignItemsTmpBuf
        let alignContentTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var alignContentTmpBuf: Option<FlexAlign> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(alignContentTmpBuf_runtimeType))) {
            alignContentTmpBuf = FlexAlign(valueDeserializer.readInt32())
        }
        let alignContentTmpResult: Option<FlexAlign> = alignContentTmpBuf
        let spaceTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var spaceTmpBuf: Option<FlexSpaceOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(spaceTmpBuf_runtimeType))) {
            spaceTmpBuf = FlexSpaceOptions_serializer.read(valueDeserializer)
        }
        let spaceTmpResult: Option<FlexSpaceOptions> = spaceTmpBuf
        var value: FlexOptions = FlexOptions(directionTmpResult, wrapTmpResult, justifyContentTmpResult, alignItemsTmpResult, alignContentTmpResult, spaceTmpResult)
        return value
    }
}
