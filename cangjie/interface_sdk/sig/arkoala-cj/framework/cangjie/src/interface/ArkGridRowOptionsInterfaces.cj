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
public interface GridRowOptionsInterfaces <:  {
    public mut open prop gutter: Option<Union_Length_GutterOption>
    public mut open prop columns: Option<Union_Number_GridRowColumnOption>
    public mut open prop breakpoints: Option<BreakPoints>
    public mut open prop direction: Option<GridRowDirection>
}
public open class GridRowOptions <: GridRowOptionsInterfaces {
    private var gutter_container: Option<Union_Length_GutterOption>
    public mut open prop gutter: Option<Union_Length_GutterOption>
    {
        get() {
            return gutter_container
        }
        set(gutter) {
            gutter_container = gutter
        }
    }
    private var columns_container: Option<Union_Number_GridRowColumnOption>
    public mut open prop columns: Option<Union_Number_GridRowColumnOption>
    {
        get() {
            return columns_container
        }
        set(columns) {
            columns_container = columns
        }
    }
    private var breakpoints_container: Option<BreakPoints>
    public mut open prop breakpoints: Option<BreakPoints>
    {
        get() {
            return breakpoints_container
        }
        set(breakpoints) {
            breakpoints_container = breakpoints
        }
    }
    private var direction_container: Option<GridRowDirection>
    public mut open prop direction: Option<GridRowDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    GridRowOptions(gutter: Option<Union_Length_GutterOption>, columns: Option<Union_Number_GridRowColumnOption>, breakpoints: Option<BreakPoints>, direction: Option<GridRowDirection>) {
        this.gutter_container = gutter
        this.columns_container = columns
        this.breakpoints_container = breakpoints
        this.direction_container = direction
    }
}
public open class GridRowOptions_serializer {
    public static func write(buffer: SerializerBase, value: GridRowOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForGutter = value.gutter
        if (valueHolderForGutter.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForGutterTmpValue = valueHolderForGutter
            if (valueHolderForGutterTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForGutterTmpValueForIdx0 = valueHolderForGutterTmpValue.getValue0()
                if (valueHolderForGutterTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForGutterTmpValueForIdx0ForIdx0 = valueHolderForGutterTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForGutterTmpValueForIdx0ForIdx0);
                } else if (valueHolderForGutterTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForGutterTmpValueForIdx0ForIdx1 = valueHolderForGutterTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForGutterTmpValueForIdx0ForIdx1);
                } else if (valueHolderForGutterTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForGutterTmpValueForIdx0ForIdx2 = valueHolderForGutterTmpValueForIdx0.getValue2()
                    valueSerializer.writeCustomObject("Any", valueHolderForGutterTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForGutterTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForGutterTmpValueForIdx1 = valueHolderForGutterTmpValue.getValue1()
                GutterOption_serializer.write(valueSerializer, valueHolderForGutterTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColumns = value.columns
        if (valueHolderForColumns.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColumnsTmpValue = valueHolderForColumns
            if (valueHolderForColumnsTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColumnsTmpValueForIdx0 = valueHolderForColumnsTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForColumnsTmpValueForIdx0);
            } else if (valueHolderForColumnsTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColumnsTmpValueForIdx1 = valueHolderForColumnsTmpValue.getValue1()
                GridRowColumnOption_serializer.write(valueSerializer, valueHolderForColumnsTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBreakpoints = value.breakpoints
        if (valueHolderForBreakpoints.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBreakpointsTmpValue = valueHolderForBreakpoints
            BreakPoints_serializer.write(valueSerializer, valueHolderForBreakpointsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDirection = value.direction
        if (valueHolderForDirection.isSome()) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDirectionTmpValue = valueHolderForDirection
            valueSerializer.writeInt32(valueHolderForDirectionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GridRowOptions {
        var valueDeserializer: DeserializerBase = buffer
        let gutterTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var gutterTmpBuf: Option<Union_Length_GutterOption> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(gutterTmpBuf_runtimeType))) {
            let gutterTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var gutterTmpBuf_: Union_Length_GutterOption 
            if (gutterTmpBuf_UnionSelector == Int8(0)) {
                let gutterTmpBuf_BufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var gutterTmpBuf_BufU: Length 
                if (gutterTmpBuf_BufUUnionSelector == Int8(0)) {
                    gutterTmpBuf_BufU = Length(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (gutterTmpBuf_BufUUnionSelector == Int8(1)) {
                    gutterTmpBuf_BufU = Length(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (gutterTmpBuf_BufUUnionSelector == Int8(2)) {
                    gutterTmpBuf_BufU = Length(match (valueDeserializer.readCustomObject("Any") as Any) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for gutterTmpBuf_BufU has to be chosen through deserialisation.")
                }
                gutterTmpBuf_ = Union_Length_GutterOption(match (gutterTmpBuf_BufU as Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (gutterTmpBuf_UnionSelector == Int8(1)) {
                gutterTmpBuf_ = Union_Length_GutterOption(GutterOption_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for gutterTmpBuf_ has to be chosen through deserialisation.")
            }
            gutterTmpBuf = match (gutterTmpBuf_ as Union_Length_GutterOption) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let gutterTmpResult: Option<Union_Length_GutterOption> = gutterTmpBuf
        let columnsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var columnsTmpBuf: Option<Union_Number_GridRowColumnOption> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(columnsTmpBuf_runtimeType))) {
            let columnsTmpBuf_UnionSelector: Int8 = valueDeserializer.readInt8()
            var columnsTmpBuf_: Union_Number_GridRowColumnOption 
            if (columnsTmpBuf_UnionSelector == Int8(0)) {
                columnsTmpBuf_ = Union_Number_GridRowColumnOption(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (columnsTmpBuf_UnionSelector == Int8(1)) {
                columnsTmpBuf_ = Union_Number_GridRowColumnOption(GridRowColumnOption_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for columnsTmpBuf_ has to be chosen through deserialisation.")
            }
            columnsTmpBuf = match (columnsTmpBuf_ as Union_Number_GridRowColumnOption) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let columnsTmpResult: Option<Union_Number_GridRowColumnOption> = columnsTmpBuf
        let breakpointsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var breakpointsTmpBuf: Option<BreakPoints> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(breakpointsTmpBuf_runtimeType))) {
            breakpointsTmpBuf = BreakPoints_serializer.read(valueDeserializer)
        }
        let breakpointsTmpResult: Option<BreakPoints> = breakpointsTmpBuf
        let directionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var directionTmpBuf: Option<GridRowDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(directionTmpBuf_runtimeType))) {
            directionTmpBuf = GridRowDirection(valueDeserializer.readInt32())
        }
        let directionTmpResult: Option<GridRowDirection> = directionTmpBuf
        var value: GridRowOptions = GridRowOptions(gutterTmpResult, columnsTmpResult, breakpointsTmpResult, directionTmpResult)
        return value
    }
}
