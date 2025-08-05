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
public open class BuilderNodeOpsInternal {
    public static func fromPtr(ptr: UInt64): BuilderNodeOps {
        return BuilderNodeOps(ptr)
    }
}
public open class BuilderNodeOps <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    BuilderNodeOps(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, BuilderNodeOps.getFinalizer())
    }
    BuilderNodeOps() {
        super(BuilderNodeOps.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._BuilderNodeOps_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._BuilderNodeOps_getFinalizer()
    }
    public open func create(buildFunc: (() -> Unit)): Unit {
        let buildFunc_casted: (() -> Unit) = buildFunc
        let thisPeer = this
        thisPeer.create_serialize(buildFunc_casted)
        return
    }
    public open func disposeNode(): Unit {
        let thisPeer = this
        thisPeer.disposeNode_serialize()
        return
    }
    public open func setUpdateConfigurationCallback(configurationUpdateFunc: (() -> Unit)): Unit {
        let configurationUpdateFunc_casted: (() -> Unit) = configurationUpdateFunc
        let thisPeer = this
        thisPeer.setUpdateConfigurationCallback_serialize(configurationUpdateFunc_casted)
        return
    }
    public open func setOptions(options: BuilderNodeOptions): Unit {
        let options_casted: BuilderNodeOptions = options
        let thisPeer = this
        thisPeer.setOptions_serialize(options_casted)
        return
    }
    public open func postTouchEvent(event: TouchEvent): Bool {
        let event_casted: TouchEvent = event
        return this.postTouchEvent_serialize(event_casted)
    }
    public open func setRootFrameNodeInBuilderNode(node: UInt64): UInt64 {
        let node_casted: UInt64 = node
        return this.setRootFrameNodeInBuilderNode_serialize(node_casted)
    }
    private func create_serialize(buildFunc: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(buildFunc);
        ArkUIGeneratedNativeModule._BuilderNodeOps_create(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func disposeNode_serialize(): Unit {
        ArkUIGeneratedNativeModule._BuilderNodeOps_disposeNode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func setUpdateConfigurationCallback_serialize(configurationUpdateFunc: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(configurationUpdateFunc);
        ArkUIGeneratedNativeModule._BuilderNodeOps_setUpdateConfigurationCallback(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func setOptions_serialize(options: BuilderNodeOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        BuilderNodeOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._BuilderNodeOps_setOptions(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func postTouchEvent_serialize(event: TouchEvent): Bool {
        let retval = ArkUIGeneratedNativeModule._BuilderNodeOps_postTouchEvent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(event))
        return retval
    }
    private func setRootFrameNodeInBuilderNode_serialize(node: UInt64): UInt64 {
        let retval = ArkUIGeneratedNativeModule._BuilderNodeOps_setRootFrameNodeInBuilderNode(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, node)
        return retval
    }
}
public open class BuilderNodeOps_serializer {
    public static func write(buffer: SerializerBase, value: BuilderNodeOps): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): BuilderNodeOps {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return BuilderNodeOpsInternal.fromPtr(ptr)
    }
}
