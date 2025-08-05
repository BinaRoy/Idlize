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
public interface NavDestinationContext {
    public mut open prop pathInfo: NavPathInfo
    public mut open prop pathStack: NavPathStack
    public mut open prop navDestinationId: Option<String>
    public open func getConfigInRouteMap(): Option<RouteMapConfig>
}
public open class NavDestinationContextInternal <: MaterializedBase & NavDestinationContext {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop pathInfo: NavPathInfo
    {
        get() {
            return this.getPathInfo()
        }
        set(pathInfo) {
            this.setPathInfo(pathInfo)
        }
    }
    public mut open prop pathStack: NavPathStack
    {
        get() {
            return this.getPathStack()
        }
        set(pathStack) {
            this.setPathStack(pathStack)
        }
    }
    public mut open prop navDestinationId: Option<String>
    {
        get() {
            return this.getNavDestinationId()
        }
        set(navDestinationId) {
            let navDestinationId_NonNull = match (navDestinationId as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setNavDestinationId(navDestinationId_NonNull)
        }
    }
    NavDestinationContextInternal(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, NavDestinationContextInternal.getFinalizer())
    }
    NavDestinationContextInternal() {
        super(NavDestinationContextInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._NavDestinationContext_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._NavDestinationContext_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): NavDestinationContextInternal {
        return NavDestinationContextInternal(ptr)
    }
    public open func getConfigInRouteMap(): Option<RouteMapConfig> {
        return this.getConfigInRouteMap_serialize()
    }
    private func getPathInfo(): NavPathInfo {
        return this.getPathInfo_serialize()
    }
    private func setPathInfo(pathInfo: NavPathInfo): Unit {
        let pathInfo_casted: NavPathInfo = pathInfo
        let thisPeer = this
        thisPeer.setPathInfo_serialize(pathInfo_casted)
        return
    }
    private func getPathStack(): NavPathStack {
        return this.getPathStack_serialize()
    }
    private func setPathStack(pathStack: NavPathStack): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let thisPeer = this
        thisPeer.setPathStack_serialize(pathStack_casted)
        return
    }
    private func getNavDestinationId(): Option<String> {
        return this.getNavDestinationId_serialize()
    }
    private func setNavDestinationId(navDestinationId: Option<String>): Unit {
        let navDestinationId_casted: Option<String> = if (let Some(navDestinationId) <- navDestinationId) {navDestinationId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setNavDestinationId_serialize(navDestinationId_casted)
        return
    }
    private func getConfigInRouteMap_serialize(): Option<RouteMapConfig> {
        let retval = ArkUIGeneratedNativeModule._NavDestinationContext_getConfigInRouteMap(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<RouteMapConfig> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = RouteMapConfig_serializer.read(retvalDeserializer)
        }
        let returnResult: Option<RouteMapConfig> = buffer
        return returnResult
    }
    private func getPathInfo_serialize(): NavPathInfo {
        let retval = ArkUIGeneratedNativeModule._NavDestinationContext_getPathInfo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: NavPathInfo = NavPathInfoInternal.fromPtr(retval)
        return obj
    }
    private func setPathInfo_serialize(pathInfo: NavPathInfo): Unit {
        ArkUIGeneratedNativeModule._NavDestinationContext_setPathInfo(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(pathInfo));
    }
    private func getPathStack_serialize(): NavPathStack {
        let retval = ArkUIGeneratedNativeModule._NavDestinationContext_getPathStack(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: NavPathStack = NavPathStackInternal.fromPtr(retval)
        return obj
    }
    private func setPathStack_serialize(pathStack: NavPathStack): Unit {
        ArkUIGeneratedNativeModule._NavDestinationContext_setPathStack(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(pathStack));
    }
    private func getNavDestinationId_serialize(): Option<String> {
        let retval = ArkUIGeneratedNativeModule._NavDestinationContext_getNavDestinationId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<String> = buffer
        return returnResult
    }
    private func setNavDestinationId_serialize(navDestinationId: Option<String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (navDestinationId.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let navDestinationIdTmpValue = navDestinationId
            thisSerializer.writeString(navDestinationIdTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavDestinationContext_setNavDestinationId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class NavDestinationContext_serializer {
    public static func write(buffer: SerializerBase, value: NavDestinationContext): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): NavDestinationContext {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return NavDestinationContextInternal.fromPtr(ptr)
    }
}
