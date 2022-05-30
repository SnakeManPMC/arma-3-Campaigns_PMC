
[] execVM "PMC\PMC_Briefing.sqf";

BIS_player loadStatus "mfr1";
mfr2 loadStatus "mfr2";
mfr3 loadStatus "mfr3";
mfr4 loadStatus "mfr4";
mfr5 loadStatus "mfr5";
mfr6 loadStatus "mfr6";

[] execVM "PMC\PMC_Objectives.sqf";

player addBackPack "B_Parachute";

bis_MV22 setPosATL [getPosASL bis_MV22 select 0, getPosASL bis_MV22 select 1, 10000];
bis_MV22 flyInHeight 10000;
player moveInCargo bis_MV22;

my_group = group mfr2;
{_x moveInCargo bis_MV22} forEach units my_group;

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
