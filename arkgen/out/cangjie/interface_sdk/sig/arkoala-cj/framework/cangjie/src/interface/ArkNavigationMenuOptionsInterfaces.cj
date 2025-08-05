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
public interface NavigationMenuOptionsInterfaces <:  {
    public mut open prop moreButtonOptions: Option<MoreButtonOptions>
}
public open class NavigationMenuOptions <: NavigationMenuOptionsInterfaces {
    private var moreButtonOptions_container: Option<MoreButtonOptions>
    public mut open prop moreButtonOptions: Option<MoreButtonOptions>
    {
        get() {
            return moreButtonOptions_container
        }
        set(moreButtonOptions) {
            moreButtonOptions_container = moreButtonOptions
        }
    }
    NavigationMenuOptions(moreButtonOptions: Option<MoreButtonOptions>) {
        this.moreButtonOptions_container = moreButtonOptions
    }
}
public open class NavigationMenuOptions_serializer {
    public static func write(buffer: SerializerBase, value: NavigationMenuOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMoreButtonOptions = value.moreButtonOptions
        if (valueHolderForMoreButtonOptions.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMoreButtonOptionsTmpValue = valueHolderForMoreButtonOptions
            MoreButtonOptions_serializer.write(valueSerializer, valueHolderForMoreButtonOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): NavigationMenuOptions {
        var valueDeserializer: DeserializerBase = buffer
        let moreButtonOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var moreButtonOptionsTmpBuf: Option<MoreButtonOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(moreButtonOptionsTmpBuf_runtimeType))) {
            moreButtonOptionsTmpBuf = MoreButtonOptions_serializer.read(valueDeserializer)
        }
        let moreButtonOptionsTmpResult: Option<MoreButtonOptions> = moreButtonOptionsTmpBuf
        var value: NavigationMenuOptions = NavigationMenuOptions(moreButtonOptionsTmpResult)
        return value
    }
}
