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
public interface WaterFlowOptionsInterfaces <:  {
    public mut open prop footer: Option<CustomBuilder>
    public mut open prop footerContent: Option<ComponentContent>
    public mut open prop scroller: Option<Scroller>
    public mut open prop sections: Option<WaterFlowSections>
    public mut open prop layoutMode: Option<WaterFlowLayoutMode>
}
public open class WaterFlowOptions <: WaterFlowOptionsInterfaces {
    private var footer_container: Option<CustomBuilder>
    public mut open prop footer: Option<CustomBuilder>
    {
        get() {
            return footer_container
        }
        set(footer) {
            footer_container = footer
        }
    }
    private var footerContent_container: Option<ComponentContent>
    public mut open prop footerContent: Option<ComponentContent>
    {
        get() {
            return footerContent_container
        }
        set(footerContent) {
            footerContent_container = footerContent
        }
    }
    private var scroller_container: Option<Scroller>
    public mut open prop scroller: Option<Scroller>
    {
        get() {
            return scroller_container
        }
        set(scroller) {
            scroller_container = scroller
        }
    }
    private var sections_container: Option<WaterFlowSections>
    public mut open prop sections: Option<WaterFlowSections>
    {
        get() {
            return sections_container
        }
        set(sections) {
            sections_container = sections
        }
    }
    private var layoutMode_container: Option<WaterFlowLayoutMode>
    public mut open prop layoutMode: Option<WaterFlowLayoutMode>
    {
        get() {
            return layoutMode_container
        }
        set(layoutMode) {
            layoutMode_container = layoutMode
        }
    }
    WaterFlowOptions(footer: Option<CustomBuilder>, footerContent: Option<ComponentContent>, scroller: Option<Scroller>, sections: Option<WaterFlowSections>, layoutMode: Option<WaterFlowLayoutMode>) {
        this.footer_container = footer
        this.footerContent_container = footerContent
        this.scroller_container = scroller
        this.sections_container = sections
        this.layoutMode_container = layoutMode
    }
}
