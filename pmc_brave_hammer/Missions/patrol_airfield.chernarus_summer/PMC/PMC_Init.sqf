
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_LoadStatus.sqf";

[] spawn
{
	private _pmcmarker = "pmc_marker_airfield";
	waitUntil
	{
		sleep 10;
		count (allPlayers inAreaArray _pmcmarker) == 1;
	};

	"hub_airfield" call BIS_fnc_endMission;
};
