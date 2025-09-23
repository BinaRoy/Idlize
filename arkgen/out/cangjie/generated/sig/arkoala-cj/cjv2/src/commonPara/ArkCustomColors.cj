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

public class CustomColors {
    public var brand: Option<ResourceColor>
    public var warning: Option<ResourceColor>
    public var alert: Option<ResourceColor>
    public var confirm: Option<ResourceColor>
    public var fontPrimary: Option<ResourceColor>
    public var fontSecondary: Option<ResourceColor>
    public var fontTertiary: Option<ResourceColor>
    public var fontFourth: Option<ResourceColor>
    public var fontEmphasize: Option<ResourceColor>
    public var fontOnPrimary: Option<ResourceColor>
    public var fontOnSecondary: Option<ResourceColor>
    public var fontOnTertiary: Option<ResourceColor>
    public var fontOnFourth: Option<ResourceColor>
    public var iconPrimary: Option<ResourceColor>
    public var iconSecondary: Option<ResourceColor>
    public var iconTertiary: Option<ResourceColor>
    public var iconFourth: Option<ResourceColor>
    public var iconEmphasize: Option<ResourceColor>
    public var iconSubEmphasize: Option<ResourceColor>
    public var iconOnPrimary: Option<ResourceColor>
    public var iconOnSecondary: Option<ResourceColor>
    public var iconOnTertiary: Option<ResourceColor>
    public var iconOnFourth: Option<ResourceColor>
    public var backgroundPrimary: Option<ResourceColor>
    public var backgroundSecondary: Option<ResourceColor>
    public var backgroundTertiary: Option<ResourceColor>
    public var backgroundFourth: Option<ResourceColor>
    public var backgroundEmphasize: Option<ResourceColor>
    public var compForegroundPrimary: Option<ResourceColor>
    public var compBackgroundPrimary: Option<ResourceColor>
    public var compBackgroundPrimaryTran: Option<ResourceColor>
    public var compBackgroundPrimaryContrary: Option<ResourceColor>
    public var compBackgroundGray: Option<ResourceColor>
    public var compBackgroundSecondary: Option<ResourceColor>
    public var compBackgroundTertiary: Option<ResourceColor>
    public var compBackgroundEmphasize: Option<ResourceColor>
    public var compBackgroundNeutral: Option<ResourceColor>
    public var compEmphasizeSecondary: Option<ResourceColor>
    public var compEmphasizeTertiary: Option<ResourceColor>
    public var compDivider: Option<ResourceColor>
    public var compCommonContrary: Option<ResourceColor>
    public var compBackgroundFocus: Option<ResourceColor>
    public var compFocusedPrimary: Option<ResourceColor>
    public var compFocusedSecondary: Option<ResourceColor>
    public var compFocusedTertiary: Option<ResourceColor>
    public var interactiveHover: Option<ResourceColor>
    public var interactivePressed: Option<ResourceColor>
    public var interactiveFocus: Option<ResourceColor>
    public var interactiveActive: Option<ResourceColor>
    public var interactiveSelect: Option<ResourceColor>
    public var interactiveClick: Option<ResourceColor>
    init(brand: Option<ResourceColor>, warning: Option<ResourceColor>, alert: Option<ResourceColor>, confirm: Option<ResourceColor>, fontPrimary: Option<ResourceColor>, fontSecondary: Option<ResourceColor>, fontTertiary: Option<ResourceColor>, fontFourth: Option<ResourceColor>, fontEmphasize: Option<ResourceColor>, fontOnPrimary: Option<ResourceColor>, fontOnSecondary: Option<ResourceColor>, fontOnTertiary: Option<ResourceColor>, fontOnFourth: Option<ResourceColor>, iconPrimary: Option<ResourceColor>, iconSecondary: Option<ResourceColor>, iconTertiary: Option<ResourceColor>, iconFourth: Option<ResourceColor>, iconEmphasize: Option<ResourceColor>, iconSubEmphasize: Option<ResourceColor>, iconOnPrimary: Option<ResourceColor>, iconOnSecondary: Option<ResourceColor>, iconOnTertiary: Option<ResourceColor>, iconOnFourth: Option<ResourceColor>, backgroundPrimary: Option<ResourceColor>, backgroundSecondary: Option<ResourceColor>, backgroundTertiary: Option<ResourceColor>, backgroundFourth: Option<ResourceColor>, backgroundEmphasize: Option<ResourceColor>, compForegroundPrimary: Option<ResourceColor>, compBackgroundPrimary: Option<ResourceColor>, compBackgroundPrimaryTran: Option<ResourceColor>, compBackgroundPrimaryContrary: Option<ResourceColor>, compBackgroundGray: Option<ResourceColor>, compBackgroundSecondary: Option<ResourceColor>, compBackgroundTertiary: Option<ResourceColor>, compBackgroundEmphasize: Option<ResourceColor>, compBackgroundNeutral: Option<ResourceColor>, compEmphasizeSecondary: Option<ResourceColor>, compEmphasizeTertiary: Option<ResourceColor>, compDivider: Option<ResourceColor>, compCommonContrary: Option<ResourceColor>, compBackgroundFocus: Option<ResourceColor>, compFocusedPrimary: Option<ResourceColor>, compFocusedSecondary: Option<ResourceColor>, compFocusedTertiary: Option<ResourceColor>, interactiveHover: Option<ResourceColor>, interactivePressed: Option<ResourceColor>, interactiveFocus: Option<ResourceColor>, interactiveActive: Option<ResourceColor>, interactiveSelect: Option<ResourceColor>, interactiveClick: Option<ResourceColor>) {
        this.brand = brand
        this.warning = warning
        this.alert = alert
        this.confirm = confirm
        this.fontPrimary = fontPrimary
        this.fontSecondary = fontSecondary
        this.fontTertiary = fontTertiary
        this.fontFourth = fontFourth
        this.fontEmphasize = fontEmphasize
        this.fontOnPrimary = fontOnPrimary
        this.fontOnSecondary = fontOnSecondary
        this.fontOnTertiary = fontOnTertiary
        this.fontOnFourth = fontOnFourth
        this.iconPrimary = iconPrimary
        this.iconSecondary = iconSecondary
        this.iconTertiary = iconTertiary
        this.iconFourth = iconFourth
        this.iconEmphasize = iconEmphasize
        this.iconSubEmphasize = iconSubEmphasize
        this.iconOnPrimary = iconOnPrimary
        this.iconOnSecondary = iconOnSecondary
        this.iconOnTertiary = iconOnTertiary
        this.iconOnFourth = iconOnFourth
        this.backgroundPrimary = backgroundPrimary
        this.backgroundSecondary = backgroundSecondary
        this.backgroundTertiary = backgroundTertiary
        this.backgroundFourth = backgroundFourth
        this.backgroundEmphasize = backgroundEmphasize
        this.compForegroundPrimary = compForegroundPrimary
        this.compBackgroundPrimary = compBackgroundPrimary
        this.compBackgroundPrimaryTran = compBackgroundPrimaryTran
        this.compBackgroundPrimaryContrary = compBackgroundPrimaryContrary
        this.compBackgroundGray = compBackgroundGray
        this.compBackgroundSecondary = compBackgroundSecondary
        this.compBackgroundTertiary = compBackgroundTertiary
        this.compBackgroundEmphasize = compBackgroundEmphasize
        this.compBackgroundNeutral = compBackgroundNeutral
        this.compEmphasizeSecondary = compEmphasizeSecondary
        this.compEmphasizeTertiary = compEmphasizeTertiary
        this.compDivider = compDivider
        this.compCommonContrary = compCommonContrary
        this.compBackgroundFocus = compBackgroundFocus
        this.compFocusedPrimary = compFocusedPrimary
        this.compFocusedSecondary = compFocusedSecondary
        this.compFocusedTertiary = compFocusedTertiary
        this.interactiveHover = interactiveHover
        this.interactivePressed = interactivePressed
        this.interactiveFocus = interactiveFocus
        this.interactiveActive = interactiveActive
        this.interactiveSelect = interactiveSelect
        this.interactiveClick = interactiveClick
    }
}
