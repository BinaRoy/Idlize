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
public open class TextFieldOps {
    static private func registerTextFieldValueCallback_serialize(node: UInt64, value: ResourceStr, callback: TextFieldValueCallback): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeCustomObject("Any", valueForIdx1);
        }
        thisSerializer.holdAndWriteCallback(callback);
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_registerTextFieldValueCallback(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetWidth_serialize(node: UInt64, value: Option<Union_Length_LayoutPolicy>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                if (valueTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueTmpValueForIdx0ForIdx0 = valueTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(valueTmpValueForIdx0ForIdx0);
                } else if (valueTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueTmpValueForIdx0ForIdx1 = valueTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(valueTmpValueForIdx0ForIdx1);
                } else if (valueTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueTmpValueForIdx0ForIdx2 = valueTmpValueForIdx0.getValue2()
                    thisSerializer.writeCustomObject("Any", valueTmpValueForIdx0ForIdx2);
                }
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                LayoutPolicy_serializer.write(thisSerializer, valueTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetWidth(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetHeight_serialize(node: UInt64, value: Option<Union_Length_LayoutPolicy>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                if (valueTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueTmpValueForIdx0ForIdx0 = valueTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(valueTmpValueForIdx0ForIdx0);
                } else if (valueTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueTmpValueForIdx0ForIdx1 = valueTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(valueTmpValueForIdx0ForIdx1);
                } else if (valueTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueTmpValueForIdx0ForIdx2 = valueTmpValueForIdx0.getValue2()
                    thisSerializer.writeCustomObject("Any", valueTmpValueForIdx0ForIdx2);
                }
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                LayoutPolicy_serializer.write(thisSerializer, valueTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetHeight(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetPadding_serialize(node: UInt64, value: Option<Union_Padding_Length_LocalizedPadding>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                Padding_serializer.write(thisSerializer, valueTmpValueForIdx0);
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                if (valueTmpValueForIdx1.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueTmpValueForIdx1ForIdx0 = valueTmpValueForIdx1.getValue0()
                    thisSerializer.writeString(valueTmpValueForIdx1ForIdx0);
                } else if (valueTmpValueForIdx1.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueTmpValueForIdx1ForIdx1 = valueTmpValueForIdx1.getValue1()
                    thisSerializer.writeNumber(valueTmpValueForIdx1ForIdx1);
                } else if (valueTmpValueForIdx1.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueTmpValueForIdx1ForIdx2 = valueTmpValueForIdx1.getValue2()
                    thisSerializer.writeCustomObject("Any", valueTmpValueForIdx1ForIdx2);
                }
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                LocalizedPadding_serializer.write(thisSerializer, valueTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetPadding(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetMargin_serialize(node: UInt64, value: Option<Union_Padding_Length_LocalizedPadding>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                Padding_serializer.write(thisSerializer, valueTmpValueForIdx0);
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                if (valueTmpValueForIdx1.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueTmpValueForIdx1ForIdx0 = valueTmpValueForIdx1.getValue0()
                    thisSerializer.writeString(valueTmpValueForIdx1ForIdx0);
                } else if (valueTmpValueForIdx1.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueTmpValueForIdx1ForIdx1 = valueTmpValueForIdx1.getValue1()
                    thisSerializer.writeNumber(valueTmpValueForIdx1ForIdx1);
                } else if (valueTmpValueForIdx1.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueTmpValueForIdx1ForIdx2 = valueTmpValueForIdx1.getValue2()
                    thisSerializer.writeCustomObject("Any", valueTmpValueForIdx1ForIdx2);
                }
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                LocalizedPadding_serializer.write(thisSerializer, valueTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetMargin(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetBorder_serialize(node: UInt64, value: Option<BorderOptions>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            BorderOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorder(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetBorderWidth_serialize(node: UInt64, value: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                if (valueTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueTmpValueForIdx0ForIdx0 = valueTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(valueTmpValueForIdx0ForIdx0);
                } else if (valueTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueTmpValueForIdx0ForIdx1 = valueTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(valueTmpValueForIdx0ForIdx1);
                } else if (valueTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueTmpValueForIdx0ForIdx2 = valueTmpValueForIdx0.getValue2()
                    thisSerializer.writeCustomObject("Any", valueTmpValueForIdx0ForIdx2);
                }
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                EdgeWidths_serializer.write(thisSerializer, valueTmpValueForIdx1);
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(thisSerializer, valueTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderWidth(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetBorderColor_serialize(node: UInt64, value: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                if (valueTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueTmpValueForIdx0ForIdx0 = valueTmpValueForIdx0.getValue0()
                    thisSerializer.writeInt32(valueTmpValueForIdx0ForIdx0.value);
                } else if (valueTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueTmpValueForIdx0ForIdx1 = valueTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(valueTmpValueForIdx0ForIdx1);
                } else if (valueTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueTmpValueForIdx0ForIdx2 = valueTmpValueForIdx0.getValue2()
                    thisSerializer.writeString(valueTmpValueForIdx0ForIdx2);
                } else if (valueTmpValueForIdx0.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3));
                    let valueTmpValueForIdx0ForIdx3 = valueTmpValueForIdx0.getValue3()
                    thisSerializer.writeCustomObject("Any", valueTmpValueForIdx0ForIdx3);
                }
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                EdgeColors_serializer.write(thisSerializer, valueTmpValueForIdx1);
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                LocalizedEdgeColors_serializer.write(thisSerializer, valueTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderColor(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetBorderStyle_serialize(node: UInt64, value: Option<Union_BorderStyle_EdgeStyles>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeInt32(valueTmpValueForIdx0.value);
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                EdgeStyles_serializer.write(thisSerializer, valueTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderStyle(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetBorderRadius_serialize(node: UInt64, value: Option<Union_Length_BorderRadiuses_LocalizedBorderRadiuses>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                if (valueTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueTmpValueForIdx0ForIdx0 = valueTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(valueTmpValueForIdx0ForIdx0);
                } else if (valueTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueTmpValueForIdx0ForIdx1 = valueTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(valueTmpValueForIdx0ForIdx1);
                } else if (valueTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueTmpValueForIdx0ForIdx2 = valueTmpValueForIdx0.getValue2()
                    thisSerializer.writeCustomObject("Any", valueTmpValueForIdx0ForIdx2);
                }
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                BorderRadiuses_serializer.write(thisSerializer, valueTmpValueForIdx1);
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                LocalizedBorderRadiuses_serializer.write(thisSerializer, valueTmpValueForIdx2);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderRadius(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static private func textFieldOpsSetBackgroundColor_serialize(node: UInt64, value: Option<ResourceColor>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeInt32(valueTmpValueForIdx0.value);
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1);
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                thisSerializer.writeString(valueTmpValueForIdx2);
            } else if (valueTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3));
                let valueTmpValueForIdx3 = valueTmpValue.getValue3()
                thisSerializer.writeCustomObject("Any", valueTmpValueForIdx3);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBackgroundColor(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    static public func registerTextFieldValueCallback(node: UInt64, value: ResourceStr, callback: TextFieldValueCallback): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: ResourceStr = value
        let callback_casted: TextFieldValueCallback = callback
        return TextFieldOps.registerTextFieldValueCallback_serialize(node_casted, value_casted, callback_casted)
    }
    static public func textFieldOpsSetWidth(node: UInt64, value: Option<Union_Length_LayoutPolicy>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Union_Length_LayoutPolicy> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetWidth_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetHeight(node: UInt64, value: Option<Union_Length_LayoutPolicy>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Union_Length_LayoutPolicy> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetHeight_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetPadding(node: UInt64, value: Option<Union_Padding_Length_LocalizedPadding>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Union_Padding_Length_LocalizedPadding> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetPadding_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetMargin(node: UInt64, value: Option<Union_Padding_Length_LocalizedPadding>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Union_Padding_Length_LocalizedPadding> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetMargin_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetBorder(node: UInt64, value: Option<BorderOptions>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<BorderOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorder_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetBorderWidth(node: UInt64, value: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Union_Length_EdgeWidths_LocalizedEdgeWidths> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorderWidth_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetBorderColor(node: UInt64, value: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorderColor_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetBorderStyle(node: UInt64, value: Option<Union_BorderStyle_EdgeStyles>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Union_BorderStyle_EdgeStyles> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorderStyle_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetBorderRadius(node: UInt64, value: Option<Union_Length_BorderRadiuses_LocalizedBorderRadiuses>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Union_Length_BorderRadiuses_LocalizedBorderRadiuses> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorderRadius_serialize(node_casted, value_casted)
    }
    static public func textFieldOpsSetBackgroundColor(node: UInt64, value: Option<ResourceColor>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<ResourceColor> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBackgroundColor_serialize(node_casted, value_casted)
    }
}
