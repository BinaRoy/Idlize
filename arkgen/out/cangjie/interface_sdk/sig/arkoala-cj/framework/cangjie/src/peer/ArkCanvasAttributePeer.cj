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
public open class ArkCanvasPeer <: ArkCommonMethodPeer {
    protected ArkCanvasPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCanvasPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Canvas_construct(peerId, flags)
        let _peer = ArkCanvasPeer(_peerPtr, peerId, "Canvas", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setCanvasOptions0Attribute(context: Option<Union_CanvasRenderingContext2D_DrawingRenderingContext>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (context.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let contextTmpValue = context
            if (contextTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let contextTmpValueForIdx0 = contextTmpValue.getValue0()
                CanvasRenderingContext2D_serializer.write(thisSerializer, contextTmpValueForIdx0);
            } else if (contextTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let contextTmpValueForIdx1 = contextTmpValue.getValue1()
                DrawingRenderingContext_serializer.write(thisSerializer, contextTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CanvasInterface_setCanvasOptions0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCanvasOptions1Attribute(context: Union_CanvasRenderingContext2D_DrawingRenderingContext, imageAIOptions: ImageAIOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (context.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let contextForIdx0 = context.getValue0()
            CanvasRenderingContext2D_serializer.write(thisSerializer, contextForIdx0);
        } else if (context.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let contextForIdx1 = context.getValue1()
            DrawingRenderingContext_serializer.write(thisSerializer, contextForIdx1);
        }
        ImageAIOptions_serializer.write(thisSerializer, imageAIOptions);
        ArkUIGeneratedNativeModule._CanvasInterface_setCanvasOptions1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnReadyAttribute(event: VoidCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CanvasAttribute_setOnReady(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableAnalyzerAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._CanvasAttribute_setEnableAnalyzer(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
}
