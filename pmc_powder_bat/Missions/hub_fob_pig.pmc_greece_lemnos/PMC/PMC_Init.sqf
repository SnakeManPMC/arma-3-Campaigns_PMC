
// year, month, day, hour, minute
setDate PMC_LastMissionDateTime;

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather.sqf";

[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBFalcon.sqf";
pmc_truck1 loadStatus "PMC_AmmoTruck1";
[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBEagle.sqf";
[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBPig.sqf";

[(getPos pmc_fob_pig), 100] execVM "PMC\PMC_CampFOBDefenses.sqf";

PMC_corpses = [];
PMC_killedNum = 0;

[] execVM "PMC\PMC_MissionStart.sqf";

[] spawn
{
	waitUntil
	{
		sleep 3;
		(player distance pmc_fob_pig > 100);
	};

	"pig_patrol" call BIS_fnc_endMission;
};
