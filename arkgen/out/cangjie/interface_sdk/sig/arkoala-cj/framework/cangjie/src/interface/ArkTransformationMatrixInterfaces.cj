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
public interface TransformationMatrixInterfaces <:  {
    public mut open prop matrix4x4: ArrayList<Float64>
}
public open class TransformationMatrix <: TransformationMatrixInterfaces {
    private var matrix4x4_container: ArrayList<Float64>
    public mut open prop matrix4x4: ArrayList<Float64>
    {
        get() {
            return matrix4x4_container
        }
        set(matrix4x4) {
            matrix4x4_container = matrix4x4
        }
    }
    TransformationMatrix(matrix4x4: ArrayList<Float64>) {
        this.matrix4x4_container = matrix4x4
    }
}
public open class TransformationMatrix_serializer {
    public static func write(buffer: SerializerBase, value: TransformationMatrix): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMatrix4x4 = value.matrix4x4
        valueSerializer.writeInt32(Int32(valueHolderForMatrix4x4.size));
        for (valueHolderForMatrix4x4CounterI in 0..valueHolderForMatrix4x4.size) {
            let valueHolderForMatrix4x4TmpElement: Float64 = valueHolderForMatrix4x4[Int64(valueHolderForMatrix4x4CounterI)]
            valueSerializer.writeNumber(valueHolderForMatrix4x4TmpElement);
        }
    }
    public static func read(buffer: DeserializerBase): TransformationMatrix {
        var valueDeserializer: DeserializerBase = buffer
        let matrix4x4TmpBufLength: Int32 = valueDeserializer.readInt32()
        var matrix4x4TmpBuf: ArrayList<Float64> = ArrayList<Float64>(Int64(matrix4x4TmpBufLength))
        matrix4x4TmpBuf = ArrayList<Float64>(Int64(matrix4x4TmpBufLength))
        for (matrix4x4TmpBufBufCounterI in 0..matrix4x4TmpBufLength) {
            matrix4x4TmpBuf[Int64(matrix4x4TmpBufBufCounterI)] = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let matrix4x4TmpResult: ArrayList<Float64> = matrix4x4TmpBuf
        var value: TransformationMatrix = TransformationMatrix(matrix4x4TmpResult)
        return value
    }
}
