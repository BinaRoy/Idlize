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
public open class TextMenuItemIdInternal {
    public static func fromPtr(ptr: UInt64): TextMenuItemId {
        return TextMenuItemId(ptr)
    }
}
public open class TextMenuItemId <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public static prop CUT: TextMenuItemId = TextMenuItemId.getCUT()
    public static prop COPY: TextMenuItemId = TextMenuItemId.getCOPY()
    public static prop PASTE: TextMenuItemId = TextMenuItemId.getPASTE()
    public static prop SELECT_ALL: TextMenuItemId = TextMenuItemId.getSELECT_ALL()
    public static prop COLLABORATION_SERVICE: TextMenuItemId = TextMenuItemId.getCOLLABORATION_SERVICE()
    public static prop CAMERA_INPUT: TextMenuItemId = TextMenuItemId.getCAMERA_INPUT()
    public static prop AI_WRITER: TextMenuItemId = TextMenuItemId.getAI_WRITER()
    public static prop TRANSLATE: TextMenuItemId = TextMenuItemId.getTRANSLATE()
    public static prop SEARCH: TextMenuItemId = TextMenuItemId.getSEARCH()
    public static prop SHARE: TextMenuItemId = TextMenuItemId.getSHARE()
    public static prop url: TextMenuItemId = TextMenuItemId.getUrl()
    public static prop email: TextMenuItemId = TextMenuItemId.getEmail()
    public static prop phoneNumber: TextMenuItemId = TextMenuItemId.getPhoneNumber()
    public static prop address: TextMenuItemId = TextMenuItemId.getAddress()
    public static prop dateTime: TextMenuItemId = TextMenuItemId.getDateTime()
    TextMenuItemId(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, TextMenuItemId.getFinalizer())
    }
    TextMenuItemId() {
        super(TextMenuItemId.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._TextMenuItemId_getFinalizer()
    }
    static private func of_serialize(id: ResourceStr): TextMenuItemId {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (id.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let idForIdx0 = id.getValue0()
            thisSerializer.writeString(idForIdx0);
        } else if (id.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let idForIdx1 = id.getValue1()
            thisSerializer.writeCustomObject("Any", idForIdx1);
        }
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_of(thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getCUT_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getCUT()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getCOPY_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getCOPY()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getPASTE_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getPASTE()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getSELECT_ALL_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getSELECT_ALL()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getCOLLABORATION_SERVICE_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getCOLLABORATION_SERVICE()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getCAMERA_INPUT_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getCAMERA_INPUT()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getAI_WRITER_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getAI_WRITER()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getTRANSLATE_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getTRANSLATE()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getSEARCH_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getSEARCH()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getSHARE_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getSHARE()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getUrl_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getUrl()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getEmail_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getEmail()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getPhoneNumber_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getPhoneNumber()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getAddress_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getAddress()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    private static func getDateTime_serialize(): TextMenuItemId {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_getDateTime()
        let obj: TextMenuItemId = TextMenuItemIdInternal.fromPtr(retval)
        return obj
    }
    static public func of(id: ResourceStr): TextMenuItemId {
        let id_casted: ResourceStr = id
        return TextMenuItemId.of_serialize(id_casted)
    }
    public open func equals(id: TextMenuItemId): Bool {
        let id_casted: TextMenuItemId = id
        return this.equals_serialize(id_casted)
    }
    private static func getCUT(): TextMenuItemId {
        return TextMenuItemId.getCUT_serialize()
    }
    private static func getCOPY(): TextMenuItemId {
        return TextMenuItemId.getCOPY_serialize()
    }
    private static func getPASTE(): TextMenuItemId {
        return TextMenuItemId.getPASTE_serialize()
    }
    private static func getSELECT_ALL(): TextMenuItemId {
        return TextMenuItemId.getSELECT_ALL_serialize()
    }
    private static func getCOLLABORATION_SERVICE(): TextMenuItemId {
        return TextMenuItemId.getCOLLABORATION_SERVICE_serialize()
    }
    private static func getCAMERA_INPUT(): TextMenuItemId {
        return TextMenuItemId.getCAMERA_INPUT_serialize()
    }
    private static func getAI_WRITER(): TextMenuItemId {
        return TextMenuItemId.getAI_WRITER_serialize()
    }
    private static func getTRANSLATE(): TextMenuItemId {
        return TextMenuItemId.getTRANSLATE_serialize()
    }
    private static func getSEARCH(): TextMenuItemId {
        return TextMenuItemId.getSEARCH_serialize()
    }
    private static func getSHARE(): TextMenuItemId {
        return TextMenuItemId.getSHARE_serialize()
    }
    private static func getUrl(): TextMenuItemId {
        return TextMenuItemId.getUrl_serialize()
    }
    private static func getEmail(): TextMenuItemId {
        return TextMenuItemId.getEmail_serialize()
    }
    private static func getPhoneNumber(): TextMenuItemId {
        return TextMenuItemId.getPhoneNumber_serialize()
    }
    private static func getAddress(): TextMenuItemId {
        return TextMenuItemId.getAddress_serialize()
    }
    private static func getDateTime(): TextMenuItemId {
        return TextMenuItemId.getDateTime_serialize()
    }
    private func equals_serialize(id: TextMenuItemId): Bool {
        let retval = ArkUIGeneratedNativeModule._TextMenuItemId_equals(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, MaterializedBase.toPeerPtr(id))
        return retval
    }
}
public open class TextMenuItemId_serializer {
    public static func write(buffer: SerializerBase, value: TextMenuItemId): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): TextMenuItemId {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return TextMenuItemIdInternal.fromPtr(ptr)
    }
}
