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
public interface CustomColorsInterfaces <:  {
    public mut open prop brand: Option<ResourceColor>
    public mut open prop warning: Option<ResourceColor>
    public mut open prop alert: Option<ResourceColor>
    public mut open prop confirm: Option<ResourceColor>
    public mut open prop fontPrimary: Option<ResourceColor>
    public mut open prop fontSecondary: Option<ResourceColor>
    public mut open prop fontTertiary: Option<ResourceColor>
    public mut open prop fontFourth: Option<ResourceColor>
    public mut open prop fontEmphasize: Option<ResourceColor>
    public mut open prop fontOnPrimary: Option<ResourceColor>
    public mut open prop fontOnSecondary: Option<ResourceColor>
    public mut open prop fontOnTertiary: Option<ResourceColor>
    public mut open prop fontOnFourth: Option<ResourceColor>
    public mut open prop iconPrimary: Option<ResourceColor>
    public mut open prop iconSecondary: Option<ResourceColor>
    public mut open prop iconTertiary: Option<ResourceColor>
    public mut open prop iconFourth: Option<ResourceColor>
    public mut open prop iconEmphasize: Option<ResourceColor>
    public mut open prop iconSubEmphasize: Option<ResourceColor>
    public mut open prop iconOnPrimary: Option<ResourceColor>
    public mut open prop iconOnSecondary: Option<ResourceColor>
    public mut open prop iconOnTertiary: Option<ResourceColor>
    public mut open prop iconOnFourth: Option<ResourceColor>
    public mut open prop backgroundPrimary: Option<ResourceColor>
    public mut open prop backgroundSecondary: Option<ResourceColor>
    public mut open prop backgroundTertiary: Option<ResourceColor>
    public mut open prop backgroundFourth: Option<ResourceColor>
    public mut open prop backgroundEmphasize: Option<ResourceColor>
    public mut open prop compForegroundPrimary: Option<ResourceColor>
    public mut open prop compBackgroundPrimary: Option<ResourceColor>
    public mut open prop compBackgroundPrimaryTran: Option<ResourceColor>
    public mut open prop compBackgroundPrimaryContrary: Option<ResourceColor>
    public mut open prop compBackgroundGray: Option<ResourceColor>
    public mut open prop compBackgroundSecondary: Option<ResourceColor>
    public mut open prop compBackgroundTertiary: Option<ResourceColor>
    public mut open prop compBackgroundEmphasize: Option<ResourceColor>
    public mut open prop compBackgroundNeutral: Option<ResourceColor>
    public mut open prop compEmphasizeSecondary: Option<ResourceColor>
    public mut open prop compEmphasizeTertiary: Option<ResourceColor>
    public mut open prop compDivider: Option<ResourceColor>
    public mut open prop compCommonContrary: Option<ResourceColor>
    public mut open prop compBackgroundFocus: Option<ResourceColor>
    public mut open prop compFocusedPrimary: Option<ResourceColor>
    public mut open prop compFocusedSecondary: Option<ResourceColor>
    public mut open prop compFocusedTertiary: Option<ResourceColor>
    public mut open prop interactiveHover: Option<ResourceColor>
    public mut open prop interactivePressed: Option<ResourceColor>
    public mut open prop interactiveFocus: Option<ResourceColor>
    public mut open prop interactiveActive: Option<ResourceColor>
    public mut open prop interactiveSelect: Option<ResourceColor>
    public mut open prop interactiveClick: Option<ResourceColor>
}
public open class CustomColors <: CustomColorsInterfaces {
    private var brand_container: Option<ResourceColor>
    public mut open prop brand: Option<ResourceColor>
    {
        get() {
            return brand_container
        }
        set(brand) {
            brand_container = brand
        }
    }
    private var warning_container: Option<ResourceColor>
    public mut open prop warning: Option<ResourceColor>
    {
        get() {
            return warning_container
        }
        set(warning) {
            warning_container = warning
        }
    }
    private var alert_container: Option<ResourceColor>
    public mut open prop alert: Option<ResourceColor>
    {
        get() {
            return alert_container
        }
        set(alert) {
            alert_container = alert
        }
    }
    private var confirm_container: Option<ResourceColor>
    public mut open prop confirm: Option<ResourceColor>
    {
        get() {
            return confirm_container
        }
        set(confirm) {
            confirm_container = confirm
        }
    }
    private var fontPrimary_container: Option<ResourceColor>
    public mut open prop fontPrimary: Option<ResourceColor>
    {
        get() {
            return fontPrimary_container
        }
        set(fontPrimary) {
            fontPrimary_container = fontPrimary
        }
    }
    private var fontSecondary_container: Option<ResourceColor>
    public mut open prop fontSecondary: Option<ResourceColor>
    {
        get() {
            return fontSecondary_container
        }
        set(fontSecondary) {
            fontSecondary_container = fontSecondary
        }
    }
    private var fontTertiary_container: Option<ResourceColor>
    public mut open prop fontTertiary: Option<ResourceColor>
    {
        get() {
            return fontTertiary_container
        }
        set(fontTertiary) {
            fontTertiary_container = fontTertiary
        }
    }
    private var fontFourth_container: Option<ResourceColor>
    public mut open prop fontFourth: Option<ResourceColor>
    {
        get() {
            return fontFourth_container
        }
        set(fontFourth) {
            fontFourth_container = fontFourth
        }
    }
    private var fontEmphasize_container: Option<ResourceColor>
    public mut open prop fontEmphasize: Option<ResourceColor>
    {
        get() {
            return fontEmphasize_container
        }
        set(fontEmphasize) {
            fontEmphasize_container = fontEmphasize
        }
    }
    private var fontOnPrimary_container: Option<ResourceColor>
    public mut open prop fontOnPrimary: Option<ResourceColor>
    {
        get() {
            return fontOnPrimary_container
        }
        set(fontOnPrimary) {
            fontOnPrimary_container = fontOnPrimary
        }
    }
    private var fontOnSecondary_container: Option<ResourceColor>
    public mut open prop fontOnSecondary: Option<ResourceColor>
    {
        get() {
            return fontOnSecondary_container
        }
        set(fontOnSecondary) {
            fontOnSecondary_container = fontOnSecondary
        }
    }
    private var fontOnTertiary_container: Option<ResourceColor>
    public mut open prop fontOnTertiary: Option<ResourceColor>
    {
        get() {
            return fontOnTertiary_container
        }
        set(fontOnTertiary) {
            fontOnTertiary_container = fontOnTertiary
        }
    }
    private var fontOnFourth_container: Option<ResourceColor>
    public mut open prop fontOnFourth: Option<ResourceColor>
    {
        get() {
            return fontOnFourth_container
        }
        set(fontOnFourth) {
            fontOnFourth_container = fontOnFourth
        }
    }
    private var iconPrimary_container: Option<ResourceColor>
    public mut open prop iconPrimary: Option<ResourceColor>
    {
        get() {
            return iconPrimary_container
        }
        set(iconPrimary) {
            iconPrimary_container = iconPrimary
        }
    }
    private var iconSecondary_container: Option<ResourceColor>
    public mut open prop iconSecondary: Option<ResourceColor>
    {
        get() {
            return iconSecondary_container
        }
        set(iconSecondary) {
            iconSecondary_container = iconSecondary
        }
    }
    private var iconTertiary_container: Option<ResourceColor>
    public mut open prop iconTertiary: Option<ResourceColor>
    {
        get() {
            return iconTertiary_container
        }
        set(iconTertiary) {
            iconTertiary_container = iconTertiary
        }
    }
    private var iconFourth_container: Option<ResourceColor>
    public mut open prop iconFourth: Option<ResourceColor>
    {
        get() {
            return iconFourth_container
        }
        set(iconFourth) {
            iconFourth_container = iconFourth
        }
    }
    private var iconEmphasize_container: Option<ResourceColor>
    public mut open prop iconEmphasize: Option<ResourceColor>
    {
        get() {
            return iconEmphasize_container
        }
        set(iconEmphasize) {
            iconEmphasize_container = iconEmphasize
        }
    }
    private var iconSubEmphasize_container: Option<ResourceColor>
    public mut open prop iconSubEmphasize: Option<ResourceColor>
    {
        get() {
            return iconSubEmphasize_container
        }
        set(iconSubEmphasize) {
            iconSubEmphasize_container = iconSubEmphasize
        }
    }
    private var iconOnPrimary_container: Option<ResourceColor>
    public mut open prop iconOnPrimary: Option<ResourceColor>
    {
        get() {
            return iconOnPrimary_container
        }
        set(iconOnPrimary) {
            iconOnPrimary_container = iconOnPrimary
        }
    }
    private var iconOnSecondary_container: Option<ResourceColor>
    public mut open prop iconOnSecondary: Option<ResourceColor>
    {
        get() {
            return iconOnSecondary_container
        }
        set(iconOnSecondary) {
            iconOnSecondary_container = iconOnSecondary
        }
    }
    private var iconOnTertiary_container: Option<ResourceColor>
    public mut open prop iconOnTertiary: Option<ResourceColor>
    {
        get() {
            return iconOnTertiary_container
        }
        set(iconOnTertiary) {
            iconOnTertiary_container = iconOnTertiary
        }
    }
    private var iconOnFourth_container: Option<ResourceColor>
    public mut open prop iconOnFourth: Option<ResourceColor>
    {
        get() {
            return iconOnFourth_container
        }
        set(iconOnFourth) {
            iconOnFourth_container = iconOnFourth
        }
    }
    private var backgroundPrimary_container: Option<ResourceColor>
    public mut open prop backgroundPrimary: Option<ResourceColor>
    {
        get() {
            return backgroundPrimary_container
        }
        set(backgroundPrimary) {
            backgroundPrimary_container = backgroundPrimary
        }
    }
    private var backgroundSecondary_container: Option<ResourceColor>
    public mut open prop backgroundSecondary: Option<ResourceColor>
    {
        get() {
            return backgroundSecondary_container
        }
        set(backgroundSecondary) {
            backgroundSecondary_container = backgroundSecondary
        }
    }
    private var backgroundTertiary_container: Option<ResourceColor>
    public mut open prop backgroundTertiary: Option<ResourceColor>
    {
        get() {
            return backgroundTertiary_container
        }
        set(backgroundTertiary) {
            backgroundTertiary_container = backgroundTertiary
        }
    }
    private var backgroundFourth_container: Option<ResourceColor>
    public mut open prop backgroundFourth: Option<ResourceColor>
    {
        get() {
            return backgroundFourth_container
        }
        set(backgroundFourth) {
            backgroundFourth_container = backgroundFourth
        }
    }
    private var backgroundEmphasize_container: Option<ResourceColor>
    public mut open prop backgroundEmphasize: Option<ResourceColor>
    {
        get() {
            return backgroundEmphasize_container
        }
        set(backgroundEmphasize) {
            backgroundEmphasize_container = backgroundEmphasize
        }
    }
    private var compForegroundPrimary_container: Option<ResourceColor>
    public mut open prop compForegroundPrimary: Option<ResourceColor>
    {
        get() {
            return compForegroundPrimary_container
        }
        set(compForegroundPrimary) {
            compForegroundPrimary_container = compForegroundPrimary
        }
    }
    private var compBackgroundPrimary_container: Option<ResourceColor>
    public mut open prop compBackgroundPrimary: Option<ResourceColor>
    {
        get() {
            return compBackgroundPrimary_container
        }
        set(compBackgroundPrimary) {
            compBackgroundPrimary_container = compBackgroundPrimary
        }
    }
    private var compBackgroundPrimaryTran_container: Option<ResourceColor>
    public mut open prop compBackgroundPrimaryTran: Option<ResourceColor>
    {
        get() {
            return compBackgroundPrimaryTran_container
        }
        set(compBackgroundPrimaryTran) {
            compBackgroundPrimaryTran_container = compBackgroundPrimaryTran
        }
    }
    private var compBackgroundPrimaryContrary_container: Option<ResourceColor>
    public mut open prop compBackgroundPrimaryContrary: Option<ResourceColor>
    {
        get() {
            return compBackgroundPrimaryContrary_container
        }
        set(compBackgroundPrimaryContrary) {
            compBackgroundPrimaryContrary_container = compBackgroundPrimaryContrary
        }
    }
    private var compBackgroundGray_container: Option<ResourceColor>
    public mut open prop compBackgroundGray: Option<ResourceColor>
    {
        get() {
            return compBackgroundGray_container
        }
        set(compBackgroundGray) {
            compBackgroundGray_container = compBackgroundGray
        }
    }
    private var compBackgroundSecondary_container: Option<ResourceColor>
    public mut open prop compBackgroundSecondary: Option<ResourceColor>
    {
        get() {
            return compBackgroundSecondary_container
        }
        set(compBackgroundSecondary) {
            compBackgroundSecondary_container = compBackgroundSecondary
        }
    }
    private var compBackgroundTertiary_container: Option<ResourceColor>
    public mut open prop compBackgroundTertiary: Option<ResourceColor>
    {
        get() {
            return compBackgroundTertiary_container
        }
        set(compBackgroundTertiary) {
            compBackgroundTertiary_container = compBackgroundTertiary
        }
    }
    private var compBackgroundEmphasize_container: Option<ResourceColor>
    public mut open prop compBackgroundEmphasize: Option<ResourceColor>
    {
        get() {
            return compBackgroundEmphasize_container
        }
        set(compBackgroundEmphasize) {
            compBackgroundEmphasize_container = compBackgroundEmphasize
        }
    }
    private var compBackgroundNeutral_container: Option<ResourceColor>
    public mut open prop compBackgroundNeutral: Option<ResourceColor>
    {
        get() {
            return compBackgroundNeutral_container
        }
        set(compBackgroundNeutral) {
            compBackgroundNeutral_container = compBackgroundNeutral
        }
    }
    private var compEmphasizeSecondary_container: Option<ResourceColor>
    public mut open prop compEmphasizeSecondary: Option<ResourceColor>
    {
        get() {
            return compEmphasizeSecondary_container
        }
        set(compEmphasizeSecondary) {
            compEmphasizeSecondary_container = compEmphasizeSecondary
        }
    }
    private var compEmphasizeTertiary_container: Option<ResourceColor>
    public mut open prop compEmphasizeTertiary: Option<ResourceColor>
    {
        get() {
            return compEmphasizeTertiary_container
        }
        set(compEmphasizeTertiary) {
            compEmphasizeTertiary_container = compEmphasizeTertiary
        }
    }
    private var compDivider_container: Option<ResourceColor>
    public mut open prop compDivider: Option<ResourceColor>
    {
        get() {
            return compDivider_container
        }
        set(compDivider) {
            compDivider_container = compDivider
        }
    }
    private var compCommonContrary_container: Option<ResourceColor>
    public mut open prop compCommonContrary: Option<ResourceColor>
    {
        get() {
            return compCommonContrary_container
        }
        set(compCommonContrary) {
            compCommonContrary_container = compCommonContrary
        }
    }
    private var compBackgroundFocus_container: Option<ResourceColor>
    public mut open prop compBackgroundFocus: Option<ResourceColor>
    {
        get() {
            return compBackgroundFocus_container
        }
        set(compBackgroundFocus) {
            compBackgroundFocus_container = compBackgroundFocus
        }
    }
    private var compFocusedPrimary_container: Option<ResourceColor>
    public mut open prop compFocusedPrimary: Option<ResourceColor>
    {
        get() {
            return compFocusedPrimary_container
        }
        set(compFocusedPrimary) {
            compFocusedPrimary_container = compFocusedPrimary
        }
    }
    private var compFocusedSecondary_container: Option<ResourceColor>
    public mut open prop compFocusedSecondary: Option<ResourceColor>
    {
        get() {
            return compFocusedSecondary_container
        }
        set(compFocusedSecondary) {
            compFocusedSecondary_container = compFocusedSecondary
        }
    }
    private var compFocusedTertiary_container: Option<ResourceColor>
    public mut open prop compFocusedTertiary: Option<ResourceColor>
    {
        get() {
            return compFocusedTertiary_container
        }
        set(compFocusedTertiary) {
            compFocusedTertiary_container = compFocusedTertiary
        }
    }
    private var interactiveHover_container: Option<ResourceColor>
    public mut open prop interactiveHover: Option<ResourceColor>
    {
        get() {
            return interactiveHover_container
        }
        set(interactiveHover) {
            interactiveHover_container = interactiveHover
        }
    }
    private var interactivePressed_container: Option<ResourceColor>
    public mut open prop interactivePressed: Option<ResourceColor>
    {
        get() {
            return interactivePressed_container
        }
        set(interactivePressed) {
            interactivePressed_container = interactivePressed
        }
    }
    private var interactiveFocus_container: Option<ResourceColor>
    public mut open prop interactiveFocus: Option<ResourceColor>
    {
        get() {
            return interactiveFocus_container
        }
        set(interactiveFocus) {
            interactiveFocus_container = interactiveFocus
        }
    }
    private var interactiveActive_container: Option<ResourceColor>
    public mut open prop interactiveActive: Option<ResourceColor>
    {
        get() {
            return interactiveActive_container
        }
        set(interactiveActive) {
            interactiveActive_container = interactiveActive
        }
    }
    private var interactiveSelect_container: Option<ResourceColor>
    public mut open prop interactiveSelect: Option<ResourceColor>
    {
        get() {
            return interactiveSelect_container
        }
        set(interactiveSelect) {
            interactiveSelect_container = interactiveSelect
        }
    }
    private var interactiveClick_container: Option<ResourceColor>
    public mut open prop interactiveClick: Option<ResourceColor>
    {
        get() {
            return interactiveClick_container
        }
        set(interactiveClick) {
            interactiveClick_container = interactiveClick
        }
    }
    CustomColors(brand: Option<ResourceColor>, warning: Option<ResourceColor>, alert: Option<ResourceColor>, confirm: Option<ResourceColor>, fontPrimary: Option<ResourceColor>, fontSecondary: Option<ResourceColor>, fontTertiary: Option<ResourceColor>, fontFourth: Option<ResourceColor>, fontEmphasize: Option<ResourceColor>, fontOnPrimary: Option<ResourceColor>, fontOnSecondary: Option<ResourceColor>, fontOnTertiary: Option<ResourceColor>, fontOnFourth: Option<ResourceColor>, iconPrimary: Option<ResourceColor>, iconSecondary: Option<ResourceColor>, iconTertiary: Option<ResourceColor>, iconFourth: Option<ResourceColor>, iconEmphasize: Option<ResourceColor>, iconSubEmphasize: Option<ResourceColor>, iconOnPrimary: Option<ResourceColor>, iconOnSecondary: Option<ResourceColor>, iconOnTertiary: Option<ResourceColor>, iconOnFourth: Option<ResourceColor>, backgroundPrimary: Option<ResourceColor>, backgroundSecondary: Option<ResourceColor>, backgroundTertiary: Option<ResourceColor>, backgroundFourth: Option<ResourceColor>, backgroundEmphasize: Option<ResourceColor>, compForegroundPrimary: Option<ResourceColor>, compBackgroundPrimary: Option<ResourceColor>, compBackgroundPrimaryTran: Option<ResourceColor>, compBackgroundPrimaryContrary: Option<ResourceColor>, compBackgroundGray: Option<ResourceColor>, compBackgroundSecondary: Option<ResourceColor>, compBackgroundTertiary: Option<ResourceColor>, compBackgroundEmphasize: Option<ResourceColor>, compBackgroundNeutral: Option<ResourceColor>, compEmphasizeSecondary: Option<ResourceColor>, compEmphasizeTertiary: Option<ResourceColor>, compDivider: Option<ResourceColor>, compCommonContrary: Option<ResourceColor>, compBackgroundFocus: Option<ResourceColor>, compFocusedPrimary: Option<ResourceColor>, compFocusedSecondary: Option<ResourceColor>, compFocusedTertiary: Option<ResourceColor>, interactiveHover: Option<ResourceColor>, interactivePressed: Option<ResourceColor>, interactiveFocus: Option<ResourceColor>, interactiveActive: Option<ResourceColor>, interactiveSelect: Option<ResourceColor>, interactiveClick: Option<ResourceColor>) {
        this.brand_container = brand
        this.warning_container = warning
        this.alert_container = alert
        this.confirm_container = confirm
        this.fontPrimary_container = fontPrimary
        this.fontSecondary_container = fontSecondary
        this.fontTertiary_container = fontTertiary
        this.fontFourth_container = fontFourth
        this.fontEmphasize_container = fontEmphasize
        this.fontOnPrimary_container = fontOnPrimary
        this.fontOnSecondary_container = fontOnSecondary
        this.fontOnTertiary_container = fontOnTertiary
        this.fontOnFourth_container = fontOnFourth
        this.iconPrimary_container = iconPrimary
        this.iconSecondary_container = iconSecondary
        this.iconTertiary_container = iconTertiary
        this.iconFourth_container = iconFourth
        this.iconEmphasize_container = iconEmphasize
        this.iconSubEmphasize_container = iconSubEmphasize
        this.iconOnPrimary_container = iconOnPrimary
        this.iconOnSecondary_container = iconOnSecondary
        this.iconOnTertiary_container = iconOnTertiary
        this.iconOnFourth_container = iconOnFourth
        this.backgroundPrimary_container = backgroundPrimary
        this.backgroundSecondary_container = backgroundSecondary
        this.backgroundTertiary_container = backgroundTertiary
        this.backgroundFourth_container = backgroundFourth
        this.backgroundEmphasize_container = backgroundEmphasize
        this.compForegroundPrimary_container = compForegroundPrimary
        this.compBackgroundPrimary_container = compBackgroundPrimary
        this.compBackgroundPrimaryTran_container = compBackgroundPrimaryTran
        this.compBackgroundPrimaryContrary_container = compBackgroundPrimaryContrary
        this.compBackgroundGray_container = compBackgroundGray
        this.compBackgroundSecondary_container = compBackgroundSecondary
        this.compBackgroundTertiary_container = compBackgroundTertiary
        this.compBackgroundEmphasize_container = compBackgroundEmphasize
        this.compBackgroundNeutral_container = compBackgroundNeutral
        this.compEmphasizeSecondary_container = compEmphasizeSecondary
        this.compEmphasizeTertiary_container = compEmphasizeTertiary
        this.compDivider_container = compDivider
        this.compCommonContrary_container = compCommonContrary
        this.compBackgroundFocus_container = compBackgroundFocus
        this.compFocusedPrimary_container = compFocusedPrimary
        this.compFocusedSecondary_container = compFocusedSecondary
        this.compFocusedTertiary_container = compFocusedTertiary
        this.interactiveHover_container = interactiveHover
        this.interactivePressed_container = interactivePressed
        this.interactiveFocus_container = interactiveFocus
        this.interactiveActive_container = interactiveActive
        this.interactiveSelect_container = interactiveSelect
        this.interactiveClick_container = interactiveClick
    }
}
