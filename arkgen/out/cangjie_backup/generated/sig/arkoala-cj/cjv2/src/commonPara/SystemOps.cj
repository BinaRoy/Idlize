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

public class SystemOps {
    private  static func StartFrame_serialize(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._SystemOps_StartFrame()
        return retval
    }
    private  static func EndFrame_serialize(root: UInt64): Unit {
        ArkUIGeneratedNativeModule._SystemOps_EndFrame(root)
    }
    private  static func syncInstanceId_serialize(instanceId: Int32): Unit {
        ArkUIGeneratedNativeModule._SystemOps_syncInstanceId(instanceId)
    }
    private  static func restoreInstanceId_serialize(): Unit {
        ArkUIGeneratedNativeModule._SystemOps_restoreInstanceId()
    }
    private  static func getResourceId_serialize(bundleName: String, moduleName: String, params: ArrayList<String>): Int32 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(params.size))
        for (paramsCounterI in 0..params.size) {
            let paramsTmpElement: String = params[Int64(paramsCounterI)]
            thisSerializer.writeString(paramsTmpElement)
        }
        let retval = ArkUIGeneratedNativeModule._SystemOps_getResourceId(bundleName, moduleName, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func resourceManagerReset_serialize(): Unit {
        ArkUIGeneratedNativeModule._SystemOps_resourceManagerReset()
    }
    private  static func setFrameCallback_serialize(onFrameCallback: ((select: Float64) -> Unit), onIdleCallback: ((select: Float64) -> Unit), delayTime: Float64): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(onFrameCallback)
        thisSerializer.holdAndWriteCallback(onIdleCallback)
        ArkUIGeneratedNativeModule._SystemOps_setFrameCallback(thisSerializer.asBuffer(), thisSerializer.length(), delayTime)
        thisSerializer.release()
    }
    private  static func colorMetricsResourceColor_serialize(color: Resource): ArrayList<Float64> {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        Resource_serializer.write(thisSerializer, color)
        let retval = ArkUIGeneratedNativeModule._SystemOps_colorMetricsResourceColor(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
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
    public  static func StartFrame(): UInt64 {
        return SystemOps.StartFrame_serialize()
    }
    public  static func EndFrame(root: UInt64): Unit {
        let root_casted: UInt64 = root
        SystemOps.EndFrame_serialize(root_casted)
        return
    }
    public  static func syncInstanceId(instanceId: Int32): Unit {
        let instanceId_casted: Int32 = instanceId
        SystemOps.syncInstanceId_serialize(instanceId_casted)
        return
    }
    public  static func restoreInstanceId(): Unit {
        SystemOps.restoreInstanceId_serialize()
        return
    }
    public  static func getResourceId(bundleName: String, moduleName: String, params: ArrayList<String>): Int32 {
        let bundleName_casted: String = bundleName
        let moduleName_casted: String = moduleName
        let params_casted: ArrayList<String> = params
        return SystemOps.getResourceId_serialize(bundleName_casted, moduleName_casted, params_casted)
    }
    public  static func resourceManagerReset(): Unit {
        SystemOps.resourceManagerReset_serialize()
        return
    }
    public  static func setFrameCallback(onFrameCallback: ((select: Float64) -> Unit), onIdleCallback: ((select: Float64) -> Unit), delayTime: Float64): Unit {
        let onFrameCallback_casted: ((select: Float64) -> Unit) = onFrameCallback
        let onIdleCallback_casted: ((select: Float64) -> Unit) = onIdleCallback
        let delayTime_casted: Float64 = delayTime
        SystemOps.setFrameCallback_serialize(onFrameCallback_casted, onIdleCallback_casted, delayTime_casted)
        return
    }
    public  static func colorMetricsResourceColor(color: Resource): ArrayList<Float64> {
        let color_casted: Resource = color
        return SystemOps.colorMetricsResourceColor_serialize(color_casted)
    }
}
