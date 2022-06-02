
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_LoadStatus.sqf";
[] execVM "PMC\PMC_Objectives.sqf";

my_group = group pmc_mfr2;
{_x moveInCargo pmc_ospreymv22} forEach units my_group;
player moveInCargo pmc_ospreymv22;

pmc_ospreymv22 setPosASL [getPosASL pmc_ospreymv22 select 0, getPosASL pmc_ospreymv22 select 1, 8000];
pmc_ospreymv22 flyInHeightASL [8000,8000,8000];

/*
[] spawn
{
	while {true} do
	{
		sleep 1;
		hintSilent format["getPosASL: %1", getPosASL pmc_ospreymv22];
	};
};
*/

[] spawn
{
	sleep 5;
	player addBackPack "B_Parachute";
};

// 2022-05-30T23:07:00Z perhaps temporary hardcoded viewDistance so player can find the airbase heh
[] spawn
{
	setViewDistance 10000;

	sleep 60;
	waitUntil
	{
		sleep 3;
		((getPosATL player select 2) < 2);
	};
	setViewDistance -1;
};
