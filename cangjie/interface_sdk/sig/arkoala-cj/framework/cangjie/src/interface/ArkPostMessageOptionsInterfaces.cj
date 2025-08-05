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
public interface PostMessageOptionsInterfaces <:  {
    public mut open prop transfer: Option<ArrayList<Any>>
}
public open class PostMessageOptions <: PostMessageOptionsInterfaces {
    private var transfer_container: Option<ArrayList<Any>>
    public mut open prop transfer: Option<ArrayList<Any>>
    {
        get() {
            return transfer_container
        }
        set(transfer) {
            transfer_container = transfer
        }
    }
    PostMessageOptions(transfer: Option<ArrayList<Any>>) {
        this.transfer_container = transfer
    }
}
public open class PostMessageOptions_serializer {
    public static func write(buffer: SerializerBase, value: PostMessageOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTransfer = value.transfer
        if (valueHolderForTransfer.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTransferTmpValue = valueHolderForTransfer
            valueSerializer.writeInt32(Int32(valueHolderForTransferTmpValue.size));
            for (valueHolderForTransferTmpValueCounterI in 0..valueHolderForTransferTmpValue.size) {
                let valueHolderForTransferTmpValueTmpElement: Any = valueHolderForTransferTmpValue[Int64(valueHolderForTransferTmpValueCounterI)]
                valueSerializer.holdAndWriteObject(valueHolderForTransferTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): PostMessageOptions {
        var valueDeserializer: DeserializerBase = buffer
        let transferTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var transferTmpBuf: Option<ArrayList<Any>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(transferTmpBuf_runtimeType))) {
            let transferTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var transferTmpBuf_: ArrayList<Any> = ArrayList<Any>(Int64(transferTmpBuf_Length))
            transferTmpBuf_ = ArrayList<Any>(Int64(transferTmpBuf_Length))
            for (transferTmpBuf_BufCounterI in 0..transferTmpBuf_Length) {
                transferTmpBuf_[Int64(transferTmpBuf_BufCounterI)] = match (valueDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            transferTmpBuf = transferTmpBuf_
        }
        let transferTmpResult: Option<ArrayList<Any>> = transferTmpBuf
        var value: PostMessageOptions = PostMessageOptions(transferTmpResult)
        return value
    }
}
