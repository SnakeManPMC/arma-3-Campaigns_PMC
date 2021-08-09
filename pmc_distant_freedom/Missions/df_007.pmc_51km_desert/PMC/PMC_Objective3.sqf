/*
marker name: pmc_marker_obj_3
*/
sleep random 3;
systemChat "PMC_Objective3 running.";

private _pmcmarker = "pmc_marker_obj_3";
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

PMCHQ sideChat "Objective Pegasus swept, well done, set up there, were done for today. HQ over.";
sleep 7;

_pmcmarker setMarkerColorLocal "colorblue";
_pmcmarker setMarkerTypeLocal "mil_dot";

["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;

pmc_objective3 = true;
