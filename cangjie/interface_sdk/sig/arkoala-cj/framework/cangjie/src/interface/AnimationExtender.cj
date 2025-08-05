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
public open class AnimationExtender {
    static private func SetClipRect_serialize(node: UInt64, x: Float32, y: Float32, width: Float32, height: Float32): Unit {
        ArkUIGeneratedNativeModule._AnimationExtender_SetClipRect(node, x, y, width, height);
    }
    static private func OpenImplicitAnimation_serialize(param: AnimateParam): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AnimateParam_serializer.write(thisSerializer, param);
        ArkUIGeneratedNativeModule._AnimationExtender_OpenImplicitAnimation(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func CloseImplicitAnimation_serialize(): Unit {
        ArkUIGeneratedNativeModule._AnimationExtender_CloseImplicitAnimation();
    }
    static private func StartDoubleAnimation_serialize(node: UInt64, param: DoubleAnimationParam): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        DoubleAnimationParam_serializer.write(thisSerializer, param);
        ArkUIGeneratedNativeModule._AnimationExtender_StartDoubleAnimation(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static private func AnimationTranslate_serialize(node: UInt64, options: TranslateOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TranslateOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._AnimationExtender_AnimationTranslate(node, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    static public func SetClipRect(node: UInt64, x: Float32, y: Float32, width: Float32, height: Float32): Unit {
        let node_casted: UInt64 = node
        let x_casted: Float32 = x
        let y_casted: Float32 = y
        let width_casted: Float32 = width
        let height_casted: Float32 = height
        AnimationExtender.SetClipRect_serialize(node_casted, x_casted, y_casted, width_casted, height_casted)
        return
    }
    static public func OpenImplicitAnimation(param: AnimateParam): Unit {
        let param_casted: AnimateParam = param
        AnimationExtender.OpenImplicitAnimation_serialize(param_casted)
        return
    }
    static public func CloseImplicitAnimation(): Unit {
        AnimationExtender.CloseImplicitAnimation_serialize()
        return
    }
    static public func StartDoubleAnimation(node: UInt64, param: DoubleAnimationParam): Unit {
        let node_casted: UInt64 = node
        let param_casted: DoubleAnimationParam = param
        AnimationExtender.StartDoubleAnimation_serialize(node_casted, param_casted)
        return
    }
    static public func AnimationTranslate(node: UInt64, options: TranslateOptions): Unit {
        let node_casted: UInt64 = node
        let options_casted: TranslateOptions = options
        AnimationExtender.AnimationTranslate_serialize(node_casted, options_casted)
        return
    }
}
