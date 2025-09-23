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

package idlize.commonPara


import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public open class SheetOptions <: BindOptions {
    public var height: Option<SheetSize>
    public var dragBar: Option<Bool>
    public var maskColor: Option<ResourceColor>
    public var blurStyle: Option<BlurStyle>
    public var showClose: Option<Bool>
    public var preferType: Option<SheetType>
    public var title: Option<SheetTitleOptions>
    public var enableOutsideInteractive: Option<Bool>
    public var borderStyle: Option<BorderStyle>
    public var mode: Option<SheetMode>
    public var uiContext: Option<UIContext>
    init(height: Option<SheetSize>, dragBar: Option<Bool>, maskColor: Option<ResourceColor>, blurStyle: Option<BlurStyle>, showClose: Option<Bool>, preferType: Option<SheetType>, title: Option<SheetTitleOptions>, enableOutsideInteractive: Option<Bool>, borderStyle: Option<BorderStyle>, mode: Option<SheetMode>, uiContext: Option<UIContext>, backgroundColor: Option<ResourceColor>) {
        super(backgroundColor)
        this.height = height
        this.dragBar = dragBar
        this.maskColor = maskColor
        this.blurStyle = blurStyle
        this.showClose = showClose
        this.preferType = preferType
        this.title = title
        this.enableOutsideInteractive = enableOutsideInteractive
        this.borderStyle = borderStyle
        this.mode = mode
        this.uiContext = uiContext
        this.backgroundColor = backgroundColor
    }
}
public class SheetOptions_serializer {
    public  static func write(buffer: SerializerBase, value: SheetOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBackgroundColor = value.backgroundColor
        if (let Some(valueHolderForBackgroundColor) <- valueHolderForBackgroundColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor
            if (valueHolderForBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBackgroundColorTmpValueForIdx0.get())
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1)
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2)
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3))
                let valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.getValue3()
                Resource_serializer.write(valueSerializer, valueHolderForBackgroundColorTmpValueForIdx3)
            } else {
                throw Exception("One of the branches for valueHolderForBackgroundColorTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForHeight = value.height
        if (let Some(valueHolderForHeight) <- valueHolderForHeight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForHeightTmpValue = valueHolderForHeight
            valueSerializer.writeInt32(valueHolderForHeightTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForDragBar = value.dragBar
        if (let Some(valueHolderForDragBar) <- valueHolderForDragBar) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForDragBarTmpValue = valueHolderForDragBar
            valueSerializer.writeBoolean(valueHolderForDragBarTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForMaskColor = value.maskColor
        if (let Some(valueHolderForMaskColor) <- valueHolderForMaskColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForMaskColorTmpValue = valueHolderForMaskColor
            if (valueHolderForMaskColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0))
                let valueHolderForMaskColorTmpValueForIdx0 = valueHolderForMaskColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForMaskColorTmpValueForIdx0.get())
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1))
                let valueHolderForMaskColorTmpValueForIdx1 = valueHolderForMaskColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMaskColorTmpValueForIdx1)
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2))
                let valueHolderForMaskColorTmpValueForIdx2 = valueHolderForMaskColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForMaskColorTmpValueForIdx2)
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3))
                let valueHolderForMaskColorTmpValueForIdx3 = valueHolderForMaskColorTmpValue.getValue3()
                Resource_serializer.write(valueSerializer, valueHolderForMaskColorTmpValueForIdx3)
            } else {
                throw Exception("One of the branches for valueHolderForMaskColorTmpValue has to be chosen for serialisation.")
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBlurStyle = value.blurStyle
        if (let Some(valueHolderForBlurStyle) <- valueHolderForBlurStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBlurStyleTmpValue = valueHolderForBlurStyle
            valueSerializer.writeInt32(valueHolderForBlurStyleTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForShowClose = value.showClose
        if (let Some(valueHolderForShowClose) <- valueHolderForShowClose) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForShowCloseTmpValue = valueHolderForShowClose
            valueSerializer.writeBoolean(valueHolderForShowCloseTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForPreferType = value.preferType
        if (let Some(valueHolderForPreferType) <- valueHolderForPreferType) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForPreferTypeTmpValue = valueHolderForPreferType
            valueSerializer.writeInt32(valueHolderForPreferTypeTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForTitle = value.title
        if (let Some(valueHolderForTitle) <- valueHolderForTitle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForTitleTmpValue = valueHolderForTitle
            SheetTitleOptions_serializer.write(valueSerializer, valueHolderForTitleTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForEnableOutsideInteractive = value.enableOutsideInteractive
        if (let Some(valueHolderForEnableOutsideInteractive) <- valueHolderForEnableOutsideInteractive) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForEnableOutsideInteractiveTmpValue = valueHolderForEnableOutsideInteractive
            valueSerializer.writeBoolean(valueHolderForEnableOutsideInteractiveTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForBorderStyle = value.borderStyle
        if (let Some(valueHolderForBorderStyle) <- valueHolderForBorderStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForBorderStyleTmpValue = valueHolderForBorderStyle
            valueSerializer.writeInt32(valueHolderForBorderStyleTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForMode = value.mode
        if (let Some(valueHolderForMode) <- valueHolderForMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForModeTmpValue = valueHolderForMode
            valueSerializer.writeInt32(valueHolderForModeTmpValue.get())
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let valueHolderForUiContext = value.uiContext
        if (let Some(valueHolderForUiContext) <- valueHolderForUiContext) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueHolderForUiContextTmpValue = valueHolderForUiContext
            valueSerializer.writeCustomObject("Any", valueHolderForUiContextTmpValue)
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
    }
    public  static func read(buffer: DeserializerBase): SheetOptions {
        var valueDeserializer: DeserializerBase = buffer
        let backgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundColorTmpBuf_runtimeType))) {
            let backgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundColorTmpBuf_: ResourceColor 
            if (backgroundColorTmpBuf_UnionSelector == Int8(0)) {
                backgroundColorTmpBuf_ = ResourceColor(Color.parse(valueDeserializer.readInt32()))
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(1)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(2)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(3)) {
                backgroundColorTmpBuf_ = ResourceColor(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            backgroundColorTmpBuf = match (backgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundColorTmpResult: Option<ResourceColor> = backgroundColorTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<SheetSize> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            heightTmpBuf = SheetSize.parse(valueDeserializer.readInt32())
        }
        let heightTmpResult: Option<SheetSize> = heightTmpBuf
        let dragBarTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dragBarTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dragBarTmpBuf_runtimeType))) {
            dragBarTmpBuf = valueDeserializer.readBoolean()
        }
        let dragBarTmpResult: Option<Bool> = dragBarTmpBuf
        let maskColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskColorTmpBuf_runtimeType))) {
            let maskColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var maskColorTmpBuf_: ResourceColor 
            if (maskColorTmpBuf_UnionSelector == Int8(0)) {
                maskColorTmpBuf_ = ResourceColor(Color.parse(valueDeserializer.readInt32()))
            } else if (maskColorTmpBuf_UnionSelector == Int8(1)) {
                maskColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maskColorTmpBuf_UnionSelector == Int8(2)) {
                maskColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maskColorTmpBuf_UnionSelector == Int8(3)) {
                maskColorTmpBuf_ = ResourceColor(Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for maskColorTmpBuf_ has to be chosen through deserialisation.")
            }
            maskColorTmpBuf = match (maskColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maskColorTmpResult: Option<ResourceColor> = maskColorTmpBuf
        let blurStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var blurStyleTmpBuf: Option<BlurStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(blurStyleTmpBuf_runtimeType))) {
            blurStyleTmpBuf = BlurStyle.parse(valueDeserializer.readInt32())
        }
        let blurStyleTmpResult: Option<BlurStyle> = blurStyleTmpBuf
        let showCloseTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showCloseTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showCloseTmpBuf_runtimeType))) {
            showCloseTmpBuf = valueDeserializer.readBoolean()
        }
        let showCloseTmpResult: Option<Bool> = showCloseTmpBuf
        let preferTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var preferTypeTmpBuf: Option<SheetType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(preferTypeTmpBuf_runtimeType))) {
            preferTypeTmpBuf = SheetType.parse(valueDeserializer.readInt32())
        }
        let preferTypeTmpResult: Option<SheetType> = preferTypeTmpBuf
        let titleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var titleTmpBuf: Option<SheetTitleOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(titleTmpBuf_runtimeType))) {
            titleTmpBuf = SheetTitleOptions_serializer.read(valueDeserializer)
        }
        let titleTmpResult: Option<SheetTitleOptions> = titleTmpBuf
        let enableOutsideInteractiveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableOutsideInteractiveTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableOutsideInteractiveTmpBuf_runtimeType))) {
            enableOutsideInteractiveTmpBuf = valueDeserializer.readBoolean()
        }
        let enableOutsideInteractiveTmpResult: Option<Bool> = enableOutsideInteractiveTmpBuf
        let borderStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderStyleTmpBuf: Option<BorderStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderStyleTmpBuf_runtimeType))) {
            borderStyleTmpBuf = BorderStyle.parse(valueDeserializer.readInt32())
        }
        let borderStyleTmpResult: Option<BorderStyle> = borderStyleTmpBuf
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<SheetMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            modeTmpBuf = SheetMode.parse(valueDeserializer.readInt32())
        }
        let modeTmpResult: Option<SheetMode> = modeTmpBuf
        let uiContextTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var uiContextTmpBuf: Option<UIContext> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(uiContextTmpBuf_runtimeType))) {
            uiContextTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let uiContextTmpResult: Option<UIContext> = uiContextTmpBuf
        var value: SheetOptions = SheetOptions(heightTmpResult, dragBarTmpResult, maskColorTmpResult, blurStyleTmpResult, showCloseTmpResult, preferTypeTmpResult, titleTmpResult, enableOutsideInteractiveTmpResult, borderStyleTmpResult, modeTmpResult, uiContextTmpResult, backgroundColorTmpResult)
        return value
    }
}
