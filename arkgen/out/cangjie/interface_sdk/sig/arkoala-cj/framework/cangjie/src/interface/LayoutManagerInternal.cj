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
public interface LayoutManager {
    public open func getLineCount(): Float64
    public open func getGlyphPositionAtCoordinate(x: Float64, y: Float64): PositionWithAffinity
    public open func getLineMetrics(lineNumber: Float64): LineMetrics
    public open func getRectsForRange(range: TextRange, widthStyle: RectWidthStyle, heightStyle: RectHeightStyle): ArrayList<TextBox>
}
public open class LayoutManagerInternal <: MaterializedBase & LayoutManager {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    LayoutManagerInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, LayoutManagerInternal.getFinalizer())
    }
    LayoutManagerInternal() {
        super(LayoutManagerInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._LayoutManager_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._LayoutManager_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): LayoutManagerInternal {
        return LayoutManagerInternal(ptr)
    }
    public open func getLineCount(): Float64 {
        return this.getLineCount_serialize()
    }
    public open func getGlyphPositionAtCoordinate(x: Float64, y: Float64): PositionWithAffinity {
        let x_casted: Float64 = x
        let y_casted: Float64 = y
        return this.getGlyphPositionAtCoordinate_serialize(x_casted, y_casted)
    }
    public open func getLineMetrics(lineNumber: Float64): LineMetrics {
        let lineNumber_casted: Float64 = lineNumber
        return this.getLineMetrics_serialize(lineNumber_casted)
    }
    public open func getRectsForRange(range: TextRange, widthStyle: RectWidthStyle, heightStyle: RectHeightStyle): ArrayList<TextBox> {
        let range_casted: TextRange = range
        let widthStyle_casted: RectWidthStyle = widthStyle
        let heightStyle_casted: RectHeightStyle = heightStyle
        return this.getRectsForRange_serialize(range_casted, widthStyle_casted, heightStyle_casted)
    }
    private func getLineCount_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._LayoutManager_getLineCount(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func getGlyphPositionAtCoordinate_serialize(x: Float64, y: Float64): PositionWithAffinity {
        let retval = ArkUIGeneratedNativeModule._LayoutManager_getGlyphPositionAtCoordinate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x, y)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: PositionWithAffinity = PositionWithAffinity_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getLineMetrics_serialize(lineNumber: Float64): LineMetrics {
        let retval = ArkUIGeneratedNativeModule._LayoutManager_getLineMetrics(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, lineNumber)
        throw Exception("Object deserialization is not implemented.")
    }
    private func getRectsForRange_serialize(range: TextRange, widthStyle: RectWidthStyle, heightStyle: RectHeightStyle): ArrayList<TextBox> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TextRange_serializer.write(thisSerializer, range);
        thisSerializer.writeCustomObject("Any", widthStyle);
        thisSerializer.writeCustomObject("Any", heightStyle);
        let retval = ArkUIGeneratedNativeModule._LayoutManager_getRectsForRange(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<TextBox> = ArrayList<TextBox>(Int64(bufferLength))
        buffer = ArrayList<TextBox>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = match (retvalDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<TextBox> = buffer
        return returnResult
    }
}
public open class LayoutManager_serializer {
    public static func write(buffer: SerializerBase, value: LayoutManager): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): LayoutManager {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return LayoutManagerInternal.fromPtr(ptr)
    }
}
