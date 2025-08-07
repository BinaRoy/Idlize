/*
 * Copyright (c) 2021-2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @file
 * @kit ArkUI
 */

/*** if arkts 1.2 */
import { ResourceColor,Length, PX , VP , LPX, Font, ResourceStr } from './units'
import { Resource } from '../../global/resource';
import { CommonMethod, Optional,ContentModifier,CommonConfiguration } from './common'
import { LinearGradient } from './dataPanel'
import { LengthMetrics } from '../Graphics'
/*** endif */

/**
 * Defines the option of Progress.
 *
 * @interface ProgressOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 7
 */
/**
 * Defines the option of Progress.
 *
 * @interface ProgressOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @form
 * @since 9
 */
/**
 * Defines the option of Progress.
 *
 * @interface ProgressOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @since 10
 */
/**
 * Defines the option of Progress.
 *
 * @interface ProgressOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since 11
 */
declare interface ProgressOptions<Type extends keyof ProgressStyleMap> {
  /**
   * Sets the value of Progress.
   *
   * @type { number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Sets the value of Progress.
   *
   * @type { number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Sets the value of Progress.
   *
   * @type { number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Sets the value of Progress.
   *
   * @type { number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 11
   */
  value: number;

  /**
   * Sets the total of Progress.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Sets the total of Progress.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Sets the total of Progress.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Sets the total of Progress.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 11
   */
  total?: number;

  /**
   * Sets the style of Progress.
   *
   * @type { ?ProgressStyle }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   * @deprecated since 8
   * @useinstead type
   */
  style?: ProgressStyle

  /**
   * Sets the type of Progress.
   *
   * @type { ?Type }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Sets the type of Progress.
   *
   * @type { ?Type }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Sets the type of Progress.
   *
   * @type { ?Type }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Sets the type of Progress.
   *
   * @type { ?Type }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 11
   */
  type?: Type
}

/**
 * Defines the option of Progress.
 *
 * @interface ProgressOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since 20
 * @arkts 1.2
 */
declare interface ProgressOptions {

  /**
   * Sets the value of Progress.
   *
   * @type { number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  value: number;

  /**
   * Sets the total of Progress.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  total?: number;

  /**
   * Sets the type of Progress.
   *
   * @type { ?ProgressType }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  type?: ProgressType
}
/**
 * Type of progress bar
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 8
 */
/**
 * Type of progress bar
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @form
 * @since 9
 */
/**
 * Type of progress bar
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @since 10
 */
/**
 * Type of progress bar
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare enum ProgressType {
  /**
   * Linear progress bar style.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Linear progress bar style.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Linear progress bar style.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Linear progress bar style.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Linear = 0,

  /**
   * Ring progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Ring progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Ring progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Ring progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Ring = 1,

  /**
   * Eclipse progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Eclipse progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Eclipse progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Eclipse progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Eclipse = 2,

  /**
   * ScaleRing progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * ScaleRing progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * ScaleRing progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * ScaleRing progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  ScaleRing = 3,

  /**
   * Capsule progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Capsule progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Capsule progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Capsule progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Capsule = 4
}

/**
 * Current status of progress bar.
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Current status of progress bar.
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare enum ProgressStatus {
  /**
   * Loading status.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Loading status.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  LOADING,

  /**
   * Processing status.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Processing status.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  PROGRESSING
}

/**
 * Defines style options for progress component.
 *
 * @extends CommonProgressStyleOptions
 * @interface ProgressStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 8
 */
/**
 * Defines style options for progress component.
 *
 * @extends CommonProgressStyleOptions
 * @interface ProgressStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @form
 * @since 9
 */
/**
 * Defines style options for progress component.
 *
 * @extends CommonProgressStyleOptions
 * @interface ProgressStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @since 10
 */
/**
 * Defines style options for progress component.
 *
 * @extends CommonProgressStyleOptions
 * @interface ProgressStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface ProgressStyleOptions extends CommonProgressStyleOptions {
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  strokeWidth?: Length;

  /**
   * Defines the scaleCount property.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Defines the scaleCount property.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Defines the scaleCount property.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Defines the scaleCount property.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  scaleCount?: number;

  /**
   * Defines the scaleWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Defines the scaleWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Defines the scaleWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Defines the scaleWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  scaleWidth?: Length;
}

/**
 * Progress common style options.
 *
 * @interface CommonProgressStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Progress common style options.
 *
 * @interface CommonProgressStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface CommonProgressStyleOptions {
  /**
   * Enable smooth effect.
   *
   * @type { ?boolean }
   * @default true
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Enable smooth effect.
   *
   * @type { ?boolean }
   * @default true
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  enableSmoothEffect?: boolean;
}

/**
 * Defines the enable scan effect.
 *
 * @interface ScanEffectOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Defines the enable scan effect.
 *
 * @interface ScanEffectOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface ScanEffectOptions {
  /**
   * Enable scan effect.
   *
   * @type { ?boolean }
   * @default false
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Enable scan effect.
   *
   * @type { ?boolean }
   * @default false
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  enableScanEffect?: boolean;
}

/**
 * Defines the Eclipse style Options.
 *
 * @extends CommonProgressStyleOptions
 * @interface EclipseStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Defines the Eclipse style Options.
 *
 * @extends CommonProgressStyleOptions
 * @interface EclipseStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface EclipseStyleOptions extends CommonProgressStyleOptions {

}

/**
 * Defines the ScaleRing style Options.
 *
 * @extends CommonProgressStyleOptions
 * @interface ScaleRingStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Defines the ScaleRing style Options.
 *
 * @extends CommonProgressStyleOptions
 * @interface ScaleRingStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface ScaleRingStyleOptions extends CommonProgressStyleOptions {
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  strokeWidth?: Length;

  /**
   * Defines the scaleWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the scaleWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  scaleWidth?: Length;

  /**
   * Defines the scaleCount property.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the scaleCount property.
   *
   * @type { ?number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  scaleCount?: number;
}

/**
 * Defines the ring style Options.
 *
 * @extends ScanEffectOptions, CommonProgressStyleOptions
 * @interface RingStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Defines the ring style Options.
 *
 * @extends ScanEffectOptions, CommonProgressStyleOptions
 * @interface RingStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface RingStyleOptions extends ScanEffectOptions, CommonProgressStyleOptions {
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  strokeWidth?: Length;

  /**
   * Enables progress shadow.
   *
   * @type { ?boolean }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Enables progress shadow.
   *
   * @type { ?boolean }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  shadow?: boolean;

  /**
   * The status of progress, default is PROGRESSING. Set to LOADING status will trigger the loading animation.
   *
   * @type { ?ProgressStatus }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * The status of progress, default is PROGRESSING. Set to LOADING status will trigger the loading animation.
   *
   * @type { ?ProgressStatus }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  status?: ProgressStatus;
}

/**
 * Defines the linear style Options.
 *
 * @extends ScanEffectOptions, CommonProgressStyleOptions
 * @interface LinearStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Defines the linear style Options.
 *
 * @extends ScanEffectOptions, CommonProgressStyleOptions
 * @interface LinearStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface LinearStyleOptions extends ScanEffectOptions, CommonProgressStyleOptions {
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the strokeWidth property.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  strokeWidth?: Length;
  /**
   * Defines the stroke radius property.
   *
   * @type { ?(PX | VP | LPX | Resource) }
   * @default strokeWidth / 2
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the stroke radius property.
   *
   * @type { ?(PX | VP | LPX | Resource) }
   * @default strokeWidth / 2
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  strokeRadius?: PX | VP | LPX | Resource;
}

/**
 * Defines the capsule style Options.
 *
 * @extends ScanEffectOptions, CommonProgressStyleOptions
 * @interface CapsuleStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Defines the capsule style Options.
 *
 * @extends ScanEffectOptions, CommonProgressStyleOptions
 * @interface CapsuleStyleOptions
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface CapsuleStyleOptions extends ScanEffectOptions, CommonProgressStyleOptions {
  /**
   * Set the inner border color.
   *
   * @type { ?ResourceColor }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Set the inner border color.
   *
   * @type { ?ResourceColor }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  borderColor?: ResourceColor;

  /**
   * Set the border width.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Set the border width.
   *
   * @type { ?Length }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  borderWidth?: Length;

  /**
   * Set the text content.
   *
   * @type { ?string }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Set the text content.
   *
   * @type { ?string }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since 11
   */
  /**
   * Set the text content.
   *
   * @type { ?ResourceStr }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since 20
   */
  content?: ResourceStr;

  /**
   * Set the text style.
   *
   * @type { ?Font }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Set the text style.
   *
   * @type { ?Font }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  font?: Font;

  /**
   * Set the text fontColor.
   *
   * @type { ?ResourceColor }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Set the text fontColor.
   *
   * @type { ?ResourceColor }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  fontColor?: ResourceColor;

  /**
   * show default percentage.
   *
   * @type { ?boolean }
   * @default false
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * show default percentage.
   *
   * @type { ?boolean }
   * @default false
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  showDefaultPercentage?: boolean;

  /**
   * Set border rounded corner radius.
   *
   * @type { ?LengthMetrics }
   * @default height / 2
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'18','1.2':'20'}
   * @arkts 1.1&1.2
   */
  borderRadius?: LengthMetrics;
}

/**
 * Type of progress bar
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 7
 */
/**
 * Type of progress bar
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @form
 * @since 9
 */
/**
 * Type of progress bar
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @since 10
 */
/**
 * Type of progress bar
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare enum ProgressStyle {
  /**
   * Linear progress bar style.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Linear progress bar style.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Linear progress bar style.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Linear progress bar style.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Linear,

  /**
   * Ring progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Ring progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Ring progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Ring progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Ring,

  /**
   * Eclipse progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Eclipse progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Eclipse progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Eclipse progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Eclipse,

  /**
   * ScaleRing progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * ScaleRing progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * ScaleRing progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * ScaleRing progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  ScaleRing,

  /**
   * Capsule progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Capsule progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Capsule progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Capsule progress bar.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Capsule,
}

/**
 * Defines the map for progress type and style.
 *
 * @interface ProgressStyleMap
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 10
 */
/**
 * Defines the map for progress type and style.
 *
 * @interface ProgressStyleMap
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface ProgressStyleMap {
  /**
   * Defines the map for Linear progress.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the map for Linear progress.
   *
   * @type { LinearStyleOptions | ProgressStyleOptions }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since 11
   */
  [ProgressType.Linear]: LinearStyleOptions | ProgressStyleOptions;

  /**
   * Defines the map for Ring progress.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the map for Ring progress.
   *
   * @type { RingStyleOptions | ProgressStyleOptions }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since 11
   */
  [ProgressType.Ring]: RingStyleOptions | ProgressStyleOptions;

  /**
   * Defines the map for Eclipse progress.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the map for Eclipse progress.
   *
   * @type { EclipseStyleOptions | ProgressStyleOptions }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since 11
   */
  [ProgressType.Eclipse]: EclipseStyleOptions | ProgressStyleOptions;

  /**
   * Defines the map for ScaleRing progress.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the map for ScaleRing progress.
   *
   * @type { ScaleRingStyleOptions | ProgressStyleOptions }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since 11
   */
  [ProgressType.ScaleRing]: ScaleRingStyleOptions | ProgressStyleOptions;

  /**
   * Defines the map for Capsule progress.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 10
   */
  /**
   * Defines the map for Capsule progress.
   *
   * @type { CapsuleStyleOptions | ProgressStyleOptions }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since 11
   */
  [ProgressType.Capsule]: CapsuleStyleOptions | ProgressStyleOptions;
}

/**
 * Provides the progress bar interface.
 *
 * @interface ProgressInterface
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 7
 */
/**
 * Provides the progress bar interface.
 *
 * @interface ProgressInterface
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @form
 * @since 9
 */
/**
 * Provides the progress bar interface.
 *
 * @interface ProgressInterface
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @since 10
 */
/**
 * Provides the progress bar interface.
 *
 * @interface ProgressInterface
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 * @noninterop
 */
interface ProgressInterface {
  /**
   * Called when the progress bar is set.
   *
   * @param { ProgressOptions<Type> } options
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Called when the progress bar is set.
   *
   * @param { ProgressOptions<Type> } options
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Called when the progress bar is set.
   *
   * @param { ProgressOptions<Type> } options
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Called when the progress bar is set.
   *
   * @param { ProgressOptions<Type> } options
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 11
   */
  <Type extends keyof ProgressStyleMap>(options: ProgressOptions<Type>): ProgressAttribute<Type>;
  /**
   * Called when the progress bar is set.
   *
   * @param { ProgressOptions } options
   * @returns { ProgressAttribute }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  (options: ProgressOptions): ProgressAttribute;
}

/**
 * Defines the progress attribute functions.
 *
 * @extends CommonMethod<ProgressAttribute<Type>>
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 7
 */
/**
 * Defines the progress attribute functions.
 *
 * @extends CommonMethod<ProgressAttribute<Type>>
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @form
 * @since 9
 */
/**
 * Defines the progress attribute functions.
 *
 * @extends CommonMethod<ProgressAttribute<Type>>
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @since 10
 */
/**
 * Defines the progress attribute functions.
 *
 * @extends CommonMethod<ProgressAttribute<Type>>
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since 11
 * @noninterop
 */
declare class ProgressAttribute<Type extends keyof ProgressStyleMap = keyof ProgressStyleMap,
  Style extends ProgressStyleMap[Type] = ProgressStyleMap[Type]> extends CommonMethod<ProgressAttribute<Type>> {
  /**
   * Called when the current progress value is set.
   *
   * @param { number } value
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Called when the current progress value is set.
   *
   * @param { number } value
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Called when the current progress value is set.
   *
   * @param { number } value
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Called when the current progress value is set.
   *
   * @param { number } value
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 11
   */
  value(value: number): ProgressAttribute<Type>;

  /**
   * Called when the progress bar foreground is set.
   *
   * @param { ResourceColor | LinearGradient } value
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Called when the progress bar foreground is set.
   *
   * @param { ResourceColor | LinearGradient } value
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Called when the progress bar foreground is set.
   *
   * @param { ResourceColor | LinearGradient } value - indicates the color of the progress.
   * @returns { ProgressAttribute<Type> } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Called when the progress bar foreground is set.
   *
   * @param { ResourceColor | LinearGradient } value - indicates the color of the progress.
   * @returns { ProgressAttribute<Type> } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 11
   */
  color(value: ResourceColor | LinearGradient): ProgressAttribute<Type>;

  /**
   * Called when the style of progress bar is set.
   *
   * @param { Style } value
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Called when the style of progress bar is set.
   *
   * @param { Style } value
   * @returns { ProgressAttribute<Type> }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @form
   * @since 9
   */
  /**
   * Called when the style of progress bar is set.
   *
   * @param { Style } value - indicates the style of the progress.
   * @returns { ProgressAttribute<Type> } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @since 10
   */
  /**
   * Called when the style of progress bar is set.
   *
   * @param { Style } value - indicates the style of the progress.
   * @returns { ProgressAttribute<Type> } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 11
   */
  style(value: Style): ProgressAttribute<Type>;

  /**
   * Sets if mark to privacy sensitive.
   *
   * @param { Optional<boolean> } isPrivacySensitiveMode - indicates if mark to privacy sensitive.
   * @returns { ProgressAttribute<Type> } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 12
   */
  privacySensitive(isPrivacySensitiveMode: Optional<boolean>): ProgressAttribute<Type>;

  /**
   * Set the contentModifier of progress.
   *
   * @param { ContentModifier<ProgressConfiguration> } modifier - The contentModifier of progress.
   * @returns { ProgressAttribute<Type> } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since 12
   */
  contentModifier(modifier: ContentModifier<ProgressConfiguration>): ProgressAttribute<Type>;
}

/**
 * Defines the progress attribute functions.
 *
 * @extends CommonMethod<ProgressAttribute>
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since 20
 * @arkts 1.2
 * @noninterop
 */
declare class ProgressAttribute extends CommonMethod<ProgressAttribute> {
  /**
   * Called when the current progress value is set.
   *
   * @param { number } value
   * @returns { ProgressAttribute }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  value(value: number): ProgressAttribute;

  /**
   * Called when the progress bar foreground is set.
   *
   * @param { ResourceColor | LinearGradient } value - indicates the color of the progress.
   * @returns { ProgressAttribute } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  color(value: ResourceColor | LinearGradient): ProgressAttribute;

  /**
   * Called when the style of progress bar is set.
   *
   * @param { LinearStyleOptions | RingStyleOptions | CapsuleStyleOptions | ProgressStyleOptions } value - indicates the style of the progress.
   * @returns { ProgressAttribute } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  style(value: LinearStyleOptions | RingStyleOptions | CapsuleStyleOptions | ProgressStyleOptions): ProgressAttribute;

  /**
   * Sets if mark to privacy sensitive.
   *
   * @param { Optional<boolean> } isPrivacySensitiveMode - indicates if mark to privacy sensitive.
   * @returns { ProgressAttribute } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @form
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  privacySensitive(isPrivacySensitiveMode: Optional<boolean>): ProgressAttribute;

  /**
   * Set the contentModifier of progress.
   *
   * @param { ContentModifier<ProgressConfiguration> } modifier - The contentModifier of progress.
   * @returns { ProgressAttribute } the attribute of the progress.
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since 20
   * @arkts 1.2
   */
  contentModifier(modifier: ContentModifier<ProgressConfiguration>): ProgressAttribute;
}

/**
 * ProgressConfiguration used by progress contentModifier
 *
 * @extends CommonConfiguration<ProgressConfiguration>
 * @interface ProgressConfiguration
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @atomicservice
 * @since arkts {'1.1':'12','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare interface ProgressConfiguration extends CommonConfiguration<ProgressConfiguration> {
  /**
   * The value of Progress.
   *
   * @type { number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'12','1.2':'20'}
   * @arkts 1.1&1.2
   */
  value: number;

  /**
   * The total of Progress.
   *
   * @type { number }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @crossplatform
   * @atomicservice
   * @since arkts {'1.1':'12','1.2':'20'}
   * @arkts 1.1&1.2
   */
  total: number;
}

/**
 * Defines Progress Component.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 7
 */
/**
 * Defines Progress Component.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @form
 * @since 9
 */
/**
 * Defines Progress Component.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @since 10
 */
/**
 * Defines Progress Component.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since 11
 * @noninterop
 */
declare const Progress: ProgressInterface;

/**
 * Defines Progress Component instance.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 7
 */
/**
 * Defines Progress Component instance.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @form
 * @since 9
 */
/**
 * Defines Progress Component instance.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @since 10
 */
/**
 * Defines Progress Component instance.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @crossplatform
 * @form
 * @atomicservice
 * @since 11
 * @noninterop
 */
declare const ProgressInstance: ProgressAttribute<keyof ProgressStyleMap>;
