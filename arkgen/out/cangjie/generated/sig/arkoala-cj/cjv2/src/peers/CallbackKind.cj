package idlize.peers

public enum CallbackKind <: ToString & Equatable<CallbackKind> {
    | Kind_AsyncCallback_image_PixelMap_Void
    | Kind_ButtonModifierBuilder
    | Kind_Callback_Boolean_Void
    | Kind_Callback_ClickEvent_Void
    | Kind_Callback_CreateItem
    | Kind_Callback_DrawContext_Void
    | Kind_Callback_Extender_OnFinish
    | Kind_Callback_Extender_OnProgress
    | Kind_Callback_NavigationTitleMode_Void
    | Kind_Callback_Number_Void
    | Kind_Callback_onMeasureSize_SizeResult
    | Kind_Callback_onPlaceChildren_Void
    | Kind_Callback_Pointer_Void
    | Kind_Callback_RangeUpdate
    | Kind_Callback_ResourceStr_Void
    | Kind_Callback_SizeResult_Void
    | Kind_Callback_StateStylesChange
    | Kind_Callback_String_Number_Void
    | Kind_Callback_String_Void
    | Kind_Callback_TextPickerResult_Void
    | Kind_Callback_Union_Number_Array_Number_Void
    | Kind_Callback_Union_String_Array_String_Void
    | Kind_Callback_Void
    | Kind_CheckBoxModifierBuilder
    | Kind_CustomNodeBuilder
    | Kind_DataPanelModifierBuilder
    | Kind_GaugeModifierBuilder
    | Kind_LoadingProgressModifierBuilder
    | Kind_MenuItemModifierBuilder
    | Kind_NavExtender_OnUpdateStack
    | Kind_ProgressModifierBuilder
    | Kind_RadioModifierBuilder
    | Kind_RatingModifierBuilder
    | Kind_RestrictedWorker_onerror_Callback
    | Kind_RestrictedWorker_onexit_Callback
    | Kind_RestrictedWorker_onmessage_Callback
    | Kind_SearchValueCallback
    | Kind_SliderModifierBuilder
    | Kind_TextClockModifierBuilder
    | Kind_TextFieldValueCallback
    | Kind_TextPickerScrollStopCallback
    | Kind_TextTimerModifierBuilder
    | Kind_ToggleModifierBuilder
    | Kind_Type_TextPickerAttribute_onChange_callback

    public func get(): Int32 {
        match(this) {
            case Kind_AsyncCallback_image_PixelMap_Void => 1289587365
            case Kind_ButtonModifierBuilder => -2004118094
            case Kind_Callback_Boolean_Void => 313269291
            case Kind_Callback_ClickEvent_Void => 1097178637
            case Kind_Callback_CreateItem => -2019730059
            case Kind_Callback_DrawContext_Void => 38085488
            case Kind_Callback_Extender_OnFinish => -733525640
            case Kind_Callback_Extender_OnProgress => 1264236374
            case Kind_Callback_NavigationTitleMode_Void => 1685437830
            case Kind_Callback_Number_Void => 36519084
            case Kind_Callback_onMeasureSize_SizeResult => -1356285653
            case Kind_Callback_onPlaceChildren_Void => -738620506
            case Kind_Callback_Pointer_Void => 721562324
            case Kind_Callback_RangeUpdate => 797834474
            case Kind_Callback_ResourceStr_Void => 188373904
            case Kind_Callback_SizeResult_Void => 1318865891
            case Kind_Callback_StateStylesChange => -1872286415
            case Kind_Callback_String_Number_Void => -879490874
            case Kind_Callback_String_Void => 814634522
            case Kind_Callback_TextPickerResult_Void => 1290504509
            case Kind_Callback_Union_Number_Array_Number_Void => -1111620998
            case Kind_Callback_Union_String_Array_String_Void => -720435526
            case Kind_Callback_Void => -1867723152
            case Kind_CheckBoxModifierBuilder => 1317697111
            case Kind_CustomNodeBuilder => 1766817632
            case Kind_DataPanelModifierBuilder => -238036926
            case Kind_GaugeModifierBuilder => 255469205
            case Kind_LoadingProgressModifierBuilder => 56854815
            case Kind_MenuItemModifierBuilder => -1928323454
            case Kind_NavExtender_OnUpdateStack => -588228933
            case Kind_ProgressModifierBuilder => -2049749383
            case Kind_RadioModifierBuilder => -327322091
            case Kind_RatingModifierBuilder => 1013330403
            case Kind_RestrictedWorker_onerror_Callback => -1213708823
            case Kind_RestrictedWorker_onexit_Callback => -2095497263
            case Kind_RestrictedWorker_onmessage_Callback => 1614214490
            case Kind_SearchValueCallback => 2049289694
            case Kind_SliderModifierBuilder => 553138561
            case Kind_TextClockModifierBuilder => -987272911
            case Kind_TextFieldValueCallback => 18061455
            case Kind_TextPickerScrollStopCallback => -1928298699
            case Kind_TextTimerModifierBuilder => 505330174
            case Kind_ToggleModifierBuilder => -879751946
            case Kind_Type_TextPickerAttribute_onChange_callback => -1078223620
        }
    }

    static func parse(val: Int32): CallbackKind {
        match(val) {
            case 1289587365 => Kind_AsyncCallback_image_PixelMap_Void
            case -2004118094 => Kind_ButtonModifierBuilder
            case 313269291 => Kind_Callback_Boolean_Void
            case 1097178637 => Kind_Callback_ClickEvent_Void
            case -2019730059 => Kind_Callback_CreateItem
            case 38085488 => Kind_Callback_DrawContext_Void
            case -733525640 => Kind_Callback_Extender_OnFinish
            case 1264236374 => Kind_Callback_Extender_OnProgress
            case 1685437830 => Kind_Callback_NavigationTitleMode_Void
            case 36519084 => Kind_Callback_Number_Void
            case -1356285653 => Kind_Callback_onMeasureSize_SizeResult
            case -738620506 => Kind_Callback_onPlaceChildren_Void
            case 721562324 => Kind_Callback_Pointer_Void
            case 797834474 => Kind_Callback_RangeUpdate
            case 188373904 => Kind_Callback_ResourceStr_Void
            case 1318865891 => Kind_Callback_SizeResult_Void
            case -1872286415 => Kind_Callback_StateStylesChange
            case -879490874 => Kind_Callback_String_Number_Void
            case 814634522 => Kind_Callback_String_Void
            case 1290504509 => Kind_Callback_TextPickerResult_Void
            case -1111620998 => Kind_Callback_Union_Number_Array_Number_Void
            case -720435526 => Kind_Callback_Union_String_Array_String_Void
            case -1867723152 => Kind_Callback_Void
            case 1317697111 => Kind_CheckBoxModifierBuilder
            case 1766817632 => Kind_CustomNodeBuilder
            case -238036926 => Kind_DataPanelModifierBuilder
            case 255469205 => Kind_GaugeModifierBuilder
            case 56854815 => Kind_LoadingProgressModifierBuilder
            case -1928323454 => Kind_MenuItemModifierBuilder
            case -588228933 => Kind_NavExtender_OnUpdateStack
            case -2049749383 => Kind_ProgressModifierBuilder
            case -327322091 => Kind_RadioModifierBuilder
            case 1013330403 => Kind_RatingModifierBuilder
            case -1213708823 => Kind_RestrictedWorker_onerror_Callback
            case -2095497263 => Kind_RestrictedWorker_onexit_Callback
            case 1614214490 => Kind_RestrictedWorker_onmessage_Callback
            case 2049289694 => Kind_SearchValueCallback
            case 553138561 => Kind_SliderModifierBuilder
            case -987272911 => Kind_TextClockModifierBuilder
            case 18061455 => Kind_TextFieldValueCallback
            case -1928298699 => Kind_TextPickerScrollStopCallback
            case 505330174 => Kind_TextTimerModifierBuilder
            case -879751946 => Kind_ToggleModifierBuilder
            case -1078223620 => Kind_Type_TextPickerAttribute_onChange_callback
            case _ => throw IllegalArgumentException("unknown value ${val}")
        }
    }

    static func tryParse(val: ?Int32): ?CallbackKind {
        match(val) {
            case Some(v) => parse(v)
            case None => None
        }
    }

    public func toString(): String {
        match(this) {
            case Kind_AsyncCallback_image_PixelMap_Void => "Kind_asynccallback_image_pixelmap_void"
            case Kind_ButtonModifierBuilder => "Kind_buttonmodifierbuilder"
            case Kind_Callback_Boolean_Void => "Kind_callback_boolean_void"
            case Kind_Callback_ClickEvent_Void => "Kind_callback_clickevent_void"
            case Kind_Callback_CreateItem => "Kind_callback_createitem"
            case Kind_Callback_DrawContext_Void => "Kind_callback_drawcontext_void"
            case Kind_Callback_Extender_OnFinish => "Kind_callback_extender_onfinish"
            case Kind_Callback_Extender_OnProgress => "Kind_callback_extender_onprogress"
            case Kind_Callback_NavigationTitleMode_Void => "Kind_callback_navigationtitlemode_void"
            case Kind_Callback_Number_Void => "Kind_callback_number_void"
            case Kind_Callback_onMeasureSize_SizeResult => "Kind_callback_onmeasuresize_sizeresult"
            case Kind_Callback_onPlaceChildren_Void => "Kind_callback_onplacechildren_void"
            case Kind_Callback_Pointer_Void => "Kind_callback_pointer_void"
            case Kind_Callback_RangeUpdate => "Kind_callback_rangeupdate"
            case Kind_Callback_ResourceStr_Void => "Kind_callback_resourcestr_void"
            case Kind_Callback_SizeResult_Void => "Kind_callback_sizeresult_void"
            case Kind_Callback_StateStylesChange => "Kind_callback_statestyleschange"
            case Kind_Callback_String_Number_Void => "Kind_callback_string_number_void"
            case Kind_Callback_String_Void => "Kind_callback_string_void"
            case Kind_Callback_TextPickerResult_Void => "Kind_callback_textpickerresult_void"
            case Kind_Callback_Union_Number_Array_Number_Void => "Kind_callback_union_number_array_number_void"
            case Kind_Callback_Union_String_Array_String_Void => "Kind_callback_union_string_array_string_void"
            case Kind_Callback_Void => "Kind_callback_void"
            case Kind_CheckBoxModifierBuilder => "Kind_checkboxmodifierbuilder"
            case Kind_CustomNodeBuilder => "Kind_customnodebuilder"
            case Kind_DataPanelModifierBuilder => "Kind_datapanelmodifierbuilder"
            case Kind_GaugeModifierBuilder => "Kind_gaugemodifierbuilder"
            case Kind_LoadingProgressModifierBuilder => "Kind_loadingprogressmodifierbuilder"
            case Kind_MenuItemModifierBuilder => "Kind_menuitemmodifierbuilder"
            case Kind_NavExtender_OnUpdateStack => "Kind_navextender_onupdatestack"
            case Kind_ProgressModifierBuilder => "Kind_progressmodifierbuilder"
            case Kind_RadioModifierBuilder => "Kind_radiomodifierbuilder"
            case Kind_RatingModifierBuilder => "Kind_ratingmodifierbuilder"
            case Kind_RestrictedWorker_onerror_Callback => "Kind_restrictedworker_onerror_callback"
            case Kind_RestrictedWorker_onexit_Callback => "Kind_restrictedworker_onexit_callback"
            case Kind_RestrictedWorker_onmessage_Callback => "Kind_restrictedworker_onmessage_callback"
            case Kind_SearchValueCallback => "Kind_searchvaluecallback"
            case Kind_SliderModifierBuilder => "Kind_slidermodifierbuilder"
            case Kind_TextClockModifierBuilder => "Kind_textclockmodifierbuilder"
            case Kind_TextFieldValueCallback => "Kind_textfieldvaluecallback"
            case Kind_TextPickerScrollStopCallback => "Kind_textpickerscrollstopcallback"
            case Kind_TextTimerModifierBuilder => "Kind_texttimermodifierbuilder"
            case Kind_ToggleModifierBuilder => "Kind_togglemodifierbuilder"
            case Kind_Type_TextPickerAttribute_onChange_callback => "Kind_type_textpickerattribute_onchange_callback"
        }
    }

    public override operator func ==(that: CallbackKind): Bool {
        match((this, that)) {
            case(Kind_AsyncCallback_image_PixelMap_Void, Kind_AsyncCallback_image_PixelMap_Void) => true
            case(Kind_ButtonModifierBuilder, Kind_ButtonModifierBuilder) => true
            case(Kind_Callback_Boolean_Void, Kind_Callback_Boolean_Void) => true
            case(Kind_Callback_ClickEvent_Void, Kind_Callback_ClickEvent_Void) => true
            case(Kind_Callback_CreateItem, Kind_Callback_CreateItem) => true
            case(Kind_Callback_DrawContext_Void, Kind_Callback_DrawContext_Void) => true
            case(Kind_Callback_Extender_OnFinish, Kind_Callback_Extender_OnFinish) => true
            case(Kind_Callback_Extender_OnProgress, Kind_Callback_Extender_OnProgress) => true
            case(Kind_Callback_NavigationTitleMode_Void, Kind_Callback_NavigationTitleMode_Void) => true
            case(Kind_Callback_Number_Void, Kind_Callback_Number_Void) => true
            case(Kind_Callback_onMeasureSize_SizeResult, Kind_Callback_onMeasureSize_SizeResult) => true
            case(Kind_Callback_onPlaceChildren_Void, Kind_Callback_onPlaceChildren_Void) => true
            case(Kind_Callback_Pointer_Void, Kind_Callback_Pointer_Void) => true
            case(Kind_Callback_RangeUpdate, Kind_Callback_RangeUpdate) => true
            case(Kind_Callback_ResourceStr_Void, Kind_Callback_ResourceStr_Void) => true
            case(Kind_Callback_SizeResult_Void, Kind_Callback_SizeResult_Void) => true
            case(Kind_Callback_StateStylesChange, Kind_Callback_StateStylesChange) => true
            case(Kind_Callback_String_Number_Void, Kind_Callback_String_Number_Void) => true
            case(Kind_Callback_String_Void, Kind_Callback_String_Void) => true
            case(Kind_Callback_TextPickerResult_Void, Kind_Callback_TextPickerResult_Void) => true
            case(Kind_Callback_Union_Number_Array_Number_Void, Kind_Callback_Union_Number_Array_Number_Void) => true
            case(Kind_Callback_Union_String_Array_String_Void, Kind_Callback_Union_String_Array_String_Void) => true
            case(Kind_Callback_Void, Kind_Callback_Void) => true
            case(Kind_CheckBoxModifierBuilder, Kind_CheckBoxModifierBuilder) => true
            case(Kind_CustomNodeBuilder, Kind_CustomNodeBuilder) => true
            case(Kind_DataPanelModifierBuilder, Kind_DataPanelModifierBuilder) => true
            case(Kind_GaugeModifierBuilder, Kind_GaugeModifierBuilder) => true
            case(Kind_LoadingProgressModifierBuilder, Kind_LoadingProgressModifierBuilder) => true
            case(Kind_MenuItemModifierBuilder, Kind_MenuItemModifierBuilder) => true
            case(Kind_NavExtender_OnUpdateStack, Kind_NavExtender_OnUpdateStack) => true
            case(Kind_ProgressModifierBuilder, Kind_ProgressModifierBuilder) => true
            case(Kind_RadioModifierBuilder, Kind_RadioModifierBuilder) => true
            case(Kind_RatingModifierBuilder, Kind_RatingModifierBuilder) => true
            case(Kind_RestrictedWorker_onerror_Callback, Kind_RestrictedWorker_onerror_Callback) => true
            case(Kind_RestrictedWorker_onexit_Callback, Kind_RestrictedWorker_onexit_Callback) => true
            case(Kind_RestrictedWorker_onmessage_Callback, Kind_RestrictedWorker_onmessage_Callback) => true
            case(Kind_SearchValueCallback, Kind_SearchValueCallback) => true
            case(Kind_SliderModifierBuilder, Kind_SliderModifierBuilder) => true
            case(Kind_TextClockModifierBuilder, Kind_TextClockModifierBuilder) => true
            case(Kind_TextFieldValueCallback, Kind_TextFieldValueCallback) => true
            case(Kind_TextPickerScrollStopCallback, Kind_TextPickerScrollStopCallback) => true
            case(Kind_TextTimerModifierBuilder, Kind_TextTimerModifierBuilder) => true
            case(Kind_ToggleModifierBuilder, Kind_ToggleModifierBuilder) => true
            case(Kind_Type_TextPickerAttribute_onChange_callback, Kind_Type_TextPickerAttribute_onChange_callback) => true
            case _ => false
        }
    }

    public override operator func !=(that: CallbackKind): Bool {
        !(this == that)
    }
}