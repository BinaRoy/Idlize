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

/*
 * WARNING! THIS FILE IS AUTO-GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!
 */

#include "arkoala-macros.h"
#include "arkoala_api_generated.h"
#include "node_api.h"

namespace OHOS::Ace::NG {
namespace GeneratedApiImpl {
    Ark_Float32 GetDensity(Ark_Int32 deviceId);
    Ark_Float32 GetFontScale(Ark_Int32 deviceId);
    Ark_Float32 GetDesignWidthScale(Ark_Int32 deviceId);

    // Basic API
    Ark_NodeHandle GetNodeByViewStack();
    void DisposeNode(Ark_NodeHandle node);
    void DumpTreeNode(Ark_NodeHandle node);
    Ark_Int32 AddChild(Ark_NodeHandle parent, Ark_NodeHandle child);
    void RemoveChild(Ark_NodeHandle parent, Ark_NodeHandle child);
    Ark_Int32 InsertChildAfter(Ark_NodeHandle parent, Ark_NodeHandle child, Ark_NodeHandle sibling);
    Ark_Int32 InsertChildBefore(Ark_NodeHandle parent, Ark_NodeHandle child, Ark_NodeHandle sibling);
    Ark_Int32 InsertChildAt(Ark_NodeHandle parent, Ark_NodeHandle child, Ark_Int32 position);
    void ApplyModifierFinish(Ark_NodeHandle node);
    void MarkDirty(Ark_NodeHandle node, Ark_UInt32 flag);
    Ark_Boolean IsBuilderNode(Ark_NodeHandle node);
    Ark_Float32 ConvertLengthMetricsUnit(Ark_Float32 value, Ark_Int32 originUnit, Ark_Int32 targetUnit);

    // Extended API
    void SetCustomMethodFlag(Ark_NodeHandle node, Ark_Int32 flag);
    Ark_Int32 GetCustomMethodFlag(Ark_NodeHandle node);
    void RegisterCustomNodeAsyncEvent(Ark_NodeHandle node, Ark_Int32 eventType, void* extraParam);
    Ark_Int32 UnregisterCustomNodeEvent(Ark_NodeHandle node, Ark_Int32 eventType);
    void SetCustomCallback(Ark_VMContext context, Ark_NodeHandle node, Ark_Int32 callback);
    void SetCustomNodeDestroyCallback(void (*destroy)(Ark_NodeHandle nodeId));
    Ark_Int32 MeasureLayoutAndDraw(Ark_VMContext vmContext, Ark_NodeHandle rootPtr);
    Ark_Int32 MeasureNode(Ark_VMContext vmContext, Ark_NodeHandle node, Ark_Float32* data);
    Ark_Int32 LayoutNode(Ark_VMContext vmContext, Ark_NodeHandle node, Ark_Float32 (*data)[2]);
    Ark_Int32 DrawNode(Ark_VMContext vmContext, Ark_NodeHandle node, Ark_Float32* data);
    void SetAttachNodePtr(Ark_NodeHandle node, void* value);
    void* GetAttachNodePtr(Ark_NodeHandle node);
    void SetMeasureWidth(Ark_NodeHandle node, Ark_Int32 value);
    Ark_Int32 GetMeasureWidth(Ark_NodeHandle node);
    void SetMeasureHeight(Ark_NodeHandle node, Ark_Int32 value);
    Ark_Int32 GetMeasureHeight(Ark_NodeHandle node);
    void SetX(Ark_NodeHandle node, Ark_Int32 value);
    void SetY(Ark_NodeHandle node, Ark_Int32 value);
    Ark_Int32 GetX(Ark_NodeHandle node);
    Ark_Int32 GetY(Ark_NodeHandle node);
    void SetAlignment(Ark_NodeHandle node, Ark_Int32 value);
    Ark_Int32 GetAlignment(Ark_NodeHandle node);
    void GetLayoutConstraint(Ark_NodeHandle node, Ark_Int32* value);
    Ark_Int32 IndexerChecker(Ark_VMContext vmContext, Ark_NodeHandle nodePtr);
    void SetRangeUpdater(Ark_NodeHandle nodePtr, Ark_Int32 updaterId);
    void SetLazyItemIndexer(Ark_VMContext vmContext, Ark_NodeHandle nodePtr, Ark_Int32 indexerId);
    Ark_PipelineContext GetPipelineContext(Ark_NodeHandle node);
    void SetVsyncCallback(Ark_PipelineContext pipelineContext, Ark_VsyncCallback callback);
    void SetChildTotalCount(Ark_NodeHandle node, Ark_Int32 totalCount);
    void ShowCrash(Ark_CharPtr message);
    void SetCallbackMethod(GENERATED_Ark_APICallbackMethod* method);
} // namespace OHOS::Ace::NG::GeneratedApiImpl

namespace GeneratedBridge {
    Ark_NodeHandle CreateNode(GENERATED_Ark_NodeType type, Ark_Int32 id, Ark_Int32 flags);
}


}

namespace OHOS::Ace::NG::GeneratedModifier {

void SetAppendGroupedLog(void* pFunc) {}

const GENERATED_ArkUIBlankModifier* GetBlankModifier();
const GENERATED_ArkUIButtonModifier* GetButtonModifier();
const GENERATED_ArkUICheckboxModifier* GetCheckboxModifier();
const GENERATED_ArkUIColumnModifier* GetColumnModifier();
const GENERATED_ArkUICommonMethodModifier* GetCommonMethodModifier();
const GENERATED_ArkUIComponentRootModifier* GetComponentRootModifier();
const GENERATED_ArkUICustomLayoutRootModifier* GetCustomLayoutRootModifier();
const GENERATED_ArkUIListModifier* GetListModifier();
const GENERATED_ArkUINavigationModifier* GetNavigationModifier();
const GENERATED_ArkUIRootModifier* GetRootModifier();
const GENERATED_ArkUIScrollableCommonMethodModifier* GetScrollableCommonMethodModifier();
const GENERATED_ArkUITestModifier* GetTestModifier();
const GENERATED_ArkUITextInputModifier* GetTextInputModifier();
const GENERATED_ArkUITextPickerModifier* GetTextPickerModifier();
const GENERATED_ArkUIAnimationExtenderAccessor* GetAnimationExtenderAccessor();
const GENERATED_ArkUIBaseEventAccessor* GetBaseEventAccessor();
const GENERATED_ArkUIBaseShapeAccessor* GetBaseShapeAccessor();
const GENERATED_ArkUIBuilderNodeOpsAccessor* GetBuilderNodeOpsAccessor();
const GENERATED_ArkUIClickEventAccessor* GetClickEventAccessor();
const GENERATED_ArkUIColorFilterAccessor* GetColorFilterAccessor();
const GENERATED_ArkUICommonShapeAccessor* GetCommonShapeAccessor();
const GENERATED_ArkUIContentModifierHelperAccessor* GetContentModifierHelperAccessor();
const GENERATED_ArkUICustomDialogControllerAccessor* GetCustomDialogControllerAccessor();
const GENERATED_ArkUIDrawModifierAccessor* GetDrawModifierAccessor();
const GENERATED_ArkUIEnvironmentBackendAccessor* GetEnvironmentBackendAccessor();
const GENERATED_ArkUIEventEmulatorAccessor* GetEventEmulatorAccessor();
const GENERATED_ArkUIFocusControllerAccessor* GetFocusControllerAccessor();
const GENERATED_ArkUIGlobalScope_ohos_arkui_componentSnapshotAccessor* GetGlobalScope_ohos_arkui_componentSnapshotAccessor();
const GENERATED_ArkUIGlobalScope_ohos_arkui_performanceMonitorAccessor* GetGlobalScope_ohos_arkui_performanceMonitorAccessor();
const GENERATED_ArkUIGlobalScope_ohos_fontAccessor* GetGlobalScope_ohos_fontAccessor();
const GENERATED_ArkUIGlobalScope_ohos_measure_utilsAccessor* GetGlobalScope_ohos_measure_utilsAccessor();
const GENERATED_ArkUIICurveAccessor* GetICurveAccessor();
const GENERATED_ArkUIIUIContextAccessor* GetIUIContextAccessor();
const GENERATED_ArkUILazyForEachOpsAccessor* GetLazyForEachOpsAccessor();
const GENERATED_ArkUINavExtenderAccessor* GetNavExtenderAccessor();
const GENERATED_ArkUIPersistentStorageBackendAccessor* GetPersistentStorageBackendAccessor();
const GENERATED_ArkUIRenderServiceNodeAccessor* GetRenderServiceNodeAccessor();
const GENERATED_ArkUIRestrictedWorkerAccessor* GetRestrictedWorkerAccessor();
const GENERATED_ArkUISceneAccessor* GetSceneAccessor();
const GENERATED_ArkUIScreenshotServiceAccessor* GetScreenshotServiceAccessor();
const GENERATED_ArkUISearchOpsAccessor* GetSearchOpsAccessor();
const GENERATED_ArkUIStateStylesOpsAccessor* GetStateStylesOpsAccessor();
const GENERATED_ArkUISystemOpsAccessor* GetSystemOpsAccessor();
const GENERATED_ArkUITextFieldOpsAccessor* GetTextFieldOpsAccessor();
const GENERATED_ArkUITextPickerDialogAccessor* GetTextPickerDialogAccessor();
const GENERATED_ArkUIUIContextAtomicServiceBarAccessor* GetUIContextAtomicServiceBarAccessor();
const GENERATED_ArkUIGlobalScopeAccessor* GetGlobalScopeAccessor();
const GENERATED_ArkUINodeModifiers* GENERATED_GetArkUINodeModifiers()
{
    static const GENERATED_ArkUINodeModifiers modifiersImpl = {
        GetBlankModifier,
        GetButtonModifier,
        GetCheckboxModifier,
        GetColumnModifier,
        GetCommonMethodModifier,
        GetComponentRootModifier,
        GetCustomLayoutRootModifier,
        GetListModifier,
        GetNavigationModifier,
        GetRootModifier,
        GetScrollableCommonMethodModifier,
        GetTestModifier,
        GetTextInputModifier,
        GetTextPickerModifier,
    };
    return &modifiersImpl;
}
const GENERATED_ArkUIAccessors* GENERATED_GetArkUIAccessors()
{
    static const GENERATED_ArkUIAccessors accessorsImpl = {
        GetAnimationExtenderAccessor,
        GetBaseEventAccessor,
        GetBaseShapeAccessor,
        GetBuilderNodeOpsAccessor,
        GetClickEventAccessor,
        GetColorFilterAccessor,
        GetCommonShapeAccessor,
        GetContentModifierHelperAccessor,
        GetCustomDialogControllerAccessor,
        GetDrawModifierAccessor,
        GetEnvironmentBackendAccessor,
        GetEventEmulatorAccessor,
        GetFocusControllerAccessor,
        GetGlobalScope_ohos_arkui_componentSnapshotAccessor,
        GetGlobalScope_ohos_arkui_performanceMonitorAccessor,
        GetGlobalScope_ohos_fontAccessor,
        GetGlobalScope_ohos_measure_utilsAccessor,
        GetICurveAccessor,
        GetIUIContextAccessor,
        GetLazyForEachOpsAccessor,
        GetNavExtenderAccessor,
        GetPersistentStorageBackendAccessor,
        GetRenderServiceNodeAccessor,
        GetRestrictedWorkerAccessor,
        GetSceneAccessor,
        GetScreenshotServiceAccessor,
        GetSearchOpsAccessor,
        GetStateStylesOpsAccessor,
        GetSystemOpsAccessor,
        GetTextFieldOpsAccessor,
        GetTextPickerDialogAccessor,
        GetUIContextAtomicServiceBarAccessor,
        GetGlobalScopeAccessor,
    };
    return &accessorsImpl;
}
const GENERATED_ArkUIBasicNodeAPI* GENERATED_GetBasicAPI()
{
    static const GENERATED_ArkUIBasicNodeAPI basicNodeAPIImpl = {
        GENERATED_ARKUI_BASIC_NODE_API_VERSION, // version
        OHOS::Ace::NG::GeneratedBridge::CreateNode,
        OHOS::Ace::NG::GeneratedApiImpl::GetNodeByViewStack,
        OHOS::Ace::NG::GeneratedApiImpl::DisposeNode,
        OHOS::Ace::NG::GeneratedApiImpl::DumpTreeNode,
        OHOS::Ace::NG::GeneratedApiImpl::AddChild,
        OHOS::Ace::NG::GeneratedApiImpl::RemoveChild,
        OHOS::Ace::NG::GeneratedApiImpl::InsertChildAfter,
        OHOS::Ace::NG::GeneratedApiImpl::InsertChildBefore,
        OHOS::Ace::NG::GeneratedApiImpl::InsertChildAt,
        OHOS::Ace::NG::GeneratedApiImpl::ApplyModifierFinish,
        OHOS::Ace::NG::GeneratedApiImpl::MarkDirty,
        OHOS::Ace::NG::GeneratedApiImpl::IsBuilderNode,
        OHOS::Ace::NG::GeneratedApiImpl::ConvertLengthMetricsUnit
    };
    return &basicNodeAPIImpl;
}

const GENERATED_ArkUIExtendedNodeAPI* GENERATED_GetExtendedAPI()
{
    static const GENERATED_ArkUIExtendedNodeAPI extendedNodeAPIImpl = {
        GENERATED_ARKUI_EXTENDED_NODE_API_VERSION, // version
        OHOS::Ace::NG::GeneratedApiImpl::GetDensity,
        OHOS::Ace::NG::GeneratedApiImpl::GetFontScale,
        OHOS::Ace::NG::GeneratedApiImpl::GetDesignWidthScale,
        OHOS::Ace::NG::GeneratedApiImpl::SetCallbackMethod,
        OHOS::Ace::NG::GeneratedApiImpl::SetCustomMethodFlag,
        OHOS::Ace::NG::GeneratedApiImpl::GetCustomMethodFlag,
        OHOS::Ace::NG::GeneratedApiImpl::SetCustomCallback,
        OHOS::Ace::NG::GeneratedApiImpl::SetCustomNodeDestroyCallback,
        OHOS::Ace::NG::GeneratedApiImpl::MeasureLayoutAndDraw,
        OHOS::Ace::NG::GeneratedApiImpl::MeasureNode,
        OHOS::Ace::NG::GeneratedApiImpl::LayoutNode,
        OHOS::Ace::NG::GeneratedApiImpl::DrawNode,
        OHOS::Ace::NG::GeneratedApiImpl::SetAttachNodePtr,
        OHOS::Ace::NG::GeneratedApiImpl::GetAttachNodePtr,
        OHOS::Ace::NG::GeneratedApiImpl::SetMeasureWidth,
        OHOS::Ace::NG::GeneratedApiImpl::GetMeasureWidth,
        OHOS::Ace::NG::GeneratedApiImpl::SetMeasureHeight,
        OHOS::Ace::NG::GeneratedApiImpl::GetMeasureHeight,
        OHOS::Ace::NG::GeneratedApiImpl::SetX,
        OHOS::Ace::NG::GeneratedApiImpl::GetX,
        OHOS::Ace::NG::GeneratedApiImpl::SetY,
        OHOS::Ace::NG::GeneratedApiImpl::GetY,
        OHOS::Ace::NG::GeneratedApiImpl::GetLayoutConstraint,
        OHOS::Ace::NG::GeneratedApiImpl::SetAlignment,
        OHOS::Ace::NG::GeneratedApiImpl::GetAlignment,
        OHOS::Ace::NG::GeneratedApiImpl::IndexerChecker,
        OHOS::Ace::NG::GeneratedApiImpl::SetRangeUpdater,
        OHOS::Ace::NG::GeneratedApiImpl::SetLazyItemIndexer,
        OHOS::Ace::NG::GeneratedApiImpl::GetPipelineContext,
        OHOS::Ace::NG::GeneratedApiImpl::SetVsyncCallback,
        OHOS::Ace::NG::GeneratedApiImpl::SetChildTotalCount,
        OHOS::Ace::NG::GeneratedApiImpl::ShowCrash
    };
    return &extendedNodeAPIImpl;
}

// Improve: remove me!
const GENERATED_ArkUIFullNodeAPI* GENERATED_GetFullAPI()
{
    static const GENERATED_ArkUIFullNodeAPI fullAPIImpl = {
        GENERATED_ARKUI_FULL_API_VERSION, // version
        GENERATED_GetArkUINodeModifiers,
        GENERATED_GetArkUIAccessors,
    };
    return &fullAPIImpl;
}

void setLogger(const ServiceLogger* logger) {
    SetDummyLogger(reinterpret_cast<const GroupLogger*>(logger));
}


const GenericServiceAPI* GetServiceAPI()
{
    static const GenericServiceAPI serviceAPIImpl = {
        GENERIC_SERVICE_API_VERSION, // version
        setLogger
    };
    return &serviceAPIImpl;
}

EXTERN_C IDLIZE_API_EXPORT const OH_AnyAPI* GENERATED_GetArkAnyAPI(
    GENERATED_Ark_APIVariantKind kind, int version)
{
    switch (static_cast<int>(kind)) {
        case static_cast<int>(GENERATED_FULL):
            if (version == GENERATED_ARKUI_FULL_API_VERSION) {
                return reinterpret_cast<const OH_AnyAPI*>(GENERATED_GetFullAPI());
            }
            break;
        case static_cast<int>(GENERATED_BASIC):
            if (version == GENERATED_ARKUI_BASIC_NODE_API_VERSION) {
                return reinterpret_cast<const OH_AnyAPI*>(GENERATED_GetBasicAPI());
            }
            break;
        case static_cast<int>(GENERATED_EXTENDED):
            if (version == GENERATED_ARKUI_EXTENDED_NODE_API_VERSION) {
                return reinterpret_cast<const OH_AnyAPI*>(GENERATED_GetExtendedAPI());
            }
            break;
        case static_cast<int>(GENERIC_SERVICE_API_KIND):
            if (version == GENERIC_SERVICE_API_VERSION) {
                return reinterpret_cast<const OH_AnyAPI*>(GetServiceAPI());
            }
            break;
        default:
            break;
    }
    return nullptr;
}

}
