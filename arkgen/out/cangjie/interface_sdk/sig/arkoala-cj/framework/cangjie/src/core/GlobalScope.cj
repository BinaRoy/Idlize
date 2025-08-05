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
public func getRectangleById(id: String): ComponentInfo {
    return GlobalScope.getRectangleById(id)
}
public func getContext(component: Option<Any>): Context {
    return GlobalScope.getContext(component)
}
public func postCardAction(component: Any, action: Any): Unit {
    GlobalScope.postCardAction(component, action);
}
public func dollar_r(value: String, params: ArrayList<Any>): Resource {
    return GlobalScope.dollar_r(value, params)
}
public func dollar_rawfile(value: String): Resource {
    return GlobalScope.dollar_rawfile(value)
}
public func animateTo(value: AnimateParam, event: (() -> Unit)): Unit {
    GlobalScope.animateTo(value, event);
}
public func animateToImmediately(value: AnimateParam, event: (() -> Unit)): Unit {
    GlobalScope.animateToImmediately(value, event);
}
public func vp2px(value: Float64): Float64 {
    return GlobalScope.vp2px(value)
}
public func px2vp(value: Float64): Float64 {
    return GlobalScope.px2vp(value)
}
public func fp2px(value: Float64): Float64 {
    return GlobalScope.fp2px(value)
}
public func px2fp(value: Float64): Float64 {
    return GlobalScope.px2fp(value)
}
public func lpx2px(value: Float64): Float64 {
    return GlobalScope.lpx2px(value)
}
public func px2lpx(value: Float64): Float64 {
    return GlobalScope.px2lpx(value)
}
public func getInspectorNodes(): Any {
    return GlobalScope.getInspectorNodes()
}
public func getInspectorNodeById(id: Float64): Any {
    return GlobalScope.getInspectorNodeById(id)
}
public func setAppBgColor(value: String): Unit {
    GlobalScope.setAppBgColor(value);
}
public open class GlobalScope {
    public static func getRectangleById(id: String): ComponentInfo {
        let id_casted: String = id
        return GlobalScope.getRectangleById_serialize(id_casted)
    }
    static func getRectangleById_serialize(id: String): ComponentInfo {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_getRectangleById(id)
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: ComponentInfo = ComponentInfo_serializer.read(retvalDeserializer)
        return returnResult
    }
    public static func getContext(component: Option<Any>): Context {
        let component_casted: Option<Any> = if (let Some(component) <- component) {component} else { throw Exception("Type has to be not None")}
        return GlobalScope.getContext_serialize(component_casted)
    }
    static func getContext_serialize(component: Option<Any>): Context {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (component.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let componentTmpValue = component
            thisSerializer.holdAndWriteObject(componentTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._GlobalScope_getContext(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        throw Exception("Object deserialization is not implemented.")
    }
    public static func postCardAction(component: Any, action: Any): Unit {
        let component_casted: Any = component
        let action_casted: Any = action
        GlobalScope.postCardAction_serialize(component_casted, action_casted)
        return
    }
    static func postCardAction_serialize(component: Any, action: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteObject(component);
        thisSerializer.holdAndWriteObject(action);
        ArkUIGeneratedNativeModule._GlobalScope_postCardAction(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public static func dollar_r(value: String, params: ArrayList<Any>): Resource {
        let value_casted: String = value
        let params_casted: ArrayList<Any> = params
        return GlobalScope.dollar_r_serialize(value_casted, params_casted)
    }
    static func dollar_r_serialize(value: String, params: ArrayList<Any>): Resource {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(params.size));
        for (paramsCounterI in 0..params.size) {
            let paramsTmpElement: Any = params[Int64(paramsCounterI)]
            thisSerializer.holdAndWriteObject(paramsTmpElement);
        }
        let retval = ArkUIGeneratedNativeModule._GlobalScope_dollar_r(value, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        throw Exception("Object deserialization is not implemented.")
    }
    public static func dollar_rawfile(value: String): Resource {
        let value_casted: String = value
        return GlobalScope.dollar_rawfile_serialize(value_casted)
    }
    static func dollar_rawfile_serialize(value: String): Resource {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_dollar_rawfile(value)
        throw Exception("Object deserialization is not implemented.")
    }
    public static func animateTo(value: AnimateParam, event: (() -> Unit)): Unit {
        let value_casted: AnimateParam = value
        let event_casted: (() -> Unit) = event
        GlobalScope.animateTo_serialize(value_casted, event_casted)
        return
    }
    static func animateTo_serialize(value: AnimateParam, event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AnimateParam_serializer.write(thisSerializer, value);
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._GlobalScope_animateTo(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public static func animateToImmediately(value: AnimateParam, event: (() -> Unit)): Unit {
        let value_casted: AnimateParam = value
        let event_casted: (() -> Unit) = event
        GlobalScope.animateToImmediately_serialize(value_casted, event_casted)
        return
    }
    static func animateToImmediately_serialize(value: AnimateParam, event: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AnimateParam_serializer.write(thisSerializer, value);
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._GlobalScope_animateToImmediately(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public static func vp2px(value: Float64): Float64 {
        let value_casted: Float64 = value
        return GlobalScope.vp2px_serialize(value_casted)
    }
    static func vp2px_serialize(value: Float64): Float64 {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_vp2px(value)
        return retval
    }
    public static func px2vp(value: Float64): Float64 {
        let value_casted: Float64 = value
        return GlobalScope.px2vp_serialize(value_casted)
    }
    static func px2vp_serialize(value: Float64): Float64 {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_px2vp(value)
        return retval
    }
    public static func fp2px(value: Float64): Float64 {
        let value_casted: Float64 = value
        return GlobalScope.fp2px_serialize(value_casted)
    }
    static func fp2px_serialize(value: Float64): Float64 {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_fp2px(value)
        return retval
    }
    public static func px2fp(value: Float64): Float64 {
        let value_casted: Float64 = value
        return GlobalScope.px2fp_serialize(value_casted)
    }
    static func px2fp_serialize(value: Float64): Float64 {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_px2fp(value)
        return retval
    }
    public static func lpx2px(value: Float64): Float64 {
        let value_casted: Float64 = value
        return GlobalScope.lpx2px_serialize(value_casted)
    }
    static func lpx2px_serialize(value: Float64): Float64 {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_lpx2px(value)
        return retval
    }
    public static func px2lpx(value: Float64): Float64 {
        let value_casted: Float64 = value
        return GlobalScope.px2lpx_serialize(value_casted)
    }
    static func px2lpx_serialize(value: Float64): Float64 {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_px2lpx(value)
        return retval
    }
    public static func getInspectorNodes(): Any {
        return GlobalScope.getInspectorNodes_serialize()
    }
    static func getInspectorNodes_serialize(): Any {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_getInspectorNodes()
        return retval
    }
    public static func getInspectorNodeById(id: Float64): Any {
        let id_casted: Float64 = id
        return GlobalScope.getInspectorNodeById_serialize(id_casted)
    }
    static func getInspectorNodeById_serialize(id: Float64): Any {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_getInspectorNodeById(id)
        return retval
    }
    public static func setAppBgColor(value: String): Unit {
        let value_casted: String = value
        GlobalScope.setAppBgColor_serialize(value_casted)
        return
    }
    static func setAppBgColor_serialize(value: String): Unit {
        ArkUIGeneratedNativeModule._GlobalScope_setAppBgColor(value);
    }
    public static func Profiler_registerVsyncCallback(callback_: ((info: String) -> Unit)): Unit {
        let callback__casted: ((info: String) -> Unit) = callback_
        GlobalScope.Profiler_registerVsyncCallback_serialize(callback__casted)
        return
    }
    static func Profiler_registerVsyncCallback_serialize(callback_: ((info: String) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._GlobalScope_Profiler_registerVsyncCallback(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public static func Profiler_unregisterVsyncCallback(): Unit {
        GlobalScope.Profiler_unregisterVsyncCallback_serialize()
        return
    }
    static func Profiler_unregisterVsyncCallback_serialize(): Unit {
        ArkUIGeneratedNativeModule._GlobalScope_Profiler_unregisterVsyncCallback();
    }
    public static func cursorControl_setCursor(value: PointerStyle): Unit {
        let value_casted: PointerStyle = value
        GlobalScope.cursorControl_setCursor_serialize(value_casted)
        return
    }
    static func cursorControl_setCursor_serialize(value: PointerStyle): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", value);
        ArkUIGeneratedNativeModule._GlobalScope_cursorControl_setCursor(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public static func cursorControl_restoreDefault(): Unit {
        GlobalScope.cursorControl_restoreDefault_serialize()
        return
    }
    static func cursorControl_restoreDefault_serialize(): Unit {
        ArkUIGeneratedNativeModule._GlobalScope_cursorControl_restoreDefault();
    }
    public static func focusControl_requestFocus(value: String): Bool {
        let value_casted: String = value
        return GlobalScope.focusControl_requestFocus_serialize(value_casted)
    }
    static func focusControl_requestFocus_serialize(value: String): Bool {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_focusControl_requestFocus(value)
        return retval
    }
}
public func setCursor(value: PointerStyle): Unit {
    GlobalScope.cursorControl_setCursor(value);
}
public func restoreDefault(): Unit {
    GlobalScope.cursorControl_restoreDefault();
}
public func requestFocus(value: String): Bool {
    return GlobalScope.focusControl_requestFocus(value)
}
public func registerVsyncCallback(callback_: ((info: String) -> Unit)): Unit {
    GlobalScope.Profiler_registerVsyncCallback(callback_);
}
public func unregisterVsyncCallback(): Unit {
    GlobalScope.Profiler_unregisterVsyncCallback();
}
