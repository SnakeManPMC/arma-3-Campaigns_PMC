
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_LoadStatus.sqf";
[] execVM "PMC\PMC_Objectives.sqf";

bis_MV22 setPosASL [getPosASL bis_MV22 select 0, getPosASL bis_MV22 select 1, 10000];
bis_MV22 flyInHeightASL [10000,10000,10000];
player moveInCargo bis_MV22;

my_group = group pmc_mfr2;
{_x moveInCargo bis_MV22} forEach units my_group;

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
