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
public interface RoundedRectOptionsInterfaces <:  {
    public mut open prop width: Option<Length>
    public mut open prop height: Option<Length>
    public mut open prop radiusWidth: Option<Length>
    public mut open prop radiusHeight: Option<Length>
}
public open class RoundedRectOptions <: RoundedRectOptionsInterfaces {
    private var width_container: Option<Length>
    public mut open prop width: Option<Length>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Length>
    public mut open prop height: Option<Length>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var radiusWidth_container: Option<Length>
    public mut open prop radiusWidth: Option<Length>
    {
        get() {
            return radiusWidth_container
        }
        set(radiusWidth) {
            radiusWidth_container = radiusWidth
        }
    }
    private var radiusHeight_container: Option<Length>
    public mut open prop radiusHeight: Option<Length>
    {
        get() {
            return radiusHeight_container
        }
        set(radiusHeight) {
            radiusHeight_container = radiusHeight
        }
    }
    RoundedRectOptions(width: Option<Length>, height: Option<Length>, radiusWidth: Option<Length>, radiusHeight: Option<Length>) {
        this.width_container = width
        this.height_container = height
        this.radiusWidth_container = radiusWidth
        this.radiusHeight_container = radiusHeight
    }
}
