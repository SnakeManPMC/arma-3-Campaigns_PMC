
// we load this from the saveVar so mission can be re-used
//[2008, 11, 3, 11, 35];
private _md = PMC_LastMissionDateTime;
setDate [_md select 0, _md select 1, _md select 2, (_md select 3) + (round random 6), _md select 4];

PMCHQ = [ West, "BASE" ];

[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[1.1] execVM "PMC\PMC_weather.sqf";
pmc_ammobox_campmaxwell_1 loadStatus "PMC_StatusAmmoBoxCampMaxwell_1";
pmc_ammobox_campmaxwell_2 loadStatus "PMC_StatusAmmoBoxCampMaxwell_2";
pmc_ammobox_campmaxwell_3 loadStatus "PMC_StatusAmmoBoxCampMaxwell_3";
pmc_ammobox_campmaxwell_4 loadStatus "PMC_StatusAmmoBoxCampMaxwell_4";
pmc_ammobox_campmaxwell_5 loadStatus "PMC_StatusAmmoBoxCampMaxwell_5";
pmc_ammobox_campmaxwell_6 loadStatus "PMC_StatusAmmoBoxCampMaxwell_6";
pmc_ammobox_campmaxwell_7 loadStatus "PMC_StatusAmmoBoxCampMaxwell_7";
pmc_ammobox_campmaxwell_8 loadStatus "PMC_StatusAmmoBoxCampMaxwell_8";
pmc_truck1 loadStatus "PMC_AmmoTruck1";

[(getPos pmc_fob_falcon), 50] execVM "PMC\PMC_CampFOBDefenses.sqf";

PMC_debug = true;
[50] execVM "PMC\PMC_corpses.sqf";
[pmc_fob_falcon, 200, 33] execVM "PMC\PMC_War_OPFOR.sqf";

[] execVM "PMC\PMC_MissionStart.sqf";

[] spawn
{
	while {alive player} do
	{
		sleep 600;
		saveGame;
	};
};
