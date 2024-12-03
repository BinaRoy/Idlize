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
#include <vector>
#include <string>

#include "common-interop.h"
#include "arkoala_api_generated.h"
#include "Serializers.h"
#include "events.h"

const %CPP_PREFIX%ArkUIAnyAPI* GetAnyImpl(int kind, int version, std::string* result = nullptr);

static const %CPP_PREFIX%ArkUIFullNodeAPI* GetFullImpl() {
    return reinterpret_cast<const %CPP_PREFIX%ArkUIFullNodeAPI*>(
        GetAnyImpl(static_cast<int>(%CPP_PREFIX%Ark_APIVariantKind::%CPP_PREFIX%FULL),
        %CPP_PREFIX%ARKUI_FULL_API_VERSION, nullptr));
}

static const %CPP_PREFIX%ArkUINodeModifiers* GetNodeModifiers() {
    return GetFullImpl()->getNodeModifiers();
}

static const %CPP_PREFIX%ArkUIAccessors* GetAccessors() {
    return GetFullImpl()->getAccessors();
}

namespace Generated {
    extern const GENERATED_ArkUIEventsAPI* GetArkUiEventsAPI();
}

void impl_EmulateTextInputEvent(KInt nodeId, const KStringPtr& text) {
    /*
    Ark_String str {
        .chars = text.c_str(),
        .length = static_cast<Ark_Int32>(text.length())
    };
    Opt_PreviewText preview;
    preview.tag = ARK_TAG_UNDEFINED;
    GetFullImpl()->getEventsAPI()->getTextInputEventsReceiver()->onChange(nodeId, str, preview);
    */
}
KOALA_INTEROP_V2(EmulateTextInputEvent, KInt, KStringPtr)
