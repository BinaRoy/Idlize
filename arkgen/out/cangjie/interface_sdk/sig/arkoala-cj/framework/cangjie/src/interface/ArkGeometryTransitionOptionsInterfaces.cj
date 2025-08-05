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
public interface GeometryTransitionOptionsInterfaces <:  {
    public mut open prop follow: Option<Bool>
    public mut open prop hierarchyStrategy: Option<TransitionHierarchyStrategy>
}
public open class GeometryTransitionOptions <: GeometryTransitionOptionsInterfaces {
    private var follow_container: Option<Bool>
    public mut open prop follow: Option<Bool>
    {
        get() {
            return follow_container
        }
        set(follow) {
            follow_container = follow
        }
    }
    private var hierarchyStrategy_container: Option<TransitionHierarchyStrategy>
    public mut open prop hierarchyStrategy: Option<TransitionHierarchyStrategy>
    {
        get() {
            return hierarchyStrategy_container
        }
        set(hierarchyStrategy) {
            hierarchyStrategy_container = hierarchyStrategy
        }
    }
    GeometryTransitionOptions(follow: Option<Bool>, hierarchyStrategy: Option<TransitionHierarchyStrategy>) {
        this.follow_container = follow
        this.hierarchyStrategy_container = hierarchyStrategy
    }
}
public open class GeometryTransitionOptions_serializer {
    public static func write(buffer: SerializerBase, value: GeometryTransitionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForFollow = value.follow
        if (valueHolderForFollow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFollowTmpValue = valueHolderForFollow
            valueSerializer.writeBoolean(valueHolderForFollowTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHierarchyStrategy = value.hierarchyStrategy
        if (valueHolderForHierarchyStrategy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHierarchyStrategyTmpValue = valueHolderForHierarchyStrategy
            valueSerializer.writeInt32(valueHolderForHierarchyStrategyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GeometryTransitionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let followTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var followTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(followTmpBuf_runtimeType))) {
            followTmpBuf = valueDeserializer.readBoolean()
        }
        let followTmpResult: Option<Bool> = followTmpBuf
        let hierarchyStrategyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hierarchyStrategyTmpBuf: Option<TransitionHierarchyStrategy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hierarchyStrategyTmpBuf_runtimeType))) {
            hierarchyStrategyTmpBuf = TransitionHierarchyStrategy(valueDeserializer.readInt32())
        }
        let hierarchyStrategyTmpResult: Option<TransitionHierarchyStrategy> = hierarchyStrategyTmpBuf
        var value: GeometryTransitionOptions = GeometryTransitionOptions(followTmpResult, hierarchyStrategyTmpResult)
        return value
    }
}
