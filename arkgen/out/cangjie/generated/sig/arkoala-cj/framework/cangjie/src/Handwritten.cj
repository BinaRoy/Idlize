package demo.src

import Interop.*
import idlize.peers.*
import idlize.components.*
import idlize.commonPara.*

public interface AttributeModifier<T> {}
public interface ContentModifier<T> {}

public func hookCheckBoxContentModifier(
    receiver: ArkCheckboxComponent, value: ?ContentModifier<CheckBoxConfiguration>) {
    InteropNativeModule._NativeLog("hookCheckBoxContentModifier is not implemented for arkoala")
}
