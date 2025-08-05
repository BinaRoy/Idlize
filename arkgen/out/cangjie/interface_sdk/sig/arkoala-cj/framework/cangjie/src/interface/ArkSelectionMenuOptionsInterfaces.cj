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
public interface SelectionMenuOptionsInterfaces <:  {
    public mut open prop onAppear: Option<MenuOnAppearCallback>
    public mut open prop onDisappear: Option<(() -> Unit)>
    public mut open prop onDisappear: Option<VoidCallback>
    public mut open prop menuType: Option<MenuType>
    public mut open prop onMenuShow: Option<MenuCallback>
    public mut open prop onMenuHide: Option<MenuCallback>
    public mut open prop previewMenuOptions: Option<PreviewMenuOptions>
}
public open class SelectionMenuOptions <: SelectionMenuOptionsInterfaces {
    private var onAppear_container: Option<MenuOnAppearCallback>
    public mut open prop onAppear: Option<MenuOnAppearCallback>
    {
        get() {
            return onAppear_container
        }
        set(onAppear) {
            onAppear_container = onAppear
        }
    }
    private var onDisappear_container: Option<(() -> Unit)>
    public mut open prop onDisappear: Option<(() -> Unit)>
    {
        get() {
            return onDisappear_container
        }
        set(onDisappear) {
            onDisappear_container = onDisappear
        }
    }
    private var onDisappear_container: Option<VoidCallback>
    public mut open prop onDisappear: Option<VoidCallback>
    {
        get() {
            return onDisappear_container
        }
        set(onDisappear) {
            onDisappear_container = onDisappear
        }
    }
    private var menuType_container: Option<MenuType>
    public mut open prop menuType: Option<MenuType>
    {
        get() {
            return menuType_container
        }
        set(menuType) {
            menuType_container = menuType
        }
    }
    private var onMenuShow_container: Option<MenuCallback>
    public mut open prop onMenuShow: Option<MenuCallback>
    {
        get() {
            return onMenuShow_container
        }
        set(onMenuShow) {
            onMenuShow_container = onMenuShow
        }
    }
    private var onMenuHide_container: Option<MenuCallback>
    public mut open prop onMenuHide: Option<MenuCallback>
    {
        get() {
            return onMenuHide_container
        }
        set(onMenuHide) {
            onMenuHide_container = onMenuHide
        }
    }
    private var previewMenuOptions_container: Option<PreviewMenuOptions>
    public mut open prop previewMenuOptions: Option<PreviewMenuOptions>
    {
        get() {
            return previewMenuOptions_container
        }
        set(previewMenuOptions) {
            previewMenuOptions_container = previewMenuOptions
        }
    }
    SelectionMenuOptions(onAppear: Option<MenuOnAppearCallback>, onDisappear: Option<(() -> Unit)>, onDisappear: Option<VoidCallback>, menuType: Option<MenuType>, onMenuShow: Option<MenuCallback>, onMenuHide: Option<MenuCallback>, previewMenuOptions: Option<PreviewMenuOptions>) {
        this.onAppear_container = onAppear
        this.onDisappear_container = onDisappear
        this.onDisappear_container = onDisappear
        this.menuType_container = menuType
        this.onMenuShow_container = onMenuShow
        this.onMenuHide_container = onMenuHide
        this.previewMenuOptions_container = previewMenuOptions
    }
}
public open class SelectionMenuOptions_serializer {
    public static func write(buffer: SerializerBase, value: SelectionMenuOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForOnAppear = value.onAppear
        if (valueHolderForOnAppear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnAppearTmpValue = valueHolderForOnAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDisappear = value.onDisappear
        if (valueHolderForOnDisappear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDisappearTmpValue = valueHolderForOnDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDisappear = value.onDisappear
        if (valueHolderForOnDisappear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDisappearTmpValue = valueHolderForOnDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMenuType = value.menuType
        if (valueHolderForMenuType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMenuTypeTmpValue = valueHolderForMenuType
            valueSerializer.writeInt32(valueHolderForMenuTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnMenuShow = value.onMenuShow
        if (valueHolderForOnMenuShow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnMenuShowTmpValue = valueHolderForOnMenuShow
            valueSerializer.holdAndWriteCallback(valueHolderForOnMenuShowTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnMenuHide = value.onMenuHide
        if (valueHolderForOnMenuHide.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnMenuHideTmpValue = valueHolderForOnMenuHide
            valueSerializer.holdAndWriteCallback(valueHolderForOnMenuHideTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreviewMenuOptions = value.previewMenuOptions
        if (valueHolderForPreviewMenuOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewMenuOptionsTmpValue = valueHolderForPreviewMenuOptions
            PreviewMenuOptions_serializer.write(valueSerializer, valueHolderForPreviewMenuOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SelectionMenuOptions {
        var valueDeserializer: DeserializerBase = buffer
        let onAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onAppearTmpBuf: Option<MenuOnAppearCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onAppearTmpBuf_runtimeType))) {
            let onAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onAppearTmpBuf = {start: Float64, end: Float64 => let onAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onAppearTmpBuf_BufArgsSerializer.writeInt32(onAppearTmpBuf_BufResource.resourceId);
onAppearTmpBuf_BufArgsSerializer.writePointer(onAppearTmpBuf_BufCall);
onAppearTmpBuf_BufArgsSerializer.writePointer(onAppearTmpBuf_BufCallSync);
onAppearTmpBuf_BufArgsSerializer.writeNumber(start);
onAppearTmpBuf_BufArgsSerializer.writeNumber(end);
InteropNativeModule._CallCallback(-614475458, onAppearTmpBuf_BufArgsSerializer.asBuffer(), onAppearTmpBuf_BufArgsSerializer.length());
onAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onAppearTmpResult: Option<MenuOnAppearCallback> = onAppearTmpBuf
        let onDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDisappearTmpBuf_runtimeType))) {
            let onDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDisappearTmpBuf = { => let onDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDisappearTmpBuf_BufArgsSerializer.writeInt32(onDisappearTmpBuf_BufResource.resourceId);
onDisappearTmpBuf_BufArgsSerializer.writePointer(onDisappearTmpBuf_BufCall);
onDisappearTmpBuf_BufArgsSerializer.writePointer(onDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onDisappearTmpBuf_BufArgsSerializer.asBuffer(), onDisappearTmpBuf_BufArgsSerializer.length());
onDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDisappearTmpResult: Option<(() -> Unit)> = onDisappearTmpBuf
        let onDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDisappearTmpBuf: Option<VoidCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDisappearTmpBuf_runtimeType))) {
            let onDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDisappearTmpBuf = { => let onDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDisappearTmpBuf_BufArgsSerializer.writeInt32(onDisappearTmpBuf_BufResource.resourceId);
onDisappearTmpBuf_BufArgsSerializer.writePointer(onDisappearTmpBuf_BufCall);
onDisappearTmpBuf_BufArgsSerializer.writePointer(onDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-2038961969, onDisappearTmpBuf_BufArgsSerializer.asBuffer(), onDisappearTmpBuf_BufArgsSerializer.length());
onDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDisappearTmpResult: Option<VoidCallback> = onDisappearTmpBuf
        let menuTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var menuTypeTmpBuf: Option<MenuType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(menuTypeTmpBuf_runtimeType))) {
            menuTypeTmpBuf = MenuType(valueDeserializer.readInt32())
        }
        let menuTypeTmpResult: Option<MenuType> = menuTypeTmpBuf
        let onMenuShowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onMenuShowTmpBuf: Option<MenuCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onMenuShowTmpBuf_runtimeType))) {
            let onMenuShowTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onMenuShowTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onMenuShowTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onMenuShowTmpBuf = {start: Float64, end: Float64 => let onMenuShowTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onMenuShowTmpBuf_BufArgsSerializer.writeInt32(onMenuShowTmpBuf_BufResource.resourceId);
onMenuShowTmpBuf_BufArgsSerializer.writePointer(onMenuShowTmpBuf_BufCall);
onMenuShowTmpBuf_BufArgsSerializer.writePointer(onMenuShowTmpBuf_BufCallSync);
onMenuShowTmpBuf_BufArgsSerializer.writeNumber(start);
onMenuShowTmpBuf_BufArgsSerializer.writeNumber(end);
InteropNativeModule._CallCallback(810927048, onMenuShowTmpBuf_BufArgsSerializer.asBuffer(), onMenuShowTmpBuf_BufArgsSerializer.length());
onMenuShowTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onMenuShowTmpResult: Option<MenuCallback> = onMenuShowTmpBuf
        let onMenuHideTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onMenuHideTmpBuf: Option<MenuCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onMenuHideTmpBuf_runtimeType))) {
            let onMenuHideTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onMenuHideTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onMenuHideTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onMenuHideTmpBuf = {start: Float64, end: Float64 => let onMenuHideTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onMenuHideTmpBuf_BufArgsSerializer.writeInt32(onMenuHideTmpBuf_BufResource.resourceId);
onMenuHideTmpBuf_BufArgsSerializer.writePointer(onMenuHideTmpBuf_BufCall);
onMenuHideTmpBuf_BufArgsSerializer.writePointer(onMenuHideTmpBuf_BufCallSync);
onMenuHideTmpBuf_BufArgsSerializer.writeNumber(start);
onMenuHideTmpBuf_BufArgsSerializer.writeNumber(end);
InteropNativeModule._CallCallback(810927048, onMenuHideTmpBuf_BufArgsSerializer.asBuffer(), onMenuHideTmpBuf_BufArgsSerializer.length());
onMenuHideTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onMenuHideTmpResult: Option<MenuCallback> = onMenuHideTmpBuf
        let previewMenuOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewMenuOptionsTmpBuf: Option<PreviewMenuOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewMenuOptionsTmpBuf_runtimeType))) {
            previewMenuOptionsTmpBuf = PreviewMenuOptions_serializer.read(valueDeserializer)
        }
        let previewMenuOptionsTmpResult: Option<PreviewMenuOptions> = previewMenuOptionsTmpBuf
        var value: SelectionMenuOptions = SelectionMenuOptions(onAppearTmpResult, onDisappearTmpResult, onDisappearTmpResult, menuTypeTmpResult, onMenuShowTmpResult, onMenuHideTmpResult, previewMenuOptionsTmpResult)
        return value
    }
}
