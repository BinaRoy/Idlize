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
public interface LoadCommittedDetailsInterfaces <:  {
    public mut open prop isMainFrame: Bool
    public mut open prop isSameDocument: Bool
    public mut open prop didReplaceEntry: Bool
    public mut open prop navigationType: WebNavigationType
    public mut open prop url: String
}
public open class LoadCommittedDetails <: LoadCommittedDetailsInterfaces {
    private var isMainFrame_container: Bool
    public mut open prop isMainFrame: Bool
    {
        get() {
            return isMainFrame_container
        }
        set(isMainFrame) {
            isMainFrame_container = isMainFrame
        }
    }
    private var isSameDocument_container: Bool
    public mut open prop isSameDocument: Bool
    {
        get() {
            return isSameDocument_container
        }
        set(isSameDocument) {
            isSameDocument_container = isSameDocument
        }
    }
    private var didReplaceEntry_container: Bool
    public mut open prop didReplaceEntry: Bool
    {
        get() {
            return didReplaceEntry_container
        }
        set(didReplaceEntry) {
            didReplaceEntry_container = didReplaceEntry
        }
    }
    private var navigationType_container: WebNavigationType
    public mut open prop navigationType: WebNavigationType
    {
        get() {
            return navigationType_container
        }
        set(navigationType) {
            navigationType_container = navigationType
        }
    }
    private var url_container: String
    public mut open prop url: String
    {
        get() {
            return url_container
        }
        set(url) {
            url_container = url
        }
    }
    LoadCommittedDetails(isMainFrame: Bool, isSameDocument: Bool, didReplaceEntry: Bool, navigationType: WebNavigationType, url: String) {
        this.isMainFrame_container = isMainFrame
        this.isSameDocument_container = isSameDocument
        this.didReplaceEntry_container = didReplaceEntry
        this.navigationType_container = navigationType
        this.url_container = url
    }
}
public open class LoadCommittedDetails_serializer {
    public static func write(buffer: SerializerBase, value: LoadCommittedDetails): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsMainFrame = value.isMainFrame
        valueSerializer.writeBoolean(valueHolderForIsMainFrame);
        let valueHolderForIsSameDocument = value.isSameDocument
        valueSerializer.writeBoolean(valueHolderForIsSameDocument);
        let valueHolderForDidReplaceEntry = value.didReplaceEntry
        valueSerializer.writeBoolean(valueHolderForDidReplaceEntry);
        let valueHolderForNavigationType = value.navigationType
        valueSerializer.writeInt32(valueHolderForNavigationType.value);
        let valueHolderForUrl = value.url
        valueSerializer.writeString(valueHolderForUrl);
    }
    public static func read(buffer: DeserializerBase): LoadCommittedDetails {
        var valueDeserializer: DeserializerBase = buffer
        let isMainFrameTmpResult: Bool = valueDeserializer.readBoolean()
        let isSameDocumentTmpResult: Bool = valueDeserializer.readBoolean()
        let didReplaceEntryTmpResult: Bool = valueDeserializer.readBoolean()
        let navigationTypeTmpResult: WebNavigationType = WebNavigationType(valueDeserializer.readInt32())
        let urlTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: LoadCommittedDetails = LoadCommittedDetails(isMainFrameTmpResult, isSameDocumentTmpResult, didReplaceEntryTmpResult, navigationTypeTmpResult, urlTmpResult)
        return value
    }
}
