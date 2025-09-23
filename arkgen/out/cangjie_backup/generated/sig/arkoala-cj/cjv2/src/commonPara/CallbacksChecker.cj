package idlize.commonPara

import std.collection.*
import Interop.*

enum CallbackEventKind {
    | Event_CallCallback
    | Event_HoldManagedResource
    | Event_ReleaseManagedResource
}


let bufferSize: Int32 = 1024
let buffer = Array<UInt8>(Int64(bufferSize), repeat: 0)
let deserializer = DeserializerBase(buffer, bufferSize)

public func checkArkoalaCallbacks() {
    while (true) {
        let result = InteropNativeModule._CheckCallbackEvent(deserializer.asBuffer(), bufferSize)
        if (result == 0) {
            break
        }
        deserializer.resetCurrentPosition()
        let eventKindValue = deserializer.readInt32()
        if (eventKindValue == 0) {
            deserializeAndCallCallback(deserializer)
        }
        else if (eventKindValue == 1) {
            let resourceId = deserializer.readInt32()
            ResourceHolder.instance().hold(resourceId)
        }
        else if (eventKindValue == 2) {
            let resourceId = deserializer.readInt32()
            ResourceHolder.instance().release(resourceId)
        }
        else { throw Exception("Unknown callback event kind ${eventKindValue}") }
    }
}
