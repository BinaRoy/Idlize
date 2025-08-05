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
public interface NavigationInterceptionInterfaces <:  {
    public mut open prop willShow: Option<InterceptionShowCallback>
    public mut open prop didShow: Option<InterceptionShowCallback>
    public mut open prop modeChange: Option<InterceptionModeCallback>
}
public open class NavigationInterception <: NavigationInterceptionInterfaces {
    private var willShow_container: Option<InterceptionShowCallback>
    public mut open prop willShow: Option<InterceptionShowCallback>
    {
        get() {
            return willShow_container
        }
        set(willShow) {
            willShow_container = willShow
        }
    }
    private var didShow_container: Option<InterceptionShowCallback>
    public mut open prop didShow: Option<InterceptionShowCallback>
    {
        get() {
            return didShow_container
        }
        set(didShow) {
            didShow_container = didShow
        }
    }
    private var modeChange_container: Option<InterceptionModeCallback>
    public mut open prop modeChange: Option<InterceptionModeCallback>
    {
        get() {
            return modeChange_container
        }
        set(modeChange) {
            modeChange_container = modeChange
        }
    }
    NavigationInterception(willShow: Option<InterceptionShowCallback>, didShow: Option<InterceptionShowCallback>, modeChange: Option<InterceptionModeCallback>) {
        this.willShow_container = willShow
        this.didShow_container = didShow
        this.modeChange_container = modeChange
    }
}
public open class NavigationInterception_serializer {
    public static func write(buffer: SerializerBase, value: NavigationInterception): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWillShow = value.willShow
        if (valueHolderForWillShow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWillShowTmpValue = valueHolderForWillShow
            valueSerializer.holdAndWriteCallback(valueHolderForWillShowTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDidShow = value.didShow
        if (valueHolderForDidShow.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDidShowTmpValue = valueHolderForDidShow
            valueSerializer.holdAndWriteCallback(valueHolderForDidShowTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForModeChange = value.modeChange
        if (valueHolderForModeChange.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModeChangeTmpValue = valueHolderForModeChange
            valueSerializer.holdAndWriteCallback(valueHolderForModeChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NavigationInterception {
        var valueDeserializer: DeserializerBase = buffer
        let willShowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var willShowTmpBuf: Option<InterceptionShowCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(willShowTmpBuf_runtimeType))) {
            let willShowTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let willShowTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let willShowTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            willShowTmpBuf = {from_: Union_NavDestinationContext_NavBar, to: Union_NavDestinationContext_NavBar, operation: NavigationOperation, isAnimated: Bool => let willShowTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
willShowTmpBuf_BufArgsSerializer.writeInt32(willShowTmpBuf_BufResource.resourceId);
willShowTmpBuf_BufArgsSerializer.writePointer(willShowTmpBuf_BufCall);
willShowTmpBuf_BufArgsSerializer.writePointer(willShowTmpBuf_BufCallSync);
if (from_.getSelector() == 0) {
    willShowTmpBuf_BufArgsSerializer.writeInt8(Int8(0));
    let from_ForIdx0 = from_.getValue0();
    NavDestinationContext_serializer.write(willShowTmpBuf_BufArgsSerializer, from_ForIdx0);
} else if (from_.getSelector() == 1) {
    willShowTmpBuf_BufArgsSerializer.writeInt8(Int8(1));
    let from_ForIdx1 = from_.getValue1();
    willShowTmpBuf_BufArgsSerializer.writeString(from_ForIdx1);
}
if (to.getSelector() == 0) {
    willShowTmpBuf_BufArgsSerializer.writeInt8(Int8(0));
    let toForIdx0 = to.getValue0();
    NavDestinationContext_serializer.write(willShowTmpBuf_BufArgsSerializer, toForIdx0);
} else if (to.getSelector() == 1) {
    willShowTmpBuf_BufArgsSerializer.writeInt8(Int8(1));
    let toForIdx1 = to.getValue1();
    willShowTmpBuf_BufArgsSerializer.writeString(toForIdx1);
}
willShowTmpBuf_BufArgsSerializer.writeInt32(operation.value);
willShowTmpBuf_BufArgsSerializer.writeBoolean(isAnimated);
InteropNativeModule._CallCallback(1852781814, willShowTmpBuf_BufArgsSerializer.asBuffer(), willShowTmpBuf_BufArgsSerializer.length());
willShowTmpBuf_BufArgsSerializer.release();
return; }
        }
        let willShowTmpResult: Option<InterceptionShowCallback> = willShowTmpBuf
        let didShowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var didShowTmpBuf: Option<InterceptionShowCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(didShowTmpBuf_runtimeType))) {
            let didShowTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let didShowTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let didShowTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            didShowTmpBuf = {from_: Union_NavDestinationContext_NavBar, to: Union_NavDestinationContext_NavBar, operation: NavigationOperation, isAnimated: Bool => let didShowTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
didShowTmpBuf_BufArgsSerializer.writeInt32(didShowTmpBuf_BufResource.resourceId);
didShowTmpBuf_BufArgsSerializer.writePointer(didShowTmpBuf_BufCall);
didShowTmpBuf_BufArgsSerializer.writePointer(didShowTmpBuf_BufCallSync);
if (from_.getSelector() == 0) {
    didShowTmpBuf_BufArgsSerializer.writeInt8(Int8(0));
    let from_ForIdx0 = from_.getValue0();
    NavDestinationContext_serializer.write(didShowTmpBuf_BufArgsSerializer, from_ForIdx0);
} else if (from_.getSelector() == 1) {
    didShowTmpBuf_BufArgsSerializer.writeInt8(Int8(1));
    let from_ForIdx1 = from_.getValue1();
    didShowTmpBuf_BufArgsSerializer.writeString(from_ForIdx1);
}
if (to.getSelector() == 0) {
    didShowTmpBuf_BufArgsSerializer.writeInt8(Int8(0));
    let toForIdx0 = to.getValue0();
    NavDestinationContext_serializer.write(didShowTmpBuf_BufArgsSerializer, toForIdx0);
} else if (to.getSelector() == 1) {
    didShowTmpBuf_BufArgsSerializer.writeInt8(Int8(1));
    let toForIdx1 = to.getValue1();
    didShowTmpBuf_BufArgsSerializer.writeString(toForIdx1);
}
didShowTmpBuf_BufArgsSerializer.writeInt32(operation.value);
didShowTmpBuf_BufArgsSerializer.writeBoolean(isAnimated);
InteropNativeModule._CallCallback(1852781814, didShowTmpBuf_BufArgsSerializer.asBuffer(), didShowTmpBuf_BufArgsSerializer.length());
didShowTmpBuf_BufArgsSerializer.release();
return; }
        }
        let didShowTmpResult: Option<InterceptionShowCallback> = didShowTmpBuf
        let modeChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeChangeTmpBuf: Option<InterceptionModeCallback> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeChangeTmpBuf_runtimeType))) {
            let modeChangeTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let modeChangeTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let modeChangeTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            modeChangeTmpBuf = {mode: NavigationMode => let modeChangeTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
modeChangeTmpBuf_BufArgsSerializer.writeInt32(modeChangeTmpBuf_BufResource.resourceId);
modeChangeTmpBuf_BufArgsSerializer.writePointer(modeChangeTmpBuf_BufCall);
modeChangeTmpBuf_BufArgsSerializer.writePointer(modeChangeTmpBuf_BufCallSync);
modeChangeTmpBuf_BufArgsSerializer.writeInt32(mode.value);
InteropNativeModule._CallCallback(1502213270, modeChangeTmpBuf_BufArgsSerializer.asBuffer(), modeChangeTmpBuf_BufArgsSerializer.length());
modeChangeTmpBuf_BufArgsSerializer.release();
return; }
        }
        let modeChangeTmpResult: Option<InterceptionModeCallback> = modeChangeTmpBuf
        var value: NavigationInterception = NavigationInterception(willShowTmpResult, didShowTmpResult, modeChangeTmpResult)
        return value
    }
}
