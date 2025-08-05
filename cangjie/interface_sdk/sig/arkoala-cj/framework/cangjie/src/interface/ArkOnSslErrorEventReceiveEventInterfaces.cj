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
public interface OnSslErrorEventReceiveEventInterfaces <:  {
    public mut open prop handler: SslErrorHandler
    public mut open prop error: SslError
    public mut open prop certChainData: Option<ArrayList<Array<UInt8>>>
}
public open class OnSslErrorEventReceiveEvent <: OnSslErrorEventReceiveEventInterfaces {
    private var handler_container: SslErrorHandler
    public mut open prop handler: SslErrorHandler
    {
        get() {
            return handler_container
        }
        set(handler) {
            handler_container = handler
        }
    }
    private var error_container: SslError
    public mut open prop error: SslError
    {
        get() {
            return error_container
        }
        set(error) {
            error_container = error
        }
    }
    private var certChainData_container: Option<ArrayList<Array<UInt8>>>
    public mut open prop certChainData: Option<ArrayList<Array<UInt8>>>
    {
        get() {
            return certChainData_container
        }
        set(certChainData) {
            certChainData_container = certChainData
        }
    }
    OnSslErrorEventReceiveEvent(handler: SslErrorHandler, error: SslError, certChainData: Option<ArrayList<Array<UInt8>>>) {
        this.handler_container = handler
        this.error_container = error
        this.certChainData_container = certChainData
    }
}
public open class OnSslErrorEventReceiveEvent_serializer {
    public static func write(buffer: SerializerBase, value: OnSslErrorEventReceiveEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForHandler = value.handler
        SslErrorHandler_serializer.write(valueSerializer, valueHolderForHandler);
        let valueHolderForError = value.error
        valueSerializer.writeInt32(valueHolderForError.value);
        let valueHolderForCertChainData = value.certChainData
        if (valueHolderForCertChainData.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForCertChainDataTmpValue = valueHolderForCertChainData
            valueSerializer.writeInt32(Int32(valueHolderForCertChainDataTmpValue.size));
            for (valueHolderForCertChainDataTmpValueCounterI in 0..valueHolderForCertChainDataTmpValue.size) {
                let valueHolderForCertChainDataTmpValueTmpElement: Array<UInt8> = valueHolderForCertChainDataTmpValue[Int64(valueHolderForCertChainDataTmpValueCounterI)]
                valueSerializer.writeBuffer(valueHolderForCertChainDataTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): OnSslErrorEventReceiveEvent {
        var valueDeserializer: DeserializerBase = buffer
        let handlerTmpResult: SslErrorHandler = match (SslErrorHandler_serializer.read(valueDeserializer) as SslErrorHandler) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let errorTmpResult: SslError = SslError(valueDeserializer.readInt32())
        let certChainDataTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var certChainDataTmpBuf: Option<ArrayList<Array<UInt8>>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(certChainDataTmpBuf_runtimeType))) {
            let certChainDataTmpBuf_Length: Int32 = valueDeserializer.readInt32()
            var certChainDataTmpBuf_: ArrayList<Array<UInt8>> = ArrayList<Array<UInt8>>(Int64(certChainDataTmpBuf_Length))
            certChainDataTmpBuf_ = ArrayList<Array<UInt8>>(Int64(certChainDataTmpBuf_Length))
            for (certChainDataTmpBuf_BufCounterI in 0..certChainDataTmpBuf_Length) {
                certChainDataTmpBuf_[Int64(certChainDataTmpBuf_BufCounterI)] = match (valueDeserializer.readBuffer() as Array<UInt8>) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            certChainDataTmpBuf = certChainDataTmpBuf_
        }
        let certChainDataTmpResult: Option<ArrayList<Array<UInt8>>> = certChainDataTmpBuf
        var value: OnSslErrorEventReceiveEvent = OnSslErrorEventReceiveEvent(handlerTmpResult, errorTmpResult, certChainDataTmpResult)
        return value
    }
}
