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
public open class CanvasRendererInternal {
    public static func fromPtr(ptr: UInt64): CanvasRenderer {
        return CanvasRenderer(ptr)
    }
}
public open class CanvasRenderer <: CanvasPath & MaterializedBase {
    public mut open prop letterSpacing: Union_LengthMetrics_String
    {
        get() {
            return this.getLetterSpacing()
        }
        set(letterSpacing) {
            this.setLetterSpacing(letterSpacing)
        }
    }
    public mut open prop globalAlpha: Float64
    {
        get() {
            return this.getGlobalAlpha()
        }
        set(globalAlpha) {
            this.setGlobalAlpha(globalAlpha)
        }
    }
    public mut open prop globalCompositeOperation: String
    {
        get() {
            return this.getGlobalCompositeOperation()
        }
        set(globalCompositeOperation) {
            this.setGlobalCompositeOperation(globalCompositeOperation)
        }
    }
    public mut open prop fillStyle: Union_String_Number_CanvasGradient_CanvasPattern
    {
        get() {
            return this.getFillStyle()
        }
        set(fillStyle) {
            this.setFillStyle(fillStyle)
        }
    }
    public mut open prop strokeStyle: Union_String_Number_CanvasGradient_CanvasPattern
    {
        get() {
            return this.getStrokeStyle()
        }
        set(strokeStyle) {
            this.setStrokeStyle(strokeStyle)
        }
    }
    public mut open prop filter: String
    {
        get() {
            return this.getFilter()
        }
        set(filter) {
            this.setFilter(filter)
        }
    }
    public mut open prop imageSmoothingEnabled: Bool
    {
        get() {
            return this.getImageSmoothingEnabled()
        }
        set(imageSmoothingEnabled) {
            this.setImageSmoothingEnabled(imageSmoothingEnabled)
        }
    }
    public mut open prop imageSmoothingQuality: ImageSmoothingQuality
    {
        get() {
            return this.getImageSmoothingQuality()
        }
        set(imageSmoothingQuality) {
            this.setImageSmoothingQuality(imageSmoothingQuality)
        }
    }
    public mut open prop lineCap: CanvasLineCap
    {
        get() {
            return this.getLineCap()
        }
        set(lineCap) {
            this.setLineCap(lineCap)
        }
    }
    public mut open prop lineDashOffset: Float64
    {
        get() {
            return this.getLineDashOffset()
        }
        set(lineDashOffset) {
            this.setLineDashOffset(lineDashOffset)
        }
    }
    public mut open prop lineJoin: CanvasLineJoin
    {
        get() {
            return this.getLineJoin()
        }
        set(lineJoin) {
            this.setLineJoin(lineJoin)
        }
    }
    public mut open prop lineWidth: Float64
    {
        get() {
            return this.getLineWidth()
        }
        set(lineWidth) {
            this.setLineWidth(lineWidth)
        }
    }
    public mut open prop miterLimit: Float64
    {
        get() {
            return this.getMiterLimit()
        }
        set(miterLimit) {
            this.setMiterLimit(miterLimit)
        }
    }
    public mut open prop shadowBlur: Float64
    {
        get() {
            return this.getShadowBlur()
        }
        set(shadowBlur) {
            this.setShadowBlur(shadowBlur)
        }
    }
    public mut open prop shadowColor: String
    {
        get() {
            return this.getShadowColor()
        }
        set(shadowColor) {
            this.setShadowColor(shadowColor)
        }
    }
    public mut open prop shadowOffsetX: Float64
    {
        get() {
            return this.getShadowOffsetX()
        }
        set(shadowOffsetX) {
            this.setShadowOffsetX(shadowOffsetX)
        }
    }
    public mut open prop shadowOffsetY: Float64
    {
        get() {
            return this.getShadowOffsetY()
        }
        set(shadowOffsetY) {
            this.setShadowOffsetY(shadowOffsetY)
        }
    }
    public mut open prop direction: CanvasDirection
    {
        get() {
            return this.getDirection()
        }
        set(direction) {
            this.setDirection(direction)
        }
    }
    public mut open prop font: String
    {
        get() {
            return this.getFont()
        }
        set(font) {
            this.setFont(font)
        }
    }
    public mut open prop textAlign: CanvasTextAlign
    {
        get() {
            return this.getTextAlign()
        }
        set(textAlign) {
            this.setTextAlign(textAlign)
        }
    }
    public mut open prop textBaseline: CanvasTextBaseline
    {
        get() {
            return this.getTextBaseline()
        }
        set(textBaseline) {
            this.setTextBaseline(textBaseline)
        }
    }
    CanvasRenderer(peerPtr: UInt64) {
        super(peerPtr)
    }
    CanvasRenderer() {
        super(CanvasRenderer.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._CanvasRenderer_getFinalizer()
    }
    public open func drawImage(image: Union_ImageBitmap_PixelMap, dx: Float64, dy: Float64): Unit {
        let image_casted: Union_ImageBitmap_PixelMap = image
        let dx_casted: Float64 = dx
        let dy_casted: Float64 = dy
        let thisPeer = this
        thisPeer.drawImage0_serialize(image_casted, dx_casted, dy_casted)
        return
    }
    public open func drawImage(image: Union_ImageBitmap_PixelMap, dx: Float64, dy: Float64, dw: Float64, dh: Float64): Unit {
        let image_casted: Union_ImageBitmap_PixelMap = image
        let dx_casted: Float64 = dx
        let dy_casted: Float64 = dy
        let dw_casted: Float64 = dw
        let dh_casted: Float64 = dh
        let thisPeer = this
        thisPeer.drawImage1_serialize(image_casted, dx_casted, dy_casted, dw_casted, dh_casted)
        return
    }
    public open func drawImage(image: Union_ImageBitmap_PixelMap, sx: Float64, sy: Float64, sw: Float64, sh: Float64, dx: Float64, dy: Float64, dw: Float64, dh: Float64): Unit {
        let image_casted: Union_ImageBitmap_PixelMap = image
        let sx_casted: Float64 = sx
        let sy_casted: Float64 = sy
        let sw_casted: Float64 = sw
        let sh_casted: Float64 = sh
        let dx_casted: Float64 = dx
        let dy_casted: Float64 = dy
        let dw_casted: Float64 = dw
        let dh_casted: Float64 = dh
        let thisPeer = this
        thisPeer.drawImage2_serialize(image_casted, sx_casted, sy_casted, sw_casted, sh_casted, dx_casted, dy_casted, dw_casted, dh_casted)
        return
    }
    public open func beginPath(): Unit {
        let thisPeer = this
        thisPeer.beginPath_serialize()
        return
    }
    public open func clip(fillRule: Option<CanvasFillRule>): Unit {
        let fillRule_casted: Option<CanvasFillRule> = if (let Some(fillRule) <- fillRule) {fillRule} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.clip0_serialize(fillRule_casted)
        return
    }
    public open func clip(path: Path2D, fillRule: Option<CanvasFillRule>): Unit {
        let path_casted: Path2D = path
        let fillRule_casted: Option<CanvasFillRule> = if (let Some(fillRule) <- fillRule) {fillRule} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.clip1_serialize(path_casted, fillRule_casted)
        return
    }
    public open func fill(fillRule: Option<CanvasFillRule>): Unit {
        let fillRule_casted: Option<CanvasFillRule> = if (let Some(fillRule) <- fillRule) {fillRule} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.fill0_serialize(fillRule_casted)
        return
    }
    public open func fill(path: Path2D, fillRule: Option<CanvasFillRule>): Unit {
        let path_casted: Path2D = path
        let fillRule_casted: Option<CanvasFillRule> = if (let Some(fillRule) <- fillRule) {fillRule} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.fill1_serialize(path_casted, fillRule_casted)
        return
    }
    public open func stroke(path: Option<Path2D>): Unit {
        let path_casted: Option<Path2D> = if (let Some(path) <- path) {path} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.stroke_serialize(path_casted)
        return
    }
    public open func createLinearGradient(x0: Float64, y0: Float64, x1: Float64, y1: Float64): CanvasGradient {
        let x0_casted: Float64 = x0
        let y0_casted: Float64 = y0
        let x1_casted: Float64 = x1
        let y1_casted: Float64 = y1
        return this.createLinearGradient_serialize(x0_casted, y0_casted, x1_casted, y1_casted)
    }
    public open func createPattern(image: ImageBitmap, repetition: Option<String>): Option<CanvasPattern> {
        let image_casted: ImageBitmap = image
        let repetition_casted: Option<String> = if (let Some(repetition) <- repetition) {repetition} else { throw Exception("Type has to be not None")}
        return this.createPattern_serialize(image_casted, repetition_casted)
    }
    public open func createRadialGradient(x0: Float64, y0: Float64, r0: Float64, x1: Float64, y1: Float64, r1: Float64): CanvasGradient {
        let x0_casted: Float64 = x0
        let y0_casted: Float64 = y0
        let r0_casted: Float64 = r0
        let x1_casted: Float64 = x1
        let y1_casted: Float64 = y1
        let r1_casted: Float64 = r1
        return this.createRadialGradient_serialize(x0_casted, y0_casted, r0_casted, x1_casted, y1_casted, r1_casted)
    }
    public open func createConicGradient(startAngle: Float64, x: Float64, y: Float64): CanvasGradient {
        let startAngle_casted: Float64 = startAngle
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        return this.createConicGradient_serialize(startAngle_casted, x_casted, y_casted)
    }
    public open func createImageData(sw: Float64, sh: Float64): ImageData {
        let sw_casted: Float64 = sw
        let sh_casted: Float64 = sh
        return this.createImageData0_serialize(sw_casted, sh_casted)
    }
    public open func createImageData(imagedata: ImageData): ImageData {
        let imagedata_casted: ImageData = imagedata
        return this.createImageData1_serialize(imagedata_casted)
    }
    public open func getImageData(sx: Float64, sy: Float64, sw: Float64, sh: Float64): ImageData {
        let sx_casted: Float64 = sx
        let sy_casted: Float64 = sy
        let sw_casted: Float64 = sw
        let sh_casted: Float64 = sh
        return this.getImageData_serialize(sx_casted, sy_casted, sw_casted, sh_casted)
    }
    public open func getPixelMap(sx: Float64, sy: Float64, sw: Float64, sh: Float64): PixelMap {
        let sx_casted: Float64 = sx
        let sy_casted: Float64 = sy
        let sw_casted: Float64 = sw
        let sh_casted: Float64 = sh
        return this.getPixelMap_serialize(sx_casted, sy_casted, sw_casted, sh_casted)
    }
    public open func putImageData(imagedata: ImageData, dx: Union_Number_String, dy: Union_Number_String): Unit {
        let imagedata_casted: ImageData = imagedata
        let dx_casted: Union_Number_String = dx
        let dy_casted: Union_Number_String = dy
        let thisPeer = this
        thisPeer.putImageData0_serialize(imagedata_casted, dx_casted, dy_casted)
        return
    }
    public open func putImageData(imagedata: ImageData, dx: Union_Number_String, dy: Union_Number_String, dirtyX: Union_Number_String, dirtyY: Union_Number_String, dirtyWidth: Union_Number_String, dirtyHeight: Union_Number_String): Unit {
        let imagedata_casted: ImageData = imagedata
        let dx_casted: Union_Number_String = dx
        let dy_casted: Union_Number_String = dy
        let dirtyX_casted: Union_Number_String = dirtyX
        let dirtyY_casted: Union_Number_String = dirtyY
        let dirtyWidth_casted: Union_Number_String = dirtyWidth
        let dirtyHeight_casted: Union_Number_String = dirtyHeight
        let thisPeer = this
        thisPeer.putImageData1_serialize(imagedata_casted, dx_casted, dy_casted, dirtyX_casted, dirtyY_casted, dirtyWidth_casted, dirtyHeight_casted)
        return
    }
    public open func getLineDash(): ArrayList<Float64> {
        return this.getLineDash_serialize()
    }
    public open func setLineDash(segments: ArrayList<Float64>): Unit {
        let segments_casted: ArrayList<Float64> = segments
        let thisPeer = this
        thisPeer.setLineDash_serialize(segments_casted)
        return
    }
    public open func clearRect(x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let w_casted: Float64 = w
        let h_casted: Float64 = h
        let thisPeer = this
        thisPeer.clearRect_serialize(x_casted, y_casted, w_casted, h_casted)
        return
    }
    public open func fillRect(x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let w_casted: Float64 = w
        let h_casted: Float64 = h
        let thisPeer = this
        thisPeer.fillRect_serialize(x_casted, y_casted, w_casted, h_casted)
        return
    }
    public open func strokeRect(x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let w_casted: Float64 = w
        let h_casted: Float64 = h
        let thisPeer = this
        thisPeer.strokeRect_serialize(x_casted, y_casted, w_casted, h_casted)
        return
    }
    public open func restore(): Unit {
        let thisPeer = this
        thisPeer.restore_serialize()
        return
    }
    public open func save(): Unit {
        let thisPeer = this
        thisPeer.save_serialize()
        return
    }
    public open func fillText(text: String, x: Float64, y: Float64, maxWidth: Option<Float64>): Unit {
        let text_casted: String = text
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let maxWidth_casted: Option<Float64> = if (let Some(maxWidth) <- maxWidth) {maxWidth} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.fillText_serialize(text_casted, x_casted, y_casted, maxWidth_casted)
        return
    }
    public open func measureText(text: String): TextMetrics {
        let text_casted: String = text
        return this.measureText_serialize(text_casted)
    }
    public open func strokeText(text: String, x: Float64, y: Float64, maxWidth: Option<Float64>): Unit {
        let text_casted: String = text
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let maxWidth_casted: Option<Float64> = if (let Some(maxWidth) <- maxWidth) {maxWidth} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.strokeText_serialize(text_casted, x_casted, y_casted, maxWidth_casted)
        return
    }
    public open func getTransform(): Matrix2D {
        return this.getTransform_serialize()
    }
    public open func resetTransform(): Unit {
        let thisPeer = this
        thisPeer.resetTransform_serialize()
        return
    }
    public open func rotate(angle: Float64): Unit {
        let angle_casted: Float64 = angle
        let thisPeer = this
        thisPeer.rotate_serialize(angle_casted)
        return
    }
    public open func scale(x: Float64, y: Float64): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.scale_serialize(x_casted, y_casted)
        return
    }
    public open func setTransform(a: Float64, b: Float64, c: Float64, d: Float64, e: Float64, f: Float64): Unit {
        let a_casted: Float64 = a
        let b_casted: Float64 = b
        let c_casted: Float64 = c
        let d_casted: Float64 = d
        let e_casted: Float64 = e
        let f_casted: Float64 = f
        let thisPeer = this
        thisPeer.setTransform0_serialize(a_casted, b_casted, c_casted, d_casted, e_casted, f_casted)
        return
    }
    public open func setTransform(transform: Option<Matrix2D>): Unit {
        let transform_casted: Option<Matrix2D> = if (let Some(transform) <- transform) {transform} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTransform1_serialize(transform_casted)
        return
    }
    public open func transform(a: Float64, b: Float64, c: Float64, d: Float64, e: Float64, f: Float64): Unit {
        let a_casted: Float64 = a
        let b_casted: Float64 = b
        let c_casted: Float64 = c
        let d_casted: Float64 = d
        let e_casted: Float64 = e
        let f_casted: Float64 = f
        let thisPeer = this
        thisPeer.transform_serialize(a_casted, b_casted, c_casted, d_casted, e_casted, f_casted)
        return
    }
    public open func translate(x: Float64, y: Float64): Unit {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.translate_serialize(x_casted, y_casted)
        return
    }
    public open func setPixelMap(value: Option<PixelMap>): Unit {
        let value_casted: Option<PixelMap> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setPixelMap_serialize(value_casted)
        return
    }
    public open func transferFromImageBitmap(bitmap: ImageBitmap): Unit {
        let bitmap_casted: ImageBitmap = bitmap
        let thisPeer = this
        thisPeer.transferFromImageBitmap_serialize(bitmap_casted)
        return
    }
    public open func saveLayer(): Unit {
        let thisPeer = this
        thisPeer.saveLayer_serialize()
        return
    }
    public open func restoreLayer(): Unit {
        let thisPeer = this
        thisPeer.restoreLayer_serialize()
        return
    }
    public open func reset(): Unit {
        let thisPeer = this
        thisPeer.reset_serialize()
        return
    }
    private func getLetterSpacing(): Union_LengthMetrics_String {
        return this.getLetterSpacing_serialize()
    }
    private func setLetterSpacing(letterSpacing: Union_LengthMetrics_String): Unit {
        let letterSpacing_casted: Union_LengthMetrics_String = letterSpacing
        let thisPeer = this
        thisPeer.setLetterSpacing_serialize(letterSpacing_casted)
        return
    }
    private func getGlobalAlpha(): Float64 {
        return this.getGlobalAlpha_serialize()
    }
    private func setGlobalAlpha(globalAlpha: Float64): Unit {
        let globalAlpha_casted: Float64 = globalAlpha
        let thisPeer = this
        thisPeer.setGlobalAlpha_serialize(globalAlpha_casted)
        return
    }
    private func getGlobalCompositeOperation(): String {
        return this.getGlobalCompositeOperation_serialize()
    }
    private func setGlobalCompositeOperation(globalCompositeOperation: String): Unit {
        let globalCompositeOperation_casted: String = globalCompositeOperation
        let thisPeer = this
        thisPeer.setGlobalCompositeOperation_serialize(globalCompositeOperation_casted)
        return
    }
    private func getFillStyle(): Union_String_Number_CanvasGradient_CanvasPattern {
        return this.getFillStyle_serialize()
    }
    private func setFillStyle(fillStyle: Union_String_Number_CanvasGradient_CanvasPattern): Unit {
        let fillStyle_casted: Union_String_Number_CanvasGradient_CanvasPattern = fillStyle
        let thisPeer = this
        thisPeer.setFillStyle_serialize(fillStyle_casted)
        return
    }
    private func getStrokeStyle(): Union_String_Number_CanvasGradient_CanvasPattern {
        return this.getStrokeStyle_serialize()
    }
    private func setStrokeStyle(strokeStyle: Union_String_Number_CanvasGradient_CanvasPattern): Unit {
        let strokeStyle_casted: Union_String_Number_CanvasGradient_CanvasPattern = strokeStyle
        let thisPeer = this
        thisPeer.setStrokeStyle_serialize(strokeStyle_casted)
        return
    }
    private func getFilter(): String {
        return this.getFilter_serialize()
    }
    private func setFilter(filter: String): Unit {
        let filter_casted: String = filter
        let thisPeer = this
        thisPeer.setFilter_serialize(filter_casted)
        return
    }
    private func getImageSmoothingEnabled(): Bool {
        return this.getImageSmoothingEnabled_serialize()
    }
    private func setImageSmoothingEnabled(imageSmoothingEnabled: Bool): Unit {
        let imageSmoothingEnabled_casted: Bool = imageSmoothingEnabled
        let thisPeer = this
        thisPeer.setImageSmoothingEnabled_serialize(imageSmoothingEnabled_casted)
        return
    }
    private func getImageSmoothingQuality(): ImageSmoothingQuality {
        return this.getImageSmoothingQuality_serialize()
    }
    private func setImageSmoothingQuality(imageSmoothingQuality: ImageSmoothingQuality): Unit {
        let imageSmoothingQuality_casted: ImageSmoothingQuality = imageSmoothingQuality
        let thisPeer = this
        thisPeer.setImageSmoothingQuality_serialize(imageSmoothingQuality_casted)
        return
    }
    private func getLineCap(): CanvasLineCap {
        return this.getLineCap_serialize()
    }
    private func setLineCap(lineCap: CanvasLineCap): Unit {
        let lineCap_casted: CanvasLineCap = lineCap
        let thisPeer = this
        thisPeer.setLineCap_serialize(lineCap_casted)
        return
    }
    private func getLineDashOffset(): Float64 {
        return this.getLineDashOffset_serialize()
    }
    private func setLineDashOffset(lineDashOffset: Float64): Unit {
        let lineDashOffset_casted: Float64 = lineDashOffset
        let thisPeer = this
        thisPeer.setLineDashOffset_serialize(lineDashOffset_casted)
        return
    }
    private func getLineJoin(): CanvasLineJoin {
        return this.getLineJoin_serialize()
    }
    private func setLineJoin(lineJoin: CanvasLineJoin): Unit {
        let lineJoin_casted: CanvasLineJoin = lineJoin
        let thisPeer = this
        thisPeer.setLineJoin_serialize(lineJoin_casted)
        return
    }
    private func getLineWidth(): Float64 {
        return this.getLineWidth_serialize()
    }
    private func setLineWidth(lineWidth: Float64): Unit {
        let lineWidth_casted: Float64 = lineWidth
        let thisPeer = this
        thisPeer.setLineWidth_serialize(lineWidth_casted)
        return
    }
    private func getMiterLimit(): Float64 {
        return this.getMiterLimit_serialize()
    }
    private func setMiterLimit(miterLimit: Float64): Unit {
        let miterLimit_casted: Float64 = miterLimit
        let thisPeer = this
        thisPeer.setMiterLimit_serialize(miterLimit_casted)
        return
    }
    private func getShadowBlur(): Float64 {
        return this.getShadowBlur_serialize()
    }
    private func setShadowBlur(shadowBlur: Float64): Unit {
        let shadowBlur_casted: Float64 = shadowBlur
        let thisPeer = this
        thisPeer.setShadowBlur_serialize(shadowBlur_casted)
        return
    }
    private func getShadowColor(): String {
        return this.getShadowColor_serialize()
    }
    private func setShadowColor(shadowColor: String): Unit {
        let shadowColor_casted: String = shadowColor
        let thisPeer = this
        thisPeer.setShadowColor_serialize(shadowColor_casted)
        return
    }
    private func getShadowOffsetX(): Float64 {
        return this.getShadowOffsetX_serialize()
    }
    private func setShadowOffsetX(shadowOffsetX: Float64): Unit {
        let shadowOffsetX_casted: Float64 = shadowOffsetX
        let thisPeer = this
        thisPeer.setShadowOffsetX_serialize(shadowOffsetX_casted)
        return
    }
    private func getShadowOffsetY(): Float64 {
        return this.getShadowOffsetY_serialize()
    }
    private func setShadowOffsetY(shadowOffsetY: Float64): Unit {
        let shadowOffsetY_casted: Float64 = shadowOffsetY
        let thisPeer = this
        thisPeer.setShadowOffsetY_serialize(shadowOffsetY_casted)
        return
    }
    private func getDirection(): CanvasDirection {
        return this.getDirection_serialize()
    }
    private func setDirection(direction: CanvasDirection): Unit {
        let direction_casted: CanvasDirection = direction
        let thisPeer = this
        thisPeer.setDirection_serialize(direction_casted)
        return
    }
    private func getFont(): String {
        return this.getFont_serialize()
    }
    private func setFont(font: String): Unit {
        let font_casted: String = font
        let thisPeer = this
        thisPeer.setFont_serialize(font_casted)
        return
    }
    private func getTextAlign(): CanvasTextAlign {
        return this.getTextAlign_serialize()
    }
    private func setTextAlign(textAlign: CanvasTextAlign): Unit {
        let textAlign_casted: CanvasTextAlign = textAlign
        let thisPeer = this
        thisPeer.setTextAlign_serialize(textAlign_casted)
        return
    }
    private func getTextBaseline(): CanvasTextBaseline {
        return this.getTextBaseline_serialize()
    }
    private func setTextBaseline(textBaseline: CanvasTextBaseline): Unit {
        let textBaseline_casted: CanvasTextBaseline = textBaseline
        let thisPeer = this
        thisPeer.setTextBaseline_serialize(textBaseline_casted)
        return
    }
    private func drawImage0_serialize(image: Union_ImageBitmap_PixelMap, dx: Float64, dy: Float64): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (image.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let imageForIdx0 = image.getValue0()
            ImageBitmap_serializer.write(thisSerializer, imageForIdx0);
        } else if (image.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let imageForIdx1 = image.getValue1()
            thisSerializer.writeCustomObject("Any", imageForIdx1);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_drawImage0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length(), dx, dy);
        thisSerializer.release();
    }
    private func drawImage1_serialize(image: Union_ImageBitmap_PixelMap, dx: Float64, dy: Float64, dw: Float64, dh: Float64): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (image.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let imageForIdx0 = image.getValue0()
            ImageBitmap_serializer.write(thisSerializer, imageForIdx0);
        } else if (image.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let imageForIdx1 = image.getValue1()
            thisSerializer.writeCustomObject("Any", imageForIdx1);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_drawImage1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length(), dx, dy, dw, dh);
        thisSerializer.release();
    }
    private func drawImage2_serialize(image: Union_ImageBitmap_PixelMap, sx: Float64, sy: Float64, sw: Float64, sh: Float64, dx: Float64, dy: Float64, dw: Float64, dh: Float64): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (image.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let imageForIdx0 = image.getValue0()
            ImageBitmap_serializer.write(thisSerializer, imageForIdx0);
        } else if (image.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let imageForIdx1 = image.getValue1()
            thisSerializer.writeCustomObject("Any", imageForIdx1);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_drawImage2(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length(), sx, sy, sw, sh, dx, dy, dw, dh);
        thisSerializer.release();
    }
    private func beginPath_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_beginPath(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func clip0_serialize(fillRule: Option<CanvasFillRule>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fillRule.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fillRuleTmpValue = fillRule
            thisSerializer.writeString(fillRuleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_clip0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func clip1_serialize(path: Path2D, fillRule: Option<CanvasFillRule>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fillRule.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fillRuleTmpValue = fillRule
            thisSerializer.writeString(fillRuleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_clip1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(path), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func fill0_serialize(fillRule: Option<CanvasFillRule>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fillRule.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fillRuleTmpValue = fillRule
            thisSerializer.writeString(fillRuleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_fill0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func fill1_serialize(path: Path2D, fillRule: Option<CanvasFillRule>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fillRule.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let fillRuleTmpValue = fillRule
            thisSerializer.writeString(fillRuleTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_fill1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(path), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func stroke_serialize(path: Option<Path2D>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (path.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let pathTmpValue = path
            Path2D_serializer.write(thisSerializer, pathTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_stroke(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func createLinearGradient_serialize(x0: Float64, y0: Float64, x1: Float64, y1: Float64): CanvasGradient {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_createLinearGradient(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x0, y0, x1, y1)
        let obj: CanvasGradient = CanvasGradientInternal.fromPtr(retval)
        return obj
    }
    private func createPattern_serialize(image: ImageBitmap, repetition: Option<String>): Option<CanvasPattern> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (repetition.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let repetitionTmpValue = repetition
            thisSerializer.writeString(repetitionTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_createPattern(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(image), thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<CanvasPattern> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (CanvasPattern_serializer.read(retvalDeserializer) as CanvasPattern) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<CanvasPattern> = buffer
        return returnResult
    }
    private func createRadialGradient_serialize(x0: Float64, y0: Float64, r0: Float64, x1: Float64, y1: Float64, r1: Float64): CanvasGradient {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_createRadialGradient(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x0, y0, r0, x1, y1, r1)
        let obj: CanvasGradient = CanvasGradientInternal.fromPtr(retval)
        return obj
    }
    private func createConicGradient_serialize(startAngle: Float64, x: Float64, y: Float64): CanvasGradient {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_createConicGradient(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, startAngle, x, y)
        let obj: CanvasGradient = CanvasGradientInternal.fromPtr(retval)
        return obj
    }
    private func createImageData0_serialize(sw: Float64, sh: Float64): ImageData {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_createImageData0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, sw, sh)
        let obj: ImageData = ImageDataInternal.fromPtr(retval)
        return obj
    }
    private func createImageData1_serialize(imagedata: ImageData): ImageData {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_createImageData1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(imagedata))
        let obj: ImageData = ImageDataInternal.fromPtr(retval)
        return obj
    }
    private func getImageData_serialize(sx: Float64, sy: Float64, sw: Float64, sh: Float64): ImageData {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getImageData(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, sx, sy, sw, sh)
        let obj: ImageData = ImageDataInternal.fromPtr(retval)
        return obj
    }
    private func getPixelMap_serialize(sx: Float64, sy: Float64, sw: Float64, sh: Float64): PixelMap {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getPixelMap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, sx, sy, sw, sh)
        throw Exception("Object deserialization is not implemented.")
    }
    private func putImageData0_serialize(imagedata: ImageData, dx: Union_Number_String, dy: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (dx.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dxForIdx0 = dx.getValue0()
            thisSerializer.writeNumber(dxForIdx0);
        } else if (dx.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dxForIdx1 = dx.getValue1()
            thisSerializer.writeString(dxForIdx1);
        }
        if (dy.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dyForIdx0 = dy.getValue0()
            thisSerializer.writeNumber(dyForIdx0);
        } else if (dy.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dyForIdx1 = dy.getValue1()
            thisSerializer.writeString(dyForIdx1);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_putImageData0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(imagedata), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func putImageData1_serialize(imagedata: ImageData, dx: Union_Number_String, dy: Union_Number_String, dirtyX: Union_Number_String, dirtyY: Union_Number_String, dirtyWidth: Union_Number_String, dirtyHeight: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (dx.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dxForIdx0 = dx.getValue0()
            thisSerializer.writeNumber(dxForIdx0);
        } else if (dx.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dxForIdx1 = dx.getValue1()
            thisSerializer.writeString(dxForIdx1);
        }
        if (dy.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dyForIdx0 = dy.getValue0()
            thisSerializer.writeNumber(dyForIdx0);
        } else if (dy.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dyForIdx1 = dy.getValue1()
            thisSerializer.writeString(dyForIdx1);
        }
        if (dirtyX.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dirtyXForIdx0 = dirtyX.getValue0()
            thisSerializer.writeNumber(dirtyXForIdx0);
        } else if (dirtyX.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dirtyXForIdx1 = dirtyX.getValue1()
            thisSerializer.writeString(dirtyXForIdx1);
        }
        if (dirtyY.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dirtyYForIdx0 = dirtyY.getValue0()
            thisSerializer.writeNumber(dirtyYForIdx0);
        } else if (dirtyY.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dirtyYForIdx1 = dirtyY.getValue1()
            thisSerializer.writeString(dirtyYForIdx1);
        }
        if (dirtyWidth.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dirtyWidthForIdx0 = dirtyWidth.getValue0()
            thisSerializer.writeNumber(dirtyWidthForIdx0);
        } else if (dirtyWidth.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dirtyWidthForIdx1 = dirtyWidth.getValue1()
            thisSerializer.writeString(dirtyWidthForIdx1);
        }
        if (dirtyHeight.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let dirtyHeightForIdx0 = dirtyHeight.getValue0()
            thisSerializer.writeNumber(dirtyHeightForIdx0);
        } else if (dirtyHeight.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let dirtyHeightForIdx1 = dirtyHeight.getValue1()
            thisSerializer.writeString(dirtyHeightForIdx1);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_putImageData1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(imagedata), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getLineDash_serialize(): ArrayList<Float64> {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getLineDash(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<Float64> = ArrayList<Float64>(Int64(bufferLength))
        buffer = ArrayList<Float64>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<Float64> = buffer
        return returnResult
    }
    private func setLineDash_serialize(segments: ArrayList<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(segments.size));
        for (segmentsCounterI in 0..segments.size) {
            let segmentsTmpElement: Float64 = segments[Int64(segmentsCounterI)]
            thisSerializer.writeNumber(segmentsTmpElement);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_setLineDash(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func clearRect_serialize(x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_clearRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y, w, h);
    }
    private func fillRect_serialize(x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_fillRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y, w, h);
    }
    private func strokeRect_serialize(x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_strokeRect(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y, w, h);
    }
    private func restore_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_restore(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func save_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_save(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func fillText_serialize(text: String, x: Float64, y: Float64, maxWidth: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (maxWidth.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let maxWidthTmpValue = maxWidth
            thisSerializer.writeNumber(maxWidthTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_fillText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, text, x, y, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func measureText_serialize(text: String): TextMetrics {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_measureText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, text)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: TextMetrics = TextMetrics_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func strokeText_serialize(text: String, x: Float64, y: Float64, maxWidth: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (maxWidth.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let maxWidthTmpValue = maxWidth
            thisSerializer.writeNumber(maxWidthTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_strokeText(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, text, x, y, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getTransform_serialize(): Matrix2D {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getTransform(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: Matrix2D = Matrix2DInternal.fromPtr(retval)
        return obj
    }
    private func resetTransform_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_resetTransform(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func rotate_serialize(angle: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_rotate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, angle);
    }
    private func scale_serialize(x: Float64, y: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_scale(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y);
    }
    private func setTransform0_serialize(a: Float64, b: Float64, c: Float64, d: Float64, e: Float64, f: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setTransform0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, a, b, c, d, e, f);
    }
    private func setTransform1_serialize(transform: Option<Matrix2D>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (transform.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let transformTmpValue = transform
            Matrix2D_serializer.write(thisSerializer, transformTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_setTransform1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func transform_serialize(a: Float64, b: Float64, c: Float64, d: Float64, e: Float64, f: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_transform(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, a, b, c, d, e, f);
    }
    private func translate_serialize(x: Float64, y: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_translate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y);
    }
    private func setPixelMap_serialize(value: Option<PixelMap>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            thisSerializer.writeCustomObject("Any", valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_setPixelMap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func transferFromImageBitmap_serialize(bitmap: ImageBitmap): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_transferFromImageBitmap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(bitmap));
    }
    private func saveLayer_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_saveLayer(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func restoreLayer_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_restoreLayer(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func reset_serialize(): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_reset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getLetterSpacing_serialize(): Union_LengthMetrics_String {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getLetterSpacing(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferUnionSelector: Int8 = retvalDeserializer.readInt8()
        var buffer: Union_LengthMetrics_String 
        if (bufferUnionSelector == Int8(0)) {
            buffer = Union_LengthMetrics_String(match (retvalDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (bufferUnionSelector == Int8(1)) {
            buffer = Union_LengthMetrics_String(match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for buffer has to be chosen through deserialisation.")
        }
        let returnResult: Union_LengthMetrics_String = match (buffer as Union_LengthMetrics_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        return returnResult
    }
    private func setLetterSpacing_serialize(letterSpacing: Union_LengthMetrics_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (letterSpacing.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let letterSpacingForIdx0 = letterSpacing.getValue0()
            thisSerializer.writeCustomObject("Any", letterSpacingForIdx0);
        } else if (letterSpacing.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let letterSpacingForIdx1 = letterSpacing.getValue1()
            thisSerializer.writeString(letterSpacingForIdx1);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_setLetterSpacing(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getGlobalAlpha_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getGlobalAlpha(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setGlobalAlpha_serialize(globalAlpha: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setGlobalAlpha(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, globalAlpha);
    }
    private func getGlobalCompositeOperation_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getGlobalCompositeOperation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setGlobalCompositeOperation_serialize(globalCompositeOperation: String): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setGlobalCompositeOperation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, globalCompositeOperation);
    }
    private func getFillStyle_serialize(): Union_String_Number_CanvasGradient_CanvasPattern {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getFillStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferUnionSelector: Int8 = retvalDeserializer.readInt8()
        var buffer: Union_String_Number_CanvasGradient_CanvasPattern 
        if (bufferUnionSelector == Int8(0)) {
            buffer = Union_String_Number_CanvasGradient_CanvasPattern(match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (bufferUnionSelector == Int8(1)) {
            buffer = Union_String_Number_CanvasGradient_CanvasPattern(match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (bufferUnionSelector == Int8(2)) {
            buffer = Union_String_Number_CanvasGradient_CanvasPattern(match (CanvasGradient_serializer.read(retvalDeserializer) as CanvasGradient) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (bufferUnionSelector == Int8(3)) {
            buffer = Union_String_Number_CanvasGradient_CanvasPattern(match (CanvasPattern_serializer.read(retvalDeserializer) as CanvasPattern) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for buffer has to be chosen through deserialisation.")
        }
        let returnResult: Union_String_Number_CanvasGradient_CanvasPattern = match (buffer as Union_String_Number_CanvasGradient_CanvasPattern) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        return returnResult
    }
    private func setFillStyle_serialize(fillStyle: Union_String_Number_CanvasGradient_CanvasPattern): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (fillStyle.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let fillStyleForIdx0 = fillStyle.getValue0()
            thisSerializer.writeString(fillStyleForIdx0);
        } else if (fillStyle.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let fillStyleForIdx1 = fillStyle.getValue1()
            thisSerializer.writeNumber(fillStyleForIdx1);
        } else if (fillStyle.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let fillStyleForIdx2 = fillStyle.getValue2()
            CanvasGradient_serializer.write(thisSerializer, fillStyleForIdx2);
        } else if (fillStyle.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let fillStyleForIdx3 = fillStyle.getValue3()
            CanvasPattern_serializer.write(thisSerializer, fillStyleForIdx3);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_setFillStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getStrokeStyle_serialize(): Union_String_Number_CanvasGradient_CanvasPattern {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getStrokeStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferUnionSelector: Int8 = retvalDeserializer.readInt8()
        var buffer: Union_String_Number_CanvasGradient_CanvasPattern 
        if (bufferUnionSelector == Int8(0)) {
            buffer = Union_String_Number_CanvasGradient_CanvasPattern(match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (bufferUnionSelector == Int8(1)) {
            buffer = Union_String_Number_CanvasGradient_CanvasPattern(match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (bufferUnionSelector == Int8(2)) {
            buffer = Union_String_Number_CanvasGradient_CanvasPattern(match (CanvasGradient_serializer.read(retvalDeserializer) as CanvasGradient) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (bufferUnionSelector == Int8(3)) {
            buffer = Union_String_Number_CanvasGradient_CanvasPattern(match (CanvasPattern_serializer.read(retvalDeserializer) as CanvasPattern) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else {
            throw Exception("One of the branches for buffer has to be chosen through deserialisation.")
        }
        let returnResult: Union_String_Number_CanvasGradient_CanvasPattern = match (buffer as Union_String_Number_CanvasGradient_CanvasPattern) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        return returnResult
    }
    private func setStrokeStyle_serialize(strokeStyle: Union_String_Number_CanvasGradient_CanvasPattern): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (strokeStyle.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let strokeStyleForIdx0 = strokeStyle.getValue0()
            thisSerializer.writeString(strokeStyleForIdx0);
        } else if (strokeStyle.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let strokeStyleForIdx1 = strokeStyle.getValue1()
            thisSerializer.writeNumber(strokeStyleForIdx1);
        } else if (strokeStyle.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let strokeStyleForIdx2 = strokeStyle.getValue2()
            CanvasGradient_serializer.write(thisSerializer, strokeStyleForIdx2);
        } else if (strokeStyle.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let strokeStyleForIdx3 = strokeStyle.getValue3()
            CanvasPattern_serializer.write(thisSerializer, strokeStyleForIdx3);
        }
        ArkUIGeneratedNativeModule._CanvasRenderer_setStrokeStyle(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getFilter_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getFilter(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setFilter_serialize(filter: String): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setFilter(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, filter);
    }
    private func getImageSmoothingEnabled_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getImageSmoothingEnabled(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setImageSmoothingEnabled_serialize(imageSmoothingEnabled: Bool): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setImageSmoothingEnabled(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (imageSmoothingEnabled) { Int32(1) } else { Int32(0) });
    }
    private func getImageSmoothingQuality_serialize(): ImageSmoothingQuality {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getImageSmoothingQuality(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setImageSmoothingQuality_serialize(imageSmoothingQuality: ImageSmoothingQuality): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setImageSmoothingQuality(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, imageSmoothingQuality);
    }
    private func getLineCap_serialize(): CanvasLineCap {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getLineCap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setLineCap_serialize(lineCap: CanvasLineCap): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setLineCap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, lineCap);
    }
    private func getLineDashOffset_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getLineDashOffset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setLineDashOffset_serialize(lineDashOffset: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setLineDashOffset(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, lineDashOffset);
    }
    private func getLineJoin_serialize(): CanvasLineJoin {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getLineJoin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setLineJoin_serialize(lineJoin: CanvasLineJoin): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setLineJoin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, lineJoin);
    }
    private func getLineWidth_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getLineWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setLineWidth_serialize(lineWidth: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setLineWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, lineWidth);
    }
    private func getMiterLimit_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getMiterLimit(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setMiterLimit_serialize(miterLimit: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setMiterLimit(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, miterLimit);
    }
    private func getShadowBlur_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getShadowBlur(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setShadowBlur_serialize(shadowBlur: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setShadowBlur(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, shadowBlur);
    }
    private func getShadowColor_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getShadowColor(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setShadowColor_serialize(shadowColor: String): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setShadowColor(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, shadowColor);
    }
    private func getShadowOffsetX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getShadowOffsetX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setShadowOffsetX_serialize(shadowOffsetX: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setShadowOffsetX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, shadowOffsetX);
    }
    private func getShadowOffsetY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getShadowOffsetY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setShadowOffsetY_serialize(shadowOffsetY: Float64): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setShadowOffsetY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, shadowOffsetY);
    }
    private func getDirection_serialize(): CanvasDirection {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getDirection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setDirection_serialize(direction: CanvasDirection): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setDirection(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, direction);
    }
    private func getFont_serialize(): String {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getFont(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setFont_serialize(font: String): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setFont(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, font);
    }
    private func getTextAlign_serialize(): CanvasTextAlign {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getTextAlign(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setTextAlign_serialize(textAlign: CanvasTextAlign): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setTextAlign(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, textAlign);
    }
    private func getTextBaseline_serialize(): CanvasTextBaseline {
        let retval = ArkUIGeneratedNativeModule._CanvasRenderer_getTextBaseline(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setTextBaseline_serialize(textBaseline: CanvasTextBaseline): Unit {
        ArkUIGeneratedNativeModule._CanvasRenderer_setTextBaseline(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, textBaseline);
    }
}
public open class CanvasRenderer_serializer {
    public static func write(buffer: SerializerBase, value: CanvasRenderer): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): CanvasRenderer {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return CanvasRendererInternal.fromPtr(ptr)
    }
}
