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

/**
 * Defines the ColorMode of device.
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 7
 */
/**
 * Defines the ColorMode of device.
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare enum ColorMode {
  /**
   * Light mode.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Light mode.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  LIGHT = 0,

  /**
   * Dark mode.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Dark mode.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  DARK,
}

/**
 * Defines the LayoutDirection of device.
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @since 7
 */
/**
 * Defines the LayoutDirection of device.
 *
 * @enum { number }
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @atomicservice
 * @since arkts {'1.1':'11','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare enum LayoutDirection {
  /**
   * Elements are laid out from left to right.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Elements are laid out from left to right.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  LTR,

  /**
   * Elements are laid out from right to left.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 7
   */
  /**
   * Elements are laid out from right to left.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  RTL,

  /**
   * Elements are laid out from auto.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @since 8
   */
  /**
   * Elements are laid out from auto.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @atomicservice
   * @since arkts {'1.1':'11','1.2':'20'}
   * @arkts 1.1&1.2
   */
  Auto,
}

/**
 * Defines the base class of storage.
 *
 * @syscap SystemCapability.ArkUI.ArkUI.Full
 * @systemapi
 * @since arkts {'1.1':'7','1.2':'20'}
 * @arkts 1.1&1.2
 */
declare class Storage {
  /**
   * Constructor parameters.
   *
   * @param { boolean } needCrossThread
   * @param { string } file
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @systemapi
   * @since arkts {'1.1':'7','1.2':'20'}
   * @arkts 1.1&1.2
   */
  constructor(needCrossThread?: boolean, file?: string);

  /**
   * Called when data is obtained.
   *
   * @param { string } key
   * @returns { string | undefined }
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @systemapi
   * @since arkts {'1.1':'7','1.2':'20'}
   * @arkts 1.1&1.2
   */
  get(key: string): string | undefined;

  /**
   * Called when setting.
   *
   * @param { string } key
   * @param { any } val
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @systemapi
   * @since 7
   */
  set(key: string, val: any): void;
  
  /**
   * Called when setting.
   *
   * @param { string } key
   * @param { Object | undefined | null } val
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @systemapi
   * @since 20
   * @arkts 1.2
   */
  set(key: string, val: Object | undefined | null): void;

  /**
   * Called when data is cleared.
   *
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @systemapi
   * @since arkts {'1.1':'7','1.2':'20'}
   * @arkts 1.1&1.2
   */
  clear(): void;

  /**
   * Called when data is deleted.
   *
   * @param { string } key
   * @syscap SystemCapability.ArkUI.ArkUI.Full
   * @systemapi
   * @since arkts {'1.1':'7','1.2':'20'}
   * @arkts 1.1&1.2
   */
  delete(key: string): void;
}
