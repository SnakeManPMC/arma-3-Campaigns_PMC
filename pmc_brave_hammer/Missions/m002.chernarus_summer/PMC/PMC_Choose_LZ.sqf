
// PMC_Choose_LZ
// _p will be our cursor position on ground or mapview
private _p = _this select 1;

"lz" setMarkerPos _p;
pmc_mfr1 groupChat "Okay the LZ marker is set to my chosen location.";

//2 setRadioMsg "End mission.";
PMC_lzx = (getMarkerPos "lz" select 0);
PMC_lzy = (getMarkerPos "lz" select 1);
saveVar "PMC_lzx";
saveVar "PMC_lzy";
sleep 7;

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
[] execVM "PMC\PMC_SaveStatus.sqf";
sleep 3;

hint "End mission option added to Support menu.";
[player, "PMC_EndThisMission", nil, nil, ""] call BIS_fnc_addCommMenuItem;
