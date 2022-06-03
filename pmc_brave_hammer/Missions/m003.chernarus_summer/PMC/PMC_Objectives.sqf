
// t1 child 1
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child1";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 1 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "Copy that Alpha. Over.";
	sleep 5;

	pmc_opfordead_t1c1 = true;
	["t1_child1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// t1 child 2
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child2";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 2 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "Understood. Over.";
	sleep 5;

	pmc_opfordead_t1c2 = true;
	["t1_child2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// t1 child 3
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child3";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 3 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "We copy Alpha. HQ out.";
	sleep 5;

	pmc_opfordead_t1c3 = true;
	["t1_child3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// t1 child 4
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child4";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 4 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "Roger that Alpha. Over.";
	sleep 5;

	pmc_opfordead_t1c4 = true;
	["t1_child4", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// t1 child 5
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child5";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 5 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "Alpha we copy. HQ out.";
	sleep 5;

	pmc_opfordead_t1c5 = true;
	["t1_child5", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// t1 child 6
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child6";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 6 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "Good work Alpha. Over.";
	sleep 5;

	pmc_opfordead_t1c6 = true;
	["t1_child6", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// t1 child 7
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child7";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 7 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "Acknowledged. Over.";
	sleep 5;

	pmc_opfordead_t1c7 = true;
	["t1_child7", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// t1 child 8
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child8";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 8 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "Roger, understood. HQ out.";
	sleep 5;

	pmc_opfordead_t1c8 = true;
	["t1_child8", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// t1 child 9
[] spawn
{
	private _pmcmarker = "pmc_marker_t1_child9";
	sleep 60*5;
	sleep random 5;

	while { (count (units west inAreaArray _pmcmarker) == 0) } do
	{
		sleep 10;
	};

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "Objective T1 Child 9 cleared. Over.";
	sleep 7;
	PMCHQ sideChat "Received Alpha. Over.";
	sleep 5;

	pmc_opfordead_t1c9 = true;
	["t1_child9", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	_pmcmarker setMarkerTypeLocal "mil_dot";
};

// all objectives complete, mission is over, hooyah!
[] spawn
{
	private _pmcmarker = "pmc_marker_airfield_area";
	sleep 60*5;
	sleep random 5;

	// first check that child tasks are done
	waitUntil
	{
		sleep 30;
		(!isNil "pmc_opfordead_t1c1" && !isNil "pmc_opfordead_t1c2" && !isNil "pmc_opfordead_t1c3" && !isNil "pmc_opfordead_t1c4" && !isNil "pmc_opfordead_t1c5" && !isNil "pmc_opfordead_t1c6" && !isNil "pmc_opfordead_t1c7" && !isNil "pmc_opfordead_t1c8" && !isNil "pmc_opfordead_t1c9");
	};

	// final check if all commies are dead, then mission is over
	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "We have eliminated all enemy resistance. Over.";
	sleep 7;
	PMCHQ sideChat "Excellent work everyone, job well done. Mission is accomplished. HQ out.";
	sleep 5;

	pmc_opfordead1 = true;
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColorLocal "colorgreen";
	"target1" setMarkerTypeLocal "mil_dot";
	"target1" setMarkerColor "colorgreen";
	[] execVM "PMC\PMC_SaveStatus.sqf";
	sleep 7;

	"pmc_end1" call BIS_fnc_endMission;
};
