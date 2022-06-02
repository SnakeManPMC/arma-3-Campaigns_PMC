
// PMC_Choose_LZ
// _p will be our cursor position on ground or mapview

"lz" setMarkerPos getPosATL player;
pmc_mfr1 groupChat "Okay the LZ marker is set to my chosen location.";

PMC_lzx = (getMarkerPos "lz" select 0);
PMC_lzy = (getMarkerPos "lz" select 1);
saveVar "PMC_lzx";
saveVar "PMC_lzy";
sleep 7;

if (isNil "pmc_lz_marker_is_set") then
{
	pmc_lz_marker_is_set = true;
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	[] execVM "PMC\PMC_SaveStatus.sqf";
	sleep 5;
	
	hint "End mission option added to Support menu.";
	[player, "PMC_EndThisMission", nil, nil, ""] call BIS_fnc_addCommMenuItem;
};
