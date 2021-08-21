/*

	Destroy artillery site objective

*/

private
[
	"_m",
	"_markerobj",
	"_ran",
	"_respawnpoint",
	"_targetNum",
	"_targetpoint",
	"_tlogic",
	"_tmp",
	"_z"
];

// creates objective marker and trigger.
_PMC_CreateObjective =
{
	_m = "PMC_Marker_Arty";
	_markerobj = createMarker [_m, _targetpoint];
	_markerobj setMarkerShape "ELLIPSE";
	_markerobj setMarkerColor "ColorRed";
	_markerobj setMarkerBrush "Solid";
	_markerobj setMarkerSize [5000, 5000];

	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["GUER SEIZED", "PRESENT", true];
	_z setTriggerArea [50, 50, 60, true];
	_z setTriggerStatements ["this", "hint 'PMC_Marker_Arty: objective completed'; ['t1', 'SUCCEEDED', true] spawn BIS_fnc_taskSetState; 'PMC_Marker_Arty' setMarkerColor 'ColorGreen'; 'PMC_Marker_Arty' setMarkerType 'dot'; opfordead1 = true; player sideChat 'Objective Artillery completed. Over'", ""];
};

// choose random posit, then remove it from selection so next time
// we choose different random posit, no two units go in same location.

// just to check the PMC_targets is filled.
waitUntil
{
	(count PMC_targets > 0);
};

_ran = (floor random (count PMC_targets));
_tlogic = (PMC_targets select _ran);
_targetpoint = getPos _tlogic;
_respawnpoint = _targetpoint;

// create objective
_tmp = [] call _PMC_CreateObjective;
waitUntil { scriptDone _tmp; };

// create the actual artillery guns
_tmp = [] execVM "PMC\PMC_MakeArtillerySiteOPFOR.sqf";
waitUntil { scriptDone _tmp; };

// and add some defences there ;)
[_targetpoint] execVM "PMC\PMC_objective_def_OPFOR.sqf";
