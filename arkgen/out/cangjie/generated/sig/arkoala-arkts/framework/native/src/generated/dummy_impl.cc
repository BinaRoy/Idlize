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
#define _HAS_STD_BYTE 0

#include <algorithm>
#include <array>
#include <chrono>
#include <future>
#include <thread>

#include "Serializers.h"
#include "interop-logging.h"
#include "arkoala-macros.h"
#include "tree.h"
#include "logging.h"
#include "dynamic-loader.h"
#include "interop-utils.h"
#include "arkoala_api_generated.h"

#undef max

// For logging we use operations exposed via interop, SetLoggerSymbol() is called
// when library is loaded.
const GroupLogger* loggerInstance = GetDefaultLogger();

const GroupLogger* GetDummyLogger() {
    return loggerInstance;
}

void SetDummyLogger(const GroupLogger* logger) {
    loggerInstance = logger;
}

void startGroupedLog(int kind) {
    GetDummyLogger()->startGroupedLog(kind);
}
void stopGroupedLog(int kind) {
    GetDummyLogger()->stopGroupedLog(kind);
}
const char* getGroupedLog(int kind) {
    return GetDummyLogger()->getGroupedLog(kind);
}
int needGroupedLog(int kind) {
    return GetDummyLogger()->needGroupedLog(kind);
}
void appendGroupedLog(int kind, const std::string& str) {
    GetDummyLogger()->appendGroupedLog(kind, str.c_str());
}

void dummyClassFinalizer(KNativePointer* ptr) {
    char hex[20];
    interop_snprintf(hex, sizeof(hex), "0x%llx", (long long)ptr);
    string out("dummyClassFinalizer(");
    out.append(hex);
    out.append(")");
    appendGroupedLog(1, out);
}

namespace TreeNodeDelays {

void busyWait(Ark_Int64 nsDelay) {
    if (nsDelay <= 0) {
        return;
    }
    using namespace std::chrono;
    auto start = steady_clock::now();
    auto now = start;
    auto deadline = now + nanoseconds(nsDelay);
    std::array<char, 8> buf;
    for (; now < deadline; now = steady_clock::now()) {
        auto nsNow = now.time_since_epoch().count();
        buf = { static_cast<char>(nsNow%100 + 20), 19, 18, 17, 16, 15, 14, static_cast<char>(nsNow%12) };
        for (int i = 0; i < 200; i++) {
            std::next_permutation(buf.begin(), buf.end());
        }
    }
    //ARKOALA_LOG("Requested wait %f ms, actual %f ms\n", nsDelay/1000000.0f, (now - start).count()/1000000.0f);
}

const int MAX_NODE_TYPE = 200;
std::array<Ark_Int64, MAX_NODE_TYPE> createNodeDelay = {};
std::array<Ark_Int64, MAX_NODE_TYPE> measureNodeDelay = {};
std::array<Ark_Int64, MAX_NODE_TYPE> layoutNodeDelay = {};
std::array<Ark_Int64, MAX_NODE_TYPE> drawNodeDelay = {};

void CheckType(GENERATED_Ark_NodeType type) {
    if (static_cast<int>(type) >= MAX_NODE_TYPE) {
        INTEROP_FATAL("Error: GENERATED_Ark_NodeType value is too big, change MAX_NODE_TYPE accordingly");
    }
}

void SetCreateNodeDelay(GENERATED_Ark_NodeType type, Ark_Int64 nanoseconds) {
    CheckType(type);
    createNodeDelay[type] = nanoseconds;
}

void SetMeasureNodeDelay(GENERATED_Ark_NodeType type, Ark_Int64 nanoseconds) {
    CheckType(type);
    measureNodeDelay[type] = nanoseconds;
}

void SetLayoutNodeDelay(GENERATED_Ark_NodeType type, Ark_Int64 nanoseconds) {
    CheckType(type);
    layoutNodeDelay[type] = nanoseconds;
}

void SetDrawNodeDelay(GENERATED_Ark_NodeType type, Ark_Int64 nanoseconds) {
    CheckType(type);
    drawNodeDelay[type] = nanoseconds;
}

}

inline Ark_NodeHandle AsNodeHandle(TreeNode* node) {
    return reinterpret_cast<Ark_NodeHandle>(node);
}

template<typename From>
constexpr TreeNode *AsNode(From ptr) {
    return reinterpret_cast<TreeNode *>(ptr);
}

void EmitOnClick(Ark_NativePointer node, Ark_ClickEvent event) {
    LOGE("EmitOnclick %p", node);
    auto frameNode = AsNode(node);
    frameNode->callClickEvent(event);
}
void RegisterOnClick(Ark_NativePointer node, const Callback_ClickEvent_Void* event) {
    auto frameNode = AsNode(node);
    auto callback = *event;
    callback.resource.hold(callback.resource.resourceId);
    auto onEvent = [callback](Ark_ClickEvent event) {
        if (callback.call) {
            callback.call(callback.resource.resourceId, event);
        }
    };
    frameNode->setClickEvent(std::move(onEvent));
}

void RegisterDrawModifierCallback(Ark_DrawModifier peer, const Callback_DrawContext_Void* event, int type) {
    std::shared_ptr<DrawModifierCaller> modifier = (DrawModifiersQueue.find(peer) != DrawModifiersQueue.end())
        ? DrawModifiersQueue[peer]
        : std::make_shared<DrawModifierCaller>();
    DrawModifiersQueue[peer] = modifier;
    auto callback = *event;
    callback.resource.hold(callback.resource.resourceId);
    auto onEvent = [callback](Ark_DrawContext event) {
        if (callback.call) {
            callback.call(callback.resource.resourceId, event);
        }
    };
    modifier->setDrawModifierCallback(std::move(onEvent), type);
}

void CallDrawModifierCallbacks(Ark_DrawModifier peer) {
    std::shared_ptr<DrawModifierCaller> modifier = DrawModifiersQueue[peer];
    uint64_t pointer = 42;
    auto context = reinterpret_cast<Ark_DrawContext*>(&pointer);
    modifier->callDrawModifierCallback(*context, DrawBehind);
    modifier->callDrawModifierCallback(*context, DrawContent);
    modifier->callDrawModifierCallback(*context, DrawFront);
}

void DumpTree(TreeNode *node, Ark_Int32 indent) {
    ARKOALA_LOG("%s[%s: %d]\n", string(indent * 2, ' ').c_str(), node->namePtr(), node->id());
    for (auto child: *node->children()) {
        if (child)
            DumpTree(child, indent + 1);
    }
}

// Improve: remove in favour of callbackCallerInstance!
GENERATED_Ark_APICallbackMethod *callbacks = nullptr;

int TreeNode::_globalId = 1;
string TreeNode::_noAttribute;

Ark_Float32 parseLength(Ark_Float32 parentValue, Ark_Float32 value, Ark_Int32 unit) {
    switch (unit) {
        //PX
        case 0: {
            const Ark_Float32 scale = 1; // Improve: need getting current device scale
            return value * scale;
        }
        //PERCENTAGE
        case 3: {
            return parentValue / 100 * value;
        }
        default:
            // VP, FP, LPX, UndefinedDimensionUnit: Improve: parse properly this units
            return value;
    }
}

void align(TreeNode *child, Ark_Float32 width, Ark_Float32 height, Ark_Float32* args) {
    switch (child->alignment) {
        case 0: { // Alignment.TopStart
            break;
        }
        case 3: { // Alignment.Start
            args[1] += (height - child->measureResult[1]) / 2;
            break;
        }
        case 6: { // Alignment.BottomStart
            args[1] += height - child->measureResult[1];
            break;
        }
        case 1: { // Alignment.Top
            args[0] += (width - child->measureResult[0]) / 2;
            break;
        }
        case 4: { // Alignment.Center
            args[0] += (width - child->measureResult[0]) / 2;
            args[1] += (height - child->measureResult[1]) / 2;
            break;
        }
        case 7: { // Alignment.Bottom
            args[0] += (width - child->measureResult[0]) / 2;
            args[1] += height - child->measureResult[1];
            break;
        }
        case 2: { // Alignment.TopEnd
            args[0] += width - child->measureResult[0];
            break;
        }
        case 5: { // Alignment.End
            args[0] += width - child->measureResult[0];
            args[1] += (height - child->measureResult[1]) / 2;
            break;
        }
        case 8: { // Alignment.BottomEnd
            args[0] += width - child->measureResult[0];
            args[1] += height - child->measureResult[1];
            break;
        }
    }
}

GENERATED_Ark_EventCallbackArg arg(Ark_Float32 f32) {
    GENERATED_Ark_EventCallbackArg result;
    result.f32 = f32;
    return result;
}

GENERATED_Ark_EventCallbackArg arg(Ark_Int32 i32) {
    GENERATED_Ark_EventCallbackArg result;
    result.i32 = i32;
    return result;
}

float TreeNode::measure(Ark_VMContext vmContext, float* data) {
    TreeNodeDelays::busyWait(TreeNodeDelays::measureNodeDelay[_customIntData]);

    Ark_Float32 minWidth = data[0];
    Ark_Float32 minHeight = data[1];
    Ark_Float32 maxWidth = data[2];
    Ark_Float32 maxHeight = data[3];
    if (_flags & Ark_APINodeFlags::GENERATED_CUSTOM_MEASURE) {
        GENERATED_Ark_EventCallbackArg args[] = { arg(Ark_APICustomOp::GENERATED_MEASURE), arg(minWidth), arg(minHeight), arg(maxWidth), arg(maxHeight) };
        callbacks->CallInt(vmContext, customId(), 5, &args[0]);
        _width = args[1].f32;
        _height = args[2].f32;
        return 0;
    }

    const Ark_Float32 constraintWidth = data[0];
    const Ark_Float32 constraintHeight = data[1];

    _width = parseLength(constraintWidth, dimensionWidth.value, dimensionWidth.unit);
    _height = parseLength(constraintHeight, dimensionHeight.value, dimensionHeight.unit);

    Ark_Float32 itData[] = { minWidth, minHeight, minHeight, maxHeight };
    if (dimensionWidth.unit != UndefinedDimensionUnit) {
        itData[0] = _width;
    }
    if (dimensionHeight.unit != UndefinedDimensionUnit) {
        itData[1] = _height;
    }

    const bool isWidthWrapped = dimensionWidth.unit == UndefinedDimensionUnit;
    const bool isHeightWrapped = dimensionHeight.unit == UndefinedDimensionUnit;

    for (auto* it: *children()) {
        it->measure(vmContext, &itData[0] );
        if (isWidthWrapped) {
            _width = std::max(_width, itData[0]);
        }
        if (isHeightWrapped) {
            _height = std::max(_height, itData[1]);
        }
    }

    data[0] = _width;
    data[1] = _height;

    measureResult = &data[0];

    // Improve: use return flag for dirty bits propagation.
    return 0;
}

Ark_CanvasHandle getCanvas(TreeNode* node) {
    // Improve: real canvas.
    return reinterpret_cast<Ark_CanvasHandle>(0x123456789aLL);
}

float TreeNode::layout(Ark_VMContext vmContext, float* data) {
    TreeNodeDelays::busyWait(TreeNodeDelays::layoutNodeDelay[_customIntData]);

    if (_flags & Ark_APINodeFlags::GENERATED_CUSTOM_LAYOUT) {
        GENERATED_Ark_EventCallbackArg args[] = { arg(Ark_APICustomOp::GENERATED_LAYOUT), arg(0.0f), arg(0.0f), arg(0.0f), arg(0.0f) };
        callbacks->CallInt(vmContext, customId(), 5, &args[0]);
        return 0;
    }

    _x = data[0];
    _y = data[1];

    for (auto* it: *children()) {
        Ark_Float32 itData[] = { data[0], data[1], data[2], data[3] };
        align(it, _width, _height, &itData[0]);
        it->layout(vmContext, &itData[0]);
    }

    layoutResult = &data[0];

    // Improve: use return flag for dirty bits propagation.
    return 0;
}

float TreeNode::draw(Ark_VMContext vmContext, float* data) {
    TreeNodeDelays::busyWait(TreeNodeDelays::drawNodeDelay[_customIntData]);
    if (_flags & Ark_APINodeFlags::GENERATED_CUSTOM_DRAW) {
        uintptr_t canvas = reinterpret_cast<uintptr_t>(getCanvas(this));
        GENERATED_Ark_EventCallbackArg args[] = {
            arg(Ark_APICustomOp::GENERATED_DRAW),
            arg((Ark_Int32)(canvas & 0xffffffff)),
            arg((Ark_Int32)((canvas >> 32) & 0xffffffff)),
            arg(data[0]), arg(data[1]), arg(data[2]), arg(data[3])
        };
        callbacks->CallInt(vmContext, customId(), 7, &args[0]);
        return 0;
    }
    for (auto* it: *children()) {
        Ark_Float32 itData[] = { 0.0f, 0.0f, 0.0f, 0.0f };
        it->draw(vmContext, &itData[0]);
    }
    return 0;
}

void TreeNode::setMeasureWidthValue(float value) {
    if (measureResult != nullptr) measureResult[0] = value;
    _width = value;
}

float TreeNode::getMeasureWidthValue() {
    return (measureResult == nullptr) ? 0 : measureResult[0];
}

void TreeNode::setMeasureHeightValue(float value) {
    if (measureResult != nullptr) measureResult[1] = value;
    _height = value;
}

float TreeNode::getMeasureHeightValue() {
    return (measureResult == nullptr) ? 0 : measureResult[1];
}

void TreeNode::setXValue(float value) {
    if (layoutResult != nullptr) layoutResult[0] = value;
    _x = value;
}

float TreeNode::getXValue() {
    return (layoutResult == nullptr) ? 0 : layoutResult[0];
}

void TreeNode::setYValue(float value) {
    if (layoutResult != nullptr) layoutResult[1] = value;
    _y = value;
}

float TreeNode::getYValue() {
    return (layoutResult == nullptr) ? 0 : layoutResult[1];
}

namespace OHOS::Ace::NG {

namespace GeneratedBridge {

Ark_NodeHandle CreateNode(GENERATED_Ark_NodeType type, Ark_Int32 id, Ark_Int32 flags) {
    TreeNodeDelays::CheckType(type);
    TreeNodeDelays::busyWait(TreeNodeDelays::createNodeDelay[type]);
    TreeNode *node = new TreeNode("node", id, flags);
    node->setCustomIntData(type);
    Ark_NodeHandle result = AsNodeHandle(node);

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  Ark_NodeHandle peer" + std::to_string(reinterpret_cast<uintptr_t>(result)) + " = GetBasicNodeApi()->createNode(GENERATED_Ark_NodeType("
            + std::to_string(type) + "), " + std::to_string(id) + ", " + std::to_string(flags) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return result;
    }
    string out("createNode(");
    WriteToString(&out, (Ark_Int32)type);
    out.append(", ");
    WriteToString(&out, id);
    out.append(", ");
    WriteToString(&out, flags);
    out.append(")");
    appendGroupedLog(1, out);
    return result;
}
}

namespace GeneratedApiImpl {

static int res_num = 0;

void SetCallbackMethod(GENERATED_Ark_APICallbackMethod* method) {
    callbacks = method;
}

Ark_Float32 GetDensity(Ark_Int32 deviceId) {
    Ark_Float32 result = 1.0f;

    if (!needGroupedLog(1)) {
        return result;
    }

    string out("getDensity(");
    WriteToString(&out, deviceId);
    out.append(")");
    appendGroupedLog(1, out);

    return result;
}

Ark_Float32 GetFontScale(Ark_Int32 deviceId) {
    Ark_Float32 result = 1.0f;

    if (!needGroupedLog(1)) {
        return result;
    }

    string out("getFontScale(");
    WriteToString(&out, deviceId);
    out.append(")");
    appendGroupedLog(1, out);

    return result;
}

Ark_Float32 GetDesignWidthScale(Ark_Int32 deviceId) {
    Ark_Float32 result = 1.0f;

    if (!needGroupedLog(1)) {
        return result;
    }

    string out("getDesignWidthScale(");
    WriteToString(&out, deviceId);
    out.append(")");
    appendGroupedLog(1, out);

    return result;
}

Ark_NodeHandle GetNodeByViewStack() {
    Ark_NodeHandle result = reinterpret_cast<Ark_NodeHandle>(234);
    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  Ark_NodeHandle peer" + std::to_string(reinterpret_cast<uintptr_t>(result)) + " = GetBasicNodeApi()->getNodeByViewStack();\n");
        appendGroupedLog(2, _logData);
    }
    if (!needGroupedLog(1)) {
        return result;
    }
    string out("getNodeByViewStack()");
    appendGroupedLog(1, out);
    return result;
}

void DisposeNode(Ark_NodeHandle node) {
    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  GetBasicNodeApi()->disposeNode(peer" + std::to_string(reinterpret_cast<uintptr_t>(node)) + ");\n");
        appendGroupedLog(2, _logData);
    }
    if (needGroupedLog(1)) {
        string out("disposeNode(");
        WriteToString(&out, node);
        out.append(")");
        appendGroupedLog(1, out);
    }
    AsNode(node)->dispose();
}

void DumpTreeNode(Ark_NodeHandle node) {
    DumpTree(AsNode(node), 0);

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  GetBasicNodeApi()->dumpTreeNode(peer" + std::to_string(reinterpret_cast<uintptr_t>(node)) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return;
    }

    string out("dumpTreeNode(");
    WriteToString(&out, node);
    out.append(")");
    appendGroupedLog(1, out);
}

Ark_Int32 AddChild(Ark_NodeHandle parent, Ark_NodeHandle child) {
    int result = AsNode(parent)->addChild(AsNode(child));

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  Ark_Int32 res" + std::to_string(res_num++) + " = GetBasicNodeApi()->addChild(peer"
            + std::to_string((uintptr_t)parent) + ", peer" + std::to_string((uintptr_t)child) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return result;
    }

    string out("addChild(");
    WriteToString(&out, parent);
    out.append(", ");
    WriteToString(&out, child);
    out.append(")");
    appendGroupedLog(1, out);

    // Improve: implement test
    return result;
}

void RemoveChild(Ark_NodeHandle parent, Ark_NodeHandle child) {
    TreeNode *parentPtr = reinterpret_cast<TreeNode *>(parent);
    TreeNode *childPtr = reinterpret_cast<TreeNode *>(child);
    parentPtr->removeChild(childPtr);

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  GetBasicNodeApi()->removeChild(peer"
            + std::to_string((uintptr_t)parent) + ", peer" + std::to_string((uintptr_t)child) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return;
    }

    string out("removeChild(");
    WriteToString(&out, parent);
    out.append(", ");
    WriteToString(&out, child);
    out.append(")");
    appendGroupedLog(1, out);
}

Ark_Int32 InsertChildAfter(Ark_NodeHandle parent, Ark_NodeHandle child, Ark_NodeHandle sibling) {
    int result = AsNode(parent)->insertChildAfter(AsNode(child), AsNode(sibling));

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  Ark_Int32 res" + std::to_string(res_num++) + " = GetBasicNodeApi()->insertChildAfter(peer"
            + std::to_string((uintptr_t)parent) + ", peer" + std::to_string((uintptr_t)child)
            + ", peer" + std::to_string((uintptr_t)sibling) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return result;
    }

    string out("insertChildAfter(");
    WriteToString(&out, parent);
    out.append(", ");
    WriteToString(&out, child);
    out.append(", ");
    WriteToString(&out, sibling);
    out.append(")");
    appendGroupedLog(1, out);
    return result;
}

Ark_Int32 InsertChildBefore(Ark_NodeHandle parent, Ark_NodeHandle child, Ark_NodeHandle sibling) {
    int result = AsNode(parent)->insertChildBefore(AsNode(child), AsNode(sibling));

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  Ark_Int32 res" + std::to_string(res_num++) + " = GetBasicNodeApi()->insertChildBefore(peer"
            + std::to_string((uintptr_t)parent) + ", peer" + std::to_string((uintptr_t)child)
            + ", peer" + std::to_string((uintptr_t)sibling) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return result;
    }

    string out("insertChildBefore(");
    WriteToString(&out, parent);
    out.append(", ");
    WriteToString(&out, child);
    out.append(", ");
    WriteToString(&out, sibling);
    out.append(")");
    appendGroupedLog(1, out);
    return result;
}

Ark_Int32 InsertChildAt(Ark_NodeHandle parent, Ark_NodeHandle child, Ark_Int32 position) {
    int result = AsNode(parent)->insertChildAt(AsNode(child), position);

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  Ark_Int32 res" + std::to_string(res_num++) + " = GetBasicNodeApi()->insertChildAt(peer"
            + std::to_string((uintptr_t)parent) + ", peer" + std::to_string((uintptr_t)child)
            + ", " + std::to_string(position) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return result;
    }

    string out("insertChildAt(");
    WriteToString(&out, parent);
    out.append(", ");
    WriteToString(&out, child);
    out.append(", ");
    WriteToString(&out, position);
    out.append(")");
    appendGroupedLog(1, out);
    return result;
}

void ApplyModifierFinish(Ark_NodeHandle node) {

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  GetBasicNodeApi()->applyModifierFinish(peer" + std::to_string(reinterpret_cast<uintptr_t>(node)) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return;
    }
    string out("applyModifierFinish(");
    WriteToString(&out, node);
    out.append(")");
    appendGroupedLog(1, out);
}

void MarkDirty(Ark_NodeHandle node, Ark_UInt32 flag) {

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  GetBasicNodeApi()->markDirty(peer" + std::to_string(reinterpret_cast<uintptr_t>(node)) + ", " + std::to_string(flag) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return;
    }
    string out("markDirty(");
    WriteToString(&out, node);
    out.append(", ");
    WriteToString(&out, flag);
    out.append(")");
    appendGroupedLog(1, out);
}

Ark_Boolean IsBuilderNode(Ark_NodeHandle node) {
    Ark_Boolean result = true;

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  Ark_Boolean res" + std::to_string(res_num++) + " = GetBasicNodeApi()->isBuilderNode(peer"
            + std::to_string(reinterpret_cast<uintptr_t>(node)) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return result;
    }
    string out("isBuilderNode(");
    WriteToString(&out, node);
    out.append(")");
    appendGroupedLog(1, out);
    return result;
}

Ark_Float32 ConvertLengthMetricsUnit(Ark_Float32 value, Ark_Int32 originUnit, Ark_Int32 targetUnit) {
    Ark_Float32 result = value * originUnit;

    if (needGroupedLog(2)) {
        std::string _logData;
        _logData.append("  Ark_Float32 res" + std::to_string(res_num++) + " = GetBasicNodeApi()->convertLengthMetricsUnit("
            + std::to_string(value) + ", " + std::to_string(originUnit) + ", " + std::to_string(targetUnit) + ");\n");
        appendGroupedLog(2, _logData);
    }

    if (!needGroupedLog(1)) {
        return result;
    }

    string out("convertLengthMetricsUnit(");
    WriteToString(&out, value);
    out.append(", ");
    WriteToString(&out, originUnit);
    out.append(", ");
    WriteToString(&out, targetUnit);
    out.append(")");
    appendGroupedLog(1, out);
    return result;
}

void SetCustomMethodFlag(Ark_NodeHandle node, Ark_Int32 flag) {}
Ark_Int32 GetCustomMethodFlag(Ark_NodeHandle node) {
    return 0;
}

void SetCustomCallback(Ark_VMContext context, Ark_NodeHandle node, Ark_Int32 callback) {}
void SetCustomNodeDestroyCallback(void (*destroy)(Ark_NodeHandle nodeId)) {}

Ark_Int32 MeasureNode(Ark_VMContext vmContext, Ark_NodeHandle node, Ark_Float32* data) {
    return AsNode(node)->measure(vmContext, data);
}

Ark_Int32 LayoutNode(Ark_VMContext vmContext, Ark_NodeHandle node, Ark_Float32 (*data)[2]) {
    return AsNode(node)->layout(vmContext, reinterpret_cast<Ark_Float32*>(data));
}

Ark_Int32 DrawNode(Ark_VMContext vmContext, Ark_NodeHandle node, Ark_Float32* data) {
    return AsNode(node)->draw(vmContext, data);
}

Ark_Int32 MeasureLayoutAndDraw(Ark_VMContext vmContext, Ark_NodeHandle root) {
    Ark_Float32 rootMeasures[] = {800, 600, 800, 600};
    MeasureNode(vmContext, root, &rootMeasures[0]);
    Ark_Float32 rootLayouts[] = {0, 0, 800, 600};
    LayoutNode(vmContext, root, reinterpret_cast<Ark_Float32(*)[2]>(&rootLayouts));
    Ark_Float32 rootDraw[] = {0, 0, 800, 600};
    DrawNode(vmContext, root, &rootDraw[0]);
    Ark_Int32 result = 0;
    if (!needGroupedLog(1)) {
        return result;
    }
    string out("measureLayoutAndDraw(");
    WriteToString(&out, root);
    out.append(")");
    appendGroupedLog(1, out);
    return result;
}

void SetAttachNodePtr(Ark_NodeHandle node, void* value) {}
void* GetAttachNodePtr(Ark_NodeHandle node) {
    return nullptr;
}
void SetMeasureWidth(Ark_NodeHandle node, Ark_Int32 value) {}

Ark_Int32 GetMeasureWidth(Ark_NodeHandle node) {
    return 0;
}

void SetMeasureHeight(Ark_NodeHandle node, Ark_Int32 value) {}
Ark_Int32 GetMeasureHeight(Ark_NodeHandle node) {
    return 0;
}
void SetX(Ark_NodeHandle node, Ark_Int32 value) {}
void SetY(Ark_NodeHandle node, Ark_Int32 value) {}
Ark_Int32 GetX(Ark_NodeHandle node) {
    return 0;
}
Ark_Int32 GetY(Ark_NodeHandle node) {
    return 0;
}
void SetAlignment(Ark_NodeHandle node, Ark_Int32 value) {}
Ark_Int32 GetAlignment(Ark_NodeHandle node) {
    return 0;
}
void GetLayoutConstraint(Ark_NodeHandle node, Ark_Int32* value) {}
Ark_Int32 IndexerChecker(Ark_VMContext vmContext, Ark_NodeHandle nodePtr) {
    return 0;
}
void SetRangeUpdater(Ark_NodeHandle nodePtr, Ark_Int32 updaterId) {}
void SetLazyItemIndexer(Ark_VMContext vmContext, Ark_NodeHandle nodePtr, Ark_Int32 indexerId) {}
Ark_PipelineContext GetPipelineContext(Ark_NodeHandle node) {
    return reinterpret_cast<Ark_PipelineContext>(42);
}
void SetVsyncCallback(Ark_PipelineContext pipelineContext, Ark_VsyncCallback callback) {
    using namespace std::chrono_literals;
    auto producer = std::thread([pipelineContext, callback] {
        while (true) {
            std::this_thread::sleep_for(std::chrono::milliseconds(16));
            callback(pipelineContext);
        }
    });
    producer.detach();
}
void SetChildTotalCount(Ark_NodeHandle node, Ark_Int32 totalCount) {}
void ShowCrash(Ark_CharPtr message) {}
}
}

// handWritten implementations
namespace OHOS::Ace::NG::GeneratedModifier {
    namespace CommonMethodModifier {
        void OnClick0Impl(Ark_NativePointer node,
                      const Opt_Callback_ClickEvent_Void* event)
    {
        RegisterOnClick(node, &event->value);
        if (!needGroupedLog(1)) {
            return;
        }
        string out("onClick(");
        WriteToString(&out, event);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void OnClick1Impl(Ark_NativePointer node,
                      const Opt_Callback_ClickEvent_Void* event,
                      const Opt_Number* distanceThreshold)
    {
        RegisterOnClick(node, &event->value);
        if (!needGroupedLog(1)) {
            return;
        }
        string out("onClick(");
        WriteToString(&out, event);
        out.append(", ");
        WriteToString(&out, distanceThreshold);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void OnClickImpl(Ark_NativePointer node,
        const Callback_ClickEvent_Void* event,
        const Ark_Number* distanceThreshold)
    {
        RegisterOnClick(node, event);
        if (!needGroupedLog(1)) {
            return;
        }
        string out("onClick(");
        WriteToString(&out, event);
        out.append(", ");
        WriteToString(&out, distanceThreshold);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void DrawModifierImpl(Ark_NativePointer node,
                          const Opt_DrawModifier* value)
    {
        if (value->value) {
            auto frameNode = AsNode(node);
            frameNode->setDrawModifier(value->value);
        }
        if (!needGroupedLog(1)) {
            return;
        }
        string out("drawModifier(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // CommonMethodModifier

    namespace EnvironmentBackendAccessor {
    Ark_Boolean IsAccessibilityEnabledImpl()
    {
        if (needGroupedLog(1))
        {
            string out("isAccessibilityEnabled() \n");
            out.append("[return false] \n");
            appendGroupedLog(1, out);
        }
        return false;
    }
    Ark_Int32 GetColorModeImpl()
    {
        if (needGroupedLog(1))
        {
            string out("getColorMode() \n");
            out.append("[return 1] \n");
            appendGroupedLog(1, out);
        }
        return 1;
    }
    Ark_Float32 GetFontScaleImpl()
    {
        if (needGroupedLog(1))
        {
            string out("getFontScale() \n");
            out.append("[return 1.0] \n");
            appendGroupedLog(1, out);
        }
        return 1.0;
    }
    Ark_Float32 GetFontWeightScaleImpl()
    {
        if (needGroupedLog(1))
        {
            string out("getFontWeightScale() \n");
            out.append("[return 1.0] \n");
            appendGroupedLog(1, out);
        }
        return 1.0;
    }
    Ark_String GetLayoutDirectionImpl()
    {
        if (needGroupedLog(1))
        {
            string out("getLayoutDirection() \n");
            out.append("[return \"LTR\"] \n");
            appendGroupedLog(1, out);
        }
        return { "LTR", 3 };
    }
    Ark_String GetLanguageCodeImpl()
    {
        if (needGroupedLog(1))
        {
            string out("getLanguageCode() \n");
            out.append("[return \"en\"] \n");
            appendGroupedLog(1, out);
        }
        return { "en", 2 };
    }
    } // EnvironmentBackendAccessor

    namespace EventEmulatorAccessor {
    void EmitClickEventImpl(Ark_NativePointer node,
                            Ark_ClickEvent event)
    {
        auto frameNode = AsNode(node);
        frameNode->callClickEvent(event);
    }
    } // EventEmulatorAccessor
    namespace ScreenshotServiceAccessor {
        Ark_Boolean RequestScreenshotImpl(const Ark_String* target, const Ark_String* name)
        {
            bool xxx = strcmp(name->chars, "XXX") == 0;
            bool yyy = strcmp(name->chars, "YYY") == 0;
            if (xxx || yyy) {
                if (!needGroupedLog(1)) {
                    return strcmp(name->chars, "XXX") == 0;
                }
                std::string out("requestScreenshot() \n");
                out.append("[return true] \n");
                appendGroupedLog(1, out);
                return strcmp(name->chars, "XXX") == 0;
            }
            // golden image comparison
            TGAInfo infoGolden;
            ReadImageTGA(baseGoldenPath + std::string("golden-base"), infoGolden);
            if (strcmp(name->chars, "golden-compare") == 0) {
                return CompareTwoTGA(std::string("golden-base"), infoGolden, infoGolden);
            }
            if (strcmp(name->chars, "golden-diff") == 0) {
                TGAInfo infoTarget;
                CopyTGAHeaders(infoGolden, infoTarget);
                StubTGA(baseBuildPath + std::string("golden-base-snapshot"), infoTarget);
                return CompareTwoTGA(std::string("golden-base"), infoGolden, infoTarget);
            }
            return false;
        }
    } // ScreenshotServiceAccessor
    namespace RenderServiceNodeAccessor {
        Ark_Int32 GetNodeIdImpl(const Ark_String* nodeId)
        {
            if (!needGroupedLog(1)) {
                return 42;
            }
            string out("getNodeId(");
            WriteToString(&out, nodeId);
            out.append(") \n");
            out.append("[return 42] \n");
            appendGroupedLog(1, out);
            return 42;
        }
    } // RenderServiceNodeAccessor
    namespace DrawModifierAccessor {
        void InvalidateImpl(Ark_DrawModifier peer)
        {
            CallDrawModifierCallbacks(peer);
            if (!needGroupedLog(1)) {
                return;
            }
            string out("invalidate(");
            out.append(") \n");
            appendGroupedLog(1, out);
        }
        void SetDrawBehind_callbackImpl(Ark_DrawModifier peer,
                                        const Callback_DrawContext_Void* drawBehind_callback)
        {
            RegisterDrawModifierCallback(peer, drawBehind_callback, DrawBehind);
            if (!needGroupedLog(1)) {
                return;
            }
            string out("setDrawBehind(");
            WriteToString(&out, drawBehind_callback);
            out.append(") \n");
            appendGroupedLog(1, out);
        }
        void SetDrawContent_callbackImpl(Ark_DrawModifier peer,
                                        const Callback_DrawContext_Void* drawContent_callback)
        {
            RegisterDrawModifierCallback(peer, drawContent_callback, DrawContent);
            if (!needGroupedLog(1)) {
                return;
            }
            string out("setDrawContent(");
            WriteToString(&out, drawContent_callback);
            out.append(") \n");
            appendGroupedLog(1, out);
        }
        void SetDrawFront_callbackImpl(Ark_DrawModifier peer,
                                    const Callback_DrawContext_Void* drawFront_callback)
        {
            RegisterDrawModifierCallback(peer, drawFront_callback, DrawFront);
            if (!needGroupedLog(1)) {
                return;
            }
            string out("setDrawFront(");
            WriteToString(&out, drawFront_callback);
            out.append(") \n");
            appendGroupedLog(1, out);
        }
    } // DrawModifierAccessor
}

// end of handWritten implementations
namespace OHOS::Ace::NG::GeneratedModifier {
    namespace BlankModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("Blank", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("Blank", id, flags);;
    }
    } // BlankModifier
    namespace BlankInterfaceModifier {
    void SetBlankOptionsImpl(Ark_NativePointer node,
                             const Opt_Number* min)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setBlankOptions(");
        WriteToString(&out, min);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // BlankInterfaceModifier
    namespace BlankAttributeModifier {
    void SetColorImpl(Ark_NativePointer node,
                      const Ark_ResourceColor* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setColor(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // BlankAttributeModifier
    namespace ButtonModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("Button", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("Button", id, flags);;
    }
    } // ButtonModifier
    namespace ButtonInterfaceModifier {
    void SetButtonOptionsImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setButtonOptions(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ButtonInterfaceModifier
    namespace ButtonAttributeModifier {
    void SetTypeImpl(Ark_NativePointer node,
                     Ark_ButtonType value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setType(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetFontColorImpl(Ark_NativePointer node,
                          const Ark_ResourceColor* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setFontColor(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetLabelStyleImpl(Ark_NativePointer node,
                           const Ark_LabelStyle* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setLabelStyle(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ButtonAttributeModifier
    namespace CheckboxModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("Checkbox", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("Checkbox", id, flags);;
    }
    } // CheckboxModifier
    namespace CheckboxInterfaceModifier {
    void SetCheckboxOptionsImpl(Ark_NativePointer node,
                                const Opt_CheckboxOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setCheckboxOptions(");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // CheckboxInterfaceModifier
    namespace CheckboxAttributeModifier {
    void SetSelectImpl(Ark_NativePointer node,
                       Ark_Boolean value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSelect(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetSelectedColorImpl(Ark_NativePointer node,
                              const Ark_ResourceColor* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSelectedColor(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetShapeImpl(Ark_NativePointer node,
                      Ark_CheckBoxShape value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setShape(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetUnselectedColorImpl(Ark_NativePointer node,
                                const Ark_ResourceColor* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setUnselectedColor(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetMarkImpl(Ark_NativePointer node,
                     const Ark_MarkStyle* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setMark(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOnChangeImpl(Ark_NativePointer node,
                         const Callback_Boolean_Void* callback_)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnChange(");
        WriteToString(&out, callback_);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void Set_onChangeEvent_selectImpl(Ark_NativePointer node,
                                      const Callback_Number_Void* callback)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("set_onChangeEvent_select(");
        WriteToString(&out, callback);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // CheckboxAttributeModifier
    namespace ColumnModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("Column", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("Column", id, flags);;
    }
    } // ColumnModifier
    namespace ColumnInterfaceModifier {
    void SetColumnOptionsImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setColumnOptions(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ColumnInterfaceModifier
    namespace ColumnAttributeModifier {
    void SetAlignItemsImpl(Ark_NativePointer node,
                           Ark_HorizontalAlign value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setAlignItems(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ColumnAttributeModifier
    namespace CommonMethodModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("CommonMethod", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("CommonMethod", id, flags);;
    }
    void SetBackdropBlurImpl(Ark_NativePointer node,
                             const Ark_Number* value,
                             const Opt_BlurOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setBackdropBlur(");
        WriteToString(&out, value);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetWidthImpl(Ark_NativePointer node,
                      const Ark_Length* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setWidth(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetHeightImpl(Ark_NativePointer node,
                       const Ark_Length* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setHeight(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetKeyImpl(Ark_NativePointer node,
                    const Ark_String* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setKey(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetRestoreIdImpl(Ark_NativePointer node,
                          const Ark_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setRestoreId(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetPaddingImpl(Ark_NativePointer node,
                        const Ark_Padding* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setPadding(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetBindSheetImpl(Ark_NativePointer node,
                          Ark_Boolean isShow,
                          const Opt_SheetOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setBindSheet(");
        WriteToString(&out, isShow);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetBackgroundBlurStyleImpl(Ark_NativePointer node,
                                    Ark_BlurStyle value,
                                    const Opt_BackgroundBlurStyleOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setBackgroundBlurStyle(");
        WriteToString(&out, value);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetDragPreviewOptionsImpl(Ark_NativePointer node,
                                   const Ark_DragPreviewOptions* value,
                                   const Opt_DragInteractionOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDragPreviewOptions(");
        WriteToString(&out, value);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOnClick0Impl(Ark_NativePointer node,
                         const Opt_Callback_ClickEvent_Void* event)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnClick0(");
        WriteToString(&out, event);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOnClick1Impl(Ark_NativePointer node,
                         const Opt_Callback_ClickEvent_Void* event,
                         const Opt_Number* distanceThreshold)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnClick1(");
        WriteToString(&out, event);
        out.append(", ");
        WriteToString(&out, distanceThreshold);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // CommonMethodModifier
    namespace ComponentRootModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("ComponentRoot", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("ComponentRoot", id, flags);;
    }
    } // ComponentRootModifier
    namespace CustomLayoutRootModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("CustomLayoutRoot", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("CustomLayoutRoot", id, flags);;
    }
    void SetSubscribeOnMeasureSizeImpl(Ark_NativePointer node,
                                       const Callback_onMeasureSize_SizeResult* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSubscribeOnMeasureSize(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetSubscribeOnPlaceChildrenImpl(Ark_NativePointer node,
                                         const Callback_onPlaceChildren_Void* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSubscribeOnPlaceChildren(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // CustomLayoutRootModifier
    namespace ListModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("List", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("List", id, flags);;
    }
    } // ListModifier
    namespace ListInterfaceModifier {
    void SetListOptionsImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setListOptions(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ListInterfaceModifier
    namespace ListAttributeModifier {
    void SetSomeOptionalImpl(Ark_NativePointer node,
                             const Opt_Boolean* param)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSomeOptional(");
        WriteToString(&out, param);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ListAttributeModifier
    namespace NavigationModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("Navigation", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("Navigation", id, flags);;
    }
    } // NavigationModifier
    namespace NavigationInterfaceModifier {
    void SetNavigationOptionsImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setNavigationOptions(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // NavigationInterfaceModifier
    namespace NavigationAttributeModifier {
    void SetOnTitleModeChangeImpl(Ark_NativePointer node,
                                  const Callback_NavigationTitleMode_Void* callback_)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnTitleModeChange(");
        WriteToString(&out, callback_);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // NavigationAttributeModifier
    namespace RootModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("Root", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("Root", id, flags);;
    }
    } // RootModifier
    namespace ScrollableCommonMethodModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("ScrollableCommonMethod", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("ScrollableCommonMethod", id, flags);;
    }
    void SetScrollBarWidthImpl(Ark_NativePointer node,
                               const Ark_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setScrollBarWidth(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetScrollBarWidthImpl(Ark_NativePointer node,
                               const Ark_String* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setScrollBarWidth(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ScrollableCommonMethodModifier
    namespace TestModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("Test", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("Test", id, flags);;
    }
    } // TestModifier
    namespace TestInterfaceModifier {
    void SetTestOptionsImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestOptions(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // TestInterfaceModifier
    namespace TestAttributeModifier {
    void SetTestBooleanImpl(Ark_NativePointer node,
                            Ark_Boolean value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestBoolean(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestNumberImpl(Ark_NativePointer node,
                           const Ark_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestNumber(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestStringImpl(Ark_NativePointer node,
                           const Ark_String* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestString(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestEnumImpl(Ark_NativePointer node,
                         Ark_EnumDTS value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestEnum(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestBasicMixImpl(Ark_NativePointer node,
                             const Ark_Number* v1,
                             const Ark_String* v2,
                             const Ark_Number* v3)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestBasicMix(");
        WriteToString(&out, v1);
        out.append(", ");
        WriteToString(&out, v2);
        out.append(", ");
        WriteToString(&out, v3);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestBooleanUndefinedImpl(Ark_NativePointer node,
                                     const Opt_Boolean* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestBooleanUndefined(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestNumberUndefinedImpl(Ark_NativePointer node,
                                    const Opt_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestNumberUndefined(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestStringUndefinedImpl(Ark_NativePointer node,
                                    const Opt_String* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestStringUndefined(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestEnumUndefinedImpl(Ark_NativePointer node,
                                  const Opt_EnumDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestEnumUndefined(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestFunctionNumberVoidImpl(Ark_NativePointer node,
                                       const Callback_Number_Void* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestFunctionNumberVoid(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionNumberEnumImpl(Ark_NativePointer node,
                                    const Ark_Number* val)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionNumberEnum(");
        WriteToString(&out, val);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionNumberEnumImpl(Ark_NativePointer node,
                                    Ark_EnumDTS val)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionNumberEnum(");
        WriteToString(&out, val);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionBooleanStringImpl(Ark_NativePointer node,
                                       Ark_Boolean val)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionBooleanString(");
        WriteToString(&out, val);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionBooleanStringImpl(Ark_NativePointer node,
                                       const Ark_String* val)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionBooleanString(");
        WriteToString(&out, val);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionStringNumberImpl(Ark_NativePointer node,
                                      const Ark_Number* val)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionStringNumber(");
        WriteToString(&out, val);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionStringNumberImpl(Ark_NativePointer node,
                                      const Ark_String* val)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionStringNumber(");
        WriteToString(&out, val);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionBooleanStringNumberUndefinedImpl(Ark_NativePointer node,
                                                      const Opt_Number* val)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionBooleanStringNumberUndefined(");
        WriteToString(&out, val);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionWithGenericArrayImpl(Ark_NativePointer node,
                                          const Ark_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionWithGenericArray(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionWithArrayTypeImpl(Ark_NativePointer node,
                                       const Ark_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionWithArrayType(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestBooleanArrayImpl(Ark_NativePointer node,
                                 const Array_Boolean* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestBooleanArray(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestNumberArrayImpl(Ark_NativePointer node,
                                const Array_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestNumberArray(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestStringArrayImpl(Ark_NativePointer node,
                                const Array_String* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestStringArray(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestEnumArrayImpl(Ark_NativePointer node,
                              const Array_EnumDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestEnumArray(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestArrayMixImpl(Ark_NativePointer node,
                             const Array_Number* v1,
                             const Array_String* v2,
                             const Array_EnumDTS* v3)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestArrayMix(");
        WriteToString(&out, v1);
        out.append(", ");
        WriteToString(&out, v2);
        out.append(", ");
        WriteToString(&out, v3);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestTupleBooleanNumberImpl(Ark_NativePointer node,
                                       const Ark_CustomObject* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestTupleBooleanNumber(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestTupleNumberStringEnumImpl(Ark_NativePointer node,
                                          const Ark_CustomObject* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestTupleNumberStringEnum(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestTupleOptionalImpl(Ark_NativePointer node,
                                  const Ark_CustomObject* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestTupleOptional(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestTupleUnionImpl(Ark_NativePointer node,
                               const Ark_CustomObject* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestTupleUnion(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestArrayRefBooleanImpl(Ark_NativePointer node,
                                    const Array_Boolean* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestArrayRefBoolean(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestArrayRefNumberImpl(Ark_NativePointer node,
                                   const Array_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestArrayRefNumber(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestBooleanInterfaceImpl(Ark_NativePointer node,
                                     const Ark_BooleanInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestBooleanInterface(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestNumberInterfaceImpl(Ark_NativePointer node,
                                    const Ark_NumberInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestNumberInterface(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestStringInterfaceImpl(Ark_NativePointer node,
                                    const Ark_StringInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestStringInterface(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionInterfaceImpl(Ark_NativePointer node,
                                   const Ark_UnionInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionInterface(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestUnionOptionalImpl(Ark_NativePointer node,
                                  const Ark_UnionOptionalInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestUnionOptional(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestTupleInterfaceImpl(Ark_NativePointer node,
                                   const Ark_TupleInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestTupleInterface(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestArrayRefNumberInterfaceImpl(Ark_NativePointer node,
                                            const Ark_ArrayRefNumberInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestArrayRefNumberInterface(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestBooleanInterfaceOptionImpl(Ark_NativePointer node,
                                           const Opt_BooleanInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestBooleanInterfaceOption(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestBooleanInterfaceArrayImpl(Ark_NativePointer node,
                                          const Array_BooleanInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestBooleanInterfaceArray(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestBooleanInterfaceArrayRefImpl(Ark_NativePointer node,
                                             const Array_BooleanInterfaceDTS* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestBooleanInterfaceArrayRef(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTestInterfaceMixedImpl(Ark_NativePointer node,
                                   const Ark_UnionInterfaceDTS* v1,
                                   const Ark_Number* v2,
                                   const Ark_TupleInterfaceDTS* v3)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTestInterfaceMixed(");
        WriteToString(&out, v1);
        out.append(", ");
        WriteToString(&out, v2);
        out.append(", ");
        WriteToString(&out, v3);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // TestAttributeModifier
    namespace TextInputModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("TextInput", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("TextInput", id, flags);;
    }
    } // TextInputModifier
    namespace TextInputInterfaceModifier {
    void SetTextInputOptionsImpl(Ark_NativePointer node,
                                 const Opt_TextInputOptions* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTextInputOptions(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // TextInputInterfaceModifier
    namespace TextInputAttributeModifier {
    void SetTypeImpl(Ark_NativePointer node,
                     Ark_InputType value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setType(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetContentTypeImpl(Ark_NativePointer node,
                            Ark_ContentType value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setContentType(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOnCopyImpl(Ark_NativePointer node,
                       const Callback_String_Void* callback_)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnCopy(");
        WriteToString(&out, callback_);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void Set_onChangeEvent_textImpl(Ark_NativePointer node,
                                    const Callback_ResourceStr_Void* callback)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("set_onChangeEvent_text(");
        WriteToString(&out, callback);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // TextInputAttributeModifier
    namespace TextPickerModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        if (!needGroupedLog(1))
        {
            return new TreeNode("TextPicker", id, flags);;
        }
        string out("construct(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, flags);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return new TreeNode("TextPicker", id, flags);;
    }
    } // TextPickerModifier
    namespace TextPickerInterfaceModifier {
    void SetTextPickerOptionsImpl(Ark_NativePointer node,
                                  const Opt_TextPickerOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTextPickerOptions(");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // TextPickerInterfaceModifier
    namespace TextPickerAttributeModifier {
    void SetDefaultPickerItemHeightImpl(Ark_NativePointer node,
                                        const Ark_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDefaultPickerItemHeight(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetDefaultPickerItemHeightImpl(Ark_NativePointer node,
                                        const Ark_String* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDefaultPickerItemHeight(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetCanLoopImpl(Ark_NativePointer node,
                        Ark_Boolean value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setCanLoop(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetDisappearTextStyleImpl(Ark_NativePointer node,
                                   const Ark_CustomObject* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDisappearTextStyle(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetTextStyleImpl(Ark_NativePointer node,
                          const Ark_CustomObject* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTextStyle(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetSelectedTextStyleImpl(Ark_NativePointer node,
                                  const Ark_CustomObject* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSelectedTextStyle(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOnAcceptImpl(Ark_NativePointer node,
                         const Callback_String_Number_Void* callback_)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnAccept(");
        WriteToString(&out, callback_);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOnCancelImpl(Ark_NativePointer node,
                         const Callback_Void* callback_)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnCancel(");
        WriteToString(&out, callback_);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOnChangeImpl(Ark_NativePointer node,
                         const Type_TextPickerAttribute_onChange_callback* callback_)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnChange(");
        WriteToString(&out, callback_);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOnScrollStopImpl(Ark_NativePointer node,
                             const TextPickerScrollStopCallback* callback_)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnScrollStop(");
        WriteToString(&out, callback_);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetSelectedIndexImpl(Ark_NativePointer node,
                              const Ark_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSelectedIndex(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetDividerImpl(Ark_NativePointer node,
                        const Opt_DividerOptions* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDivider(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetGradientHeightImpl(Ark_NativePointer node,
                               const Ark_Dimension* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setGradientHeight(");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void Set_onChangeEvent_selectedImpl(Ark_NativePointer node,
                                        const Callback_Union_Number_Array_Number_Void* callback)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("set_onChangeEvent_selected(");
        WriteToString(&out, callback);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void Set_onChangeEvent_valueImpl(Ark_NativePointer node,
                                     const Callback_Union_String_Array_String_Void* callback)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("set_onChangeEvent_value(");
        WriteToString(&out, callback);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // TextPickerAttributeModifier
    const GENERATED_ArkUIBlankModifier* GetBlankModifier()
    {
        static const GENERATED_ArkUIBlankModifier ArkUIBlankModifierImpl {
            BlankModifier::ConstructImpl,
            BlankInterfaceModifier::SetBlankOptionsImpl,
            BlankAttributeModifier::SetColorImpl,
        };
        return &ArkUIBlankModifierImpl;
    }

    const GENERATED_ArkUIButtonModifier* GetButtonModifier()
    {
        static const GENERATED_ArkUIButtonModifier ArkUIButtonModifierImpl {
            ButtonModifier::ConstructImpl,
            ButtonInterfaceModifier::SetButtonOptionsImpl,
            ButtonAttributeModifier::SetTypeImpl,
            ButtonAttributeModifier::SetFontColorImpl,
            ButtonAttributeModifier::SetLabelStyleImpl,
        };
        return &ArkUIButtonModifierImpl;
    }

    const GENERATED_ArkUICheckboxModifier* GetCheckboxModifier()
    {
        static const GENERATED_ArkUICheckboxModifier ArkUICheckboxModifierImpl {
            CheckboxModifier::ConstructImpl,
            CheckboxInterfaceModifier::SetCheckboxOptionsImpl,
            CheckboxAttributeModifier::SetSelectImpl,
            CheckboxAttributeModifier::SetSelectedColorImpl,
            CheckboxAttributeModifier::SetShapeImpl,
            CheckboxAttributeModifier::SetUnselectedColorImpl,
            CheckboxAttributeModifier::SetMarkImpl,
            CheckboxAttributeModifier::SetOnChangeImpl,
            CheckboxAttributeModifier::Set_onChangeEvent_selectImpl,
        };
        return &ArkUICheckboxModifierImpl;
    }

    const GENERATED_ArkUIColumnModifier* GetColumnModifier()
    {
        static const GENERATED_ArkUIColumnModifier ArkUIColumnModifierImpl {
            ColumnModifier::ConstructImpl,
            ColumnInterfaceModifier::SetColumnOptionsImpl,
            ColumnAttributeModifier::SetAlignItemsImpl,
        };
        return &ArkUIColumnModifierImpl;
    }

    const GENERATED_ArkUICommonMethodModifier* GetCommonMethodModifier()
    {
        static const GENERATED_ArkUICommonMethodModifier ArkUICommonMethodModifierImpl {
            CommonMethodModifier::ConstructImpl,
            CommonMethodModifier::SetBackdropBlurImpl,
            CommonMethodModifier::SetWidthImpl,
            CommonMethodModifier::SetHeightImpl,
            CommonMethodModifier::SetKeyImpl,
            CommonMethodModifier::SetRestoreIdImpl,
            CommonMethodModifier::SetPaddingImpl,
            CommonMethodModifier::SetBindSheetImpl,
            CommonMethodModifier::SetBackgroundBlurStyleImpl,
            CommonMethodModifier::SetDragPreviewOptionsImpl,
            CommonMethodModifier::SetOnClick0Impl,
            CommonMethodModifier::SetOnClick1Impl,
        };
        return &ArkUICommonMethodModifierImpl;
    }

    const GENERATED_ArkUIComponentRootModifier* GetComponentRootModifier()
    {
        static const GENERATED_ArkUIComponentRootModifier ArkUIComponentRootModifierImpl {
            ComponentRootModifier::ConstructImpl,
        };
        return &ArkUIComponentRootModifierImpl;
    }

    const GENERATED_ArkUICustomLayoutRootModifier* GetCustomLayoutRootModifier()
    {
        static const GENERATED_ArkUICustomLayoutRootModifier ArkUICustomLayoutRootModifierImpl {
            CustomLayoutRootModifier::ConstructImpl,
            CustomLayoutRootModifier::SetSubscribeOnMeasureSizeImpl,
            CustomLayoutRootModifier::SetSubscribeOnPlaceChildrenImpl,
        };
        return &ArkUICustomLayoutRootModifierImpl;
    }

    const GENERATED_ArkUIListModifier* GetListModifier()
    {
        static const GENERATED_ArkUIListModifier ArkUIListModifierImpl {
            ListModifier::ConstructImpl,
            ListInterfaceModifier::SetListOptionsImpl,
            ListAttributeModifier::SetSomeOptionalImpl,
        };
        return &ArkUIListModifierImpl;
    }

    const GENERATED_ArkUINavigationModifier* GetNavigationModifier()
    {
        static const GENERATED_ArkUINavigationModifier ArkUINavigationModifierImpl {
            NavigationModifier::ConstructImpl,
            NavigationInterfaceModifier::SetNavigationOptionsImpl,
            NavigationAttributeModifier::SetOnTitleModeChangeImpl,
        };
        return &ArkUINavigationModifierImpl;
    }

    const GENERATED_ArkUIRootModifier* GetRootModifier()
    {
        static const GENERATED_ArkUIRootModifier ArkUIRootModifierImpl {
            RootModifier::ConstructImpl,
        };
        return &ArkUIRootModifierImpl;
    }

    const GENERATED_ArkUIScrollableCommonMethodModifier* GetScrollableCommonMethodModifier()
    {
        static const GENERATED_ArkUIScrollableCommonMethodModifier ArkUIScrollableCommonMethodModifierImpl {
            ScrollableCommonMethodModifier::ConstructImpl,
            ScrollableCommonMethodModifier::SetScrollBarWidthImpl,
            ScrollableCommonMethodModifier::SetScrollBarWidthImpl,
        };
        return &ArkUIScrollableCommonMethodModifierImpl;
    }

    const GENERATED_ArkUITestModifier* GetTestModifier()
    {
        static const GENERATED_ArkUITestModifier ArkUITestModifierImpl {
            TestModifier::ConstructImpl,
            TestInterfaceModifier::SetTestOptionsImpl,
            TestAttributeModifier::SetTestBooleanImpl,
            TestAttributeModifier::SetTestNumberImpl,
            TestAttributeModifier::SetTestStringImpl,
            TestAttributeModifier::SetTestEnumImpl,
            TestAttributeModifier::SetTestBasicMixImpl,
            TestAttributeModifier::SetTestBooleanUndefinedImpl,
            TestAttributeModifier::SetTestNumberUndefinedImpl,
            TestAttributeModifier::SetTestStringUndefinedImpl,
            TestAttributeModifier::SetTestEnumUndefinedImpl,
            TestAttributeModifier::SetTestFunctionNumberVoidImpl,
            TestAttributeModifier::SetTestUnionNumberEnumImpl,
            TestAttributeModifier::SetTestUnionNumberEnumImpl,
            TestAttributeModifier::SetTestUnionBooleanStringImpl,
            TestAttributeModifier::SetTestUnionBooleanStringImpl,
            TestAttributeModifier::SetTestUnionStringNumberImpl,
            TestAttributeModifier::SetTestUnionStringNumberImpl,
            TestAttributeModifier::SetTestUnionBooleanStringNumberUndefinedImpl,
            TestAttributeModifier::SetTestUnionWithGenericArrayImpl,
            TestAttributeModifier::SetTestUnionWithArrayTypeImpl,
            TestAttributeModifier::SetTestBooleanArrayImpl,
            TestAttributeModifier::SetTestNumberArrayImpl,
            TestAttributeModifier::SetTestStringArrayImpl,
            TestAttributeModifier::SetTestEnumArrayImpl,
            TestAttributeModifier::SetTestArrayMixImpl,
            TestAttributeModifier::SetTestTupleBooleanNumberImpl,
            TestAttributeModifier::SetTestTupleNumberStringEnumImpl,
            TestAttributeModifier::SetTestTupleOptionalImpl,
            TestAttributeModifier::SetTestTupleUnionImpl,
            TestAttributeModifier::SetTestArrayRefBooleanImpl,
            TestAttributeModifier::SetTestArrayRefNumberImpl,
            TestAttributeModifier::SetTestBooleanInterfaceImpl,
            TestAttributeModifier::SetTestNumberInterfaceImpl,
            TestAttributeModifier::SetTestStringInterfaceImpl,
            TestAttributeModifier::SetTestUnionInterfaceImpl,
            TestAttributeModifier::SetTestUnionOptionalImpl,
            TestAttributeModifier::SetTestTupleInterfaceImpl,
            TestAttributeModifier::SetTestArrayRefNumberInterfaceImpl,
            TestAttributeModifier::SetTestBooleanInterfaceOptionImpl,
            TestAttributeModifier::SetTestBooleanInterfaceArrayImpl,
            TestAttributeModifier::SetTestBooleanInterfaceArrayRefImpl,
            TestAttributeModifier::SetTestInterfaceMixedImpl,
        };
        return &ArkUITestModifierImpl;
    }

    const GENERATED_ArkUITextInputModifier* GetTextInputModifier()
    {
        static const GENERATED_ArkUITextInputModifier ArkUITextInputModifierImpl {
            TextInputModifier::ConstructImpl,
            TextInputInterfaceModifier::SetTextInputOptionsImpl,
            TextInputAttributeModifier::SetTypeImpl,
            TextInputAttributeModifier::SetContentTypeImpl,
            TextInputAttributeModifier::SetOnCopyImpl,
            TextInputAttributeModifier::Set_onChangeEvent_textImpl,
        };
        return &ArkUITextInputModifierImpl;
    }

    const GENERATED_ArkUITextPickerModifier* GetTextPickerModifier()
    {
        static const GENERATED_ArkUITextPickerModifier ArkUITextPickerModifierImpl {
            TextPickerModifier::ConstructImpl,
            TextPickerInterfaceModifier::SetTextPickerOptionsImpl,
            TextPickerAttributeModifier::SetDefaultPickerItemHeightImpl,
            TextPickerAttributeModifier::SetDefaultPickerItemHeightImpl,
            TextPickerAttributeModifier::SetCanLoopImpl,
            TextPickerAttributeModifier::SetDisappearTextStyleImpl,
            TextPickerAttributeModifier::SetTextStyleImpl,
            TextPickerAttributeModifier::SetSelectedTextStyleImpl,
            TextPickerAttributeModifier::SetOnAcceptImpl,
            TextPickerAttributeModifier::SetOnCancelImpl,
            TextPickerAttributeModifier::SetOnChangeImpl,
            TextPickerAttributeModifier::SetOnScrollStopImpl,
            TextPickerAttributeModifier::SetSelectedIndexImpl,
            TextPickerAttributeModifier::SetDividerImpl,
            TextPickerAttributeModifier::SetGradientHeightImpl,
            TextPickerAttributeModifier::Set_onChangeEvent_selectedImpl,
            TextPickerAttributeModifier::Set_onChangeEvent_valueImpl,
        };
        return &ArkUITextPickerModifierImpl;
    }

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
    namespace AnimationExtenderAccessor {
    void SetClipRectImpl(Ark_NativePointer node,
                         Ark_Float32 x,
                         Ark_Float32 y,
                         Ark_Float32 width,
                         Ark_Float32 height)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("SetClipRect(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, x);
        out.append(", ");
        WriteToString(&out, y);
        out.append(", ");
        WriteToString(&out, width);
        out.append(", ");
        WriteToString(&out, height);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void OpenImplicitAnimationImpl(const Ark_AnimateParam* param)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("OpenImplicitAnimation(");
        WriteToString(&out, param);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void CloseImplicitAnimationImpl()
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("CloseImplicitAnimation(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void StartDoubleAnimationImpl(Ark_NativePointer node,
                                  const Ark_DoubleAnimationParam* param)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("StartDoubleAnimation(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, param);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void AnimationTranslateImpl(Ark_NativePointer node,
                                const Ark_TranslateOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("AnimationTranslate(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // AnimationExtenderAccessor
    namespace BaseEventAccessor {
    void DestroyPeerImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_BaseEvent ConstructImpl()
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_BaseEvent>(100);
        }
        string out("new BaseEvent(");
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_BaseEvent>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_BaseEvent>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    Ark_Boolean GetModifierKeyStateImpl(Ark_BaseEvent peer,
                                        const Array_String* keys)
    {
        if (!needGroupedLog(1))
        {
            return 0;
        }
        string out("getModifierKeyState(");
        WriteToString(&out, keys);
        out.append(") \n");
        out.append("[return 0] \n");
        appendGroupedLog(1, out);
        return 0;
    }
    Ark_SourceType GetSourceImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getSource(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetSourceImpl(Ark_BaseEvent peer,
                       Ark_SourceType source)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSource(");
        WriteToString(&out, source);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Opt_Number GetAxisHorizontalImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getAxisHorizontal(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetAxisHorizontalImpl(Ark_BaseEvent peer,
                               const Opt_Number* axisHorizontal)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setAxisHorizontal(");
        WriteToString(&out, axisHorizontal);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Opt_Number GetAxisVerticalImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getAxisVertical(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetAxisVerticalImpl(Ark_BaseEvent peer,
                             const Opt_Number* axisVertical)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setAxisVertical(");
        WriteToString(&out, axisVertical);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetPressureImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getPressure(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetPressureImpl(Ark_BaseEvent peer,
                         const Ark_Number* pressure)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setPressure(");
        WriteToString(&out, pressure);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetTiltXImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getTiltX(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetTiltXImpl(Ark_BaseEvent peer,
                      const Ark_Number* tiltX)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTiltX(");
        WriteToString(&out, tiltX);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_SourceTool GetSourceToolImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getSourceTool(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetSourceToolImpl(Ark_BaseEvent peer,
                           Ark_SourceTool sourceTool)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setSourceTool(");
        WriteToString(&out, sourceTool);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Opt_Number GetDeviceIdImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getDeviceId(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetDeviceIdImpl(Ark_BaseEvent peer,
                         const Opt_Number* deviceId)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDeviceId(");
        WriteToString(&out, deviceId);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Opt_Number GetTargetDisplayIdImpl(Ark_BaseEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getTargetDisplayId(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetTargetDisplayIdImpl(Ark_BaseEvent peer,
                                const Opt_Number* targetDisplayId)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setTargetDisplayId(");
        WriteToString(&out, targetDisplayId);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // BaseEventAccessor
    namespace BaseShapeAccessor {
    void DestroyPeerImpl(Ark_BaseShape peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_BaseShape ConstructImpl()
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_BaseShape>(100);
        }
        string out("new BaseShape(");
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_BaseShape>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_BaseShape>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    Ark_BaseShape WidthImpl(Ark_BaseShape peer,
                            const Ark_Length* width)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_BaseShape>(300);
        }
        string out("width(");
        WriteToString(&out, width);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_BaseShape>(300)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_BaseShape>(300);
    }
    Ark_BaseShape HeightImpl(Ark_BaseShape peer,
                             const Ark_Length* height)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_BaseShape>(300);
        }
        string out("height(");
        WriteToString(&out, height);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_BaseShape>(300)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_BaseShape>(300);
    }
    Ark_BaseShape SizeImpl(Ark_BaseShape peer,
                           const Ark_SizeOptions* size)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_BaseShape>(300);
        }
        string out("size(");
        WriteToString(&out, size);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_BaseShape>(300)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_BaseShape>(300);
    }
    } // BaseShapeAccessor
    namespace BuilderNodeOpsAccessor {
    void DestroyPeerImpl(Ark_BuilderNodeOps peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_BuilderNodeOps ConstructImpl()
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_BuilderNodeOps>(100);
        }
        string out("new BuilderNodeOps(");
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_BuilderNodeOps>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_BuilderNodeOps>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    void CreateImpl(Ark_BuilderNodeOps peer,
                    const Callback_Void* buildFunc)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("create(");
        WriteToString(&out, buildFunc);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void DisposeNodeImpl(Ark_BuilderNodeOps peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("disposeNode(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetUpdateConfigurationCallbackImpl(Ark_BuilderNodeOps peer,
                                            const Callback_Void* configurationUpdateFunc)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setUpdateConfigurationCallback(");
        WriteToString(&out, configurationUpdateFunc);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetOptionsImpl(Ark_BuilderNodeOps peer,
                        const Ark_BuilderNodeOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOptions(");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Boolean PostTouchEventImpl(Ark_BuilderNodeOps peer,
                                   const Ark_CustomObject* event)
    {
        if (!needGroupedLog(1))
        {
            return 0;
        }
        string out("postTouchEvent(");
        WriteToString(&out, event);
        out.append(") \n");
        out.append("[return 0] \n");
        appendGroupedLog(1, out);
        return 0;
    }
    Ark_NativePointer SetRootFrameNodeInBuilderNodeImpl(Ark_BuilderNodeOps peer,
                                                        Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("setRootFrameNodeInBuilderNode(");
        WriteToString(&out, node);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    } // BuilderNodeOpsAccessor
    namespace ClickEventAccessor {
    void DestroyPeerImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_ClickEvent ConstructImpl()
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_ClickEvent>(100);
        }
        string out("new ClickEvent(");
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_ClickEvent>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_ClickEvent>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    Ark_Number GetDisplayXImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getDisplayX(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetDisplayXImpl(Ark_ClickEvent peer,
                         const Ark_Number* displayX)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDisplayX(");
        WriteToString(&out, displayX);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetDisplayYImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getDisplayY(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetDisplayYImpl(Ark_ClickEvent peer,
                         const Ark_Number* displayY)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDisplayY(");
        WriteToString(&out, displayY);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetWindowXImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getWindowX(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetWindowXImpl(Ark_ClickEvent peer,
                        const Ark_Number* windowX)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setWindowX(");
        WriteToString(&out, windowX);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetWindowYImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getWindowY(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetWindowYImpl(Ark_ClickEvent peer,
                        const Ark_Number* windowY)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setWindowY(");
        WriteToString(&out, windowY);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetScreenXImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getScreenX(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetScreenXImpl(Ark_ClickEvent peer,
                        const Ark_Number* screenX)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setScreenX(");
        WriteToString(&out, screenX);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetScreenYImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getScreenY(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetScreenYImpl(Ark_ClickEvent peer,
                        const Ark_Number* screenY)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setScreenY(");
        WriteToString(&out, screenY);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetXImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getX(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetXImpl(Ark_ClickEvent peer,
                  const Ark_Number* x)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setX(");
        WriteToString(&out, x);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number GetYImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("getY(");
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    void SetYImpl(Ark_ClickEvent peer,
                  const Ark_Number* y)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setY(");
        WriteToString(&out, y);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Callback_Void GetPreventDefaultImpl(Ark_ClickEvent peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getPreventDefault(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetPreventDefaultImpl(Ark_ClickEvent peer,
                               const Callback_Void* preventDefault)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setPreventDefault(");
        WriteToString(&out, preventDefault);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ClickEventAccessor
    namespace ColorFilterAccessor {
    void DestroyPeerImpl(Ark_ColorFilter peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_ColorFilter ConstructImpl(const Array_Number* value)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_ColorFilter>(100);
        }
        string out("new ColorFilter(");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_ColorFilter>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_ColorFilter>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    } // ColorFilterAccessor
    namespace CommonShapeAccessor {
    void DestroyPeerImpl(Ark_CommonShape peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_CommonShape ConstructImpl()
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_CommonShape>(100);
        }
        string out("new CommonShape(");
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_CommonShape>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_CommonShape>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    Ark_CommonShape OffsetImpl(Ark_CommonShape peer,
                               const Ark_Position* offset)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_CommonShape>(300);
        }
        string out("offset(");
        WriteToString(&out, offset);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_CommonShape>(300)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_CommonShape>(300);
    }
    Ark_CommonShape FillImpl(Ark_CommonShape peer,
                             const Ark_ResourceColor* color)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_CommonShape>(300);
        }
        string out("fill(");
        WriteToString(&out, color);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_CommonShape>(300)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_CommonShape>(300);
    }
    Ark_CommonShape PositionImpl(Ark_CommonShape peer,
                                 const Ark_Position* position)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_CommonShape>(300);
        }
        string out("position(");
        WriteToString(&out, position);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_CommonShape>(300)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_CommonShape>(300);
    }
    } // CommonShapeAccessor
    namespace ContentModifierHelperAccessor {
    void ContentModifierButtonImpl(Ark_NativePointer node,
                                   const Ark_Object* contentModifier,
                                   const ButtonModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierButton(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierButtonImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierButton(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierCheckBoxImpl(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const CheckBoxModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierCheckBox(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierCheckBoxImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierCheckBox(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierDataPanelImpl(Ark_NativePointer node,
                                      const Ark_Object* contentModifier,
                                      const DataPanelModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierDataPanel(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierDataPanelImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierDataPanel(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierGaugeImpl(Ark_NativePointer node,
                                  const Ark_Object* contentModifier,
                                  const GaugeModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierGauge(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierGaugeImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierGauge(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierLoadingProgressImpl(Ark_NativePointer node,
                                            const Ark_Object* contentModifier,
                                            const LoadingProgressModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierLoadingProgress(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierLoadingProgressImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierLoadingProgress(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierProgressImpl(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const ProgressModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierProgress(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierProgressImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierProgress(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierRadioImpl(Ark_NativePointer node,
                                  const Ark_Object* contentModifier,
                                  const RadioModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierRadio(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierRadioImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierRadio(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierRatingImpl(Ark_NativePointer node,
                                   const Ark_Object* contentModifier,
                                   const RatingModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierRating(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierRatingImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierRating(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierMenuItemImpl(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const MenuItemModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierMenuItem(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierMenuItemImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierMenuItem(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierSliderImpl(Ark_NativePointer node,
                                   const Ark_Object* contentModifier,
                                   const SliderModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierSlider(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierSliderImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierSlider(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierTextClockImpl(Ark_NativePointer node,
                                      const Ark_Object* contentModifier,
                                      const TextClockModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierTextClock(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierTextClockImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierTextClock(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierTextTimerImpl(Ark_NativePointer node,
                                      const Ark_Object* contentModifier,
                                      const TextTimerModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierTextTimer(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierTextTimerImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierTextTimer(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ContentModifierToggleImpl(Ark_NativePointer node,
                                   const Ark_Object* contentModifier,
                                   const ToggleModifierBuilder* builder)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("contentModifierToggle(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, contentModifier);
        out.append(", ");
        WriteToString(&out, builder);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ResetContentModifierToggleImpl(Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resetContentModifierToggle(");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // ContentModifierHelperAccessor
    namespace CustomDialogControllerAccessor {
    void DestroyPeerImpl(Ark_CustomDialogController peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_CustomDialogController ConstructImpl(const Ark_CustomDialogControllerOptions* value)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_CustomDialogController>(100);
        }
        string out("new CustomDialogController(");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_CustomDialogController>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_CustomDialogController>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    void OpenImpl(Ark_CustomDialogController peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("open(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void CloseImpl(Ark_CustomDialogController peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("close(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // CustomDialogControllerAccessor
    namespace DrawModifierAccessor {
    void DestroyPeerImpl(Ark_DrawModifier peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_DrawModifier ConstructImpl()
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_DrawModifier>(100);
        }
        string out("new DrawModifier(");
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_DrawModifier>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_DrawModifier>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    Callback_DrawContext_Void GetDrawBehindImpl(Ark_DrawModifier peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getDrawBehind(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetDrawBehindImpl(Ark_DrawModifier peer,
                           const Callback_DrawContext_Void* drawBehind)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDrawBehind(");
        WriteToString(&out, drawBehind);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Callback_DrawContext_Void GetDrawContentImpl(Ark_DrawModifier peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getDrawContent(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetDrawContentImpl(Ark_DrawModifier peer,
                            const Callback_DrawContext_Void* drawContent)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDrawContent(");
        WriteToString(&out, drawContent);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Callback_DrawContext_Void GetDrawFrontImpl(Ark_DrawModifier peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getDrawFront(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetDrawFrontImpl(Ark_DrawModifier peer,
                          const Callback_DrawContext_Void* drawFront)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setDrawFront(");
        WriteToString(&out, drawFront);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // DrawModifierAccessor
    namespace EnvironmentBackendAccessor {
    } // EnvironmentBackendAccessor
    namespace EventEmulatorAccessor {
    void EmitTextInputEventImpl(Ark_NativePointer node,
                                const Ark_String* text)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("emitTextInputEvent(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, text);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // EventEmulatorAccessor
    namespace FocusControllerAccessor {
    void RequestFocusImpl(const Ark_String* key)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("requestFocus(");
        WriteToString(&out, key);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // FocusControllerAccessor
    namespace GlobalScope_ohos_arkui_componentSnapshotAccessor {
    void GetImpl(const Ark_String* id,
                 const AsyncCallback_image_PixelMap_Void* callback,
                 const Opt_SnapshotOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("get(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, callback);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // GlobalScope_ohos_arkui_componentSnapshotAccessor
    namespace GlobalScope_ohos_arkui_performanceMonitorAccessor {
    void BeginImpl(const Ark_String* scene,
                   Ark_PerfMonitorActionType startInputType,
                   const Opt_String* note)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("begin(");
        WriteToString(&out, scene);
        out.append(", ");
        WriteToString(&out, startInputType);
        out.append(", ");
        WriteToString(&out, note);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void EndImpl(const Ark_String* scene)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("end(");
        WriteToString(&out, scene);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void RecordInputEventTimeImpl(Ark_PerfMonitorActionType actionType,
                                  Ark_PerfMonitorSourceType sourceType,
                                  Ark_Int64 time)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("recordInputEventTime(");
        WriteToString(&out, actionType);
        out.append(", ");
        WriteToString(&out, sourceType);
        out.append(", ");
        WriteToString(&out, time);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // GlobalScope_ohos_arkui_performanceMonitorAccessor
    namespace GlobalScope_ohos_fontAccessor {
    void RegisterFontImpl(const Ark_CustomObject* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("registerFont(");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Array_String GetSystemFontListImpl()
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getSystemFontList(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    Ark_CustomObject GetFontByNameImpl(const Ark_String* fontName)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getFontByName(");
        WriteToString(&out, fontName);
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    } // GlobalScope_ohos_fontAccessor
    namespace GlobalScope_ohos_measure_utilsAccessor {
    Ark_Number MeasureTextImpl(const Ark_CustomObject* options)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("measureText(");
        WriteToString(&out, options);
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    Ark_SizeOptions MeasureTextSizeImpl(const Ark_CustomObject* options)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("measureTextSize(");
        WriteToString(&out, options);
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    } // GlobalScope_ohos_measure_utilsAccessor
    namespace ICurveAccessor {
    void DestroyPeerImpl(Ark_ICurve peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_ICurve ConstructImpl()
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_ICurve>(100);
        }
        string out("new ICurve(");
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_ICurve>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_ICurve>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    Ark_Number InterpolateImpl(Ark_ICurve peer,
                               const Ark_Number* fraction)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("interpolate(");
        WriteToString(&out, fraction);
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    } // ICurveAccessor
    namespace IUIContextAccessor {
    void FreezeUINode0Impl(const Ark_String* id,
                           Ark_Boolean isFrozen)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("freezeUINode0(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, isFrozen);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void FreezeUINode1Impl(const Ark_Number* id,
                           Ark_Boolean isFrozen)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("freezeUINode1(");
        WriteToString(&out, id);
        out.append(", ");
        WriteToString(&out, isFrozen);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // IUIContextAccessor
    namespace LazyForEachOpsAccessor {
    void SyncImpl(Ark_NativePointer node,
                  Ark_Int32 totalCount,
                  const Callback_CreateItem* creator,
                  const Callback_RangeUpdate* updater)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("Sync(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, totalCount);
        out.append(", ");
        WriteToString(&out, creator);
        out.append(", ");
        WriteToString(&out, updater);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // LazyForEachOpsAccessor
    namespace NavExtenderAccessor {
    void SetNavigationOptionsImpl(Ark_NativePointer ptr,
                                  const Ark_NavPathStack* pathStack)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setNavigationOptions(");
        WriteToString(&out, ptr);
        out.append(", ");
        WriteToString(&out, pathStack);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetUpdateStackCallbackImpl(const Ark_NavPathStack* peer,
                                    const NavExtender_OnUpdateStack* callback)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setUpdateStackCallback(");
        WriteToString(&out, peer);
        out.append(", ");
        WriteToString(&out, callback);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SyncStackImpl(const Ark_NavPathStack* peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("syncStack(");
        WriteToString(&out, peer);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Boolean CheckNeedCreateImpl(Ark_NativePointer navigation,
                                    Ark_Int32 index)
    {
        if (!needGroupedLog(1))
        {
            return 0;
        }
        string out("checkNeedCreate(");
        WriteToString(&out, navigation);
        out.append(", ");
        WriteToString(&out, index);
        out.append(") \n");
        out.append("[return 0] \n");
        appendGroupedLog(1, out);
        return 0;
    }
    void SetNavDestinationNodeImpl(const Ark_NavPathStack* peer,
                                   Ark_Int32 index,
                                   Ark_NativePointer node)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setNavDestinationNode(");
        WriteToString(&out, peer);
        out.append(", ");
        WriteToString(&out, index);
        out.append(", ");
        WriteToString(&out, node);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void PushPathImpl(const Ark_NavPathStack* pathStack,
                      const Ark_CustomObject* info,
                      const Ark_CustomObject* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("pushPath(");
        WriteToString(&out, pathStack);
        out.append(", ");
        WriteToString(&out, info);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ReplacePathImpl(const Ark_NavPathStack* pathStack,
                         const Ark_CustomObject* info,
                         const Ark_CustomObject* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("replacePath(");
        WriteToString(&out, pathStack);
        out.append(", ");
        WriteToString(&out, info);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_String PopImpl(const Ark_NavPathStack* pathStack,
                       Ark_Boolean animated)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("pop(");
        WriteToString(&out, pathStack);
        out.append(", ");
        WriteToString(&out, animated);
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetOnPopCallbackImpl(const Ark_NavPathStack* pathStack,
                              const Callback_String_Void* popCallback)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnPopCallback(");
        WriteToString(&out, pathStack);
        out.append(", ");
        WriteToString(&out, popCallback);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_String GetIdByIndexImpl(const Ark_NavPathStack* pathStack,
                                Ark_Int32 index)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getIdByIndex(");
        WriteToString(&out, pathStack);
        out.append(", ");
        WriteToString(&out, index);
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    Array_String GetIdByNameImpl(const Ark_NavPathStack* pathStack,
                                 const Ark_String* name)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getIdByName(");
        WriteToString(&out, pathStack);
        out.append(", ");
        WriteToString(&out, name);
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void PopToIndexImpl(const Ark_NavPathStack* pathStack,
                        Ark_Int32 index,
                        Ark_Boolean animated)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("popToIndex(");
        WriteToString(&out, pathStack);
        out.append(", ");
        WriteToString(&out, index);
        out.append(", ");
        WriteToString(&out, animated);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Number PopToNameImpl(const Ark_NavPathStack* pathStack,
                             const Ark_String* name,
                             Ark_Boolean animated)
    {
        if (!needGroupedLog(1))
        {
            return {42};
        }
        string out("popToName(");
        WriteToString(&out, pathStack);
        out.append(", ");
        WriteToString(&out, name);
        out.append(", ");
        WriteToString(&out, animated);
        out.append(") \n");
        out.append("[return {42}] \n");
        appendGroupedLog(1, out);
        return {42};
    }
    } // NavExtenderAccessor
    namespace PersistentStorageBackendAccessor {
    Opt_String GetImpl(const Ark_String* key)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("get(");
        WriteToString(&out, key);
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    Ark_Boolean HasImpl(const Ark_String* key)
    {
        if (!needGroupedLog(1))
        {
            return 0;
        }
        string out("has(");
        WriteToString(&out, key);
        out.append(") \n");
        out.append("[return 0] \n");
        appendGroupedLog(1, out);
        return 0;
    }
    void RemoveImpl(const Ark_String* key)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("remove(");
        WriteToString(&out, key);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetImpl(const Ark_String* key,
                 const Ark_String* value)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("set(");
        WriteToString(&out, key);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void ClearImpl()
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("clear(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // PersistentStorageBackendAccessor
    namespace RenderServiceNodeAccessor {
    } // RenderServiceNodeAccessor
    namespace RestrictedWorkerAccessor {
    void DestroyPeerImpl(Ark_RestrictedWorker peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_RestrictedWorker ConstructImpl(const Ark_String* scriptURL,
                                       const Opt_WorkerOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_RestrictedWorker>(100);
        }
        string out("new RestrictedWorker(");
        WriteToString(&out, scriptURL);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_RestrictedWorker>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_RestrictedWorker>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    void PostMessage0Impl(Ark_RestrictedWorker peer,
                          const Ark_Object* message,
                          const Array_Buffer* transfer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("postMessage0(");
        WriteToString(&out, message);
        out.append(", ");
        WriteToString(&out, transfer);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void PostMessage1Impl(Ark_RestrictedWorker peer,
                          const Ark_Object* message,
                          const Opt_PostMessageOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("postMessage1(");
        WriteToString(&out, message);
        out.append(", ");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void PostMessageWithSharedSendableImpl(Ark_RestrictedWorker peer,
                                           const Ark_Object* message,
                                           const Opt_Array_Buffer* transfer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("postMessageWithSharedSendable(");
        WriteToString(&out, message);
        out.append(", ");
        WriteToString(&out, transfer);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void OnImpl(Ark_RestrictedWorker peer,
                const Ark_String* Type,
                const Ark_WorkerEventListener* listener)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("on(");
        WriteToString(&out, Type);
        out.append(", ");
        WriteToString(&out, listener);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void OnceImpl(Ark_RestrictedWorker peer,
                  const Ark_String* Type,
                  const Ark_WorkerEventListener* listener)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("once(");
        WriteToString(&out, Type);
        out.append(", ");
        WriteToString(&out, listener);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void OffImpl(Ark_RestrictedWorker peer,
                 const Ark_String* Type,
                 const Opt_WorkerEventListener* listener)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("off(");
        WriteToString(&out, Type);
        out.append(", ");
        WriteToString(&out, listener);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void TerminateImpl(Ark_RestrictedWorker peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("terminate(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void AddEventListenerImpl(Ark_RestrictedWorker peer,
                              const Ark_String* Type,
                              const Ark_WorkerEventListener* listener)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("addEventListener(");
        WriteToString(&out, Type);
        out.append(", ");
        WriteToString(&out, listener);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Boolean DispatchEventImpl(Ark_RestrictedWorker peer,
                                  const Ark_Event* event)
    {
        if (!needGroupedLog(1))
        {
            return 0;
        }
        string out("dispatchEvent(");
        WriteToString(&out, event);
        out.append(") \n");
        out.append("[return 0] \n");
        appendGroupedLog(1, out);
        return 0;
    }
    void RemoveEventListenerImpl(Ark_RestrictedWorker peer,
                                 const Ark_String* Type,
                                 const Opt_WorkerEventListener* callback_)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("removeEventListener(");
        WriteToString(&out, Type);
        out.append(", ");
        WriteToString(&out, callback_);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void RemoveAllListenerImpl(Ark_RestrictedWorker peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("removeAllListener(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void RegisterGlobalCallObjectImpl(Ark_RestrictedWorker peer,
                                      const Ark_String* instanceName,
                                      const Ark_Object* globalCallObject)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("registerGlobalCallObject(");
        WriteToString(&out, instanceName);
        out.append(", ");
        WriteToString(&out, globalCallObject);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void UnregisterGlobalCallObjectImpl(Ark_RestrictedWorker peer,
                                        const Opt_String* instanceName)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("unregisterGlobalCallObject(");
        WriteToString(&out, instanceName);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Opt_RestrictedWorker_onexit_Callback GetOnexitImpl(Ark_RestrictedWorker peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getOnexit(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetOnexitImpl(Ark_RestrictedWorker peer,
                       const Opt_RestrictedWorker_onexit_Callback* onexit)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnexit(");
        WriteToString(&out, onexit);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Opt_RestrictedWorker_onerror_Callback GetOnerrorImpl(Ark_RestrictedWorker peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getOnerror(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetOnerrorImpl(Ark_RestrictedWorker peer,
                        const Opt_RestrictedWorker_onerror_Callback* onerror)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnerror(");
        WriteToString(&out, onerror);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Opt_RestrictedWorker_onmessage_Callback GetOnmessageImpl(Ark_RestrictedWorker peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getOnmessage(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetOnmessageImpl(Ark_RestrictedWorker peer,
                          const Opt_RestrictedWorker_onmessage_Callback* onmessage)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnmessage(");
        WriteToString(&out, onmessage);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Opt_RestrictedWorker_onmessage_Callback GetOnmessageerrorImpl(Ark_RestrictedWorker peer)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getOnmessageerror(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    void SetOnmessageerrorImpl(Ark_RestrictedWorker peer,
                               const Opt_RestrictedWorker_onmessage_Callback* onmessageerror)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setOnmessageerror(");
        WriteToString(&out, onmessageerror);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // RestrictedWorkerAccessor
    namespace SceneAccessor {
    void DestroyPeerImpl(Ark_Scene peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroyPeer(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Scene ConstructImpl()
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_Scene>(100);
        }
        string out("new Scene(");
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_Scene>(100)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_Scene>(100);
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        if (!needGroupedLog(1))
        {
            return fnPtr<KNativePointer>(dummyClassFinalizer);
        }
        string out("getFinalizer(");
        out.append(") \n");
        out.append("[return fnPtr<KNativePointer>(dummyClassFinalizer)] \n");
        appendGroupedLog(1, out);
        return fnPtr<KNativePointer>(dummyClassFinalizer);
    }
    Ark_Scene LoadImpl(const Opt_ResourceStr* uri)
    {
        if (!needGroupedLog(1))
        {
            return reinterpret_cast<Ark_Scene>(300);
        }
        string out("load(");
        WriteToString(&out, uri);
        out.append(") \n");
        out.append("[return reinterpret_cast<Ark_Scene>(300)] \n");
        appendGroupedLog(1, out);
        return reinterpret_cast<Ark_Scene>(300);
    }
    void DestroyImpl(Ark_Scene peer)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("destroy(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // SceneAccessor
    namespace ScreenshotServiceAccessor {
    } // ScreenshotServiceAccessor
    namespace SearchOpsAccessor {
    Ark_NativePointer RegisterSearchValueCallbackImpl(Ark_NativePointer node,
                                                      const Ark_String* value,
                                                      const SearchValueCallback* callback)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("registerSearchValueCallback(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(", ");
        WriteToString(&out, callback);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    } // SearchOpsAccessor
    namespace StateStylesOpsAccessor {
    void OnStateStyleChangeImpl(Ark_NativePointer node,
                                const Callback_StateStylesChange* stateStyleChange)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("onStateStyleChange(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, stateStyleChange);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // StateStylesOpsAccessor
    namespace SystemOpsAccessor {
    Ark_NativePointer StartFrameImpl()
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("StartFrame(");
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    void EndFrameImpl(Ark_NativePointer root)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("EndFrame(");
        WriteToString(&out, root);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SyncInstanceIdImpl(Ark_Int32 instanceId)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("syncInstanceId(");
        WriteToString(&out, instanceId);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void RestoreInstanceIdImpl()
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("restoreInstanceId(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Ark_Int32 GetResourceIdImpl(const Ark_String* bundleName,
                                const Ark_String* moduleName,
                                const Array_String* params)
    {
        if (!needGroupedLog(1))
        {
            return 0;
        }
        string out("getResourceId(");
        WriteToString(&out, bundleName);
        out.append(", ");
        WriteToString(&out, moduleName);
        out.append(", ");
        WriteToString(&out, params);
        out.append(") \n");
        out.append("[return 0] \n");
        appendGroupedLog(1, out);
        return 0;
    }
    void ResourceManagerResetImpl()
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("resourceManagerReset(");
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    void SetFrameCallbackImpl(const Callback_Number_Void* onFrameCallback,
                              const Callback_Number_Void* onIdleCallback,
                              const Ark_Number* delayTime)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("setFrameCallback(");
        WriteToString(&out, onFrameCallback);
        out.append(", ");
        WriteToString(&out, onIdleCallback);
        out.append(", ");
        WriteToString(&out, delayTime);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    Array_Number ColorMetricsResourceColorImpl(const Ark_Resource* color)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("colorMetricsResourceColor(");
        WriteToString(&out, color);
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    } // SystemOpsAccessor
    namespace TextFieldOpsAccessor {
    Ark_NativePointer RegisterTextFieldValueCallbackImpl(Ark_NativePointer node,
                                                         const Ark_ResourceStr* value,
                                                         const TextFieldValueCallback* callback)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("registerTextFieldValueCallback(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(", ");
        WriteToString(&out, callback);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetWidthImpl(Ark_NativePointer node,
                                               const Opt_Union_Length_LayoutPolicy* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetWidth(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetHeightImpl(Ark_NativePointer node,
                                                const Opt_Union_Length_LayoutPolicy* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetHeight(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetPaddingImpl(Ark_NativePointer node,
                                                 const Opt_Union_Padding_Length_LocalizedPadding* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetPadding(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetMarginImpl(Ark_NativePointer node,
                                                const Opt_Union_Padding_Length_LocalizedPadding* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetMargin(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetBorderImpl(Ark_NativePointer node,
                                                const Opt_CustomObject* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetBorder(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetBorderWidthImpl(Ark_NativePointer node,
                                                     const Opt_Union_Length_EdgeWidths_LocalizedEdgeWidths* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetBorderWidth(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetBorderColorImpl(Ark_NativePointer node,
                                                     const Opt_Union_ResourceColor_EdgeColors_LocalizedEdgeColors* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetBorderColor(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetBorderStyleImpl(Ark_NativePointer node,
                                                     const Opt_Union_BorderStyle_EdgeStyles* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetBorderStyle(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetBorderRadiusImpl(Ark_NativePointer node,
                                                      const Opt_Union_Length_BorderRadiuses_LocalizedBorderRadiuses* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetBorderRadius(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    Ark_NativePointer TextFieldOpsSetBackgroundColorImpl(Ark_NativePointer node,
                                                         const Opt_ResourceColor* value)
    {
        if (!needGroupedLog(1))
        {
            return nullptr;
        }
        string out("textFieldOpsSetBackgroundColor(");
        WriteToString(&out, node);
        out.append(", ");
        WriteToString(&out, value);
        out.append(") \n");
        out.append("[return nullptr] \n");
        appendGroupedLog(1, out);
        return nullptr;
    }
    } // TextFieldOpsAccessor
    namespace TextPickerDialogAccessor {
    void ShowImpl(const Opt_TextPickerDialogOptions* options)
    {
        if (!needGroupedLog(1))
        {
            return;
        }
        string out("show(");
        WriteToString(&out, options);
        out.append(") \n");
        appendGroupedLog(1, out);
    }
    } // TextPickerDialogAccessor
    namespace UIContextAtomicServiceBarAccessor {
    Ark_CustomObject GetBarRectImpl()
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getBarRect(");
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    } // UIContextAtomicServiceBarAccessor
    namespace GlobalScopeAccessor {
    Ark_ComponentInfo GetRectangleByIdImpl(const Ark_String* id)
    {
        if (!needGroupedLog(1))
        {
            return {};
        }
        string out("getRectangleById(");
        WriteToString(&out, id);
        out.append(") \n");
        out.append("[return {}] \n");
        appendGroupedLog(1, out);
        return {};
    }
    } // GlobalScopeAccessor
    const GENERATED_ArkUIAnimationExtenderAccessor* GetAnimationExtenderAccessor()
    {
        static const GENERATED_ArkUIAnimationExtenderAccessor AnimationExtenderAccessorImpl {
            AnimationExtenderAccessor::SetClipRectImpl,
            AnimationExtenderAccessor::OpenImplicitAnimationImpl,
            AnimationExtenderAccessor::CloseImplicitAnimationImpl,
            AnimationExtenderAccessor::StartDoubleAnimationImpl,
            AnimationExtenderAccessor::AnimationTranslateImpl,
        };
        return &AnimationExtenderAccessorImpl;
    }

    const GENERATED_ArkUIBaseEventAccessor* GetBaseEventAccessor()
    {
        static const GENERATED_ArkUIBaseEventAccessor BaseEventAccessorImpl {
            BaseEventAccessor::DestroyPeerImpl,
            BaseEventAccessor::ConstructImpl,
            BaseEventAccessor::GetFinalizerImpl,
            BaseEventAccessor::GetModifierKeyStateImpl,
            BaseEventAccessor::GetSourceImpl,
            BaseEventAccessor::SetSourceImpl,
            BaseEventAccessor::GetAxisHorizontalImpl,
            BaseEventAccessor::SetAxisHorizontalImpl,
            BaseEventAccessor::GetAxisVerticalImpl,
            BaseEventAccessor::SetAxisVerticalImpl,
            BaseEventAccessor::GetPressureImpl,
            BaseEventAccessor::SetPressureImpl,
            BaseEventAccessor::GetTiltXImpl,
            BaseEventAccessor::SetTiltXImpl,
            BaseEventAccessor::GetSourceToolImpl,
            BaseEventAccessor::SetSourceToolImpl,
            BaseEventAccessor::GetDeviceIdImpl,
            BaseEventAccessor::SetDeviceIdImpl,
            BaseEventAccessor::GetTargetDisplayIdImpl,
            BaseEventAccessor::SetTargetDisplayIdImpl,
        };
        return &BaseEventAccessorImpl;
    }

    struct BaseEventPeer {
        virtual ~BaseEventPeer() = default;
    };
    const GENERATED_ArkUIBaseShapeAccessor* GetBaseShapeAccessor()
    {
        static const GENERATED_ArkUIBaseShapeAccessor BaseShapeAccessorImpl {
            BaseShapeAccessor::DestroyPeerImpl,
            BaseShapeAccessor::ConstructImpl,
            BaseShapeAccessor::GetFinalizerImpl,
            BaseShapeAccessor::WidthImpl,
            BaseShapeAccessor::HeightImpl,
            BaseShapeAccessor::SizeImpl,
        };
        return &BaseShapeAccessorImpl;
    }

    struct BaseShapePeer {
        virtual ~BaseShapePeer() = default;
    };
    const GENERATED_ArkUIBuilderNodeOpsAccessor* GetBuilderNodeOpsAccessor()
    {
        static const GENERATED_ArkUIBuilderNodeOpsAccessor BuilderNodeOpsAccessorImpl {
            BuilderNodeOpsAccessor::DestroyPeerImpl,
            BuilderNodeOpsAccessor::ConstructImpl,
            BuilderNodeOpsAccessor::GetFinalizerImpl,
            BuilderNodeOpsAccessor::CreateImpl,
            BuilderNodeOpsAccessor::DisposeNodeImpl,
            BuilderNodeOpsAccessor::SetUpdateConfigurationCallbackImpl,
            BuilderNodeOpsAccessor::SetOptionsImpl,
            BuilderNodeOpsAccessor::PostTouchEventImpl,
            BuilderNodeOpsAccessor::SetRootFrameNodeInBuilderNodeImpl,
        };
        return &BuilderNodeOpsAccessorImpl;
    }

    struct BuilderNodeOpsPeer {
        virtual ~BuilderNodeOpsPeer() = default;
    };
    const GENERATED_ArkUIClickEventAccessor* GetClickEventAccessor()
    {
        static const GENERATED_ArkUIClickEventAccessor ClickEventAccessorImpl {
            ClickEventAccessor::DestroyPeerImpl,
            ClickEventAccessor::ConstructImpl,
            ClickEventAccessor::GetFinalizerImpl,
            ClickEventAccessor::GetDisplayXImpl,
            ClickEventAccessor::SetDisplayXImpl,
            ClickEventAccessor::GetDisplayYImpl,
            ClickEventAccessor::SetDisplayYImpl,
            ClickEventAccessor::GetWindowXImpl,
            ClickEventAccessor::SetWindowXImpl,
            ClickEventAccessor::GetWindowYImpl,
            ClickEventAccessor::SetWindowYImpl,
            ClickEventAccessor::GetScreenXImpl,
            ClickEventAccessor::SetScreenXImpl,
            ClickEventAccessor::GetScreenYImpl,
            ClickEventAccessor::SetScreenYImpl,
            ClickEventAccessor::GetXImpl,
            ClickEventAccessor::SetXImpl,
            ClickEventAccessor::GetYImpl,
            ClickEventAccessor::SetYImpl,
            ClickEventAccessor::GetPreventDefaultImpl,
            ClickEventAccessor::SetPreventDefaultImpl,
        };
        return &ClickEventAccessorImpl;
    }

    struct ClickEventPeer {
        virtual ~ClickEventPeer() = default;
    };
    const GENERATED_ArkUIColorFilterAccessor* GetColorFilterAccessor()
    {
        static const GENERATED_ArkUIColorFilterAccessor ColorFilterAccessorImpl {
            ColorFilterAccessor::DestroyPeerImpl,
            ColorFilterAccessor::ConstructImpl,
            ColorFilterAccessor::GetFinalizerImpl,
        };
        return &ColorFilterAccessorImpl;
    }

    struct ColorFilterPeer {
        virtual ~ColorFilterPeer() = default;
    };
    const GENERATED_ArkUICommonShapeAccessor* GetCommonShapeAccessor()
    {
        static const GENERATED_ArkUICommonShapeAccessor CommonShapeAccessorImpl {
            CommonShapeAccessor::DestroyPeerImpl,
            CommonShapeAccessor::ConstructImpl,
            CommonShapeAccessor::GetFinalizerImpl,
            CommonShapeAccessor::OffsetImpl,
            CommonShapeAccessor::FillImpl,
            CommonShapeAccessor::PositionImpl,
        };
        return &CommonShapeAccessorImpl;
    }

    struct CommonShapePeer {
        virtual ~CommonShapePeer() = default;
    };
    const GENERATED_ArkUIContentModifierHelperAccessor* GetContentModifierHelperAccessor()
    {
        static const GENERATED_ArkUIContentModifierHelperAccessor ContentModifierHelperAccessorImpl {
            ContentModifierHelperAccessor::ContentModifierButtonImpl,
            ContentModifierHelperAccessor::ResetContentModifierButtonImpl,
            ContentModifierHelperAccessor::ContentModifierCheckBoxImpl,
            ContentModifierHelperAccessor::ResetContentModifierCheckBoxImpl,
            ContentModifierHelperAccessor::ContentModifierDataPanelImpl,
            ContentModifierHelperAccessor::ResetContentModifierDataPanelImpl,
            ContentModifierHelperAccessor::ContentModifierGaugeImpl,
            ContentModifierHelperAccessor::ResetContentModifierGaugeImpl,
            ContentModifierHelperAccessor::ContentModifierLoadingProgressImpl,
            ContentModifierHelperAccessor::ResetContentModifierLoadingProgressImpl,
            ContentModifierHelperAccessor::ContentModifierProgressImpl,
            ContentModifierHelperAccessor::ResetContentModifierProgressImpl,
            ContentModifierHelperAccessor::ContentModifierRadioImpl,
            ContentModifierHelperAccessor::ResetContentModifierRadioImpl,
            ContentModifierHelperAccessor::ContentModifierRatingImpl,
            ContentModifierHelperAccessor::ResetContentModifierRatingImpl,
            ContentModifierHelperAccessor::ContentModifierMenuItemImpl,
            ContentModifierHelperAccessor::ResetContentModifierMenuItemImpl,
            ContentModifierHelperAccessor::ContentModifierSliderImpl,
            ContentModifierHelperAccessor::ResetContentModifierSliderImpl,
            ContentModifierHelperAccessor::ContentModifierTextClockImpl,
            ContentModifierHelperAccessor::ResetContentModifierTextClockImpl,
            ContentModifierHelperAccessor::ContentModifierTextTimerImpl,
            ContentModifierHelperAccessor::ResetContentModifierTextTimerImpl,
            ContentModifierHelperAccessor::ContentModifierToggleImpl,
            ContentModifierHelperAccessor::ResetContentModifierToggleImpl,
        };
        return &ContentModifierHelperAccessorImpl;
    }

    const GENERATED_ArkUICustomDialogControllerAccessor* GetCustomDialogControllerAccessor()
    {
        static const GENERATED_ArkUICustomDialogControllerAccessor CustomDialogControllerAccessorImpl {
            CustomDialogControllerAccessor::DestroyPeerImpl,
            CustomDialogControllerAccessor::ConstructImpl,
            CustomDialogControllerAccessor::GetFinalizerImpl,
            CustomDialogControllerAccessor::OpenImpl,
            CustomDialogControllerAccessor::CloseImpl,
        };
        return &CustomDialogControllerAccessorImpl;
    }

    struct CustomDialogControllerPeer {
        virtual ~CustomDialogControllerPeer() = default;
    };
    const GENERATED_ArkUIDrawModifierAccessor* GetDrawModifierAccessor()
    {
        static const GENERATED_ArkUIDrawModifierAccessor DrawModifierAccessorImpl {
            DrawModifierAccessor::DestroyPeerImpl,
            DrawModifierAccessor::ConstructImpl,
            DrawModifierAccessor::GetFinalizerImpl,
            DrawModifierAccessor::InvalidateImpl,
            DrawModifierAccessor::GetDrawBehindImpl,
            DrawModifierAccessor::SetDrawBehindImpl,
            DrawModifierAccessor::GetDrawContentImpl,
            DrawModifierAccessor::SetDrawContentImpl,
            DrawModifierAccessor::GetDrawFrontImpl,
            DrawModifierAccessor::SetDrawFrontImpl,
        };
        return &DrawModifierAccessorImpl;
    }

    struct DrawModifierPeer {
        virtual ~DrawModifierPeer() = default;
    };
    const GENERATED_ArkUIEnvironmentBackendAccessor* GetEnvironmentBackendAccessor()
    {
        static const GENERATED_ArkUIEnvironmentBackendAccessor EnvironmentBackendAccessorImpl {
            EnvironmentBackendAccessor::IsAccessibilityEnabledImpl,
            EnvironmentBackendAccessor::GetColorModeImpl,
            EnvironmentBackendAccessor::GetFontScaleImpl,
            EnvironmentBackendAccessor::GetFontWeightScaleImpl,
            EnvironmentBackendAccessor::GetLayoutDirectionImpl,
            EnvironmentBackendAccessor::GetLanguageCodeImpl,
        };
        return &EnvironmentBackendAccessorImpl;
    }

    const GENERATED_ArkUIEventEmulatorAccessor* GetEventEmulatorAccessor()
    {
        static const GENERATED_ArkUIEventEmulatorAccessor EventEmulatorAccessorImpl {
            EventEmulatorAccessor::EmitClickEventImpl,
            EventEmulatorAccessor::EmitTextInputEventImpl,
        };
        return &EventEmulatorAccessorImpl;
    }

    const GENERATED_ArkUIFocusControllerAccessor* GetFocusControllerAccessor()
    {
        static const GENERATED_ArkUIFocusControllerAccessor FocusControllerAccessorImpl {
            FocusControllerAccessor::RequestFocusImpl,
        };
        return &FocusControllerAccessorImpl;
    }

    const GENERATED_ArkUIGlobalScope_ohos_arkui_componentSnapshotAccessor* GetGlobalScope_ohos_arkui_componentSnapshotAccessor()
    {
        static const GENERATED_ArkUIGlobalScope_ohos_arkui_componentSnapshotAccessor GlobalScope_ohos_arkui_componentSnapshotAccessorImpl {
            GlobalScope_ohos_arkui_componentSnapshotAccessor::GetImpl,
        };
        return &GlobalScope_ohos_arkui_componentSnapshotAccessorImpl;
    }

    const GENERATED_ArkUIGlobalScope_ohos_arkui_performanceMonitorAccessor* GetGlobalScope_ohos_arkui_performanceMonitorAccessor()
    {
        static const GENERATED_ArkUIGlobalScope_ohos_arkui_performanceMonitorAccessor GlobalScope_ohos_arkui_performanceMonitorAccessorImpl {
            GlobalScope_ohos_arkui_performanceMonitorAccessor::BeginImpl,
            GlobalScope_ohos_arkui_performanceMonitorAccessor::EndImpl,
            GlobalScope_ohos_arkui_performanceMonitorAccessor::RecordInputEventTimeImpl,
        };
        return &GlobalScope_ohos_arkui_performanceMonitorAccessorImpl;
    }

    const GENERATED_ArkUIGlobalScope_ohos_fontAccessor* GetGlobalScope_ohos_fontAccessor()
    {
        static const GENERATED_ArkUIGlobalScope_ohos_fontAccessor GlobalScope_ohos_fontAccessorImpl {
            GlobalScope_ohos_fontAccessor::RegisterFontImpl,
            GlobalScope_ohos_fontAccessor::GetSystemFontListImpl,
            GlobalScope_ohos_fontAccessor::GetFontByNameImpl,
        };
        return &GlobalScope_ohos_fontAccessorImpl;
    }

    const GENERATED_ArkUIGlobalScope_ohos_measure_utilsAccessor* GetGlobalScope_ohos_measure_utilsAccessor()
    {
        static const GENERATED_ArkUIGlobalScope_ohos_measure_utilsAccessor GlobalScope_ohos_measure_utilsAccessorImpl {
            GlobalScope_ohos_measure_utilsAccessor::MeasureTextImpl,
            GlobalScope_ohos_measure_utilsAccessor::MeasureTextSizeImpl,
        };
        return &GlobalScope_ohos_measure_utilsAccessorImpl;
    }

    const GENERATED_ArkUIICurveAccessor* GetICurveAccessor()
    {
        static const GENERATED_ArkUIICurveAccessor ICurveAccessorImpl {
            ICurveAccessor::DestroyPeerImpl,
            ICurveAccessor::ConstructImpl,
            ICurveAccessor::GetFinalizerImpl,
            ICurveAccessor::InterpolateImpl,
        };
        return &ICurveAccessorImpl;
    }

    struct ICurvePeer {
        virtual ~ICurvePeer() = default;
    };
    const GENERATED_ArkUIIUIContextAccessor* GetIUIContextAccessor()
    {
        static const GENERATED_ArkUIIUIContextAccessor IUIContextAccessorImpl {
            IUIContextAccessor::FreezeUINode0Impl,
            IUIContextAccessor::FreezeUINode1Impl,
        };
        return &IUIContextAccessorImpl;
    }

    const GENERATED_ArkUILazyForEachOpsAccessor* GetLazyForEachOpsAccessor()
    {
        static const GENERATED_ArkUILazyForEachOpsAccessor LazyForEachOpsAccessorImpl {
            LazyForEachOpsAccessor::SyncImpl,
        };
        return &LazyForEachOpsAccessorImpl;
    }

    const GENERATED_ArkUINavExtenderAccessor* GetNavExtenderAccessor()
    {
        static const GENERATED_ArkUINavExtenderAccessor NavExtenderAccessorImpl {
            NavExtenderAccessor::SetNavigationOptionsImpl,
            NavExtenderAccessor::SetUpdateStackCallbackImpl,
            NavExtenderAccessor::SyncStackImpl,
            NavExtenderAccessor::CheckNeedCreateImpl,
            NavExtenderAccessor::SetNavDestinationNodeImpl,
            NavExtenderAccessor::PushPathImpl,
            NavExtenderAccessor::ReplacePathImpl,
            NavExtenderAccessor::PopImpl,
            NavExtenderAccessor::SetOnPopCallbackImpl,
            NavExtenderAccessor::GetIdByIndexImpl,
            NavExtenderAccessor::GetIdByNameImpl,
            NavExtenderAccessor::PopToIndexImpl,
            NavExtenderAccessor::PopToNameImpl,
        };
        return &NavExtenderAccessorImpl;
    }

    const GENERATED_ArkUIPersistentStorageBackendAccessor* GetPersistentStorageBackendAccessor()
    {
        static const GENERATED_ArkUIPersistentStorageBackendAccessor PersistentStorageBackendAccessorImpl {
            PersistentStorageBackendAccessor::GetImpl,
            PersistentStorageBackendAccessor::HasImpl,
            PersistentStorageBackendAccessor::RemoveImpl,
            PersistentStorageBackendAccessor::SetImpl,
            PersistentStorageBackendAccessor::ClearImpl,
        };
        return &PersistentStorageBackendAccessorImpl;
    }

    const GENERATED_ArkUIRenderServiceNodeAccessor* GetRenderServiceNodeAccessor()
    {
        static const GENERATED_ArkUIRenderServiceNodeAccessor RenderServiceNodeAccessorImpl {
            RenderServiceNodeAccessor::GetNodeIdImpl,
        };
        return &RenderServiceNodeAccessorImpl;
    }

    const GENERATED_ArkUIRestrictedWorkerAccessor* GetRestrictedWorkerAccessor()
    {
        static const GENERATED_ArkUIRestrictedWorkerAccessor RestrictedWorkerAccessorImpl {
            RestrictedWorkerAccessor::DestroyPeerImpl,
            RestrictedWorkerAccessor::ConstructImpl,
            RestrictedWorkerAccessor::GetFinalizerImpl,
            RestrictedWorkerAccessor::PostMessage0Impl,
            RestrictedWorkerAccessor::PostMessage1Impl,
            RestrictedWorkerAccessor::PostMessageWithSharedSendableImpl,
            RestrictedWorkerAccessor::OnImpl,
            RestrictedWorkerAccessor::OnceImpl,
            RestrictedWorkerAccessor::OffImpl,
            RestrictedWorkerAccessor::TerminateImpl,
            RestrictedWorkerAccessor::AddEventListenerImpl,
            RestrictedWorkerAccessor::DispatchEventImpl,
            RestrictedWorkerAccessor::RemoveEventListenerImpl,
            RestrictedWorkerAccessor::RemoveAllListenerImpl,
            RestrictedWorkerAccessor::RegisterGlobalCallObjectImpl,
            RestrictedWorkerAccessor::UnregisterGlobalCallObjectImpl,
            RestrictedWorkerAccessor::GetOnexitImpl,
            RestrictedWorkerAccessor::SetOnexitImpl,
            RestrictedWorkerAccessor::GetOnerrorImpl,
            RestrictedWorkerAccessor::SetOnerrorImpl,
            RestrictedWorkerAccessor::GetOnmessageImpl,
            RestrictedWorkerAccessor::SetOnmessageImpl,
            RestrictedWorkerAccessor::GetOnmessageerrorImpl,
            RestrictedWorkerAccessor::SetOnmessageerrorImpl,
        };
        return &RestrictedWorkerAccessorImpl;
    }

    struct RestrictedWorkerPeer {
        virtual ~RestrictedWorkerPeer() = default;
    };
    const GENERATED_ArkUISceneAccessor* GetSceneAccessor()
    {
        static const GENERATED_ArkUISceneAccessor SceneAccessorImpl {
            SceneAccessor::DestroyPeerImpl,
            SceneAccessor::ConstructImpl,
            SceneAccessor::GetFinalizerImpl,
            SceneAccessor::LoadImpl,
            SceneAccessor::DestroyImpl,
        };
        return &SceneAccessorImpl;
    }

    struct ScenePeer {
        virtual ~ScenePeer() = default;
    };
    const GENERATED_ArkUIScreenshotServiceAccessor* GetScreenshotServiceAccessor()
    {
        static const GENERATED_ArkUIScreenshotServiceAccessor ScreenshotServiceAccessorImpl {
            ScreenshotServiceAccessor::RequestScreenshotImpl,
        };
        return &ScreenshotServiceAccessorImpl;
    }

    const GENERATED_ArkUISearchOpsAccessor* GetSearchOpsAccessor()
    {
        static const GENERATED_ArkUISearchOpsAccessor SearchOpsAccessorImpl {
            SearchOpsAccessor::RegisterSearchValueCallbackImpl,
        };
        return &SearchOpsAccessorImpl;
    }

    const GENERATED_ArkUIStateStylesOpsAccessor* GetStateStylesOpsAccessor()
    {
        static const GENERATED_ArkUIStateStylesOpsAccessor StateStylesOpsAccessorImpl {
            StateStylesOpsAccessor::OnStateStyleChangeImpl,
        };
        return &StateStylesOpsAccessorImpl;
    }

    const GENERATED_ArkUISystemOpsAccessor* GetSystemOpsAccessor()
    {
        static const GENERATED_ArkUISystemOpsAccessor SystemOpsAccessorImpl {
            SystemOpsAccessor::StartFrameImpl,
            SystemOpsAccessor::EndFrameImpl,
            SystemOpsAccessor::SyncInstanceIdImpl,
            SystemOpsAccessor::RestoreInstanceIdImpl,
            SystemOpsAccessor::GetResourceIdImpl,
            SystemOpsAccessor::ResourceManagerResetImpl,
            SystemOpsAccessor::SetFrameCallbackImpl,
            SystemOpsAccessor::ColorMetricsResourceColorImpl,
        };
        return &SystemOpsAccessorImpl;
    }

    const GENERATED_ArkUITextFieldOpsAccessor* GetTextFieldOpsAccessor()
    {
        static const GENERATED_ArkUITextFieldOpsAccessor TextFieldOpsAccessorImpl {
            TextFieldOpsAccessor::RegisterTextFieldValueCallbackImpl,
            TextFieldOpsAccessor::TextFieldOpsSetWidthImpl,
            TextFieldOpsAccessor::TextFieldOpsSetHeightImpl,
            TextFieldOpsAccessor::TextFieldOpsSetPaddingImpl,
            TextFieldOpsAccessor::TextFieldOpsSetMarginImpl,
            TextFieldOpsAccessor::TextFieldOpsSetBorderImpl,
            TextFieldOpsAccessor::TextFieldOpsSetBorderWidthImpl,
            TextFieldOpsAccessor::TextFieldOpsSetBorderColorImpl,
            TextFieldOpsAccessor::TextFieldOpsSetBorderStyleImpl,
            TextFieldOpsAccessor::TextFieldOpsSetBorderRadiusImpl,
            TextFieldOpsAccessor::TextFieldOpsSetBackgroundColorImpl,
        };
        return &TextFieldOpsAccessorImpl;
    }

    const GENERATED_ArkUITextPickerDialogAccessor* GetTextPickerDialogAccessor()
    {
        static const GENERATED_ArkUITextPickerDialogAccessor TextPickerDialogAccessorImpl {
            TextPickerDialogAccessor::ShowImpl,
        };
        return &TextPickerDialogAccessorImpl;
    }

    const GENERATED_ArkUIUIContextAtomicServiceBarAccessor* GetUIContextAtomicServiceBarAccessor()
    {
        static const GENERATED_ArkUIUIContextAtomicServiceBarAccessor UIContextAtomicServiceBarAccessorImpl {
            UIContextAtomicServiceBarAccessor::GetBarRectImpl,
        };
        return &UIContextAtomicServiceBarAccessorImpl;
    }

    const GENERATED_ArkUIGlobalScopeAccessor* GetGlobalScopeAccessor()
    {
        static const GENERATED_ArkUIGlobalScopeAccessor GlobalScopeAccessorImpl {
            GlobalScopeAccessor::GetRectangleByIdImpl,
        };
        return &GlobalScopeAccessorImpl;
    }

    struct GlobalScopePeer {
        virtual ~GlobalScopePeer() = default;
    };
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