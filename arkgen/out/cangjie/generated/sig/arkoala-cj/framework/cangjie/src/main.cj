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

package demo.src
import idlize.components.*
import idlize.peers.*
import idlize.commonPara.*

import std.time.DateTime
import std.math.round
import std.collection.*
import std.math.abs

import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*

public func assertEquals(name: String, expected: String, actual: String): Unit {
    if (expected != actual) {
        println("TEST ${name} FAIL:\n  EXPECTED \"${expected}\"\n  ACTUAL   \"${actual}\"")
    } else {
        println("TEST ${name} PASS")
    }
}

public func assertTrue(name: String, value: Bool) {
    if (!value) {
        println("TEST ${name} FAIL:\n  EXPECTED value is not true.")
    } else {
        println("TEST ${name} PASS")
    }
}

public func getNativeString(ptr: UInt64): String {
    let length = InteropNativeModule._StringLength(ptr)
    var data = Array<UInt8>(Int64(length), repeat: UInt8(0))
    InteropNativeModule._StringData(ptr, data, length)
    var result = StringBuilder()
    for (i in 0..length) {
        result.append(Rune(data[Int64(i)]))
    }
    return result.toString()
}

public func checkResult(name: String, test: () -> Unit, expected: String) {
    InteropNativeModule._StartGroupedLog(1)
    test()
    InteropNativeModule._StopGroupedLog(1)
    let actual = getNativeString(InteropNativeModule._GetGroupedLog(1))
    assertEquals(name, expected, actual)
}

let length: Length = Length(10.0)

// Column组件测试
func testColumn(): Unit {
    println("=== Column Component Tests ===")
    
    let columnPeer = ArkColumnPeer.create(Option.None)
    
    // 测试Column的基本属性  
    checkResult("[Column] widthAttribute",
        { => columnPeer.widthAttribute(length) },
        "widthAttribute(10.0) \n")
}


// 状态管理测试
// let columnSpaceState: MutableState<Float64> = mutableState(10.0)

// @Memo
// func statefulDemo(): Unit {
//     let columnPeer = ArkColumnPeer.create(Option.None)
    
//     // 使用状态值
//     columnPeer.setSpaceAttribute(columnSpaceState.getValue())
    
//     println("Stateful demo: columnSpace=${columnSpaceState.getValue()}")
// }

main(): Unit {
    println("=== Simplified Main.cj - Column and Button Components Only ===")
    
    // 运行组件测试
    testColumn()
    
    // // 运行状态管理测试
    // println("=== State Management Tests ===")
    // let root: ComputableState<IncrementalNode> = memoRoot(IncrementalNode(0), statefulDemo)
    
    // for (i in 0..5) {
    //     root.getValue()
    //     columnSpaceState.setValue(Float64(i * 5 + 10))
    //     GlobalStateManager.updateSnapshot()
    // }
    
    println("=== All tests completed ===")
}