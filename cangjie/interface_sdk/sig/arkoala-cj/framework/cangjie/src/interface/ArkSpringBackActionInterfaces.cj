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
public interface SpringBackActionInterfaces <:  {
    public mut open prop springBack: (() -> Unit)
}
public open class SpringBackAction <: SpringBackActionInterfaces {
    private var springBack_container: (() -> Unit)
    public mut open prop springBack: (() -> Unit)
    {
        get() {
            return springBack_container
        }
        set(springBack) {
            springBack_container = springBack
        }
    }
    SpringBackAction(springBack: (() -> Unit)) {
        this.springBack_container = springBack
    }
}
public open class SpringBackAction_serializer {
    public static func write(buffer: SerializerBase, value: SpringBackAction): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSpringBack = value.springBack
        valueSerializer.holdAndWriteCallback(valueHolderForSpringBack);
    }
    public static func read(buffer: DeserializerBase): SpringBackAction {
        var valueDeserializer: DeserializerBase = buffer
        let springBackTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let springBackTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let springBackTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let springBackTmpResult: (() -> Unit) = { => let springBackTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
springBackTmpBufBufArgsSerializer.writeInt32(springBackTmpBufBufResource.resourceId);
springBackTmpBufBufArgsSerializer.writePointer(springBackTmpBufBufCall);
springBackTmpBufBufArgsSerializer.writePointer(springBackTmpBufBufCallSync);
InteropNativeModule._CallCallback(-1867723152, springBackTmpBufBufArgsSerializer.asBuffer(), springBackTmpBufBufArgsSerializer.length());
springBackTmpBufBufArgsSerializer.release();
return; }
        var value: SpringBackAction = SpringBackAction(springBackTmpResult)
        return value
    }
}
