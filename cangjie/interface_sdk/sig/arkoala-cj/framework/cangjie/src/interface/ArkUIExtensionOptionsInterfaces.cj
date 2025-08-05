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
public interface UIExtensionOptionsInterfaces <:  {
    public mut open prop isTransferringCaller: Option<Bool>
    public mut open prop placeholder: Option<ComponentContent>
    public mut open prop areaChangePlaceholder: Option<HashMap<String, ComponentContent>>
    public mut open prop dpiFollowStrategy: Option<DpiFollowStrategy>
    public mut open prop windowModeFollowStrategy: Option<WindowModeFollowStrategy>
}
public open class UIExtensionOptions <: UIExtensionOptionsInterfaces {
    private var isTransferringCaller_container: Option<Bool>
    public mut open prop isTransferringCaller: Option<Bool>
    {
        get() {
            return isTransferringCaller_container
        }
        set(isTransferringCaller) {
            isTransferringCaller_container = isTransferringCaller
        }
    }
    private var placeholder_container: Option<ComponentContent>
    public mut open prop placeholder: Option<ComponentContent>
    {
        get() {
            return placeholder_container
        }
        set(placeholder) {
            placeholder_container = placeholder
        }
    }
    private var areaChangePlaceholder_container: Option<HashMap<String, ComponentContent>>
    public mut open prop areaChangePlaceholder: Option<HashMap<String, ComponentContent>>
    {
        get() {
            return areaChangePlaceholder_container
        }
        set(areaChangePlaceholder) {
            areaChangePlaceholder_container = areaChangePlaceholder
        }
    }
    private var dpiFollowStrategy_container: Option<DpiFollowStrategy>
    public mut open prop dpiFollowStrategy: Option<DpiFollowStrategy>
    {
        get() {
            return dpiFollowStrategy_container
        }
        set(dpiFollowStrategy) {
            dpiFollowStrategy_container = dpiFollowStrategy
        }
    }
    private var windowModeFollowStrategy_container: Option<WindowModeFollowStrategy>
    public mut open prop windowModeFollowStrategy: Option<WindowModeFollowStrategy>
    {
        get() {
            return windowModeFollowStrategy_container
        }
        set(windowModeFollowStrategy) {
            windowModeFollowStrategy_container = windowModeFollowStrategy
        }
    }
    UIExtensionOptions(isTransferringCaller: Option<Bool>, placeholder: Option<ComponentContent>, areaChangePlaceholder: Option<HashMap<String, ComponentContent>>, dpiFollowStrategy: Option<DpiFollowStrategy>, windowModeFollowStrategy: Option<WindowModeFollowStrategy>) {
        this.isTransferringCaller_container = isTransferringCaller
        this.placeholder_container = placeholder
        this.areaChangePlaceholder_container = areaChangePlaceholder
        this.dpiFollowStrategy_container = dpiFollowStrategy
        this.windowModeFollowStrategy_container = windowModeFollowStrategy
    }
}
public open class UIExtensionOptions_serializer {
    public static func write(buffer: SerializerBase, value: UIExtensionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsTransferringCaller = value.isTransferringCaller
        if (valueHolderForIsTransferringCaller.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsTransferringCallerTmpValue = valueHolderForIsTransferringCaller
            valueSerializer.writeBoolean(valueHolderForIsTransferringCallerTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPlaceholder = value.placeholder
        if (valueHolderForPlaceholder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPlaceholderTmpValue = valueHolderForPlaceholder
            valueSerializer.writeCustomObject("Any", valueHolderForPlaceholderTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAreaChangePlaceholder = value.areaChangePlaceholder
        if (valueHolderForAreaChangePlaceholder.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAreaChangePlaceholderTmpValue = valueHolderForAreaChangePlaceholder
            valueSerializer.writeInt32(Int32(valueHolderForAreaChangePlaceholderTmpValue.size));
            for ((valueHolderForAreaChangePlaceholderTmpValueKeyVar, valueHolderForAreaChangePlaceholderTmpValueValueVar) in valueHolderForAreaChangePlaceholderTmpValue) {
                valueSerializer.writeString(valueHolderForAreaChangePlaceholderTmpValueKeyVar);
                valueSerializer.writeCustomObject("Any", valueHolderForAreaChangePlaceholderTmpValueValueVar);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDpiFollowStrategy = value.dpiFollowStrategy
        if (valueHolderForDpiFollowStrategy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDpiFollowStrategyTmpValue = valueHolderForDpiFollowStrategy
            valueSerializer.writeInt32(valueHolderForDpiFollowStrategyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWindowModeFollowStrategy = value.windowModeFollowStrategy
        if (valueHolderForWindowModeFollowStrategy.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWindowModeFollowStrategyTmpValue = valueHolderForWindowModeFollowStrategy
            valueSerializer.writeInt32(valueHolderForWindowModeFollowStrategyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): UIExtensionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let isTransferringCallerTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isTransferringCallerTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isTransferringCallerTmpBuf_runtimeType))) {
            isTransferringCallerTmpBuf = valueDeserializer.readBoolean()
        }
        let isTransferringCallerTmpResult: Option<Bool> = isTransferringCallerTmpBuf
        let placeholderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var placeholderTmpBuf: Option<ComponentContent> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(placeholderTmpBuf_runtimeType))) {
            placeholderTmpBuf = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let placeholderTmpResult: Option<ComponentContent> = placeholderTmpBuf
        let areaChangePlaceholderTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var areaChangePlaceholderTmpBuf: Option<HashMap<String, ComponentContent>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(areaChangePlaceholderTmpBuf_runtimeType))) {
            let areaChangePlaceholderTmpBuf_SizeVar: Int32 = valueDeserializer.readInt32()
            var areaChangePlaceholderTmpBuf_: HashMap<String, ComponentContent> = HashMap<String, ComponentContent>()
            // TODO: TS map resize;
            for (areaChangePlaceholderTmpBuf_IVar in 0..areaChangePlaceholderTmpBuf_SizeVar) {
                let areaChangePlaceholderTmpBuf_KeyVar: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                let areaChangePlaceholderTmpBuf_ValueVar: ComponentContent = match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                areaChangePlaceholderTmpBuf_.add(areaChangePlaceholderTmpBuf_KeyVar, areaChangePlaceholderTmpBuf_ValueVar);
            }
            areaChangePlaceholderTmpBuf = areaChangePlaceholderTmpBuf_
        }
        let areaChangePlaceholderTmpResult: Option<HashMap<String, ComponentContent>> = areaChangePlaceholderTmpBuf
        let dpiFollowStrategyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dpiFollowStrategyTmpBuf: Option<DpiFollowStrategy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dpiFollowStrategyTmpBuf_runtimeType))) {
            dpiFollowStrategyTmpBuf = DpiFollowStrategy(valueDeserializer.readInt32())
        }
        let dpiFollowStrategyTmpResult: Option<DpiFollowStrategy> = dpiFollowStrategyTmpBuf
        let windowModeFollowStrategyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var windowModeFollowStrategyTmpBuf: Option<WindowModeFollowStrategy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(windowModeFollowStrategyTmpBuf_runtimeType))) {
            windowModeFollowStrategyTmpBuf = WindowModeFollowStrategy(valueDeserializer.readInt32())
        }
        let windowModeFollowStrategyTmpResult: Option<WindowModeFollowStrategy> = windowModeFollowStrategyTmpBuf
        var value: UIExtensionOptions = UIExtensionOptions(isTransferringCallerTmpResult, placeholderTmpResult, areaChangePlaceholderTmpResult, dpiFollowStrategyTmpResult, windowModeFollowStrategyTmpResult)
        return value
    }
}
