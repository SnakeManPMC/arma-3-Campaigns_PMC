
private _locat = _this select 0;

PMC_NewHideOut = [];
PMC_NewHideOut = _locat;

"NewHideOut" setMarkerPos PMC_NewHideOut;
"NewHideOut" setMarkerType "mil_marker";
player groupChat "Okay now we have new hideout location selected.";

saveVar "PMC_NewHideOut";

onMapSingleClick {false};
