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
public interface BackgroundOptionsInterfaces <:  {
    public mut open prop align: Option<Alignment>
    public mut open prop ignoresLayoutSafeAreaEdges: Option<ArrayList<LayoutSafeAreaEdge>>
}
public open class BackgroundOptions <: BackgroundOptionsInterfaces {
    private var align_container: Option<Alignment>
    public mut open prop align: Option<Alignment>
    {
        get() {
            return align_container
        }
        set(align) {
            align_container = align
        }
    }
    private var ignoresLayoutSafeAreaEdges_container: Option<ArrayList<LayoutSafeAreaEdge>>
    public mut open prop ignoresLayoutSafeAreaEdges: Option<ArrayList<LayoutSafeAreaEdge>>
    {
        get() {
            return ignoresLayoutSafeAreaEdges_container
        }
        set(ignoresLayoutSafeAreaEdges) {
            ignoresLayoutSafeAreaEdges_container = ignoresLayoutSafeAreaEdges
        }
    }
    BackgroundOptions(align: Option<Alignment>, ignoresLayoutSafeAreaEdges: Option<ArrayList<LayoutSafeAreaEdge>>) {
        this.align_container = align
        this.ignoresLayoutSafeAreaEdges_container = ignoresLayoutSafeAreaEdges
    }
}
public open class BackgroundOptions_serializer {
    public static func write(buffer: SerializerBase, value: BackgroundOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAlign = value.align
        if (valueHolderForAlign.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAlignTmpValue = valueHolderForAlign
            valueSerializer.writeInt32(valueHolderForAlignTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIgnoresLayoutSafeAreaEdges = value.ignoresLayoutSafeAreaEdges
        if (valueHolderForIgnoresLayoutSafeAreaEdges.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIgnoresLayoutSafeAreaEdgesTmpValue = valueHolderForIgnoresLayoutSafeAreaEdges
            valueSerializer.writeInt32(Int32(valueHolderForIgnoresLayoutSafeAreaEdgesTmpValue.size));
            for (valueHolderForIgnoresLayoutSafeAreaEdgesTmpValueCounterI in 0..valueHolderForIgnoresLayoutSafeAreaEdgesTmpValue.size) {
                let valueHolderForIgnoresLayoutSafeAreaEdgesTmpValueTmpElement: LayoutSafeAreaEdge = valueHolderForIgnoresLayoutSafeAreaEdgesTmpValue[Int64(valueHolderForIgnoresLayoutSafeAreaEdgesTmpValueCounterI)]
                valueSerializer.writeInt32(valueHolderForIgnoresLayoutSafeAreaEdgesTmpValueTmpElement.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BackgroundOptions {
        var valueDeserializer: DeserializerBase = buffer
        let alignTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var alignTmpBuf: Option<Alignment> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(alignTmpBuf_runtimeType))) {
            alignTmpBuf = Alignment(valueDeserializer.readInt32())
        }
        let alignTmpResult: Option<Alignment> = alignTmpBuf
        let ignoresLayoutSafeAreaEdgesTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var ignoresLayoutSafeAreaEdgesTmpBuf: Option<ArrayList<LayoutSafeAreaEdge>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(ignoresLayoutSafeAreaEdgesTmpBuf_runtimeType))) {
            let ignoresLayoutSafeAreaEdgesTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var ignoresLayoutSafeAreaEdgesTmpBuf_: ArrayList<LayoutSafeAreaEdge> = ArrayList<LayoutSafeAreaEdge>(Int64(ignoresLayoutSafeAreaEdgesTmpBuf_Length))
            ignoresLayoutSafeAreaEdgesTmpBuf_ = ArrayList<LayoutSafeAreaEdge>(Int64(ignoresLayoutSafeAreaEdgesTmpBuf_Length))
            for (ignoresLayoutSafeAreaEdgesTmpBuf_BufCounterI in 0..ignoresLayoutSafeAreaEdgesTmpBuf_Length) {
                ignoresLayoutSafeAreaEdgesTmpBuf_[Int64(ignoresLayoutSafeAreaEdgesTmpBuf_BufCounterI)] = LayoutSafeAreaEdge(valueDeserializer.readInt32())
            }
            ignoresLayoutSafeAreaEdgesTmpBuf = ignoresLayoutSafeAreaEdgesTmpBuf_
        }
        let ignoresLayoutSafeAreaEdgesTmpResult: Option<ArrayList<LayoutSafeAreaEdge>> = ignoresLayoutSafeAreaEdgesTmpBuf
        var value: BackgroundOptions = BackgroundOptions(alignTmpResult, ignoresLayoutSafeAreaEdgesTmpResult)
        return value
    }
}
