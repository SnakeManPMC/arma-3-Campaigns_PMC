
// year, month, day, hour, minute
setDate PMC_LastMissionDateTime;

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

pmc_ammobox_fob1_1 loadStatus "PMC_AmmoBoxFOB11";
pmc_ammobox_fob1_2 loadStatus "PMC_AmmoBoxFOB12";
pmc_ammobox_fob1_3 loadStatus "PMC_AmmoBoxFOB13";
pmc_ammobox_fob1_4 loadStatus "PMC_AmmoBoxFOB14";
pmc_truck1 loadStatus "PMC_AmmoTruck1";

pmc_ammobox_fobeagle_1 loadStatus "PMC_AmmoBoxFOBEagle_1";
pmc_ammobox_fobeagle_2 loadStatus "PMC_AmmoBoxFOBEagle_2";
pmc_ammobox_fobeagle_3 loadStatus "PMC_AmmoBoxFOBEagle_3";
pmc_ammobox_fobeagle_4 loadStatus "PMC_AmmoBoxFOBEagle_4";
pmc_ammobox_fobeagle_5 loadStatus "PMC_AmmoBoxFOBEagle_5";
pmc_ammobox_fobeagle_6 loadStatus "PMC_AmmoBoxFOBEagle_6";

pmc_ammobox_fobraven_1 loadStatus "PMC_AmmoBoxFOBRaven_1";
pmc_ammobox_fobraven_2 loadStatus "PMC_AmmoBoxFOBRaven_2";
pmc_ammobox_fobraven_3 loadStatus "PMC_AmmoBoxFOBRaven_3";
pmc_ammobox_fobraven_4 loadStatus "PMC_AmmoBoxFOBRaven_4";
pmc_ammobox_fobraven_5 loadStatus "PMC_AmmoBoxFOBRaven_5";
pmc_ammobox_fobraven_6 loadStatus "PMC_AmmoBoxFOBRaven_6";

pmc_ammobox_fobghoul_1 loadStatus "PMC_AmmoBoxFOBGhoul_1";
pmc_ammobox_fobghoul_2 loadStatus "PMC_AmmoBoxFOBGhoul_2";
pmc_ammobox_fobghoul_3 loadStatus "PMC_AmmoBoxFOBGhoul_3";
pmc_ammobox_fobghoul_4 loadStatus "PMC_AmmoBoxFOBGhoul_4";
pmc_ammobox_fobghoul_5 loadStatus "PMC_AmmoBoxFOBGhoul_5";
pmc_ammobox_fobghoul_6 loadStatus "PMC_AmmoBoxFOBGhoul_6";

[(getPos pmc_fob_ghoul), 100] execVM "PMC\PMC_CampFOBDefenses.sqf";

PMC_corpses = [];
PMC_killedNum = 0;

[] execVM "PMC\PMC_MissionStart.sqf";

[] spawn
{
	waitUntil
	{
		sleep 3;
		(player distance pmc_fob_ghoul > 100);
	};

	"ghoul_patrol" call BIS_fnc_endMission;
};
