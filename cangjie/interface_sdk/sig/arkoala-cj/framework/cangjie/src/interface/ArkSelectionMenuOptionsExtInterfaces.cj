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
public interface SelectionMenuOptionsExtInterfaces <:  {
    public mut open prop onAppear: Option<(() -> Unit)>
    public mut open prop onDisappear: Option<(() -> Unit)>
    public mut open prop preview: Option<CustomBuilder>
    public mut open prop menuType: Option<MenuType>
    public mut open prop previewMenuOptions: Option<PreviewMenuOptions>
}
public open class SelectionMenuOptionsExt <: SelectionMenuOptionsExtInterfaces {
    private var onAppear_container: Option<(() -> Unit)>
    public mut open prop onAppear: Option<(() -> Unit)>
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
    private var preview_container: Option<CustomBuilder>
    public mut open prop preview: Option<CustomBuilder>
    {
        get() {
            return preview_container
        }
        set(preview) {
            preview_container = preview
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
    SelectionMenuOptionsExt(onAppear: Option<(() -> Unit)>, onDisappear: Option<(() -> Unit)>, preview: Option<CustomBuilder>, menuType: Option<MenuType>, previewMenuOptions: Option<PreviewMenuOptions>) {
        this.onAppear_container = onAppear
        this.onDisappear_container = onDisappear
        this.preview_container = preview
        this.menuType_container = menuType
        this.previewMenuOptions_container = previewMenuOptions
    }
}
public open class SelectionMenuOptionsExt_serializer {
    public static func write(buffer: SerializerBase, value: SelectionMenuOptionsExt): Unit {
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
        let valueHolderForPreview = value.preview
        if (valueHolderForPreview.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewTmpValue = valueHolderForPreview
            valueSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(valueHolderForPreviewTmpValue));
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
        let valueHolderForPreviewMenuOptions = value.previewMenuOptions
        if (valueHolderForPreviewMenuOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreviewMenuOptionsTmpValue = valueHolderForPreviewMenuOptions
            PreviewMenuOptions_serializer.write(valueSerializer, valueHolderForPreviewMenuOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SelectionMenuOptionsExt {
        var valueDeserializer: DeserializerBase = buffer
        let onAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onAppearTmpBuf_runtimeType))) {
            let onAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onAppearTmpBuf = { => let onAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onAppearTmpBuf_BufArgsSerializer.writeInt32(onAppearTmpBuf_BufResource.resourceId);
onAppearTmpBuf_BufArgsSerializer.writePointer(onAppearTmpBuf_BufCall);
onAppearTmpBuf_BufArgsSerializer.writePointer(onAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onAppearTmpBuf_BufArgsSerializer.asBuffer(), onAppearTmpBuf_BufArgsSerializer.length());
onAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onAppearTmpResult: Option<(() -> Unit)> = onAppearTmpBuf
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
        let previewTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewTmpBuf: Option<CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewTmpBuf_runtimeType))) {
            let previewTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let previewTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let previewTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            previewTmpBuf = { => let previewTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
previewTmpBuf_BufArgsSerializer.writeInt32(previewTmpBuf_BufResource.resourceId);
previewTmpBuf_BufArgsSerializer.writePointer(previewTmpBuf_BufCall);
previewTmpBuf_BufArgsSerializer.writePointer(previewTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(737226752, previewTmpBuf_BufArgsSerializer.asBuffer(), previewTmpBuf_BufArgsSerializer.length());
previewTmpBuf_BufArgsSerializer.release();
return; }
        }
        let previewTmpResult: Option<CustomBuilder> = previewTmpBuf
        let menuTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var menuTypeTmpBuf: Option<MenuType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(menuTypeTmpBuf_runtimeType))) {
            menuTypeTmpBuf = MenuType(valueDeserializer.readInt32())
        }
        let menuTypeTmpResult: Option<MenuType> = menuTypeTmpBuf
        let previewMenuOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var previewMenuOptionsTmpBuf: Option<PreviewMenuOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(previewMenuOptionsTmpBuf_runtimeType))) {
            previewMenuOptionsTmpBuf = PreviewMenuOptions_serializer.read(valueDeserializer)
        }
        let previewMenuOptionsTmpResult: Option<PreviewMenuOptions> = previewMenuOptionsTmpBuf
        var value: SelectionMenuOptionsExt = SelectionMenuOptionsExt(onAppearTmpResult, onDisappearTmpResult, previewTmpResult, menuTypeTmpResult, previewMenuOptionsTmpResult)
        return value
    }
}
