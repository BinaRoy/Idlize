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
public interface NavigationOptionsInterfaces <:  {
    public mut open prop launchMode: Option<LaunchMode>
    public mut open prop animated: Option<Bool>
}
public open class NavigationOptions <: NavigationOptionsInterfaces {
    private var launchMode_container: Option<LaunchMode>
    public mut open prop launchMode: Option<LaunchMode>
    {
        get() {
            return launchMode_container
        }
        set(launchMode) {
            launchMode_container = launchMode
        }
    }
    private var animated_container: Option<Bool>
    public mut open prop animated: Option<Bool>
    {
        get() {
            return animated_container
        }
        set(animated) {
            animated_container = animated
        }
    }
    NavigationOptions(launchMode: Option<LaunchMode>, animated: Option<Bool>) {
        this.launchMode_container = launchMode
        this.animated_container = animated
    }
}
public open class NavigationOptions_serializer {
    public static func write(buffer: SerializerBase, value: NavigationOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForLaunchMode = value.launchMode
        if (valueHolderForLaunchMode.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForLaunchModeTmpValue = valueHolderForLaunchMode
            valueSerializer.writeInt32(valueHolderForLaunchModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAnimated = value.animated
        if (valueHolderForAnimated.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAnimatedTmpValue = valueHolderForAnimated
            valueSerializer.writeBoolean(valueHolderForAnimatedTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NavigationOptions {
        var valueDeserializer: DeserializerBase = buffer
        let launchModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var launchModeTmpBuf: Option<LaunchMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(launchModeTmpBuf_runtimeType))) {
            launchModeTmpBuf = LaunchMode(valueDeserializer.readInt32())
        }
        let launchModeTmpResult: Option<LaunchMode> = launchModeTmpBuf
        let animatedTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var animatedTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(animatedTmpBuf_runtimeType))) {
            animatedTmpBuf = valueDeserializer.readBoolean()
        }
        let animatedTmpResult: Option<Bool> = animatedTmpBuf
        var value: NavigationOptions = NavigationOptions(launchModeTmpResult, animatedTmpResult)
        return value
    }
}
