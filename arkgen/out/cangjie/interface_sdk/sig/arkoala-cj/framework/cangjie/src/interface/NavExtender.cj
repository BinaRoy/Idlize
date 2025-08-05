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
public open class NavExtender {
    static private func setNavigationOptions_serialize(ptr: UInt64, pathStack: NavPathStack): Unit {
        ArkUIGeneratedNativeModule._NavExtender_setNavigationOptions(ptr, MaterializedBase.toPeerPtr(pathStack));
    }
    static private func setUpdateStackCallback_serialize(peer: NavPathStack, callback: NavExtender_OnUpdateStack): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback);
        ArkUIGeneratedNativeModule._NavExtender_setUpdateStackCallback(MaterializedBase.toPeerPtr(peer), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func syncStack_serialize(peer: NavPathStack): Unit {
        ArkUIGeneratedNativeModule._NavExtender_syncStack(MaterializedBase.toPeerPtr(peer));
    }
    static private func checkNeedCreate_serialize(navigation: UInt64, index: Int32): Bool {
        let retval = ArkUIGeneratedNativeModule._NavExtender_checkNeedCreate(navigation, index)
        return retval
    }
    static private func setNavDestinationNode_serialize(peer: NavPathStack, index: Int32, node: UInt64): Unit {
        ArkUIGeneratedNativeModule._NavExtender_setNavDestinationNode(MaterializedBase.toPeerPtr(peer), index, node);
    }
    static private func pushPath_serialize(pathStack: NavPathStack, info: NavPathInfo, options: NavigationOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavigationOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._NavExtender_pushPath(MaterializedBase.toPeerPtr(pathStack), MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func replacePath_serialize(pathStack: NavPathStack, info: NavPathInfo, options: NavigationOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavigationOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._NavExtender_replacePath(MaterializedBase.toPeerPtr(pathStack), MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func pop_serialize(pathStack: NavPathStack, animated: Bool): String {
        let retval = ArkUIGeneratedNativeModule._NavExtender_pop(MaterializedBase.toPeerPtr(pathStack), if (animated) { Int32(1) } else { Int32(0) })
        return retval
    }
    static private func setOnPopCallback_serialize(pathStack: NavPathStack, popCallback: ((breakpoints: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(popCallback);
        ArkUIGeneratedNativeModule._NavExtender_setOnPopCallback(MaterializedBase.toPeerPtr(pathStack), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func getIdByIndex_serialize(pathStack: NavPathStack, index: Int32): String {
        let retval = ArkUIGeneratedNativeModule._NavExtender_getIdByIndex(MaterializedBase.toPeerPtr(pathStack), index)
        return retval
    }
    static private func getIdByName_serialize(pathStack: NavPathStack, name: String): ArrayList<String> {
        let retval = ArkUIGeneratedNativeModule._NavExtender_getIdByName(MaterializedBase.toPeerPtr(pathStack), name)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<String> = ArrayList<String>(Int64(bufferLength))
        buffer = ArrayList<String>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = match (retvalDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<String> = buffer
        return returnResult
    }
    static private func popToIndex_serialize(pathStack: NavPathStack, index: Int32, animated: Bool): Unit {
        ArkUIGeneratedNativeModule._NavExtender_popToIndex(MaterializedBase.toPeerPtr(pathStack), index, if (animated) { Int32(1) } else { Int32(0) });
    }
    static private func popToName_serialize(pathStack: NavPathStack, name: String, animated: Bool): Float64 {
        let retval = ArkUIGeneratedNativeModule._NavExtender_popToName(MaterializedBase.toPeerPtr(pathStack), name, if (animated) { Int32(1) } else { Int32(0) })
        return retval
    }
    static public func setNavigationOptions(ptr: UInt64, pathStack: NavPathStack): Unit {
        let ptr_casted: UInt64 = ptr
        let pathStack_casted: NavPathStack = pathStack
        NavExtender.setNavigationOptions_serialize(ptr_casted, pathStack_casted)
        return
    }
    static public func setUpdateStackCallback(peer: NavPathStack, callback: NavExtender_OnUpdateStack): Unit {
        let peer_casted: NavPathStack = peer
        let callback_casted: NavExtender_OnUpdateStack = callback
        NavExtender.setUpdateStackCallback_serialize(peer_casted, callback_casted)
        return
    }
    static public func syncStack(peer: NavPathStack): Unit {
        let peer_casted: NavPathStack = peer
        NavExtender.syncStack_serialize(peer_casted)
        return
    }
    static public func checkNeedCreate(navigation: UInt64, index: Int32): Bool {
        let navigation_casted: UInt64 = navigation
        let index_casted: Int32 = index
        return NavExtender.checkNeedCreate_serialize(navigation_casted, index_casted)
    }
    static public func setNavDestinationNode(peer: NavPathStack, index: Int32, node: UInt64): Unit {
        let peer_casted: NavPathStack = peer
        let index_casted: Int32 = index
        let node_casted: UInt64 = node
        NavExtender.setNavDestinationNode_serialize(peer_casted, index_casted, node_casted)
        return
    }
    static public func pushPath(pathStack: NavPathStack, info: NavPathInfo, options: NavigationOptions): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let info_casted: NavPathInfo = info
        let options_casted: NavigationOptions = options
        NavExtender.pushPath_serialize(pathStack_casted, info_casted, options_casted)
        return
    }
    static public func replacePath(pathStack: NavPathStack, info: NavPathInfo, options: NavigationOptions): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let info_casted: NavPathInfo = info
        let options_casted: NavigationOptions = options
        NavExtender.replacePath_serialize(pathStack_casted, info_casted, options_casted)
        return
    }
    static public func pop(pathStack: NavPathStack, animated: Bool): String {
        let pathStack_casted: NavPathStack = pathStack
        let animated_casted: Bool = animated
        return NavExtender.pop_serialize(pathStack_casted, animated_casted)
    }
    static public func setOnPopCallback(pathStack: NavPathStack, popCallback: ((breakpoints: String) -> Unit)): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let popCallback_casted: ((breakpoints: String) -> Unit) = popCallback
        NavExtender.setOnPopCallback_serialize(pathStack_casted, popCallback_casted)
        return
    }
    static public func getIdByIndex(pathStack: NavPathStack, index: Int32): String {
        let pathStack_casted: NavPathStack = pathStack
        let index_casted: Int32 = index
        return NavExtender.getIdByIndex_serialize(pathStack_casted, index_casted)
    }
    static public func getIdByName(pathStack: NavPathStack, name: String): ArrayList<String> {
        let pathStack_casted: NavPathStack = pathStack
        let name_casted: String = name
        return NavExtender.getIdByName_serialize(pathStack_casted, name_casted)
    }
    static public func popToIndex(pathStack: NavPathStack, index: Int32, animated: Bool): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let index_casted: Int32 = index
        let animated_casted: Bool = animated
        NavExtender.popToIndex_serialize(pathStack_casted, index_casted, animated_casted)
        return
    }
    static public func popToName(pathStack: NavPathStack, name: String, animated: Bool): Float64 {
        let pathStack_casted: NavPathStack = pathStack
        let name_casted: String = name
        let animated_casted: Bool = animated
        return NavExtender.popToName_serialize(pathStack_casted, name_casted, animated_casted)
    }
}
