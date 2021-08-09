/*
marker name: pmc_marker_obj_1
*/
sleep random 3;
systemChat "PMC_Objective1 running.";

private _pmcmarker = "pmc_marker_obj_1";
_pmcmarker setMarkerShape "ELLIPSE";
_pmcmarker setMarkerColor "ColorRed";
_pmcmarker setMarkerBrush "Solid";
_pmcmarker setMarkerSize [250, 250];

// east dead
waitUntil
{
	sleep 3;
	(count (units EAST inAreaArray _pmcmarker) == 0);
};
player sideChat "PMC DEBUG: East/OPFOR is dead.";

// west present
while { (count (units west inAreaArray _pmcmarker) == 0) } do
{
	sleep 3;
	hint format
	[
		"count (units west inAreaArray _pmcmarker): %1\n
		count (allPlayers inAreaArray _pmcmarker): %2",
		count (units west inAreaArray _pmcmarker),
		count (allPlayers inAreaArray _pmcmarker)
	];
};

player sideChat "I have entered into _pmcmarker area.";
sleep 10;

PMCHQ sideChat "Intersection cleared, great job, now push on. HQ out.";
sleep 7;

_pmcmarker setMarkerColorLocal "colorblue";
_pmcmarker setMarkerTypeLocal "mil_dot";

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_objective1 = true;
