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
public interface ScrollPageOptionsInterfaces <:  {
    public mut open prop next: Bool
    public mut open prop animation: Option<Bool>
}
public open class ScrollPageOptions <: ScrollPageOptionsInterfaces {
    private var next_container: Bool
    public mut open prop next: Bool
    {
        get() {
            return next_container
        }
        set(next) {
            next_container = next
        }
    }
    private var animation_container: Option<Bool>
    public mut open prop animation: Option<Bool>
    {
        get() {
            return animation_container
        }
        set(animation) {
            animation_container = animation
        }
    }
    ScrollPageOptions(next: Bool, animation: Option<Bool>) {
        this.next_container = next
        this.animation_container = animation
    }
}
public open class ScrollPageOptions_serializer {
    public static func write(buffer: SerializerBase, value: ScrollPageOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForNext = value.next
        valueSerializer.writeBoolean(valueHolderForNext);
        let valueHolderForAnimation = value.animation
        if (valueHolderForAnimation.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAnimationTmpValue = valueHolderForAnimation
            valueSerializer.writeBoolean(valueHolderForAnimationTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ScrollPageOptions {
        var valueDeserializer: DeserializerBase = buffer
        let nextTmpResult: Bool = valueDeserializer.readBoolean()
        let animationTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var animationTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(animationTmpBuf_runtimeType))) {
            animationTmpBuf = valueDeserializer.readBoolean()
        }
        let animationTmpResult: Option<Bool> = animationTmpBuf
        var value: ScrollPageOptions = ScrollPageOptions(nextTmpResult, animationTmpResult)
        return value
    }
}
