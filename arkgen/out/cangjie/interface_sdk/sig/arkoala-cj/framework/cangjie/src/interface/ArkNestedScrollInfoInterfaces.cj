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
public interface NestedScrollInfoInterfaces <:  {
    public mut open prop parent: Scroller
    public mut open prop child: Scroller
}
public open class NestedScrollInfo <: NestedScrollInfoInterfaces {
    private var parent_container: Scroller
    public mut open prop parent: Scroller
    {
        get() {
            return parent_container
        }
        set(parent) {
            parent_container = parent
        }
    }
    private var child_container: Scroller
    public mut open prop child: Scroller
    {
        get() {
            return child_container
        }
        set(child) {
            child_container = child
        }
    }
    NestedScrollInfo(parent: Scroller, child: Scroller) {
        this.parent_container = parent
        this.child_container = child
    }
}
public open class NestedScrollInfo_serializer {
    public static func write(buffer: SerializerBase, value: NestedScrollInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForParent = value.parent
        Scroller_serializer.write(valueSerializer, valueHolderForParent);
        let valueHolderForChild = value.child
        Scroller_serializer.write(valueSerializer, valueHolderForChild);
    }
    public static func read(buffer: DeserializerBase): NestedScrollInfo {
        var valueDeserializer: DeserializerBase = buffer
        let parentTmpResult: Scroller = match (Scroller_serializer.read(valueDeserializer) as Scroller) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let childTmpResult: Scroller = match (Scroller_serializer.read(valueDeserializer) as Scroller) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: NestedScrollInfo = NestedScrollInfo(parentTmpResult, childTmpResult)
        return value
    }
}
