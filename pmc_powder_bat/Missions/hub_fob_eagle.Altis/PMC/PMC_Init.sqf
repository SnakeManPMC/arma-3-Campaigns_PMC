
// year, month, day, hour, minute
setDate PMC_LastMissionDateTime;

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBFalcon.sqf";
pmc_truck1 loadStatus "PMC_AmmoTruck1";
[] execVM "PMC\PMC_AmmoBoxLoadStatusFOBEagle.sqf";

[(getPos pmc_fob_eagle), 100] execVM "PMC\PMC_CampFOBDefenses.sqf";

PMC_corpses = [];
PMC_killedNum = 0;

[] execVM "PMC\PMC_MissionStart.sqf";

[] spawn
{
	waitUntil
	{
		sleep 3;
		(player distance pmc_fob_eagle > 100);
	};

	"eagle_patrol" call BIS_fnc_endMission;
};

// 2019-07-09 temporary debug end this FOB loop and go to the next mission
pmc_fobeagle_flag addAction ["Debug: leave FOB and go to next mission", "PMC\PMC_Debug_End_FOB_Eagle.sqf"];
