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
public interface RenderProcessNotRespondingDataInterfaces <:  {
    public mut open prop jsStack: String
    public mut open prop pid: Int32
    public mut open prop reason: RenderProcessNotRespondingReason
}
public open class RenderProcessNotRespondingData <: RenderProcessNotRespondingDataInterfaces {
    private var jsStack_container: String
    public mut open prop jsStack: String
    {
        get() {
            return jsStack_container
        }
        set(jsStack) {
            jsStack_container = jsStack
        }
    }
    private var pid_container: Int32
    public mut open prop pid: Int32
    {
        get() {
            return pid_container
        }
        set(pid) {
            pid_container = pid
        }
    }
    private var reason_container: RenderProcessNotRespondingReason
    public mut open prop reason: RenderProcessNotRespondingReason
    {
        get() {
            return reason_container
        }
        set(reason) {
            reason_container = reason
        }
    }
    RenderProcessNotRespondingData(jsStack: String, pid: Int32, reason: RenderProcessNotRespondingReason) {
        this.jsStack_container = jsStack
        this.pid_container = pid
        this.reason_container = reason
    }
}
public open class RenderProcessNotRespondingData_serializer {
    public static func write(buffer: SerializerBase, value: RenderProcessNotRespondingData): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForJsStack = value.jsStack
        valueSerializer.writeString(valueHolderForJsStack);
        let valueHolderForPid = value.pid
        valueSerializer.writeInt32(valueHolderForPid);
        let valueHolderForReason = value.reason
        valueSerializer.writeInt32(valueHolderForReason.value);
    }
    public static func read(buffer: DeserializerBase): RenderProcessNotRespondingData {
        var valueDeserializer: DeserializerBase = buffer
        let jsStackTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let pidTmpResult: Int32 = valueDeserializer.readInt32()
        let reasonTmpResult: RenderProcessNotRespondingReason = RenderProcessNotRespondingReason(valueDeserializer.readInt32())
        var value: RenderProcessNotRespondingData = RenderProcessNotRespondingData(jsStackTmpResult, pidTmpResult, reasonTmpResult)
        return value
    }
}
