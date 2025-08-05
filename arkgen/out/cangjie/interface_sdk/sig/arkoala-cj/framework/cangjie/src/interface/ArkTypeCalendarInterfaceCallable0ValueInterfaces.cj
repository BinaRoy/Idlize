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
public interface Type_CalendarInterface_callable0_valueInterfaces <:  {
    public mut open prop date: Literal_Number_day_month_year
    public mut open prop currentData: MonthData
    public mut open prop preData: MonthData
    public mut open prop nextData: MonthData
    public mut open prop controller: Option<CalendarController>
}
public open class Type_CalendarInterface_callable0_value <: Type_CalendarInterface_callable0_valueInterfaces {
    private var date_container: Literal_Number_day_month_year
    public mut open prop date: Literal_Number_day_month_year
    {
        get() {
            return date_container
        }
        set(date) {
            date_container = date
        }
    }
    private var currentData_container: MonthData
    public mut open prop currentData: MonthData
    {
        get() {
            return currentData_container
        }
        set(currentData) {
            currentData_container = currentData
        }
    }
    private var preData_container: MonthData
    public mut open prop preData: MonthData
    {
        get() {
            return preData_container
        }
        set(preData) {
            preData_container = preData
        }
    }
    private var nextData_container: MonthData
    public mut open prop nextData: MonthData
    {
        get() {
            return nextData_container
        }
        set(nextData) {
            nextData_container = nextData
        }
    }
    private var controller_container: Option<CalendarController>
    public mut open prop controller: Option<CalendarController>
    {
        get() {
            return controller_container
        }
        set(controller) {
            controller_container = controller
        }
    }
    Type_CalendarInterface_callable0_value(date: Literal_Number_day_month_year, currentData: MonthData, preData: MonthData, nextData: MonthData, controller: Option<CalendarController>) {
        this.date_container = date
        this.currentData_container = currentData
        this.preData_container = preData
        this.nextData_container = nextData
        this.controller_container = controller
    }
}
