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
public open class GlobalScope_ohos_font {
    static private func registerFont_serialize(options: Any): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeCustomObject("Any", options);
        ArkUIGeneratedNativeModule._GlobalScope_ohos_font_registerFont(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func getSystemFontList_serialize(): ArrayList<String> {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_ohos_font_getSystemFontList()
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
    static private func getFontByName_serialize(fontName: String): Any {
        let retval = ArkUIGeneratedNativeModule._GlobalScope_ohos_font_getFontByName(fontName)
        throw Exception("Object deserialization is not implemented.")
    }
    static public func registerFont(options: Any): Unit {
        let options_casted: Any = options
        GlobalScope_ohos_font.registerFont_serialize(options_casted)
        return
    }
    static public func getSystemFontList(): ArrayList<String> {
        return GlobalScope_ohos_font.getSystemFontList_serialize()
    }
    static public func getFontByName(fontName: String): Any {
        let fontName_casted: String = fontName
        return GlobalScope_ohos_font.getFontByName_serialize(fontName_casted)
    }
}
