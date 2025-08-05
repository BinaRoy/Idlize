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
public interface EditMenuOptionsInterfaces <:  {
    public mut open prop onCreateMenu: ((menuItems: ArrayList<TextMenuItem>) -> ArrayList<TextMenuItem>)
    public mut open prop onMenuItemClick: ((menuItem: TextMenuItem, range: TextRange) -> Bool)
    public mut open prop onPrepareMenu: Option<OnPrepareMenuCallback>
    public mut open prop onCreateMenu: OnCreateMenuCallback
    public mut open prop onMenuItemClick: OnMenuItemClickCallback
}
public open class EditMenuOptions <: EditMenuOptionsInterfaces {
    private var onCreateMenu_container: ((menuItems: ArrayList<TextMenuItem>) -> ArrayList<TextMenuItem>)
    public mut open prop onCreateMenu: ((menuItems: ArrayList<TextMenuItem>) -> ArrayList<TextMenuItem>)
    {
        get() {
            return onCreateMenu_container
        }
        set(onCreateMenu) {
            onCreateMenu_container = onCreateMenu
        }
    }
    private var onMenuItemClick_container: ((menuItem: TextMenuItem, range: TextRange) -> Bool)
    public mut open prop onMenuItemClick: ((menuItem: TextMenuItem, range: TextRange) -> Bool)
    {
        get() {
            return onMenuItemClick_container
        }
        set(onMenuItemClick) {
            onMenuItemClick_container = onMenuItemClick
        }
    }
    private var onPrepareMenu_container: Option<OnPrepareMenuCallback>
    public mut open prop onPrepareMenu: Option<OnPrepareMenuCallback>
    {
        get() {
            return onPrepareMenu_container
        }
        set(onPrepareMenu) {
            onPrepareMenu_container = onPrepareMenu
        }
    }
    private var onCreateMenu_container: OnCreateMenuCallback
    public mut open prop onCreateMenu: OnCreateMenuCallback
    {
        get() {
            return onCreateMenu_container
        }
        set(onCreateMenu) {
            onCreateMenu_container = onCreateMenu
        }
    }
    private var onMenuItemClick_container: OnMenuItemClickCallback
    public mut open prop onMenuItemClick: OnMenuItemClickCallback
    {
        get() {
            return onMenuItemClick_container
        }
        set(onMenuItemClick) {
            onMenuItemClick_container = onMenuItemClick
        }
    }
    EditMenuOptions(onCreateMenu: ((menuItems: ArrayList<TextMenuItem>) -> ArrayList<TextMenuItem>), onMenuItemClick: ((menuItem: TextMenuItem, range: TextRange) -> Bool), onPrepareMenu: Option<OnPrepareMenuCallback>, onCreateMenu: OnCreateMenuCallback, onMenuItemClick: OnMenuItemClickCallback) {
        this.onCreateMenu_container = onCreateMenu
        this.onMenuItemClick_container = onMenuItemClick
        this.onPrepareMenu_container = onPrepareMenu
        this.onCreateMenu_container = onCreateMenu
        this.onMenuItemClick_container = onMenuItemClick
    }
}
public open class EditMenuOptions_serializer {
    public static func write(buffer: SerializerBase, value: EditMenuOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnCreateMenu = value.onCreateMenu
        valueSerializer.holdAndWriteCallback(valueHolderForOnCreateMenu);
        let valueHolderForOnMenuItemClick = value.onMenuItemClick
        valueSerializer.holdAndWriteCallback(valueHolderForOnMenuItemClick);
        let valueHolderForOnPrepareMenu = value.onPrepareMenu
        if (valueHolderForOnPrepareMenu.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnPrepareMenuTmpValue = valueHolderForOnPrepareMenu
            valueSerializer.holdAndWriteCallback(valueHolderForOnPrepareMenuTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnCreateMenu = value.onCreateMenu
        valueSerializer.holdAndWriteCallback(valueHolderForOnCreateMenu);
        let valueHolderForOnMenuItemClick = value.onMenuItemClick
        valueSerializer.holdAndWriteCallback(valueHolderForOnMenuItemClick);
    }
    public static func read(buffer: DeserializerBase): EditMenuOptions {
        var valueDeserializer: DeserializerBase = buffer
        let onCreateMenuTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let onCreateMenuTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let onCreateMenuTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let onCreateMenuTmpResult: ((menuItems: ArrayList<TextMenuItem>) -> ArrayList<TextMenuItem>) = {menuItems: ArrayList<TextMenuItem> => let onCreateMenuTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
onCreateMenuTmpBufBufArgsSerializer.writeInt32(onCreateMenuTmpBufBufResource.resourceId);
onCreateMenuTmpBufBufArgsSerializer.writePointer(onCreateMenuTmpBufBufCall);
onCreateMenuTmpBufBufArgsSerializer.writePointer(onCreateMenuTmpBufBufCallSync);
onCreateMenuTmpBufBufArgsSerializer.writeInt32(Int32(menuItems.size));
for (menuItemsCounterI in 0..menuItems.size) {
    let menuItemsTmpElement: TextMenuItem = menuItems[Int64(menuItemsCounterI)];
    TextMenuItem_serializer.write(onCreateMenuTmpBufBufArgsSerializer, menuItemsTmpElement);
}
let onCreateMenuTmpBufBufContinuationValue = ArrayListTextMenuItemHolder(None<ArrayList<TextMenuItem>>);
let onCreateMenuTmpBufBufContinuationCallback: ((value: ArrayList<TextMenuItem>) -> Unit) = {value: ArrayList<TextMenuItem> => onCreateMenuTmpBufBufContinuationValue.value = value; }
onCreateMenuTmpBufBufArgsSerializer.holdAndWriteCallback(onCreateMenuTmpBufBufContinuationCallback);
InteropNativeModule._CallCallback(300202685, onCreateMenuTmpBufBufArgsSerializer.asBuffer(), onCreateMenuTmpBufBufArgsSerializer.length());
onCreateMenuTmpBufBufArgsSerializer.release();
return match (onCreateMenuTmpBufBufContinuationValue.value as ArrayList<TextMenuItem>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} }
        let onMenuItemClickTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let onMenuItemClickTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let onMenuItemClickTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let onMenuItemClickTmpResult: ((menuItem: TextMenuItem, range: TextRange) -> Bool) = {menuItem: TextMenuItem, range: TextRange => let onMenuItemClickTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
onMenuItemClickTmpBufBufArgsSerializer.writeInt32(onMenuItemClickTmpBufBufResource.resourceId);
onMenuItemClickTmpBufBufArgsSerializer.writePointer(onMenuItemClickTmpBufBufCall);
onMenuItemClickTmpBufBufArgsSerializer.writePointer(onMenuItemClickTmpBufBufCallSync);
TextMenuItem_serializer.write(onMenuItemClickTmpBufBufArgsSerializer, menuItem);
TextRange_serializer.write(onMenuItemClickTmpBufBufArgsSerializer, range);
let onMenuItemClickTmpBufBufContinuationValue = BoolHolder(None<Bool>);
let onMenuItemClickTmpBufBufContinuationCallback: ((parameter: Bool) -> Unit) = {value: Bool => onMenuItemClickTmpBufBufContinuationValue.value = value; }
onMenuItemClickTmpBufBufArgsSerializer.holdAndWriteCallback(onMenuItemClickTmpBufBufContinuationCallback);
InteropNativeModule._CallCallback(-1581515233, onMenuItemClickTmpBufBufArgsSerializer.asBuffer(), onMenuItemClickTmpBufBufArgsSerializer.length());
onMenuItemClickTmpBufBufArgsSerializer.release();
return match (onMenuItemClickTmpBufBufContinuationValue.value as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} }
        let onPrepareMenuTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onPrepareMenuTmpBuf: Option<OnPrepareMenuCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onPrepareMenuTmpBuf_runtimeType))) {
            let onPrepareMenuTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onPrepareMenuTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onPrepareMenuTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onPrepareMenuTmpBuf = {menuItems: ArrayList<TextMenuItem> => let onPrepareMenuTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onPrepareMenuTmpBuf_BufArgsSerializer.writeInt32(onPrepareMenuTmpBuf_BufResource.resourceId);
onPrepareMenuTmpBuf_BufArgsSerializer.writePointer(onPrepareMenuTmpBuf_BufCall);
onPrepareMenuTmpBuf_BufArgsSerializer.writePointer(onPrepareMenuTmpBuf_BufCallSync);
onPrepareMenuTmpBuf_BufArgsSerializer.writeInt32(Int32(menuItems.size));
for (menuItemsCounterI in 0..menuItems.size) {
    let menuItemsTmpElement: TextMenuItem = menuItems[Int64(menuItemsCounterI)];
    TextMenuItem_serializer.write(onPrepareMenuTmpBuf_BufArgsSerializer, menuItemsTmpElement);
}
let onPrepareMenuTmpBuf_BufContinuationValue = ArrayListTextMenuItemHolder(None<ArrayList<TextMenuItem>>);
let onPrepareMenuTmpBuf_BufContinuationCallback: ((value: ArrayList<TextMenuItem>) -> Unit) = {value: ArrayList<TextMenuItem> => onPrepareMenuTmpBuf_BufContinuationValue.value = value; }
onPrepareMenuTmpBuf_BufArgsSerializer.holdAndWriteCallback(onPrepareMenuTmpBuf_BufContinuationCallback);
InteropNativeModule._CallCallback(-1238906520, onPrepareMenuTmpBuf_BufArgsSerializer.asBuffer(), onPrepareMenuTmpBuf_BufArgsSerializer.length());
onPrepareMenuTmpBuf_BufArgsSerializer.release();
return match (onPrepareMenuTmpBuf_BufContinuationValue.value as ArrayList<TextMenuItem>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} }
        }
        let onPrepareMenuTmpResult: Option<OnPrepareMenuCallback> = onPrepareMenuTmpBuf
        let onCreateMenuTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let onCreateMenuTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let onCreateMenuTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let onCreateMenuTmpResult: OnCreateMenuCallback = {menuItems: ArrayList<TextMenuItem> => let onCreateMenuTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
onCreateMenuTmpBufBufArgsSerializer.writeInt32(onCreateMenuTmpBufBufResource.resourceId);
onCreateMenuTmpBufBufArgsSerializer.writePointer(onCreateMenuTmpBufBufCall);
onCreateMenuTmpBufBufArgsSerializer.writePointer(onCreateMenuTmpBufBufCallSync);
onCreateMenuTmpBufBufArgsSerializer.writeInt32(Int32(menuItems.size));
for (menuItemsCounterI in 0..menuItems.size) {
    let menuItemsTmpElement: TextMenuItem = menuItems[Int64(menuItemsCounterI)];
    TextMenuItem_serializer.write(onCreateMenuTmpBufBufArgsSerializer, menuItemsTmpElement);
}
let onCreateMenuTmpBufBufContinuationValue = ArrayListTextMenuItemHolder(None<ArrayList<TextMenuItem>>);
let onCreateMenuTmpBufBufContinuationCallback: ((value: ArrayList<TextMenuItem>) -> Unit) = {value: ArrayList<TextMenuItem> => onCreateMenuTmpBufBufContinuationValue.value = value; }
onCreateMenuTmpBufBufArgsSerializer.holdAndWriteCallback(onCreateMenuTmpBufBufContinuationCallback);
InteropNativeModule._CallCallback(312701677, onCreateMenuTmpBufBufArgsSerializer.asBuffer(), onCreateMenuTmpBufBufArgsSerializer.length());
onCreateMenuTmpBufBufArgsSerializer.release();
return match (onCreateMenuTmpBufBufContinuationValue.value as ArrayList<TextMenuItem>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} }
        let onMenuItemClickTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let onMenuItemClickTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let onMenuItemClickTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let onMenuItemClickTmpResult: OnMenuItemClickCallback = {menuItem: TextMenuItem, range: TextRange => let onMenuItemClickTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
onMenuItemClickTmpBufBufArgsSerializer.writeInt32(onMenuItemClickTmpBufBufResource.resourceId);
onMenuItemClickTmpBufBufArgsSerializer.writePointer(onMenuItemClickTmpBufBufCall);
onMenuItemClickTmpBufBufArgsSerializer.writePointer(onMenuItemClickTmpBufBufCallSync);
TextMenuItem_serializer.write(onMenuItemClickTmpBufBufArgsSerializer, menuItem);
TextRange_serializer.write(onMenuItemClickTmpBufBufArgsSerializer, range);
let onMenuItemClickTmpBufBufContinuationValue = BoolHolder(None<Bool>);
let onMenuItemClickTmpBufBufContinuationCallback: ((parameter: Bool) -> Unit) = {value: Bool => onMenuItemClickTmpBufBufContinuationValue.value = value; }
onMenuItemClickTmpBufBufArgsSerializer.holdAndWriteCallback(onMenuItemClickTmpBufBufContinuationCallback);
InteropNativeModule._CallCallback(-1106041422, onMenuItemClickTmpBufBufArgsSerializer.asBuffer(), onMenuItemClickTmpBufBufArgsSerializer.length());
onMenuItemClickTmpBufBufArgsSerializer.release();
return match (onMenuItemClickTmpBufBufContinuationValue.value as Bool) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")} }
        var value: EditMenuOptions = EditMenuOptions(onCreateMenuTmpResult, onMenuItemClickTmpResult, onPrepareMenuTmpResult, onCreateMenuTmpResult, onMenuItemClickTmpResult)
        return value
    }
}
