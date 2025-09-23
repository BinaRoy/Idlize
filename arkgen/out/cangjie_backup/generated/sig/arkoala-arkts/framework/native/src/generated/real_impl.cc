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
        return {};
    }
    } // BlankModifier
    namespace BlankInterfaceModifier {
    void SetBlankOptionsImpl(Ark_NativePointer node,
                             const Opt_Number* min)
    {
    }
    } // BlankInterfaceModifier
    namespace BlankAttributeModifier {
    void SetColorImpl(Ark_NativePointer node,
                      const Ark_ResourceColor* value)
    {
    }
    } // BlankAttributeModifier
    namespace ButtonModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // ButtonModifier
    namespace ButtonInterfaceModifier {
    void SetButtonOptionsImpl(Ark_NativePointer node)
    {
    }
    } // ButtonInterfaceModifier
    namespace ButtonAttributeModifier {
    void SetTypeImpl(Ark_NativePointer node,
                     Ark_ButtonType value)
    {
    }
    void SetFontColorImpl(Ark_NativePointer node,
                          const Ark_ResourceColor* value)
    {
    }
    void SetLabelStyleImpl(Ark_NativePointer node,
                           const Ark_LabelStyle* value)
    {
    }
    } // ButtonAttributeModifier
    namespace CheckboxModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // CheckboxModifier
    namespace CheckboxInterfaceModifier {
    void SetCheckboxOptionsImpl(Ark_NativePointer node,
                                const Opt_CheckboxOptions* options)
    {
    }
    } // CheckboxInterfaceModifier
    namespace CheckboxAttributeModifier {
    void SetSelectImpl(Ark_NativePointer node,
                       Ark_Boolean value)
    {
    }
    void SetSelectedColorImpl(Ark_NativePointer node,
                              const Ark_ResourceColor* value)
    {
    }
    void SetShapeImpl(Ark_NativePointer node,
                      Ark_CheckBoxShape value)
    {
    }
    void SetUnselectedColorImpl(Ark_NativePointer node,
                                const Ark_ResourceColor* value)
    {
    }
    void SetMarkImpl(Ark_NativePointer node,
                     const Ark_MarkStyle* value)
    {
    }
    void SetOnChangeImpl(Ark_NativePointer node,
                         const Callback_Boolean_Void* callback_)
    {
    }
    void Set_onChangeEvent_selectImpl(Ark_NativePointer node,
                                      const Callback_Number_Void* callback)
    {
    }
    } // CheckboxAttributeModifier
    namespace ColumnModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // ColumnModifier
    namespace ColumnInterfaceModifier {
    void SetColumnOptionsImpl(Ark_NativePointer node)
    {
    }
    } // ColumnInterfaceModifier
    namespace ColumnAttributeModifier {
    void SetAlignItemsImpl(Ark_NativePointer node,
                           Ark_HorizontalAlign value)
    {
    }
    } // ColumnAttributeModifier
    namespace CommonMethodModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    void SetBackdropBlurImpl(Ark_NativePointer node,
                             const Ark_Number* value,
                             const Opt_BlurOptions* options)
    {
    }
    void SetWidthImpl(Ark_NativePointer node,
                      const Ark_Length* value)
    {
    }
    void SetHeightImpl(Ark_NativePointer node,
                       const Ark_Length* value)
    {
    }
    void SetKeyImpl(Ark_NativePointer node,
                    const Ark_String* value)
    {
    }
    void SetRestoreIdImpl(Ark_NativePointer node,
                          const Ark_Number* value)
    {
    }
    void SetPaddingImpl(Ark_NativePointer node,
                        const Ark_Padding* value)
    {
    }
    void SetBindSheetImpl(Ark_NativePointer node,
                          Ark_Boolean isShow,
                          const Opt_SheetOptions* options)
    {
    }
    void SetBackgroundBlurStyleImpl(Ark_NativePointer node,
                                    Ark_BlurStyle value,
                                    const Opt_BackgroundBlurStyleOptions* options)
    {
    }
    void SetDragPreviewOptionsImpl(Ark_NativePointer node,
                                   const Ark_DragPreviewOptions* value,
                                   const Opt_DragInteractionOptions* options)
    {
    }
    void SetOnClick0Impl(Ark_NativePointer node,
                         const Opt_Callback_ClickEvent_Void* event)
    {
    }
    void SetOnClick1Impl(Ark_NativePointer node,
                         const Opt_Callback_ClickEvent_Void* event,
                         const Opt_Number* distanceThreshold)
    {
    }
    } // CommonMethodModifier
    namespace ComponentRootModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // ComponentRootModifier
    namespace CustomLayoutRootModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    void SetSubscribeOnMeasureSizeImpl(Ark_NativePointer node,
                                       const Callback_onMeasureSize_SizeResult* value)
    {
    }
    void SetSubscribeOnPlaceChildrenImpl(Ark_NativePointer node,
                                         const Callback_onPlaceChildren_Void* value)
    {
    }
    } // CustomLayoutRootModifier
    namespace ListModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // ListModifier
    namespace ListInterfaceModifier {
    void SetListOptionsImpl(Ark_NativePointer node)
    {
    }
    } // ListInterfaceModifier
    namespace ListAttributeModifier {
    void SetSomeOptionalImpl(Ark_NativePointer node,
                             const Opt_Boolean* param)
    {
    }
    } // ListAttributeModifier
    namespace NavigationModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // NavigationModifier
    namespace NavigationInterfaceModifier {
    void SetNavigationOptionsImpl(Ark_NativePointer node)
    {
    }
    } // NavigationInterfaceModifier
    namespace NavigationAttributeModifier {
    void SetOnTitleModeChangeImpl(Ark_NativePointer node,
                                  const Callback_NavigationTitleMode_Void* callback_)
    {
    }
    } // NavigationAttributeModifier
    namespace RootModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // RootModifier
    namespace ScrollableCommonMethodModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    void SetScrollBarWidthImpl(Ark_NativePointer node,
                               const Ark_Number* value)
    {
    }
    void SetScrollBarWidthImpl(Ark_NativePointer node,
                               const Ark_String* value)
    {
    }
    } // ScrollableCommonMethodModifier
    namespace TestModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // TestModifier
    namespace TestInterfaceModifier {
    void SetTestOptionsImpl(Ark_NativePointer node)
    {
    }
    } // TestInterfaceModifier
    namespace TestAttributeModifier {
    void SetTestBooleanImpl(Ark_NativePointer node,
                            Ark_Boolean value)
    {
    }
    void SetTestNumberImpl(Ark_NativePointer node,
                           const Ark_Number* value)
    {
    }
    void SetTestStringImpl(Ark_NativePointer node,
                           const Ark_String* value)
    {
    }
    void SetTestEnumImpl(Ark_NativePointer node,
                         Ark_EnumDTS value)
    {
    }
    void SetTestBasicMixImpl(Ark_NativePointer node,
                             const Ark_Number* v1,
                             const Ark_String* v2,
                             const Ark_Number* v3)
    {
    }
    void SetTestBooleanUndefinedImpl(Ark_NativePointer node,
                                     const Opt_Boolean* value)
    {
    }
    void SetTestNumberUndefinedImpl(Ark_NativePointer node,
                                    const Opt_Number* value)
    {
    }
    void SetTestStringUndefinedImpl(Ark_NativePointer node,
                                    const Opt_String* value)
    {
    }
    void SetTestEnumUndefinedImpl(Ark_NativePointer node,
                                  const Opt_EnumDTS* value)
    {
    }
    void SetTestFunctionNumberVoidImpl(Ark_NativePointer node,
                                       const Callback_Number_Void* value)
    {
    }
    void SetTestUnionNumberEnumImpl(Ark_NativePointer node,
                                    const Ark_Number* val)
    {
    }
    void SetTestUnionNumberEnumImpl(Ark_NativePointer node,
                                    Ark_EnumDTS val)
    {
    }
    void SetTestUnionBooleanStringImpl(Ark_NativePointer node,
                                       Ark_Boolean val)
    {
    }
    void SetTestUnionBooleanStringImpl(Ark_NativePointer node,
                                       const Ark_String* val)
    {
    }
    void SetTestUnionStringNumberImpl(Ark_NativePointer node,
                                      const Ark_Number* val)
    {
    }
    void SetTestUnionStringNumberImpl(Ark_NativePointer node,
                                      const Ark_String* val)
    {
    }
    void SetTestUnionBooleanStringNumberUndefinedImpl(Ark_NativePointer node,
                                                      const Opt_Number* val)
    {
    }
    void SetTestUnionWithGenericArrayImpl(Ark_NativePointer node,
                                          const Ark_Number* value)
    {
    }
    void SetTestUnionWithArrayTypeImpl(Ark_NativePointer node,
                                       const Ark_Number* value)
    {
    }
    void SetTestBooleanArrayImpl(Ark_NativePointer node,
                                 const Array_Boolean* value)
    {
    }
    void SetTestNumberArrayImpl(Ark_NativePointer node,
                                const Array_Number* value)
    {
    }
    void SetTestStringArrayImpl(Ark_NativePointer node,
                                const Array_String* value)
    {
    }
    void SetTestEnumArrayImpl(Ark_NativePointer node,
                              const Array_EnumDTS* value)
    {
    }
    void SetTestArrayMixImpl(Ark_NativePointer node,
                             const Array_Number* v1,
                             const Array_String* v2,
                             const Array_EnumDTS* v3)
    {
    }
    void SetTestTupleBooleanNumberImpl(Ark_NativePointer node,
                                       const Ark_CustomObject* value)
    {
    }
    void SetTestTupleNumberStringEnumImpl(Ark_NativePointer node,
                                          const Ark_CustomObject* value)
    {
    }
    void SetTestTupleOptionalImpl(Ark_NativePointer node,
                                  const Ark_CustomObject* value)
    {
    }
    void SetTestTupleUnionImpl(Ark_NativePointer node,
                               const Ark_CustomObject* value)
    {
    }
    void SetTestArrayRefBooleanImpl(Ark_NativePointer node,
                                    const Array_Boolean* value)
    {
    }
    void SetTestArrayRefNumberImpl(Ark_NativePointer node,
                                   const Array_Number* value)
    {
    }
    void SetTestBooleanInterfaceImpl(Ark_NativePointer node,
                                     const Ark_BooleanInterfaceDTS* value)
    {
    }
    void SetTestNumberInterfaceImpl(Ark_NativePointer node,
                                    const Ark_NumberInterfaceDTS* value)
    {
    }
    void SetTestStringInterfaceImpl(Ark_NativePointer node,
                                    const Ark_StringInterfaceDTS* value)
    {
    }
    void SetTestUnionInterfaceImpl(Ark_NativePointer node,
                                   const Ark_UnionInterfaceDTS* value)
    {
    }
    void SetTestUnionOptionalImpl(Ark_NativePointer node,
                                  const Ark_UnionOptionalInterfaceDTS* value)
    {
    }
    void SetTestTupleInterfaceImpl(Ark_NativePointer node,
                                   const Ark_TupleInterfaceDTS* value)
    {
    }
    void SetTestArrayRefNumberInterfaceImpl(Ark_NativePointer node,
                                            const Ark_ArrayRefNumberInterfaceDTS* value)
    {
    }
    void SetTestBooleanInterfaceOptionImpl(Ark_NativePointer node,
                                           const Opt_BooleanInterfaceDTS* value)
    {
    }
    void SetTestBooleanInterfaceArrayImpl(Ark_NativePointer node,
                                          const Array_BooleanInterfaceDTS* value)
    {
    }
    void SetTestBooleanInterfaceArrayRefImpl(Ark_NativePointer node,
                                             const Array_BooleanInterfaceDTS* value)
    {
    }
    void SetTestInterfaceMixedImpl(Ark_NativePointer node,
                                   const Ark_UnionInterfaceDTS* v1,
                                   const Ark_Number* v2,
                                   const Ark_TupleInterfaceDTS* v3)
    {
    }
    } // TestAttributeModifier
    namespace TextInputModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // TextInputModifier
    namespace TextInputInterfaceModifier {
    void SetTextInputOptionsImpl(Ark_NativePointer node,
                                 const Opt_TextInputOptions* value)
    {
    }
    } // TextInputInterfaceModifier
    namespace TextInputAttributeModifier {
    void SetTypeImpl(Ark_NativePointer node,
                     Ark_InputType value)
    {
    }
    void SetContentTypeImpl(Ark_NativePointer node,
                            Ark_ContentType value)
    {
    }
    void SetOnCopyImpl(Ark_NativePointer node,
                       const Callback_String_Void* callback_)
    {
    }
    void Set_onChangeEvent_textImpl(Ark_NativePointer node,
                                    const Callback_ResourceStr_Void* callback)
    {
    }
    } // TextInputAttributeModifier
    namespace TextPickerModifier {
    Ark_NativePointer ConstructImpl(Ark_Int32 id,
                                    Ark_Int32 flags)
    {
        return {};
    }
    } // TextPickerModifier
    namespace TextPickerInterfaceModifier {
    void SetTextPickerOptionsImpl(Ark_NativePointer node,
                                  const Opt_TextPickerOptions* options)
    {
    }
    } // TextPickerInterfaceModifier
    namespace TextPickerAttributeModifier {
    void SetDefaultPickerItemHeightImpl(Ark_NativePointer node,
                                        const Ark_Number* value)
    {
    }
    void SetDefaultPickerItemHeightImpl(Ark_NativePointer node,
                                        const Ark_String* value)
    {
    }
    void SetCanLoopImpl(Ark_NativePointer node,
                        Ark_Boolean value)
    {
    }
    void SetDisappearTextStyleImpl(Ark_NativePointer node,
                                   const Ark_CustomObject* value)
    {
    }
    void SetTextStyleImpl(Ark_NativePointer node,
                          const Ark_CustomObject* value)
    {
    }
    void SetSelectedTextStyleImpl(Ark_NativePointer node,
                                  const Ark_CustomObject* value)
    {
    }
    void SetOnAcceptImpl(Ark_NativePointer node,
                         const Callback_String_Number_Void* callback_)
    {
    }
    void SetOnCancelImpl(Ark_NativePointer node,
                         const Callback_Void* callback_)
    {
    }
    void SetOnChangeImpl(Ark_NativePointer node,
                         const Type_TextPickerAttribute_onChange_callback* callback_)
    {
    }
    void SetOnScrollStopImpl(Ark_NativePointer node,
                             const TextPickerScrollStopCallback* callback_)
    {
    }
    void SetSelectedIndexImpl(Ark_NativePointer node,
                              const Ark_Number* value)
    {
    }
    void SetDividerImpl(Ark_NativePointer node,
                        const Opt_DividerOptions* value)
    {
    }
    void SetGradientHeightImpl(Ark_NativePointer node,
                               const Ark_Dimension* value)
    {
    }
    void Set_onChangeEvent_selectedImpl(Ark_NativePointer node,
                                        const Callback_Union_Number_Array_Number_Void* callback)
    {
    }
    void Set_onChangeEvent_valueImpl(Ark_NativePointer node,
                                     const Callback_Union_String_Array_String_Void* callback)
    {
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
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void OpenImplicitAnimationImpl(const Ark_AnimateParam* param)
    {
    }
    void CloseImplicitAnimationImpl()
    {
    }
    void StartDoubleAnimationImpl(Ark_NativePointer node,
                                  const Ark_DoubleAnimationParam* param)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void AnimationTranslateImpl(Ark_NativePointer node,
                                const Ark_TranslateOptions* options)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    } // AnimationExtenderAccessor
    namespace BaseEventAccessor {
    void DestroyPeerImpl(Ark_BaseEvent peer)
    {
        auto peerImpl = reinterpret_cast<BaseEventPeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_BaseEvent ConstructImpl()
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    Ark_Boolean GetModifierKeyStateImpl(Ark_BaseEvent peer,
                                        const Array_String* keys)
    {
        return {};
    }
    Ark_SourceType GetSourceImpl(Ark_BaseEvent peer)
    {
        return {};
    }
    void SetSourceImpl(Ark_BaseEvent peer,
                       Ark_SourceType source)
    {
    }
    Opt_Number GetAxisHorizontalImpl(Ark_BaseEvent peer)
    {
        return {};
    }
    void SetAxisHorizontalImpl(Ark_BaseEvent peer,
                               const Opt_Number* axisHorizontal)
    {
    }
    Opt_Number GetAxisVerticalImpl(Ark_BaseEvent peer)
    {
        return {};
    }
    void SetAxisVerticalImpl(Ark_BaseEvent peer,
                             const Opt_Number* axisVertical)
    {
    }
    Ark_Number GetPressureImpl(Ark_BaseEvent peer)
    {
        return {};
    }
    void SetPressureImpl(Ark_BaseEvent peer,
                         const Ark_Number* pressure)
    {
    }
    Ark_Number GetTiltXImpl(Ark_BaseEvent peer)
    {
        return {};
    }
    void SetTiltXImpl(Ark_BaseEvent peer,
                      const Ark_Number* tiltX)
    {
    }
    Ark_SourceTool GetSourceToolImpl(Ark_BaseEvent peer)
    {
        return {};
    }
    void SetSourceToolImpl(Ark_BaseEvent peer,
                           Ark_SourceTool sourceTool)
    {
    }
    Opt_Number GetDeviceIdImpl(Ark_BaseEvent peer)
    {
        return {};
    }
    void SetDeviceIdImpl(Ark_BaseEvent peer,
                         const Opt_Number* deviceId)
    {
    }
    Opt_Number GetTargetDisplayIdImpl(Ark_BaseEvent peer)
    {
        return {};
    }
    void SetTargetDisplayIdImpl(Ark_BaseEvent peer,
                                const Opt_Number* targetDisplayId)
    {
    }
    } // BaseEventAccessor
    namespace BaseShapeAccessor {
    void DestroyPeerImpl(Ark_BaseShape peer)
    {
        auto peerImpl = reinterpret_cast<BaseShapePeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_BaseShape ConstructImpl()
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    Ark_BaseShape WidthImpl(Ark_BaseShape peer,
                            const Ark_Length* width)
    {
        return {};
    }
    Ark_BaseShape HeightImpl(Ark_BaseShape peer,
                             const Ark_Length* height)
    {
        return {};
    }
    Ark_BaseShape SizeImpl(Ark_BaseShape peer,
                           const Ark_SizeOptions* size)
    {
        return {};
    }
    } // BaseShapeAccessor
    namespace BuilderNodeOpsAccessor {
    void DestroyPeerImpl(Ark_BuilderNodeOps peer)
    {
        auto peerImpl = reinterpret_cast<BuilderNodeOpsPeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_BuilderNodeOps ConstructImpl()
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    void CreateImpl(Ark_BuilderNodeOps peer,
                    const Callback_Void* buildFunc)
    {
    }
    void DisposeNodeImpl(Ark_BuilderNodeOps peer)
    {
    }
    void SetUpdateConfigurationCallbackImpl(Ark_BuilderNodeOps peer,
                                            const Callback_Void* configurationUpdateFunc)
    {
    }
    void SetOptionsImpl(Ark_BuilderNodeOps peer,
                        const Ark_BuilderNodeOptions* options)
    {
    }
    Ark_Boolean PostTouchEventImpl(Ark_BuilderNodeOps peer,
                                   const Ark_CustomObject* event)
    {
        return {};
    }
    Ark_NativePointer SetRootFrameNodeInBuilderNodeImpl(Ark_BuilderNodeOps peer,
                                                        Ark_NativePointer node)
    {
        return {};
    }
    } // BuilderNodeOpsAccessor
    namespace ClickEventAccessor {
    void DestroyPeerImpl(Ark_ClickEvent peer)
    {
        auto peerImpl = reinterpret_cast<ClickEventPeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_ClickEvent ConstructImpl()
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    Ark_Number GetDisplayXImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetDisplayXImpl(Ark_ClickEvent peer,
                         const Ark_Number* displayX)
    {
    }
    Ark_Number GetDisplayYImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetDisplayYImpl(Ark_ClickEvent peer,
                         const Ark_Number* displayY)
    {
    }
    Ark_Number GetWindowXImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetWindowXImpl(Ark_ClickEvent peer,
                        const Ark_Number* windowX)
    {
    }
    Ark_Number GetWindowYImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetWindowYImpl(Ark_ClickEvent peer,
                        const Ark_Number* windowY)
    {
    }
    Ark_Number GetScreenXImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetScreenXImpl(Ark_ClickEvent peer,
                        const Ark_Number* screenX)
    {
    }
    Ark_Number GetScreenYImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetScreenYImpl(Ark_ClickEvent peer,
                        const Ark_Number* screenY)
    {
    }
    Ark_Number GetXImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetXImpl(Ark_ClickEvent peer,
                  const Ark_Number* x)
    {
    }
    Ark_Number GetYImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetYImpl(Ark_ClickEvent peer,
                  const Ark_Number* y)
    {
    }
    Callback_Void GetPreventDefaultImpl(Ark_ClickEvent peer)
    {
        return {};
    }
    void SetPreventDefaultImpl(Ark_ClickEvent peer,
                               const Callback_Void* preventDefault)
    {
    }
    } // ClickEventAccessor
    namespace ColorFilterAccessor {
    void DestroyPeerImpl(Ark_ColorFilter peer)
    {
        auto peerImpl = reinterpret_cast<ColorFilterPeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_ColorFilter ConstructImpl(const Array_Number* value)
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    } // ColorFilterAccessor
    namespace CommonShapeAccessor {
    void DestroyPeerImpl(Ark_CommonShape peer)
    {
        auto peerImpl = reinterpret_cast<CommonShapePeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_CommonShape ConstructImpl()
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    Ark_CommonShape OffsetImpl(Ark_CommonShape peer,
                               const Ark_Position* offset)
    {
        return {};
    }
    Ark_CommonShape FillImpl(Ark_CommonShape peer,
                             const Ark_ResourceColor* color)
    {
        return {};
    }
    Ark_CommonShape PositionImpl(Ark_CommonShape peer,
                                 const Ark_Position* position)
    {
        return {};
    }
    } // CommonShapeAccessor
    namespace ContentModifierHelperAccessor {
    void ContentModifierButtonImpl(Ark_NativePointer node,
                                   const Ark_Object* contentModifier,
                                   const ButtonModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierButtonImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierCheckBoxImpl(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const CheckBoxModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierCheckBoxImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierDataPanelImpl(Ark_NativePointer node,
                                      const Ark_Object* contentModifier,
                                      const DataPanelModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierDataPanelImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierGaugeImpl(Ark_NativePointer node,
                                  const Ark_Object* contentModifier,
                                  const GaugeModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierGaugeImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierLoadingProgressImpl(Ark_NativePointer node,
                                            const Ark_Object* contentModifier,
                                            const LoadingProgressModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierLoadingProgressImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierProgressImpl(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const ProgressModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierProgressImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierRadioImpl(Ark_NativePointer node,
                                  const Ark_Object* contentModifier,
                                  const RadioModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierRadioImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierRatingImpl(Ark_NativePointer node,
                                   const Ark_Object* contentModifier,
                                   const RatingModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierRatingImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierMenuItemImpl(Ark_NativePointer node,
                                     const Ark_Object* contentModifier,
                                     const MenuItemModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierMenuItemImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierSliderImpl(Ark_NativePointer node,
                                   const Ark_Object* contentModifier,
                                   const SliderModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierSliderImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierTextClockImpl(Ark_NativePointer node,
                                      const Ark_Object* contentModifier,
                                      const TextClockModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierTextClockImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierTextTimerImpl(Ark_NativePointer node,
                                      const Ark_Object* contentModifier,
                                      const TextTimerModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierTextTimerImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ContentModifierToggleImpl(Ark_NativePointer node,
                                   const Ark_Object* contentModifier,
                                   const ToggleModifierBuilder* builder)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void ResetContentModifierToggleImpl(Ark_NativePointer node)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    } // ContentModifierHelperAccessor
    namespace CustomDialogControllerAccessor {
    void DestroyPeerImpl(Ark_CustomDialogController peer)
    {
        auto peerImpl = reinterpret_cast<CustomDialogControllerPeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_CustomDialogController ConstructImpl(const Ark_CustomDialogControllerOptions* value)
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    void OpenImpl(Ark_CustomDialogController peer)
    {
    }
    void CloseImpl(Ark_CustomDialogController peer)
    {
    }
    } // CustomDialogControllerAccessor
    namespace DrawModifierAccessor {
    void DestroyPeerImpl(Ark_DrawModifier peer)
    {
        auto peerImpl = reinterpret_cast<DrawModifierPeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_DrawModifier ConstructImpl()
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    void InvalidateImpl(Ark_DrawModifier peer)
    {
    }
    Callback_DrawContext_Void GetDrawBehindImpl(Ark_DrawModifier peer)
    {
        return {};
    }
    void SetDrawBehindImpl(Ark_DrawModifier peer,
                           const Callback_DrawContext_Void* drawBehind)
    {
    }
    Callback_DrawContext_Void GetDrawContentImpl(Ark_DrawModifier peer)
    {
        return {};
    }
    void SetDrawContentImpl(Ark_DrawModifier peer,
                            const Callback_DrawContext_Void* drawContent)
    {
    }
    Callback_DrawContext_Void GetDrawFrontImpl(Ark_DrawModifier peer)
    {
        return {};
    }
    void SetDrawFrontImpl(Ark_DrawModifier peer,
                          const Callback_DrawContext_Void* drawFront)
    {
    }
    } // DrawModifierAccessor
    namespace EnvironmentBackendAccessor {
    Ark_Boolean IsAccessibilityEnabledImpl()
    {
        return {};
    }
    Ark_Int32 GetColorModeImpl()
    {
        return {};
    }
    Ark_Float32 GetFontScaleImpl()
    {
        return {};
    }
    Ark_Float32 GetFontWeightScaleImpl()
    {
        return {};
    }
    Ark_String GetLayoutDirectionImpl()
    {
        return {};
    }
    Ark_String GetLanguageCodeImpl()
    {
        return {};
    }
    } // EnvironmentBackendAccessor
    namespace EventEmulatorAccessor {
    void EmitClickEventImpl(Ark_NativePointer node,
                            Ark_ClickEvent event)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void EmitTextInputEventImpl(Ark_NativePointer node,
                                const Ark_String* text)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    } // EventEmulatorAccessor
    namespace FocusControllerAccessor {
    void RequestFocusImpl(const Ark_String* key)
    {
    }
    } // FocusControllerAccessor
    namespace GlobalScope_ohos_arkui_componentSnapshotAccessor {
    void GetImpl(const Ark_String* id,
                 const AsyncCallback_image_PixelMap_Void* callback,
                 const Opt_SnapshotOptions* options)
    {
    }
    } // GlobalScope_ohos_arkui_componentSnapshotAccessor
    namespace GlobalScope_ohos_arkui_performanceMonitorAccessor {
    void BeginImpl(const Ark_String* scene,
                   Ark_PerfMonitorActionType startInputType,
                   const Opt_String* note)
    {
    }
    void EndImpl(const Ark_String* scene)
    {
    }
    void RecordInputEventTimeImpl(Ark_PerfMonitorActionType actionType,
                                  Ark_PerfMonitorSourceType sourceType,
                                  Ark_Int64 time)
    {
    }
    } // GlobalScope_ohos_arkui_performanceMonitorAccessor
    namespace GlobalScope_ohos_fontAccessor {
    void RegisterFontImpl(const Ark_CustomObject* options)
    {
    }
    Array_String GetSystemFontListImpl()
    {
        return {};
    }
    Ark_CustomObject GetFontByNameImpl(const Ark_String* fontName)
    {
        return {};
    }
    } // GlobalScope_ohos_fontAccessor
    namespace GlobalScope_ohos_measure_utilsAccessor {
    Ark_Number MeasureTextImpl(const Ark_CustomObject* options)
    {
        return {};
    }
    Ark_SizeOptions MeasureTextSizeImpl(const Ark_CustomObject* options)
    {
        return {};
    }
    } // GlobalScope_ohos_measure_utilsAccessor
    namespace ICurveAccessor {
    void DestroyPeerImpl(Ark_ICurve peer)
    {
        auto peerImpl = reinterpret_cast<ICurvePeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_ICurve ConstructImpl()
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    Ark_Number InterpolateImpl(Ark_ICurve peer,
                               const Ark_Number* fraction)
    {
        return {};
    }
    } // ICurveAccessor
    namespace IUIContextAccessor {
    void FreezeUINode0Impl(const Ark_String* id,
                           Ark_Boolean isFrozen)
    {
    }
    void FreezeUINode1Impl(const Ark_Number* id,
                           Ark_Boolean isFrozen)
    {
    }
    } // IUIContextAccessor
    namespace LazyForEachOpsAccessor {
    void SyncImpl(Ark_NativePointer node,
                  Ark_Int32 totalCount,
                  const Callback_CreateItem* creator,
                  const Callback_RangeUpdate* updater)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    } // LazyForEachOpsAccessor
    namespace NavExtenderAccessor {
    void SetNavigationOptionsImpl(Ark_NativePointer ptr,
                                  const Ark_NavPathStack* pathStack)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void SetUpdateStackCallbackImpl(const Ark_NavPathStack* peer,
                                    const NavExtender_OnUpdateStack* callback)
    {
    }
    void SyncStackImpl(const Ark_NavPathStack* peer)
    {
    }
    Ark_Boolean CheckNeedCreateImpl(Ark_NativePointer navigation,
                                    Ark_Int32 index)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    void SetNavDestinationNodeImpl(const Ark_NavPathStack* peer,
                                   Ark_Int32 index,
                                   Ark_NativePointer node)
    {
    }
    void PushPathImpl(const Ark_NavPathStack* pathStack,
                      const Ark_CustomObject* info,
                      const Ark_CustomObject* options)
    {
    }
    void ReplacePathImpl(const Ark_NavPathStack* pathStack,
                         const Ark_CustomObject* info,
                         const Ark_CustomObject* options)
    {
    }
    Ark_String PopImpl(const Ark_NavPathStack* pathStack,
                       Ark_Boolean animated)
    {
        return {};
    }
    void SetOnPopCallbackImpl(const Ark_NavPathStack* pathStack,
                              const Callback_String_Void* popCallback)
    {
    }
    Ark_String GetIdByIndexImpl(const Ark_NavPathStack* pathStack,
                                Ark_Int32 index)
    {
        return {};
    }
    Array_String GetIdByNameImpl(const Ark_NavPathStack* pathStack,
                                 const Ark_String* name)
    {
        return {};
    }
    void PopToIndexImpl(const Ark_NavPathStack* pathStack,
                        Ark_Int32 index,
                        Ark_Boolean animated)
    {
    }
    Ark_Number PopToNameImpl(const Ark_NavPathStack* pathStack,
                             const Ark_String* name,
                             Ark_Boolean animated)
    {
        return {};
    }
    } // NavExtenderAccessor
    namespace PersistentStorageBackendAccessor {
    Opt_String GetImpl(const Ark_String* key)
    {
        return {};
    }
    Ark_Boolean HasImpl(const Ark_String* key)
    {
        return {};
    }
    void RemoveImpl(const Ark_String* key)
    {
    }
    void SetImpl(const Ark_String* key,
                 const Ark_String* value)
    {
    }
    void ClearImpl()
    {
    }
    } // PersistentStorageBackendAccessor
    namespace RenderServiceNodeAccessor {
    Ark_Int32 GetNodeIdImpl(const Ark_String* nodeId)
    {
        return {};
    }
    } // RenderServiceNodeAccessor
    namespace RestrictedWorkerAccessor {
    void DestroyPeerImpl(Ark_RestrictedWorker peer)
    {
        auto peerImpl = reinterpret_cast<RestrictedWorkerPeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_RestrictedWorker ConstructImpl(const Ark_String* scriptURL,
                                       const Opt_WorkerOptions* options)
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    void PostMessage0Impl(Ark_RestrictedWorker peer,
                          const Ark_Object* message,
                          const Array_Buffer* transfer)
    {
    }
    void PostMessage1Impl(Ark_RestrictedWorker peer,
                          const Ark_Object* message,
                          const Opt_PostMessageOptions* options)
    {
    }
    void PostMessageWithSharedSendableImpl(Ark_RestrictedWorker peer,
                                           const Ark_Object* message,
                                           const Opt_Array_Buffer* transfer)
    {
    }
    void OnImpl(Ark_RestrictedWorker peer,
                const Ark_String* Type,
                const Ark_WorkerEventListener* listener)
    {
    }
    void OnceImpl(Ark_RestrictedWorker peer,
                  const Ark_String* Type,
                  const Ark_WorkerEventListener* listener)
    {
    }
    void OffImpl(Ark_RestrictedWorker peer,
                 const Ark_String* Type,
                 const Opt_WorkerEventListener* listener)
    {
    }
    void TerminateImpl(Ark_RestrictedWorker peer)
    {
    }
    void AddEventListenerImpl(Ark_RestrictedWorker peer,
                              const Ark_String* Type,
                              const Ark_WorkerEventListener* listener)
    {
    }
    Ark_Boolean DispatchEventImpl(Ark_RestrictedWorker peer,
                                  const Ark_Event* event)
    {
        return {};
    }
    void RemoveEventListenerImpl(Ark_RestrictedWorker peer,
                                 const Ark_String* Type,
                                 const Opt_WorkerEventListener* callback_)
    {
    }
    void RemoveAllListenerImpl(Ark_RestrictedWorker peer)
    {
    }
    void RegisterGlobalCallObjectImpl(Ark_RestrictedWorker peer,
                                      const Ark_String* instanceName,
                                      const Ark_Object* globalCallObject)
    {
    }
    void UnregisterGlobalCallObjectImpl(Ark_RestrictedWorker peer,
                                        const Opt_String* instanceName)
    {
    }
    Opt_RestrictedWorker_onexit_Callback GetOnexitImpl(Ark_RestrictedWorker peer)
    {
        return {};
    }
    void SetOnexitImpl(Ark_RestrictedWorker peer,
                       const Opt_RestrictedWorker_onexit_Callback* onexit)
    {
    }
    Opt_RestrictedWorker_onerror_Callback GetOnerrorImpl(Ark_RestrictedWorker peer)
    {
        return {};
    }
    void SetOnerrorImpl(Ark_RestrictedWorker peer,
                        const Opt_RestrictedWorker_onerror_Callback* onerror)
    {
    }
    Opt_RestrictedWorker_onmessage_Callback GetOnmessageImpl(Ark_RestrictedWorker peer)
    {
        return {};
    }
    void SetOnmessageImpl(Ark_RestrictedWorker peer,
                          const Opt_RestrictedWorker_onmessage_Callback* onmessage)
    {
    }
    Opt_RestrictedWorker_onmessage_Callback GetOnmessageerrorImpl(Ark_RestrictedWorker peer)
    {
        return {};
    }
    void SetOnmessageerrorImpl(Ark_RestrictedWorker peer,
                               const Opt_RestrictedWorker_onmessage_Callback* onmessageerror)
    {
    }
    } // RestrictedWorkerAccessor
    namespace SceneAccessor {
    void DestroyPeerImpl(Ark_Scene peer)
    {
        auto peerImpl = reinterpret_cast<ScenePeerImpl *>(peer);
        if (peerImpl) {
            delete peerImpl;
        }
    }
    Ark_Scene ConstructImpl()
    {
        return {};
    }
    Ark_NativePointer GetFinalizerImpl()
    {
        return reinterpret_cast<void *>(&DestroyPeerImpl);
    }
    Ark_Scene LoadImpl(const Opt_ResourceStr* uri)
    {
        return {};
    }
    void DestroyImpl(Ark_Scene peer)
    {
    }
    } // SceneAccessor
    namespace ScreenshotServiceAccessor {
    Ark_Boolean RequestScreenshotImpl(const Ark_String* target,
                                      const Ark_String* name)
    {
        return {};
    }
    } // ScreenshotServiceAccessor
    namespace SearchOpsAccessor {
    Ark_NativePointer RegisterSearchValueCallbackImpl(Ark_NativePointer node,
                                                      const Ark_String* value,
                                                      const SearchValueCallback* callback)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    } // SearchOpsAccessor
    namespace StateStylesOpsAccessor {
    void OnStateStyleChangeImpl(Ark_NativePointer node,
                                const Callback_StateStylesChange* stateStyleChange)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    } // StateStylesOpsAccessor
    namespace SystemOpsAccessor {
    Ark_NativePointer StartFrameImpl()
    {
        return {};
    }
    void EndFrameImpl(Ark_NativePointer root)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
    }
    void SyncInstanceIdImpl(Ark_Int32 instanceId)
    {
    }
    void RestoreInstanceIdImpl()
    {
    }
    Ark_Int32 GetResourceIdImpl(const Ark_String* bundleName,
                                const Ark_String* moduleName,
                                const Array_String* params)
    {
        return {};
    }
    void ResourceManagerResetImpl()
    {
    }
    void SetFrameCallbackImpl(const Callback_Number_Void* onFrameCallback,
                              const Callback_Number_Void* onIdleCallback,
                              const Ark_Number* delayTime)
    {
    }
    Array_Number ColorMetricsResourceColorImpl(const Ark_Resource* color)
    {
        return {};
    }
    } // SystemOpsAccessor
    namespace TextFieldOpsAccessor {
    Ark_NativePointer RegisterTextFieldValueCallbackImpl(Ark_NativePointer node,
                                                         const Ark_ResourceStr* value,
                                                         const TextFieldValueCallback* callback)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetWidthImpl(Ark_NativePointer node,
                                               const Opt_Union_Length_LayoutPolicy* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetHeightImpl(Ark_NativePointer node,
                                                const Opt_Union_Length_LayoutPolicy* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetPaddingImpl(Ark_NativePointer node,
                                                 const Opt_Union_Padding_Length_LocalizedPadding* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetMarginImpl(Ark_NativePointer node,
                                                const Opt_Union_Padding_Length_LocalizedPadding* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetBorderImpl(Ark_NativePointer node,
                                                const Opt_CustomObject* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetBorderWidthImpl(Ark_NativePointer node,
                                                     const Opt_Union_Length_EdgeWidths_LocalizedEdgeWidths* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetBorderColorImpl(Ark_NativePointer node,
                                                     const Opt_Union_ResourceColor_EdgeColors_LocalizedEdgeColors* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetBorderStyleImpl(Ark_NativePointer node,
                                                     const Opt_Union_BorderStyle_EdgeStyles* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetBorderRadiusImpl(Ark_NativePointer node,
                                                      const Opt_Union_Length_BorderRadiuses_LocalizedBorderRadiuses* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    Ark_NativePointer TextFieldOpsSetBackgroundColorImpl(Ark_NativePointer node,
                                                         const Opt_ResourceColor* value)
    {
        auto frameNode = reinterpret_cast<FrameNode *>(node);
        CHECK_NULL_VOID(frameNode);
        return {};
    }
    } // TextFieldOpsAccessor
    namespace TextPickerDialogAccessor {
    void ShowImpl(const Opt_TextPickerDialogOptions* options)
    {
    }
    } // TextPickerDialogAccessor
    namespace UIContextAtomicServiceBarAccessor {
    Ark_CustomObject GetBarRectImpl()
    {
        return {};
    }
    } // UIContextAtomicServiceBarAccessor
    namespace GlobalScopeAccessor {
    Ark_ComponentInfo GetRectangleByIdImpl(const Ark_String* id)
    {
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