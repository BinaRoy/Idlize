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
public interface SceneOptionsInterfaces <:  {
    public mut open prop scene: Option<Union_ResourceStr_Scene>
    public mut open prop modelType: Option<ModelType>
}
public open class SceneOptions <: SceneOptionsInterfaces {
    private var scene_container: Option<Union_ResourceStr_Scene>
    public mut open prop scene: Option<Union_ResourceStr_Scene>
    {
        get() {
            return scene_container
        }
        set(scene) {
            scene_container = scene
        }
    }
    private var modelType_container: Option<ModelType>
    public mut open prop modelType: Option<ModelType>
    {
        get() {
            return modelType_container
        }
        set(modelType) {
            modelType_container = modelType
        }
    }
    SceneOptions(scene: Option<Union_ResourceStr_Scene>, modelType: Option<ModelType>) {
        this.scene_container = scene
        this.modelType_container = modelType
    }
}
public open class SceneOptions_serializer {
    public static func write(buffer: SerializerBase, value: SceneOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForScene = value.scene
        if (valueHolderForScene.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSceneTmpValue = valueHolderForScene
            if (valueHolderForSceneTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSceneTmpValueForIdx0 = valueHolderForSceneTmpValue.getValue0()
                if (valueHolderForSceneTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForSceneTmpValueForIdx0ForIdx0 = valueHolderForSceneTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForSceneTmpValueForIdx0ForIdx0);
                } else if (valueHolderForSceneTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForSceneTmpValueForIdx0ForIdx1 = valueHolderForSceneTmpValueForIdx0.getValue1()
                    valueSerializer.writeCustomObject("Any", valueHolderForSceneTmpValueForIdx0ForIdx1);
                }
            } else if (valueHolderForSceneTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSceneTmpValueForIdx1 = valueHolderForSceneTmpValue.getValue1()
                valueSerializer.writeCustomObject("Any", valueHolderForSceneTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForModelType = value.modelType
        if (valueHolderForModelType.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModelTypeTmpValue = valueHolderForModelType
            valueSerializer.writeInt32(valueHolderForModelTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SceneOptions {
        var valueDeserializer: DeserializerBase = buffer
        let sceneTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sceneTmpBuf: Option<Union_ResourceStr_Scene> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sceneTmpBuf_runtimeType))) {
            let sceneTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var sceneTmpBuf_: Union_ResourceStr_Scene 
            if (sceneTmpBuf_UnionSelector == Int8(0)) {
                let sceneTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var sceneTmpBuf_BufU: ResourceStr 
                if (sceneTmpBuf_BufUUnionSelector == Int8(0)) {
                    sceneTmpBuf_BufU = ResourceStr(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (sceneTmpBuf_BufUUnionSelector == Int8(1)) {
                    sceneTmpBuf_BufU = ResourceStr(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for sceneTmpBuf_BufU has to be chosen through deserialisation.")
                }
                sceneTmpBuf_ = Union_ResourceStr_Scene(match (sceneTmpBuf_BufU as ResourceStr) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (sceneTmpBuf_UnionSelector == Int8(1)) {
                sceneTmpBuf_ = Union_ResourceStr_Scene(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for sceneTmpBuf_ has to be chosen through deserialisation.")
            }
            sceneTmpBuf = match (sceneTmpBuf_ as Union_ResourceStr_Scene) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let sceneTmpResult: Option<Union_ResourceStr_Scene> = sceneTmpBuf
        let modelTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modelTypeTmpBuf: Option<ModelType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modelTypeTmpBuf_runtimeType))) {
            modelTypeTmpBuf = ModelType(valueDeserializer.readInt32())
        }
        let modelTypeTmpResult: Option<ModelType> = modelTypeTmpBuf
        var value: SceneOptions = SceneOptions(sceneTmpResult, modelTypeTmpResult)
        return value
    }
}
