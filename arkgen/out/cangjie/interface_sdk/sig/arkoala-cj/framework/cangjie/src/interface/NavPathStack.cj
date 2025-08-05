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
public open class NavPathStackInternal {
    public static func fromPtr(ptr: UInt64): NavPathStack {
        return NavPathStack(ptr)
    }
}
public open class NavPathStack <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    NavPathStack(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, NavPathStack.getFinalizer())
    }
    NavPathStack() {
        super(NavPathStack.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._NavPathStack_getFinalizer()
    }
    public open func pushPath(info: NavPathInfo, animated: Option<Bool>): Unit {
        let info_casted: NavPathInfo = info
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.pushPath0_serialize(info_casted, animated_casted)
        return
    }
    public open func pushPath(info: NavPathInfo, options: Option<NavigationOptions>): Unit {
        let info_casted: NavPathInfo = info
        let options_casted: Option<NavigationOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.pushPath1_serialize(info_casted, options_casted)
        return
    }
    public open func pushDestination(info: NavPathInfo, animated: Option<Bool>): Any {
        let info_casted: NavPathInfo = info
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.pushDestination0_serialize(info_casted, animated_casted)
    }
    public open func pushDestination(info: NavPathInfo, options: Option<NavigationOptions>): Any {
        let info_casted: NavPathInfo = info
        let options_casted: Option<NavigationOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        return this.pushDestination1_serialize(info_casted, options_casted)
    }
    public open func pushPathByName(name: String, param: Any, animated: Option<Bool>): Unit {
        let name_casted: String = name
        let param_casted: Any = param
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.pushPathByName0_serialize(name_casted, param_casted, animated_casted)
        return
    }
    public open func pushPathByName(name: String, param: Option<Any>, animated: Option<Bool>): Unit {
        let name_casted: String = name
        let param_casted: Option<Any> = if (let Some(param) <- param) {param} else { throw Exception("Type has to be not None")}
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.pushPathByName1_serialize(name_casted, param_casted, animated_casted)
        return
    }
    public open func pushPathByName(name: String, param: Any, onPop: ((parameter: PopInfo) -> Unit), animated: Option<Bool>): Unit {
        let name_casted: String = name
        let param_casted: Any = param
        let onPop_casted: ((parameter: PopInfo) -> Unit) = onPop
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.pushPathByName2_serialize(name_casted, param_casted, onPop_casted, animated_casted)
        return
    }
    public open func pushPathByName(name: String, param: Any, onPop: ((parameter: PopInfo) -> Unit), animated: Option<Bool>): Unit {
        let name_casted: String = name
        let param_casted: Any = param
        let onPop_casted: ((parameter: PopInfo) -> Unit) = onPop
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.pushPathByName3_serialize(name_casted, param_casted, onPop_casted, animated_casted)
        return
    }
    public open func pushDestinationByName(name: String, param: Any, animated: Option<Bool>): Any {
        let name_casted: String = name
        let param_casted: Any = param
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.pushDestinationByName0_serialize(name_casted, param_casted, animated_casted)
    }
    public open func pushDestinationByName(name: String, param: Any, onPop: ((parameter: PopInfo) -> Unit), animated: Option<Bool>): Any {
        let name_casted: String = name
        let param_casted: Any = param
        let onPop_casted: ((parameter: PopInfo) -> Unit) = onPop
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.pushDestinationByName1_serialize(name_casted, param_casted, onPop_casted, animated_casted)
    }
    public open func pushDestinationByName(name: String, param: Any, onPop: ((parameter: PopInfo) -> Unit), animated: Option<Bool>): Any {
        let name_casted: String = name
        let param_casted: Any = param
        let onPop_casted: ((parameter: PopInfo) -> Unit) = onPop
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.pushDestinationByName2_serialize(name_casted, param_casted, onPop_casted, animated_casted)
    }
    public open func replacePath(info: NavPathInfo, animated: Option<Bool>): Unit {
        let info_casted: NavPathInfo = info
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.replacePath0_serialize(info_casted, animated_casted)
        return
    }
    public open func replacePath(info: NavPathInfo, options: Option<NavigationOptions>): Unit {
        let info_casted: NavPathInfo = info
        let options_casted: Option<NavigationOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.replacePath1_serialize(info_casted, options_casted)
        return
    }
    public open func replaceDestination(info: NavPathInfo, options: Option<NavigationOptions>): Any {
        let info_casted: NavPathInfo = info
        let options_casted: Option<NavigationOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        return this.replaceDestination_serialize(info_casted, options_casted)
    }
    public open func replacePathByName(name: String, param: Any, animated: Option<Bool>): Unit {
        let name_casted: String = name
        let param_casted: Any = param
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.replacePathByName_serialize(name_casted, param_casted, animated_casted)
        return
    }
    public open func removeByIndexes(indexes: ArrayList<Float64>): Float64 {
        let indexes_casted: ArrayList<Float64> = indexes
        return this.removeByIndexes_serialize(indexes_casted)
    }
    public open func removeByName(name: String): Float64 {
        let name_casted: String = name
        return this.removeByName_serialize(name_casted)
    }
    public open func removeByNavDestinationId(navDestinationId: String): Bool {
        let navDestinationId_casted: String = navDestinationId
        return this.removeByNavDestinationId_serialize(navDestinationId_casted)
    }
    public open func pop(animated: Option<Bool>): Option<NavPathInfo> {
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.pop0_serialize(animated_casted)
    }
    public open func pop(result: Any, animated: Option<Bool>): Option<NavPathInfo> {
        let result_casted: Any = result
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.pop1_serialize(result_casted, animated_casted)
    }
    public open func popToName(name: String, animated: Option<Bool>): Float64 {
        let name_casted: String = name
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.popToName0_serialize(name_casted, animated_casted)
    }
    public open func popToName(name: String, result: Any, animated: Option<Bool>): Float64 {
        let name_casted: String = name
        let result_casted: Any = result
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.popToName1_serialize(name_casted, result_casted, animated_casted)
    }
    public open func popToIndex(index: Float64, animated: Option<Bool>): Unit {
        let index_casted: Float64 = index
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.popToIndex0_serialize(index_casted, animated_casted)
        return
    }
    public open func popToIndex(index: Float64, result: Any, animated: Option<Bool>): Unit {
        let index_casted: Float64 = index
        let result_casted: Any = result
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.popToIndex1_serialize(index_casted, result_casted, animated_casted)
        return
    }
    public open func moveToTop(name: String, animated: Option<Bool>): Float64 {
        let name_casted: String = name
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        return this.moveToTop_serialize(name_casted, animated_casted)
    }
    public open func moveIndexToTop(index: Float64, animated: Option<Bool>): Unit {
        let index_casted: Float64 = index
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.moveIndexToTop_serialize(index_casted, animated_casted)
        return
    }
    public open func clear(animated: Option<Bool>): Unit {
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.clear_serialize(animated_casted)
        return
    }
    public open func getAllPathName(): ArrayList<String> {
        return this.getAllPathName_serialize()
    }
    public open func getParamByIndex(index: Float64): Option<Any> {
        let index_casted: Float64 = index
        return this.getParamByIndex0_serialize(index_casted)
    }
    public open func getParamByIndex(index: Float64): Option<Any> {
        let index_casted: Float64 = index
        return this.getParamByIndex1_serialize(index_casted)
    }
    public open func getParamByName(name: String): ArrayList<Any> {
        let name_casted: String = name
        return this.getParamByName0_serialize(name_casted)
    }
    public open func getParamByName(name: String): ArrayList<Option<Any>> {
        let name_casted: String = name
        return this.getParamByName1_serialize(name_casted)
    }
    public open func getIndexByName(name: String): ArrayList<Float64> {
        let name_casted: String = name
        return this.getIndexByName_serialize(name_casted)
    }
    public open func getParent(): Option<NavPathStack> {
        return this.getParent_serialize()
    }
    public open func size(): Float64 {
        return this.size_serialize()
    }
    public open func disableAnimation(value: Bool): Unit {
        let value_casted: Bool = value
        let thisPeer = this
        thisPeer.disableAnimation_serialize(value_casted)
        return
    }
    public open func setInterception(interception: NavigationInterception): Unit {
        let interception_casted: NavigationInterception = interception
        let thisPeer = this
        thisPeer.setInterception_serialize(interception_casted)
        return
    }
    public open func getPathStack(): ArrayList<NavPathInfo> {
        return this.getPathStack_serialize()
    }
    public open func setPathStack(pathStack: ArrayList<NavPathInfo>, animated: Option<Bool>): Unit {
        let pathStack_casted: ArrayList<NavPathInfo> = pathStack
        let animated_casted: Option<Bool> = if (let Some(animated) <- animated) {animated} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setPathStack_serialize(pathStack_casted, animated_casted)
        return
    }
    private func pushPath0_serialize(info: NavPathInfo, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_pushPath0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func pushPath1_serialize(info: NavPathInfo, options: Option<NavigationOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_pushPath1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func pushDestination0_serialize(info: NavPathInfo, animated: Option<Bool>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._NavPathStack_pushDestination0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func pushDestination1_serialize(info: NavPathInfo, options: Option<NavigationOptions>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._NavPathStack_pushDestination1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func pushPathByName0_serialize(name: String, param: Any, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(param);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_pushPathByName0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func pushPathByName1_serialize(name: String, param: Option<Any>, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (param.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let paramTmpValue = param
            thisSerializer.holdAndWriteObject(paramTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_pushPathByName1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func pushPathByName2_serialize(name: String, param: Any, onPop: ((parameter: PopInfo) -> Unit), animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(param);
        thisSerializer.holdAndWriteCallback(onPop);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_pushPathByName2(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func pushPathByName3_serialize(name: String, param: Any, onPop: ((parameter: PopInfo) -> Unit), animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(param);
        thisSerializer.holdAndWriteCallback(onPop);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_pushPathByName3(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func pushDestinationByName0_serialize(name: String, param: Any, animated: Option<Bool>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(param);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._NavPathStack_pushDestinationByName0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func pushDestinationByName1_serialize(name: String, param: Any, onPop: ((parameter: PopInfo) -> Unit), animated: Option<Bool>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(param);
        thisSerializer.holdAndWriteCallback(onPop);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._NavPathStack_pushDestinationByName1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func pushDestinationByName2_serialize(name: String, param: Any, onPop: ((parameter: PopInfo) -> Unit), animated: Option<Bool>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(param);
        thisSerializer.holdAndWriteCallback(onPop);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._NavPathStack_pushDestinationByName2(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func replacePath0_serialize(info: NavPathInfo, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_replacePath0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func replacePath1_serialize(info: NavPathInfo, options: Option<NavigationOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_replacePath1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func replaceDestination_serialize(info: NavPathInfo, options: Option<NavigationOptions>): Any {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            NavigationOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = thisSerializer.holdAndWriteCallbackForPromiseVoid().promise
        ArkUIGeneratedNativeModule._NavPathStack_replaceDestination(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(info), thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
        return retval
    }
    private func replacePathByName_serialize(name: String, param: Any, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(param);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_replacePathByName(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func removeByIndexes_serialize(indexes: ArrayList<Float64>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(indexes.size));
        for (indexesCounterI in 0..indexes.size) {
            let indexesTmpElement: Float64 = indexes[Int64(indexesCounterI)]
            thisSerializer.writeNumber(indexesTmpElement);
        }
        let retval = ArkUIGeneratedNativeModule._NavPathStack_removeByIndexes(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func removeByName_serialize(name: String): Float64 {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_removeByName(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name)
        return retval
    }
    private func removeByNavDestinationId_serialize(navDestinationId: String): Bool {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_removeByNavDestinationId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, navDestinationId)
        return retval
    }
    private func pop0_serialize(animated: Option<Bool>): Option<NavPathInfo> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._NavPathStack_pop0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<NavPathInfo> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (NavPathInfo_serializer.read(retvalDeserializer) as NavPathInfo) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<NavPathInfo> = buffer
        return returnResult
    }
    private func pop1_serialize(result: Any, animated: Option<Bool>): Option<NavPathInfo> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(result);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._NavPathStack_pop1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<NavPathInfo> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (NavPathInfo_serializer.read(retvalDeserializer) as NavPathInfo) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<NavPathInfo> = buffer
        return returnResult
    }
    private func popToName0_serialize(name: String, animated: Option<Bool>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._NavPathStack_popToName0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func popToName1_serialize(name: String, result: Any, animated: Option<Bool>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(result);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._NavPathStack_popToName1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func popToIndex0_serialize(index: Float64, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_popToIndex0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func popToIndex1_serialize(index: Float64, result: Any, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(result);
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_popToIndex1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func moveToTop_serialize(name: String, animated: Option<Bool>): Float64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._NavPathStack_moveToTop(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func moveIndexToTop_serialize(index: Float64, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_moveIndexToTop(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func clear_serialize(animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_clear(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getAllPathName_serialize(): ArrayList<String> {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_getAllPathName(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
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
    private func getParamByIndex0_serialize(index: Float64): Option<Any> {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_getParamByIndex0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Any> = buffer
        return returnResult
    }
    private func getParamByIndex1_serialize(index: Float64): Option<Any> {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_getParamByIndex1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, index)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Any> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Any> = buffer
        return returnResult
    }
    private func getParamByName0_serialize(name: String): ArrayList<Any> {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_getParamByName0(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<Any> = ArrayList<Any>(Int64(bufferLength))
        buffer = ArrayList<Any>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = match (retvalDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<Any> = buffer
        return returnResult
    }
    private func getParamByName1_serialize(name: String): ArrayList<Option<Any>> {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_getParamByName1(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<Option<Any>> = ArrayList<Option<Any>>(Int64(bufferLength))
        buffer = ArrayList<Option<Any>>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            let bufferTempBuf_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            var bufferTempBuf: Option<Any> = Option.None
            if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bufferTempBuf_runtimeType))) {
                bufferTempBuf = match (retvalDeserializer.readObject() as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            buffer[Int64(bufferBufCounterI)] = bufferTempBuf
        }
        let returnResult: ArrayList<Option<Any>> = buffer
        return returnResult
    }
    private func getIndexByName_serialize(name: String): ArrayList<Float64> {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_getIndexByName(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<Float64> = ArrayList<Float64>(Int64(bufferLength))
        buffer = ArrayList<Float64>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<Float64> = buffer
        return returnResult
    }
    private func getParent_serialize(): Option<NavPathStack> {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_getParent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<NavPathStack> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (NavPathStack_serializer.read(retvalDeserializer) as NavPathStack) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<NavPathStack> = buffer
        return returnResult
    }
    private func size_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_size(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func disableAnimation_serialize(value: Bool): Unit {
        ArkUIGeneratedNativeModule._NavPathStack_disableAnimation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, if (value) { Int32(1) } else { Int32(0) });
    }
    private func setInterception_serialize(interception: NavigationInterception): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NavigationInterception_serializer.write(thisSerializer, interception);
        ArkUIGeneratedNativeModule._NavPathStack_setInterception(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getPathStack_serialize(): ArrayList<NavPathInfo> {
        let retval = ArkUIGeneratedNativeModule._NavPathStack_getPathStack(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let bufferLength: Int32 = retvalDeserializer.readInt32()
        var buffer: ArrayList<NavPathInfo> = ArrayList<NavPathInfo>(Int64(bufferLength))
        buffer = ArrayList<NavPathInfo>(Int64(bufferLength))
        for (bufferBufCounterI in 0..bufferLength) {
            buffer[Int64(bufferBufCounterI)] = match (NavPathInfo_serializer.read(retvalDeserializer) as NavPathInfo) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: ArrayList<NavPathInfo> = buffer
        return returnResult
    }
    private func setPathStack_serialize(pathStack: ArrayList<NavPathInfo>, animated: Option<Bool>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(pathStack.size));
        for (pathStackCounterI in 0..pathStack.size) {
            let pathStackTmpElement: NavPathInfo = pathStack[Int64(pathStackCounterI)]
            NavPathInfo_serializer.write(thisSerializer, pathStackTmpElement);
        }
        if (animated.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let animatedTmpValue = animated
            thisSerializer.writeBoolean(animatedTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._NavPathStack_setPathStack(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class NavPathStack_serializer {
    public static func write(buffer: SerializerBase, value: NavPathStack): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): NavPathStack {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return NavPathStackInternal.fromPtr(ptr)
    }
}
