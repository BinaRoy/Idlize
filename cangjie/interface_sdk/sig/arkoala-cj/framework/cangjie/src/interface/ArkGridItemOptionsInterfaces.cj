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
public interface GridItemOptionsInterfaces <:  {
    public mut open prop style: Option<GridItemStyle>
}
public open class GridItemOptions <: GridItemOptionsInterfaces {
    private var style_container: Option<GridItemStyle>
    public mut open prop style: Option<GridItemStyle>
    {
        get() {
            return style_container
        }
        set(style) {
            style_container = style
        }
    }
    GridItemOptions(style: Option<GridItemStyle>) {
        this.style_container = style
    }
}
public open class GridItemOptions_serializer {
    public static func write(buffer: SerializerBase, value: GridItemOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStyle = value.style
        if (valueHolderForStyle.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStyleTmpValue = valueHolderForStyle
            valueSerializer.writeInt32(valueHolderForStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GridItemOptions {
        var valueDeserializer: DeserializerBase = buffer
        let styleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var styleTmpBuf: Option<GridItemStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(styleTmpBuf_runtimeType))) {
            styleTmpBuf = GridItemStyle(valueDeserializer.readInt32())
        }
        let styleTmpResult: Option<GridItemStyle> = styleTmpBuf
        var value: GridItemOptions = GridItemOptions(styleTmpResult)
        return value
    }
}
