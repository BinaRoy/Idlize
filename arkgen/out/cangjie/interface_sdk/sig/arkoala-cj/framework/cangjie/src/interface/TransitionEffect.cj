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
public open class TransitionEffectInternal {
    public static func fromPtr(ptr: UInt64): TransitionEffect {
        return TransitionEffect(false, false, ptr)
    }
}
public open class TransitionEffect <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public static prop IDENTITY: TransitionEffect = TransitionEffect.getIDENTITY()
    public static prop OPACITY: TransitionEffect = TransitionEffect.getOPACITY()
    public static prop SLIDE: TransitionEffect = TransitionEffect.getSLIDE()
    public static prop SLIDE_SWITCH: TransitionEffect = TransitionEffect.getSLIDE_SWITCH()
    TransitionEffect(_0: Bool, _1: Bool, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TransitionEffect.getFinalizer())
    }
    TransitionEffect(type_: String, effect: TransitionEffects) {
        super(false, false, TransitionEffect.construct(type, effect))
    }
    static func construct(type_: String, effect: TransitionEffects): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let effectIdentity = effect.identity
        let effectOpacity = effect.opacity
        thisSerializer.writeNumber(effectOpacity);
        let effectSlideSwitch = effect.slideSwitch
        let effectMove = effect.move
        thisSerializer.writeInt32(effectMove.value);
        let effectTranslate = effect.translate
        TranslateOptions_serializer.write(thisSerializer, effectTranslate);
        let effectRotate = effect.rotate
        RotateOptions_serializer.write(thisSerializer, effectRotate);
        let effectScale = effect.scale
        ScaleOptions_serializer.write(thisSerializer, effectScale);
        let effectAsymmetric = effect.asymmetric
        let effectAsymmetricAppear = effectAsymmetric.appear
        TransitionEffect_serializer.write(thisSerializer, effectAsymmetricAppear);
        let effectAsymmetricDisappear = effectAsymmetric.disappear
        TransitionEffect_serializer.write(thisSerializer, effectAsymmetricDisappear);
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_construct(type_, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TransitionEffect_getFinalizer()
    }
    static private func translate_serialize(options: TranslateOptions): TransitionEffect {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TranslateOptions_serializer.write(thisSerializer, options);
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_translate(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    static private func rotate_serialize(options: RotateOptions): TransitionEffect {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        RotateOptions_serializer.write(thisSerializer, options);
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_rotate(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    static private func scale_serialize(options: ScaleOptions): TransitionEffect {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ScaleOptions_serializer.write(thisSerializer, options);
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_scale(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    static private func opacity_serialize(alpha: Float64): TransitionEffect {
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_opacity(alpha)
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    static private func move_serialize(edge: TransitionEdge): TransitionEffect {
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_move(edge.value)
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    static private func asymmetric_serialize(appear: TransitionEffect, disappear: TransitionEffect): TransitionEffect {
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_asymmetric(MaterializedBase.toPeerPtr(appear), MaterializedBase.toPeerPtr(disappear))
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    private static func getIDENTITY_serialize(): TransitionEffect {
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_getIDENTITY()
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    private static func getOPACITY_serialize(): TransitionEffect {
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_getOPACITY()
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    private static func getSLIDE_serialize(): TransitionEffect {
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_getSLIDE()
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    private static func getSLIDE_SWITCH_serialize(): TransitionEffect {
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_getSLIDE_SWITCH()
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    static public func translate(options: TranslateOptions): TransitionEffect {
        let options_casted: TranslateOptions = options
        return TransitionEffect.translate_serialize(options_casted)
    }
    static public func rotate(options: RotateOptions): TransitionEffect {
        let options_casted: RotateOptions = options
        return TransitionEffect.rotate_serialize(options_casted)
    }
    static public func scale(options: ScaleOptions): TransitionEffect {
        let options_casted: ScaleOptions = options
        return TransitionEffect.scale_serialize(options_casted)
    }
    static public func opacity(alpha: Float64): TransitionEffect {
        let alpha_casted: Float64 = alpha
        return TransitionEffect.opacity_serialize(alpha_casted)
    }
    static public func move(edge: TransitionEdge): TransitionEffect {
        let edge_casted: TransitionEdge = edge
        return TransitionEffect.move_serialize(edge_casted)
    }
    static public func asymmetric(appear: TransitionEffect, disappear: TransitionEffect): TransitionEffect {
        let appear_casted: TransitionEffect = appear
        let disappear_casted: TransitionEffect = disappear
        return TransitionEffect.asymmetric_serialize(appear_casted, disappear_casted)
    }
    public open func animation(value: AnimateParam): TransitionEffect {
        let value_casted: AnimateParam = value
        return this.animation_serialize(value_casted)
    }
    public open func combine(transitionEffect: TransitionEffect): TransitionEffect {
        let transitionEffect_casted: TransitionEffect = transitionEffect
        return this.combine_serialize(transitionEffect_casted)
    }
    private static func getIDENTITY(): TransitionEffect {
        return TransitionEffect.getIDENTITY_serialize()
    }
    private static func getOPACITY(): TransitionEffect {
        return TransitionEffect.getOPACITY_serialize()
    }
    private static func getSLIDE(): TransitionEffect {
        return TransitionEffect.getSLIDE_serialize()
    }
    private static func getSLIDE_SWITCH(): TransitionEffect {
        return TransitionEffect.getSLIDE_SWITCH_serialize()
    }
    private func animation_serialize(value: AnimateParam): TransitionEffect {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        AnimateParam_serializer.write(thisSerializer, value);
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_animation(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
    private func combine_serialize(transitionEffect: TransitionEffect): TransitionEffect {
        let retval = ArkUIGeneratedNativeModule._TransitionEffect_combine(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(transitionEffect))
        let obj: TransitionEffect = TransitionEffectInternal.fromPtr(retval)
        return obj
    }
}
public open class TransitionEffect_serializer {
    public static func write(buffer: SerializerBase, value: TransitionEffect): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TransitionEffect {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TransitionEffectInternal.fromPtr(ptr)
    }
}
