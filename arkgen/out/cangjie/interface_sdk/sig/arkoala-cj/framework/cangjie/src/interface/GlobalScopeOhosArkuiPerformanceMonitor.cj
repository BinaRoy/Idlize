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
public open class GlobalScope_ohos_arkui_performanceMonitor {
    static private func begin_serialize(scene: String, startInputType: PerfMonitorActionType, note: Option<String>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (note.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let noteTmpValue = note
            thisSerializer.writeString(noteTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._GlobalScope_ohos_arkui_performanceMonitor_begin(scene, startInputType.value, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func end_serialize(scene: String): Unit {
        ArkUIGeneratedNativeModule._GlobalScope_ohos_arkui_performanceMonitor_end(scene);
    }
    static private func recordInputEventTime_serialize(actionType: PerfMonitorActionType, sourceType: PerfMonitorSourceType, time: Int64): Unit {
        ArkUIGeneratedNativeModule._GlobalScope_ohos_arkui_performanceMonitor_recordInputEventTime(actionType.value, sourceType.value, time);
    }
    static public func begin(scene: String, startInputType: PerfMonitorActionType, note: Option<String>): Unit {
        let scene_casted: String = scene
        let startInputType_casted: PerfMonitorActionType = startInputType
        let note_casted: Option<String> = if (let Some(note) <- note) {note} else { throw Exception("Type has to be not None")}
        GlobalScope_ohos_arkui_performanceMonitor.begin_serialize(scene_casted, startInputType_casted, note_casted)
        return
    }
    static public func end(scene: String): Unit {
        let scene_casted: String = scene
        GlobalScope_ohos_arkui_performanceMonitor.end_serialize(scene_casted)
        return
    }
    static public func recordInputEventTime(actionType: PerfMonitorActionType, sourceType: PerfMonitorSourceType, time: Int64): Unit {
        let actionType_casted: PerfMonitorActionType = actionType
        let sourceType_casted: PerfMonitorSourceType = sourceType
        let time_casted: Int64 = time
        GlobalScope_ohos_arkui_performanceMonitor.recordInputEventTime_serialize(actionType_casted, sourceType_casted, time_casted)
        return
    }
}
