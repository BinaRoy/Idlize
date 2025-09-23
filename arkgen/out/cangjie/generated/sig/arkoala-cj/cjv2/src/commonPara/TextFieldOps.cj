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

public class TextFieldOps {
    private  static func registerTextFieldValueCallback_serialize(node: UInt64, value: ResourceStr, callback: TextFieldValueCallback): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0))
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeString(valueForIdx0)
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1))
            let valueForIdx1 = value.getValue1()
            Resource_serializer.write(thisSerializer, valueForIdx1)
        } else {
            throw Exception("One of the branches for value has to be chosen for serialisation.")
        }
        thisSerializer.holdAndWriteCallback(callback)
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_registerTextFieldValueCallback(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetWidth_serialize(node: UInt64, value: Option<Length>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeString(valueTmpValueForIdx0)
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1)
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetWidth_Length(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetWidth_serialize(node: UInt64, value: Option<Any>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeCustomObject("Any", valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetWidth_LayoutPolicy(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetHeight_serialize(node: UInt64, value: Option<Length>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeString(valueTmpValueForIdx0)
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1)
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetHeight_Length(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetHeight_serialize(node: UInt64, value: Option<Any>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeCustomObject("Any", valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetHeight_LayoutPolicy(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetPadding_serialize(node: UInt64, value: Option<Padding>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            let valueTmpValueTop = valueTmpValue.top
            if (let Some(valueTmpValueTop) <- valueTmpValueTop) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueTopTmpValue = valueTmpValueTop
                if (valueTmpValueTopTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueTopTmpValueForIdx0 = valueTmpValueTopTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueTopTmpValueForIdx0)
                } else if (valueTmpValueTopTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueTopTmpValueForIdx1 = valueTmpValueTopTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueTopTmpValueForIdx1)
                } else if (valueTmpValueTopTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueTopTmpValueForIdx2 = valueTmpValueTopTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueTopTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueTopTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueRight = valueTmpValue.right
            if (let Some(valueTmpValueRight) <- valueTmpValueRight) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueRightTmpValue = valueTmpValueRight
                if (valueTmpValueRightTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueRightTmpValueForIdx0 = valueTmpValueRightTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueRightTmpValueForIdx0)
                } else if (valueTmpValueRightTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueRightTmpValueForIdx1 = valueTmpValueRightTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueRightTmpValueForIdx1)
                } else if (valueTmpValueRightTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueRightTmpValueForIdx2 = valueTmpValueRightTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueRightTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueRightTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueBottom = valueTmpValue.bottom
            if (let Some(valueTmpValueBottom) <- valueTmpValueBottom) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueBottomTmpValue = valueTmpValueBottom
                if (valueTmpValueBottomTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueBottomTmpValueForIdx0 = valueTmpValueBottomTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueBottomTmpValueForIdx0)
                } else if (valueTmpValueBottomTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueBottomTmpValueForIdx1 = valueTmpValueBottomTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueBottomTmpValueForIdx1)
                } else if (valueTmpValueBottomTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueBottomTmpValueForIdx2 = valueTmpValueBottomTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueBottomTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueBottomTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueLeft = valueTmpValue.left
            if (let Some(valueTmpValueLeft) <- valueTmpValueLeft) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueLeftTmpValue = valueTmpValueLeft
                if (valueTmpValueLeftTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueLeftTmpValueForIdx0 = valueTmpValueLeftTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueLeftTmpValueForIdx0)
                } else if (valueTmpValueLeftTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueLeftTmpValueForIdx1 = valueTmpValueLeftTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueLeftTmpValueForIdx1)
                } else if (valueTmpValueLeftTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueLeftTmpValueForIdx2 = valueTmpValueLeftTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueLeftTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueLeftTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetPadding_Padding(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetPadding_serialize(node: UInt64, value: Option<Length>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeString(valueTmpValueForIdx0)
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1)
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetPadding_Length(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetPadding_serialize(node: UInt64, value: Option<LocalizedPadding>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            LocalizedPadding_serializer.write(thisSerializer, valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetPadding_LocalizedPadding(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetMargin_serialize(node: UInt64, value: Option<Padding>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            let valueTmpValueTop = valueTmpValue.top
            if (let Some(valueTmpValueTop) <- valueTmpValueTop) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueTopTmpValue = valueTmpValueTop
                if (valueTmpValueTopTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueTopTmpValueForIdx0 = valueTmpValueTopTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueTopTmpValueForIdx0)
                } else if (valueTmpValueTopTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueTopTmpValueForIdx1 = valueTmpValueTopTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueTopTmpValueForIdx1)
                } else if (valueTmpValueTopTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueTopTmpValueForIdx2 = valueTmpValueTopTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueTopTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueTopTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueRight = valueTmpValue.right
            if (let Some(valueTmpValueRight) <- valueTmpValueRight) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueRightTmpValue = valueTmpValueRight
                if (valueTmpValueRightTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueRightTmpValueForIdx0 = valueTmpValueRightTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueRightTmpValueForIdx0)
                } else if (valueTmpValueRightTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueRightTmpValueForIdx1 = valueTmpValueRightTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueRightTmpValueForIdx1)
                } else if (valueTmpValueRightTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueRightTmpValueForIdx2 = valueTmpValueRightTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueRightTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueRightTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueBottom = valueTmpValue.bottom
            if (let Some(valueTmpValueBottom) <- valueTmpValueBottom) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueBottomTmpValue = valueTmpValueBottom
                if (valueTmpValueBottomTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueBottomTmpValueForIdx0 = valueTmpValueBottomTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueBottomTmpValueForIdx0)
                } else if (valueTmpValueBottomTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueBottomTmpValueForIdx1 = valueTmpValueBottomTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueBottomTmpValueForIdx1)
                } else if (valueTmpValueBottomTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueBottomTmpValueForIdx2 = valueTmpValueBottomTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueBottomTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueBottomTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueLeft = valueTmpValue.left
            if (let Some(valueTmpValueLeft) <- valueTmpValueLeft) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueLeftTmpValue = valueTmpValueLeft
                if (valueTmpValueLeftTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueLeftTmpValueForIdx0 = valueTmpValueLeftTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueLeftTmpValueForIdx0)
                } else if (valueTmpValueLeftTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueLeftTmpValueForIdx1 = valueTmpValueLeftTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueLeftTmpValueForIdx1)
                } else if (valueTmpValueLeftTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueLeftTmpValueForIdx2 = valueTmpValueLeftTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueLeftTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueLeftTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetMargin_Padding(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetMargin_serialize(node: UInt64, value: Option<Length>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeString(valueTmpValueForIdx0)
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1)
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetMargin_Length(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetMargin_serialize(node: UInt64, value: Option<LocalizedPadding>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            LocalizedPadding_serializer.write(thisSerializer, valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetMargin_LocalizedPadding(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorder_serialize(node: UInt64, value: Option<Any>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeCustomObject("Any", valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorder(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderWidth_serialize(node: UInt64, value: Option<Length>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeString(valueTmpValueForIdx0)
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1)
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderWidth_Length(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderWidth_serialize(node: UInt64, value: Option<EdgeWidths>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            let valueTmpValueTop = valueTmpValue.top
            if (let Some(valueTmpValueTop) <- valueTmpValueTop) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueTopTmpValue = valueTmpValueTop
                if (valueTmpValueTopTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueTopTmpValueForIdx0 = valueTmpValueTopTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueTopTmpValueForIdx0)
                } else if (valueTmpValueTopTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueTopTmpValueForIdx1 = valueTmpValueTopTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueTopTmpValueForIdx1)
                } else if (valueTmpValueTopTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueTopTmpValueForIdx2 = valueTmpValueTopTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueTopTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueTopTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueRight = valueTmpValue.right
            if (let Some(valueTmpValueRight) <- valueTmpValueRight) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueRightTmpValue = valueTmpValueRight
                if (valueTmpValueRightTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueRightTmpValueForIdx0 = valueTmpValueRightTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueRightTmpValueForIdx0)
                } else if (valueTmpValueRightTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueRightTmpValueForIdx1 = valueTmpValueRightTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueRightTmpValueForIdx1)
                } else if (valueTmpValueRightTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueRightTmpValueForIdx2 = valueTmpValueRightTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueRightTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueRightTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueBottom = valueTmpValue.bottom
            if (let Some(valueTmpValueBottom) <- valueTmpValueBottom) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueBottomTmpValue = valueTmpValueBottom
                if (valueTmpValueBottomTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueBottomTmpValueForIdx0 = valueTmpValueBottomTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueBottomTmpValueForIdx0)
                } else if (valueTmpValueBottomTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueBottomTmpValueForIdx1 = valueTmpValueBottomTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueBottomTmpValueForIdx1)
                } else if (valueTmpValueBottomTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueBottomTmpValueForIdx2 = valueTmpValueBottomTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueBottomTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueBottomTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueLeft = valueTmpValue.left
            if (let Some(valueTmpValueLeft) <- valueTmpValueLeft) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueLeftTmpValue = valueTmpValueLeft
                if (valueTmpValueLeftTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueLeftTmpValueForIdx0 = valueTmpValueLeftTmpValue.getValue0()
                    thisSerializer.writeString(valueTmpValueLeftTmpValueForIdx0)
                } else if (valueTmpValueLeftTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueLeftTmpValueForIdx1 = valueTmpValueLeftTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueLeftTmpValueForIdx1)
                } else if (valueTmpValueLeftTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueLeftTmpValueForIdx2 = valueTmpValueLeftTmpValue.getValue2()
                    Resource_serializer.write(thisSerializer, valueTmpValueLeftTmpValueForIdx2)
                } else {
                    throw Exception("One of the branches for valueTmpValueLeftTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderWidth_EdgeWidths(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderWidth_serialize(node: UInt64, value: Option<LocalizedEdgeWidths>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            LocalizedEdgeWidths_serializer.write(thisSerializer, valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderWidth_LocalizedEdgeWidths(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderColor_serialize(node: UInt64, value: Option<ResourceColor>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeInt32(valueTmpValueForIdx0.get())
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1)
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                thisSerializer.writeString(valueTmpValueForIdx2)
            } else if (valueTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3))
                let valueTmpValueForIdx3 = valueTmpValue.getValue3()
                Resource_serializer.write(thisSerializer, valueTmpValueForIdx3)
            } else {
                throw Exception("One of the branches for valueTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderColor_ResourceColor(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderColor_serialize(node: UInt64, value: Option<EdgeColors>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            let valueTmpValueTop = valueTmpValue.top
            if (let Some(valueTmpValueTop) <- valueTmpValueTop) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueTopTmpValue = valueTmpValueTop
                if (valueTmpValueTopTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueTopTmpValueForIdx0 = valueTmpValueTopTmpValue.getValue0()
                    thisSerializer.writeInt32(valueTmpValueTopTmpValueForIdx0.get())
                } else if (valueTmpValueTopTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueTopTmpValueForIdx1 = valueTmpValueTopTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueTopTmpValueForIdx1)
                } else if (valueTmpValueTopTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueTopTmpValueForIdx2 = valueTmpValueTopTmpValue.getValue2()
                    thisSerializer.writeString(valueTmpValueTopTmpValueForIdx2)
                } else if (valueTmpValueTopTmpValue.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3))
                    let valueTmpValueTopTmpValueForIdx3 = valueTmpValueTopTmpValue.getValue3()
                    Resource_serializer.write(thisSerializer, valueTmpValueTopTmpValueForIdx3)
                } else {
                    throw Exception("One of the branches for valueTmpValueTopTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueRight = valueTmpValue.right
            if (let Some(valueTmpValueRight) <- valueTmpValueRight) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueRightTmpValue = valueTmpValueRight
                if (valueTmpValueRightTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueRightTmpValueForIdx0 = valueTmpValueRightTmpValue.getValue0()
                    thisSerializer.writeInt32(valueTmpValueRightTmpValueForIdx0.get())
                } else if (valueTmpValueRightTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueRightTmpValueForIdx1 = valueTmpValueRightTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueRightTmpValueForIdx1)
                } else if (valueTmpValueRightTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueRightTmpValueForIdx2 = valueTmpValueRightTmpValue.getValue2()
                    thisSerializer.writeString(valueTmpValueRightTmpValueForIdx2)
                } else if (valueTmpValueRightTmpValue.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3))
                    let valueTmpValueRightTmpValueForIdx3 = valueTmpValueRightTmpValue.getValue3()
                    Resource_serializer.write(thisSerializer, valueTmpValueRightTmpValueForIdx3)
                } else {
                    throw Exception("One of the branches for valueTmpValueRightTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueBottom = valueTmpValue.bottom
            if (let Some(valueTmpValueBottom) <- valueTmpValueBottom) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueBottomTmpValue = valueTmpValueBottom
                if (valueTmpValueBottomTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueBottomTmpValueForIdx0 = valueTmpValueBottomTmpValue.getValue0()
                    thisSerializer.writeInt32(valueTmpValueBottomTmpValueForIdx0.get())
                } else if (valueTmpValueBottomTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueBottomTmpValueForIdx1 = valueTmpValueBottomTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueBottomTmpValueForIdx1)
                } else if (valueTmpValueBottomTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueBottomTmpValueForIdx2 = valueTmpValueBottomTmpValue.getValue2()
                    thisSerializer.writeString(valueTmpValueBottomTmpValueForIdx2)
                } else if (valueTmpValueBottomTmpValue.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3))
                    let valueTmpValueBottomTmpValueForIdx3 = valueTmpValueBottomTmpValue.getValue3()
                    Resource_serializer.write(thisSerializer, valueTmpValueBottomTmpValueForIdx3)
                } else {
                    throw Exception("One of the branches for valueTmpValueBottomTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueLeft = valueTmpValue.left
            if (let Some(valueTmpValueLeft) <- valueTmpValueLeft) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueLeftTmpValue = valueTmpValueLeft
                if (valueTmpValueLeftTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0))
                    let valueTmpValueLeftTmpValueForIdx0 = valueTmpValueLeftTmpValue.getValue0()
                    thisSerializer.writeInt32(valueTmpValueLeftTmpValueForIdx0.get())
                } else if (valueTmpValueLeftTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1))
                    let valueTmpValueLeftTmpValueForIdx1 = valueTmpValueLeftTmpValue.getValue1()
                    thisSerializer.writeNumber(valueTmpValueLeftTmpValueForIdx1)
                } else if (valueTmpValueLeftTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2))
                    let valueTmpValueLeftTmpValueForIdx2 = valueTmpValueLeftTmpValue.getValue2()
                    thisSerializer.writeString(valueTmpValueLeftTmpValueForIdx2)
                } else if (valueTmpValueLeftTmpValue.getSelector() == 3) {
                    thisSerializer.writeInt8(Int8(3))
                    let valueTmpValueLeftTmpValueForIdx3 = valueTmpValueLeftTmpValue.getValue3()
                    Resource_serializer.write(thisSerializer, valueTmpValueLeftTmpValueForIdx3)
                } else {
                    throw Exception("One of the branches for valueTmpValueLeftTmpValue has to be chosen for serialisation.")
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderColor_EdgeColors(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderColor_serialize(node: UInt64, value: Option<Any>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeCustomObject("Any", valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderColor_LocalizedEdgeColors(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderStyle_serialize(node: UInt64, value: Option<BorderStyle>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            thisSerializer.writeInt32(valueTmpValue.get())
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderStyle_BorderStyle(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderStyle_serialize(node: UInt64, value: Option<EdgeStyles>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            let valueTmpValueTop = valueTmpValue.top
            if (let Some(valueTmpValueTop) <- valueTmpValueTop) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueTopTmpValue = valueTmpValueTop
                thisSerializer.writeInt32(valueTmpValueTopTmpValue.get())
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueRight = valueTmpValue.right
            if (let Some(valueTmpValueRight) <- valueTmpValueRight) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueRightTmpValue = valueTmpValueRight
                thisSerializer.writeInt32(valueTmpValueRightTmpValue.get())
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueBottom = valueTmpValue.bottom
            if (let Some(valueTmpValueBottom) <- valueTmpValueBottom) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueBottomTmpValue = valueTmpValueBottom
                thisSerializer.writeInt32(valueTmpValueBottomTmpValue.get())
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
            let valueTmpValueLeft = valueTmpValue.left
            if (let Some(valueTmpValueLeft) <- valueTmpValueLeft) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
                let valueTmpValueLeftTmpValue = valueTmpValueLeft
                thisSerializer.writeInt32(valueTmpValueLeftTmpValue.get())
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderStyle_EdgeStyles(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderRadius_serialize(node: UInt64, value: Option<Length>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeString(valueTmpValueForIdx0)
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1)
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderRadius_Length(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderRadius_serialize(node: UInt64, value: Option<BorderRadiuses>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            let valueTmpValueTopLeft = valueTmpValue.topLeft
            if (valueTmpValueTopLeft.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueTopLeftForIdx0 = valueTmpValueTopLeft.getValue0()
                thisSerializer.writeString(valueTmpValueTopLeftForIdx0)
            } else if (valueTmpValueTopLeft.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueTopLeftForIdx1 = valueTmpValueTopLeft.getValue1()
                thisSerializer.writeNumber(valueTmpValueTopLeftForIdx1)
            } else if (valueTmpValueTopLeft.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueTopLeftForIdx2 = valueTmpValueTopLeft.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueTopLeftForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValueTopLeft has to be chosen for serialisation.")
            }
            let valueTmpValueTopRight = valueTmpValue.topRight
            if (valueTmpValueTopRight.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueTopRightForIdx0 = valueTmpValueTopRight.getValue0()
                thisSerializer.writeString(valueTmpValueTopRightForIdx0)
            } else if (valueTmpValueTopRight.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueTopRightForIdx1 = valueTmpValueTopRight.getValue1()
                thisSerializer.writeNumber(valueTmpValueTopRightForIdx1)
            } else if (valueTmpValueTopRight.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueTopRightForIdx2 = valueTmpValueTopRight.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueTopRightForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValueTopRight has to be chosen for serialisation.")
            }
            let valueTmpValueBottomLeft = valueTmpValue.bottomLeft
            if (valueTmpValueBottomLeft.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueBottomLeftForIdx0 = valueTmpValueBottomLeft.getValue0()
                thisSerializer.writeString(valueTmpValueBottomLeftForIdx0)
            } else if (valueTmpValueBottomLeft.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueBottomLeftForIdx1 = valueTmpValueBottomLeft.getValue1()
                thisSerializer.writeNumber(valueTmpValueBottomLeftForIdx1)
            } else if (valueTmpValueBottomLeft.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueBottomLeftForIdx2 = valueTmpValueBottomLeft.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueBottomLeftForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValueBottomLeft has to be chosen for serialisation.")
            }
            let valueTmpValueBottomRight = valueTmpValue.bottomRight
            if (valueTmpValueBottomRight.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueBottomRightForIdx0 = valueTmpValueBottomRight.getValue0()
                thisSerializer.writeString(valueTmpValueBottomRightForIdx0)
            } else if (valueTmpValueBottomRight.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueBottomRightForIdx1 = valueTmpValueBottomRight.getValue1()
                thisSerializer.writeNumber(valueTmpValueBottomRightForIdx1)
            } else if (valueTmpValueBottomRight.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueBottomRightForIdx2 = valueTmpValueBottomRight.getValue2()
                Resource_serializer.write(thisSerializer, valueTmpValueBottomRightForIdx2)
            } else {
                throw Exception("One of the branches for valueTmpValueBottomRight has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderRadius_BorderRadiuses(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBorderRadius_serialize(node: UInt64, value: Option<LocalizedBorderRadiuses>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            LocalizedBorderRadiuses_serializer.write(thisSerializer, valueTmpValue)
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBorderRadius_LocalizedBorderRadiuses(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    private  static func textFieldOpsSetBackgroundColor_serialize(node: UInt64, value: Option<ResourceColor>): UInt64 {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal)
            let valueTmpValue = value
            if (valueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0))
                let valueTmpValueForIdx0 = valueTmpValue.getValue0()
                thisSerializer.writeInt32(valueTmpValueForIdx0.get())
            } else if (valueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1))
                let valueTmpValueForIdx1 = valueTmpValue.getValue1()
                thisSerializer.writeNumber(valueTmpValueForIdx1)
            } else if (valueTmpValue.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2))
                let valueTmpValueForIdx2 = valueTmpValue.getValue2()
                thisSerializer.writeString(valueTmpValueForIdx2)
            } else if (valueTmpValue.getSelector() == 3) {
                thisSerializer.writeInt8(Int8(3))
                let valueTmpValueForIdx3 = valueTmpValue.getValue3()
                Resource_serializer.write(thisSerializer, valueTmpValueForIdx3)
            } else {
                throw Exception("One of the branches for valueTmpValue has to be chosen for serialisation.")
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal)
        }
        let retval = ArkUIGeneratedNativeModule._TextFieldOps_textFieldOpsSetBackgroundColor(node, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release()
        return retval
    }
    public  static func registerTextFieldValueCallback(node: UInt64, value: ResourceStr, callback: TextFieldValueCallback): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: ResourceStr = value
        let callback_casted: TextFieldValueCallback = callback
        return TextFieldOps.registerTextFieldValueCallback_serialize(node_casted, value_casted, callback_casted)
    }
    public  static func textFieldOpsSetWidth(node: UInt64, value: Option<Length>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Length> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetWidth_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetHeight(node: UInt64, value: Option<Length>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Length> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetHeight_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetPadding(node: UInt64, value: Option<Padding>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Padding> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetPadding_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetMargin(node: UInt64, value: Option<Padding>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Padding> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetMargin_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetBorder(node: UInt64, value: Option<Any>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Any> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorder_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetBorderWidth(node: UInt64, value: Option<Length>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Length> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorderWidth_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetBorderColor(node: UInt64, value: Option<ResourceColor>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<ResourceColor> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorderColor_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetBorderStyle(node: UInt64, value: Option<BorderStyle>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<BorderStyle> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorderStyle_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetBorderRadius(node: UInt64, value: Option<Length>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<Length> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBorderRadius_serialize(node_casted, value_casted)
    }
    public  static func textFieldOpsSetBackgroundColor(node: UInt64, value: Option<ResourceColor>): UInt64 {
        let node_casted: UInt64 = node
        let value_casted: Option<ResourceColor> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        return TextFieldOps.textFieldOpsSetBackgroundColor_serialize(node_casted, value_casted)
    }
}
