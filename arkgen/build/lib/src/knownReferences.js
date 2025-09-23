"use strict";
/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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
Object.defineProperty(exports, "__esModule", { value: true });
exports.getReferenceTo = exports.loadKnownReferences = exports.referenceNames = void 0;
const core_1 = require("@idlizer/core");
const fs_1 = require("fs");
const KnownReferencesSchema = core_1.D.object({
    AttributeModifier: core_1.D.string(),
    AttributeUpdater: core_1.D.string(),
});
exports.referenceNames = undefined;
function loadKnownReferences(path) {
    const content = (0, fs_1.readFileSync)(path, 'utf-8');
    const data = JSON.parse(content);
    exports.referenceNames = KnownReferencesSchema.validate(data).unwrap();
}
exports.loadKnownReferences = loadKnownReferences;
function getReferenceTo(key) {
    if (exports.referenceNames === undefined) {
        throw new Error("Reference mapping is not loaded!");
    }
    return exports.referenceNames[key];
}
exports.getReferenceTo = getReferenceTo;
//# sourceMappingURL=knownReferences.js.map