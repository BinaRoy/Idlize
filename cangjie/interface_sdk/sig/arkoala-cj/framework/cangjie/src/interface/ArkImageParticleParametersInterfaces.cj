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
public interface ImageParticleParametersInterfaces <:  {
    public mut open prop src: ResourceStr
    public mut open prop size: ParticleTuple<Dimension, Dimension>
    public mut open prop objectFit: Option<ImageFit>
}
public open class ImageParticleParameters <: ImageParticleParametersInterfaces {
    private var src_container: ResourceStr
    public mut open prop src: ResourceStr
    {
        get() {
            return src_container
        }
        set(src) {
            src_container = src
        }
    }
    private var size_container: ParticleTuple<Dimension, Dimension>
    public mut open prop size: ParticleTuple<Dimension, Dimension>
    {
        get() {
            return size_container
        }
        set(size) {
            size_container = size
        }
    }
    private var objectFit_container: Option<ImageFit>
    public mut open prop objectFit: Option<ImageFit>
    {
        get() {
            return objectFit_container
        }
        set(objectFit) {
            objectFit_container = objectFit
        }
    }
    ImageParticleParameters(src: ResourceStr, size: ParticleTuple<Dimension, Dimension>, objectFit: Option<ImageFit>) {
        this.src_container = src
        this.size_container = size
        this.objectFit_container = objectFit
    }
}
