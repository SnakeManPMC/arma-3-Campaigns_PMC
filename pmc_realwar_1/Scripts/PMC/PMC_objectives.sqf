/*

	Briefing.html objectives!
	"1" ObjStatus!

*/

private
[
	"_a",
	"_m",
	"_markerobj",
	"_ObjCount",
	"_PMC_t",
	"_ran",
	"_targetNum",
	"_targetNum",
	"_targetpoint",
	"_tlogic",
	"_tmp",
	"_z"
];

// creates objective marker and trigger.
_PMC_CreateObjective =
{
	_m = format ["PMC_marker_%1", _a];
	_markerobj = createMarker [_m, _targetpoint];
	_markerobj setMarkerShape "ELLIPSE";
	_markerobj setMarkerColor "ColorRed";
	_markerobj setMarkerBrush "Solid";
	_markerobj setMarkerSize [800, 800];

	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["GUER", "PRESENT", false];
	_z setTriggerArea [400, 400, 0, true];
	_z setTriggerStatements ["this", format ["hint 'PMC_Marker_%1: objective completed'; '%1' objStatus 'DONE'; 'PMC_Marker_%1' setMarkerColor 'ColorGreen'; 'PMC_Marker_%1' setMarkerType 'dot'; opfordead%1 = true; player sideChat 'Objective %1 completed. Over'",_a], ""];
};

/*
create 1 to 3 objectives randomly. previously it was 5, but it somehow
started to feel disgusting as there was so freaking many objectives
and then about 500 enemy units on the mission, starting to cause slowdown etc.
lets get back to basics, if you get bored with 3 objectives... then get a job :)
*/
_PMC_t = [];
_PMC_t = PMC_targets;
_targetNum = count PMC_targets;
_a = 0;
_ObjCount = round (random 3);
// stupid trick
if (_ObjCount == 0) then
{
	_ObjCount = 1;
};

while { _a < _ObjCount || _a > (count PMC_targets) } do
{
	_a = _a + 1;

	// choose random posit, then remove it from selection so next time
	// we choose different random posit, no two units go in same location.
	_ran = (floor random _targetNum);
	_tlogic = (_PMC_t select _ran);
	_PMC_t = _PMC_t - [_tlogic];
	_targetNum = _targetNum - 1;
	_targetpoint = getPos _tlogic;

	// if our base is more than 1KM away, lets create the objective
	if (getMarkerPos "start" distance _targetpoint > 2000) then
	{
		// create objective
		[] call _PMC_CreateObjective;
		// and add some defences there ;)
		_tmp = [_targetpoint] execVM "PMC\PMC_objective_def_OPFOR.sqf";
		// we wait until one objective defenses are done.
		waitUntil {scriptDone _tmp};
	};
};

// hide not used objectives
if (_ObjCount == 1) then
{
	"2" objStatus "HIDDEN"; opfordead2 = true;
	"3" objStatus "HIDDEN"; opfordead3 = true;
	"4" objStatus "HIDDEN"; opfordead4 = true;
	"5" objStatus "HIDDEN"; opfordead5 = true;
	player sideChat "_ObjCount == 1, made 4 objectives hidden.";
};

if (_ObjCount == 2) then
{
	"3" objStatus "HIDDEN"; opfordead3 = true;
	"4" objStatus "HIDDEN"; opfordead4 = true;
	"5" objStatus "HIDDEN"; opfordead5 = true;
	player sideChat "_ObjCount == 2, made 3 objectives hidden.";
};

if (_ObjCount == 3) then
{
	"4" objStatus "HIDDEN"; opfordead4 = true;
	"5" objStatus "HIDDEN"; opfordead5 = true;
	player sideChat "_ObjCount == 3, made 2 objectives hidden.";
};

if (_ObjCount == 4) then
{
	"5" objStatus "HIDDEN"; opfordead5 = true;
	player sideChat "_ObjCount == 4, made 1 objectives hidden.";
};

// sixth objective is now always hidden.
"6" objStatus "HIDDEN";
