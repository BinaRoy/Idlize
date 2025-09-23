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

package idlize.commonPara

import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime

public class NavExtender {
    private  static func setNavigationOptions_serialize(ptr: UInt64, pathStack: NavPathStack): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        ArkUIGeneratedNativeModule._NavExtender_setNavigationOptions(ptr, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func setUpdateStackCallback_serialize(peer: NavPathStack, callback: NavExtender_OnUpdateStack): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, peer)
        thisSerializer.holdAndWriteCallback(callback)
        ArkUIGeneratedNativeModule._NavExtender_setUpdateStackCallback(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func syncStack_serialize(peer: NavPathStack): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, peer)
        ArkUIGeneratedNativeModule._NavExtender_syncStack(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func checkNeedCreate_serialize(navigation: UInt64, index: Int32): Bool {
        let retval = ArkUIGeneratedNativeModule._NavExtender_checkNeedCreate(navigation, index)
        return retval
    }
    private  static func setNavDestinationNode_serialize(peer: NavPathStack, index: Int32, node: UInt64): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, peer)
        ArkUIGeneratedNativeModule._NavExtender_setNavDestinationNode(thisSerializer.asBuffer(), thisSerializer.length(), index, node)
        thisSerializer.release()
    }
    private  static func pushPath_serialize(pathStack: NavPathStack, info: Any, options: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        thisSerializer.writeCustomObject("Any", info)
        thisSerializer.writeCustomObject("Any", options)
        ArkUIGeneratedNativeModule._NavExtender_pushPath(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func replacePath_serialize(pathStack: NavPathStack, info: Any, options: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        thisSerializer.writeCustomObject("Any", info)
        thisSerializer.writeCustomObject("Any", options)
        ArkUIGeneratedNativeModule._NavExtender_replacePath(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func pop_serialize(pathStack: NavPathStack, animated: Bool): String {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        let retval = ArkUIGeneratedNativeModule._NavExtender_pop(thisSerializer.asBuffer(), thisSerializer.length(), if (animated) { Int32(1) } else { Int32(0) })
        thisSerializer.release()
        return retval
    }
    private  static func setOnPopCallback_serialize(pathStack: NavPathStack, popCallback: ((parameter: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        thisSerializer.holdAndWriteCallback(popCallback)
        ArkUIGeneratedNativeModule._NavExtender_setOnPopCallback(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    private  static func getIdByIndex_serialize(pathStack: NavPathStack, index: Int32): String {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        let retval = ArkUIGeneratedNativeModule._NavExtender_getIdByIndex(thisSerializer.asBuffer(), thisSerializer.length(), index)
        thisSerializer.release()
        return retval
    }
    private  static func getIdByName_serialize(pathStack: NavPathStack, name: String): ArrayList<String> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        let retval = ArkUIGeneratedNativeModule._NavExtender_getIdByName(thisSerializer.asBuffer(), thisSerializer.length(), name)
        thisSerializer.release()
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
    private  static func popToIndex_serialize(pathStack: NavPathStack, index: Int32, animated: Bool): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        ArkUIGeneratedNativeModule._NavExtender_popToIndex(thisSerializer.asBuffer(), thisSerializer.length(), index, if (animated) { Int32(1) } else { Int32(0) })
        thisSerializer.release()
    }
    private  static func popToName_serialize(pathStack: NavPathStack, name: String, animated: Bool): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavPathStack_serializer.write(thisSerializer, pathStack)
        let retval = ArkUIGeneratedNativeModule._NavExtender_popToName(thisSerializer.asBuffer(), thisSerializer.length(), name, if (animated) { Int32(1) } else { Int32(0) })
        thisSerializer.release()
        return retval
    }
    public  static func setNavigationOptions(ptr: UInt64, pathStack: NavPathStack): Unit {
        let ptr_casted: UInt64 = ptr
        let pathStack_casted: NavPathStack = pathStack
        NavExtender.setNavigationOptions_serialize(ptr_casted, pathStack_casted)
        return
    }
    public  static func setUpdateStackCallback(peer: NavPathStack, callback: NavExtender_OnUpdateStack): Unit {
        let peer_casted: NavPathStack = peer
        let callback_casted: NavExtender_OnUpdateStack = callback
        NavExtender.setUpdateStackCallback_serialize(peer_casted, callback_casted)
        return
    }
    public  static func syncStack(peer: NavPathStack): Unit {
        let peer_casted: NavPathStack = peer
        NavExtender.syncStack_serialize(peer_casted)
        return
    }
    public  static func checkNeedCreate(navigation: UInt64, index: Int32): Bool {
        let navigation_casted: UInt64 = navigation
        let index_casted: Int32 = index
        return NavExtender.checkNeedCreate_serialize(navigation_casted, index_casted)
    }
    public  static func setNavDestinationNode(peer: NavPathStack, index: Int32, node: UInt64): Unit {
        let peer_casted: NavPathStack = peer
        let index_casted: Int32 = index
        let node_casted: UInt64 = node
        NavExtender.setNavDestinationNode_serialize(peer_casted, index_casted, node_casted)
        return
    }
    public  static func pushPath(pathStack: NavPathStack, info: Any, options: Any): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let info_casted: Any = info
        let options_casted: Any = options
        NavExtender.pushPath_serialize(pathStack_casted, info_casted, options_casted)
        return
    }
    public  static func replacePath(pathStack: NavPathStack, info: Any, options: Any): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let info_casted: Any = info
        let options_casted: Any = options
        NavExtender.replacePath_serialize(pathStack_casted, info_casted, options_casted)
        return
    }
    public  static func pop(pathStack: NavPathStack, animated: Bool): String {
        let pathStack_casted: NavPathStack = pathStack
        let animated_casted: Bool = animated
        return NavExtender.pop_serialize(pathStack_casted, animated_casted)
    }
    public  static func setOnPopCallback(pathStack: NavPathStack, popCallback: ((parameter: String) -> Unit)): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let popCallback_casted: ((parameter: String) -> Unit) = popCallback
        NavExtender.setOnPopCallback_serialize(pathStack_casted, popCallback_casted)
        return
    }
    public  static func getIdByIndex(pathStack: NavPathStack, index: Int32): String {
        let pathStack_casted: NavPathStack = pathStack
        let index_casted: Int32 = index
        return NavExtender.getIdByIndex_serialize(pathStack_casted, index_casted)
    }
    public  static func getIdByName(pathStack: NavPathStack, name: String): ArrayList<String> {
        let pathStack_casted: NavPathStack = pathStack
        let name_casted: String = name
        return NavExtender.getIdByName_serialize(pathStack_casted, name_casted)
    }
    public  static func popToIndex(pathStack: NavPathStack, index: Int32, animated: Bool): Unit {
        let pathStack_casted: NavPathStack = pathStack
        let index_casted: Int32 = index
        let animated_casted: Bool = animated
        NavExtender.popToIndex_serialize(pathStack_casted, index_casted, animated_casted)
        return
    }
    public  static func popToName(pathStack: NavPathStack, name: String, animated: Bool): Float64 {
        let pathStack_casted: NavPathStack = pathStack
        let name_casted: String = name
        let animated_casted: Bool = animated
        return NavExtender.popToName_serialize(pathStack_casted, name_casted, animated_casted)
    }
}
