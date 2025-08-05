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
public interface GestureStyleInterfaceInterfaces <:  {
    public mut open prop onClick: Option<((event: ClickEvent) -> Unit)>
    public mut open prop onLongPress: Option<((event: GestureEvent) -> Unit)>
    public mut open prop onTouch: Option<((event: TouchEvent) -> Unit)>
}
public open class GestureStyleInterface <: GestureStyleInterfaceInterfaces {
    private var onClick_container: Option<((event: ClickEvent) -> Unit)>
    public mut open prop onClick: Option<((event: ClickEvent) -> Unit)>
    {
        get() {
            return onClick_container
        }
        set(onClick) {
            onClick_container = onClick
        }
    }
    private var onLongPress_container: Option<((event: GestureEvent) -> Unit)>
    public mut open prop onLongPress: Option<((event: GestureEvent) -> Unit)>
    {
        get() {
            return onLongPress_container
        }
        set(onLongPress) {
            onLongPress_container = onLongPress
        }
    }
    private var onTouch_container: Option<((event: TouchEvent) -> Unit)>
    public mut open prop onTouch: Option<((event: TouchEvent) -> Unit)>
    {
        get() {
            return onTouch_container
        }
        set(onTouch) {
            onTouch_container = onTouch
        }
    }
    GestureStyleInterface(onClick: Option<((event: ClickEvent) -> Unit)>, onLongPress: Option<((event: GestureEvent) -> Unit)>, onTouch: Option<((event: TouchEvent) -> Unit)>) {
        this.onClick_container = onClick
        this.onLongPress_container = onLongPress
        this.onTouch_container = onTouch
    }
}
public open class GestureStyleInterface_serializer {
    public static func write(buffer: SerializerBase, value: GestureStyleInterface): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnClick = value.onClick
        if (valueHolderForOnClick.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnClickTmpValue = valueHolderForOnClick
            valueSerializer.holdAndWriteCallback(valueHolderForOnClickTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnLongPress = value.onLongPress
        if (valueHolderForOnLongPress.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnLongPressTmpValue = valueHolderForOnLongPress
            valueSerializer.holdAndWriteCallback(valueHolderForOnLongPressTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnTouch = value.onTouch
        if (valueHolderForOnTouch.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnTouchTmpValue = valueHolderForOnTouch
            valueSerializer.holdAndWriteCallback(valueHolderForOnTouchTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GestureStyleInterface {
        var valueDeserializer: DeserializerBase = buffer
        let onClickTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onClickTmpBuf: Option<((event: ClickEvent) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onClickTmpBuf_runtimeType))) {
            let onClickTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onClickTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onClickTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onClickTmpBuf = {event: ClickEvent => let onClickTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onClickTmpBuf_BufArgsSerializer.writeInt32(onClickTmpBuf_BufResource.resourceId);
onClickTmpBuf_BufArgsSerializer.writePointer(onClickTmpBuf_BufCall);
onClickTmpBuf_BufArgsSerializer.writePointer(onClickTmpBuf_BufCallSync);
ClickEvent_serializer.write(onClickTmpBuf_BufArgsSerializer, event);
InteropNativeModule._CallCallback(1097178637, onClickTmpBuf_BufArgsSerializer.asBuffer(), onClickTmpBuf_BufArgsSerializer.length());
onClickTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onClickTmpResult: Option<((event: ClickEvent) -> Unit)> = onClickTmpBuf
        let onLongPressTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onLongPressTmpBuf: Option<((event: GestureEvent) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onLongPressTmpBuf_runtimeType))) {
            let onLongPressTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onLongPressTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onLongPressTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onLongPressTmpBuf = {event: GestureEvent => let onLongPressTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onLongPressTmpBuf_BufArgsSerializer.writeInt32(onLongPressTmpBuf_BufResource.resourceId);
onLongPressTmpBuf_BufArgsSerializer.writePointer(onLongPressTmpBuf_BufCall);
onLongPressTmpBuf_BufArgsSerializer.writePointer(onLongPressTmpBuf_BufCallSync);
GestureEvent_serializer.write(onLongPressTmpBuf_BufArgsSerializer, event);
InteropNativeModule._CallCallback(-1143194492, onLongPressTmpBuf_BufArgsSerializer.asBuffer(), onLongPressTmpBuf_BufArgsSerializer.length());
onLongPressTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onLongPressTmpResult: Option<((event: GestureEvent) -> Unit)> = onLongPressTmpBuf
        let onTouchTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onTouchTmpBuf: Option<((event: TouchEvent) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onTouchTmpBuf_runtimeType))) {
            let onTouchTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onTouchTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onTouchTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onTouchTmpBuf = {event: TouchEvent => let onTouchTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onTouchTmpBuf_BufArgsSerializer.writeInt32(onTouchTmpBuf_BufResource.resourceId);
onTouchTmpBuf_BufArgsSerializer.writePointer(onTouchTmpBuf_BufCall);
onTouchTmpBuf_BufArgsSerializer.writePointer(onTouchTmpBuf_BufCallSync);
TouchEvent_serializer.write(onTouchTmpBuf_BufArgsSerializer, event);
InteropNativeModule._CallCallback(-1676021850, onTouchTmpBuf_BufArgsSerializer.asBuffer(), onTouchTmpBuf_BufArgsSerializer.length());
onTouchTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onTouchTmpResult: Option<((event: TouchEvent) -> Unit)> = onTouchTmpBuf
        var value: GestureStyleInterface = GestureStyleInterface(onClickTmpResult, onLongPressTmpResult, onTouchTmpResult)
        return value
    }
}
