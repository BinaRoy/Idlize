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
public interface ContentCoverOptionsInterfaces <: BindOptionsInterfaces {
    public mut open prop modalTransition: Option<ModalTransition>
    public mut open prop onWillDismiss: Option<((parameter: DismissContentCoverAction) -> Unit)>
    public mut open prop transition: Option<TransitionEffect>
    public mut open prop enableSafeArea: Option<Bool>
}
public open class ContentCoverOptions <: ContentCoverOptionsInterfaces {
    private var modalTransition_container: Option<ModalTransition>
    public mut open prop modalTransition: Option<ModalTransition>
    {
        get() {
            return modalTransition_container
        }
        set(modalTransition) {
            modalTransition_container = modalTransition
        }
    }
    private var onWillDismiss_container: Option<((parameter: DismissContentCoverAction) -> Unit)>
    public mut open prop onWillDismiss: Option<((parameter: DismissContentCoverAction) -> Unit)>
    {
        get() {
            return onWillDismiss_container
        }
        set(onWillDismiss) {
            onWillDismiss_container = onWillDismiss
        }
    }
    private var transition_container: Option<TransitionEffect>
    public mut open prop transition: Option<TransitionEffect>
    {
        get() {
            return transition_container
        }
        set(transition) {
            transition_container = transition
        }
    }
    private var enableSafeArea_container: Option<Bool>
    public mut open prop enableSafeArea: Option<Bool>
    {
        get() {
            return enableSafeArea_container
        }
        set(enableSafeArea) {
            enableSafeArea_container = enableSafeArea
        }
    }
    private var backgroundColor_container: Option<ResourceColor>
    public mut open prop backgroundColor: Option<ResourceColor>
    {
        get() {
            return backgroundColor_container
        }
        set(backgroundColor) {
            backgroundColor_container = backgroundColor
        }
    }
    private var onAppear_container: Option<(() -> Unit)>
    public mut open prop onAppear: Option<(() -> Unit)>
    {
        get() {
            return onAppear_container
        }
        set(onAppear) {
            onAppear_container = onAppear
        }
    }
    private var onDisappear_container: Option<(() -> Unit)>
    public mut open prop onDisappear: Option<(() -> Unit)>
    {
        get() {
            return onDisappear_container
        }
        set(onDisappear) {
            onDisappear_container = onDisappear
        }
    }
    private var onWillAppear_container: Option<(() -> Unit)>
    public mut open prop onWillAppear: Option<(() -> Unit)>
    {
        get() {
            return onWillAppear_container
        }
        set(onWillAppear) {
            onWillAppear_container = onWillAppear
        }
    }
    private var onWillDisappear_container: Option<(() -> Unit)>
    public mut open prop onWillDisappear: Option<(() -> Unit)>
    {
        get() {
            return onWillDisappear_container
        }
        set(onWillDisappear) {
            onWillDisappear_container = onWillDisappear
        }
    }
    ContentCoverOptions(modalTransition: Option<ModalTransition>, onWillDismiss: Option<((parameter: DismissContentCoverAction) -> Unit)>, transition: Option<TransitionEffect>, enableSafeArea: Option<Bool>, backgroundColor: Option<ResourceColor>, onAppear: Option<(() -> Unit)>, onDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>) {
        this.modalTransition_container = modalTransition
        this.onWillDismiss_container = onWillDismiss
        this.transition_container = transition
        this.enableSafeArea_container = enableSafeArea
        this.backgroundColor_container = backgroundColor
        this.onAppear_container = onAppear
        this.onDisappear_container = onDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
    }
}
public open class ContentCoverOptions_serializer {
    public static func write(buffer: SerializerBase, value: ContentCoverOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBackgroundColor = value.backgroundColor
        if (valueHolderForBackgroundColor.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor
            if (valueHolderForBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBackgroundColorTmpValueForIdx0.value);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.getValue3()
                valueSerializer.writeCustomObject("Any", valueHolderForBackgroundColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnAppear = value.onAppear
        if (valueHolderForOnAppear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnAppearTmpValue = valueHolderForOnAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDisappear = value.onDisappear
        if (valueHolderForOnDisappear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDisappearTmpValue = valueHolderForOnDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillAppear = value.onWillAppear
        if (valueHolderForOnWillAppear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillAppearTmpValue = valueHolderForOnWillAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillDisappear = value.onWillDisappear
        if (valueHolderForOnWillDisappear.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillDisappearTmpValue = valueHolderForOnWillDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForModalTransition = value.modalTransition
        if (valueHolderForModalTransition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModalTransitionTmpValue = valueHolderForModalTransition
            valueSerializer.writeInt32(valueHolderForModalTransitionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillDismiss = value.onWillDismiss
        if (valueHolderForOnWillDismiss.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillDismissTmpValue = valueHolderForOnWillDismiss
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillDismissTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTransition = value.transition
        if (valueHolderForTransition.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTransitionTmpValue = valueHolderForTransition
            TransitionEffect_serializer.write(valueSerializer, valueHolderForTransitionTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableSafeArea = value.enableSafeArea
        if (valueHolderForEnableSafeArea.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableSafeAreaTmpValue = valueHolderForEnableSafeArea
            valueSerializer.writeBoolean(valueHolderForEnableSafeAreaTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ContentCoverOptions {
        var valueDeserializer: DeserializerBase = buffer
        let backgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundColorTmpBuf_runtimeType))) {
            let backgroundColorTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundColorTmpBuf_: ResourceColor 
            if (backgroundColorTmpBuf_UnionSelector == Int8(0)) {
                backgroundColorTmpBuf_ = ResourceColor(Color(valueDeserializer.readInt32()))
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(1)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(2)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBuf_UnionSelector == Int8(3)) {
                backgroundColorTmpBuf_ = ResourceColor(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for backgroundColorTmpBuf_ has to be chosen through deserialisation.")
            }
            backgroundColorTmpBuf = match (backgroundColorTmpBuf_ as ResourceColor) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundColorTmpResult: Option<ResourceColor> = backgroundColorTmpBuf
        let onAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onAppearTmpBuf_runtimeType))) {
            let onAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onAppearTmpBuf = { => let onAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onAppearTmpBuf_BufArgsSerializer.writeInt32(onAppearTmpBuf_BufResource.resourceId);
onAppearTmpBuf_BufArgsSerializer.writePointer(onAppearTmpBuf_BufCall);
onAppearTmpBuf_BufArgsSerializer.writePointer(onAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onAppearTmpBuf_BufArgsSerializer.asBuffer(), onAppearTmpBuf_BufArgsSerializer.length());
onAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onAppearTmpResult: Option<(() -> Unit)> = onAppearTmpBuf
        let onDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDisappearTmpBuf_runtimeType))) {
            let onDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onDisappearTmpBuf = { => let onDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onDisappearTmpBuf_BufArgsSerializer.writeInt32(onDisappearTmpBuf_BufResource.resourceId);
onDisappearTmpBuf_BufArgsSerializer.writePointer(onDisappearTmpBuf_BufCall);
onDisappearTmpBuf_BufArgsSerializer.writePointer(onDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onDisappearTmpBuf_BufArgsSerializer.asBuffer(), onDisappearTmpBuf_BufArgsSerializer.length());
onDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onDisappearTmpResult: Option<(() -> Unit)> = onDisappearTmpBuf
        let onWillAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillAppearTmpBuf_runtimeType))) {
            let onWillAppearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillAppearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillAppearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillAppearTmpBuf = { => let onWillAppearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillAppearTmpBuf_BufArgsSerializer.writeInt32(onWillAppearTmpBuf_BufResource.resourceId);
onWillAppearTmpBuf_BufArgsSerializer.writePointer(onWillAppearTmpBuf_BufCall);
onWillAppearTmpBuf_BufArgsSerializer.writePointer(onWillAppearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onWillAppearTmpBuf_BufArgsSerializer.asBuffer(), onWillAppearTmpBuf_BufArgsSerializer.length());
onWillAppearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillAppearTmpResult: Option<(() -> Unit)> = onWillAppearTmpBuf
        let onWillDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDisappearTmpBuf_runtimeType))) {
            let onWillDisappearTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillDisappearTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillDisappearTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillDisappearTmpBuf = { => let onWillDisappearTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDisappearTmpBuf_BufArgsSerializer.writeInt32(onWillDisappearTmpBuf_BufResource.resourceId);
onWillDisappearTmpBuf_BufArgsSerializer.writePointer(onWillDisappearTmpBuf_BufCall);
onWillDisappearTmpBuf_BufArgsSerializer.writePointer(onWillDisappearTmpBuf_BufCallSync);
InteropNativeModule._CallCallback(-1867723152, onWillDisappearTmpBuf_BufArgsSerializer.asBuffer(), onWillDisappearTmpBuf_BufArgsSerializer.length());
onWillDisappearTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillDisappearTmpResult: Option<(() -> Unit)> = onWillDisappearTmpBuf
        let modalTransitionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modalTransitionTmpBuf: Option<ModalTransition> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modalTransitionTmpBuf_runtimeType))) {
            modalTransitionTmpBuf = ModalTransition(valueDeserializer.readInt32())
        }
        let modalTransitionTmpResult: Option<ModalTransition> = modalTransitionTmpBuf
        let onWillDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDismissTmpBuf: Option<((parameter: DismissContentCoverAction) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDismissTmpBuf_runtimeType))) {
            let onWillDismissTmpBuf_BufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillDismissTmpBuf_BufCall: UInt64 = valueDeserializer.readPointer()
            let onWillDismissTmpBuf_BufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillDismissTmpBuf = {parameter: DismissContentCoverAction => let onWillDismissTmpBuf_BufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDismissTmpBuf_BufArgsSerializer.writeInt32(onWillDismissTmpBuf_BufResource.resourceId);
onWillDismissTmpBuf_BufArgsSerializer.writePointer(onWillDismissTmpBuf_BufCall);
onWillDismissTmpBuf_BufArgsSerializer.writePointer(onWillDismissTmpBuf_BufCallSync);
DismissContentCoverAction_serializer.write(onWillDismissTmpBuf_BufArgsSerializer, parameter);
InteropNativeModule._CallCallback(-1283506641, onWillDismissTmpBuf_BufArgsSerializer.asBuffer(), onWillDismissTmpBuf_BufArgsSerializer.length());
onWillDismissTmpBuf_BufArgsSerializer.release();
return; }
        }
        let onWillDismissTmpResult: Option<((parameter: DismissContentCoverAction) -> Unit)> = onWillDismissTmpBuf
        let transitionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var transitionTmpBuf: Option<TransitionEffect> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(transitionTmpBuf_runtimeType))) {
            transitionTmpBuf = match (TransitionEffect_serializer.read(valueDeserializer) as TransitionEffect) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let transitionTmpResult: Option<TransitionEffect> = transitionTmpBuf
        let enableSafeAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableSafeAreaTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableSafeAreaTmpBuf_runtimeType))) {
            enableSafeAreaTmpBuf = valueDeserializer.readBoolean()
        }
        let enableSafeAreaTmpResult: Option<Bool> = enableSafeAreaTmpBuf
        var value: ContentCoverOptions = ContentCoverOptions(modalTransitionTmpResult, onWillDismissTmpResult, transitionTmpResult, enableSafeAreaTmpResult, backgroundColorTmpResult, onAppearTmpResult, onDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult)
        return value
    }
}
