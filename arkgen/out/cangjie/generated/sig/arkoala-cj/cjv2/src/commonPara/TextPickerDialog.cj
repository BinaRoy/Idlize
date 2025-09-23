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

public class TextPickerDialog {
    private  static func show_serialize(options: Option<TextPickerDialogOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let optionsTmpValue = options
            TextPickerDialogOptions_serializer.write(thisSerializer, optionsTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        ArkUIGeneratedNativeModule._TextPickerDialog_show(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
    }
    public  static func show(options: Option<TextPickerDialogOptions>): Unit {
        let options_casted: Option<TextPickerDialogOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
        TextPickerDialog.show_serialize(options_casted)
        return
    }
}
