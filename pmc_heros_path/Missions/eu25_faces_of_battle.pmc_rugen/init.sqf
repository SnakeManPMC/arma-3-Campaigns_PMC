
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

[] exec "weather_old.sqs";

s1 loadStatus "sol1_15";
s2 loadStatus "sol2_15";
s3 loadStatus "sol3_15";
s4 loadStatus "sol4_15";
s5 loadStatus "sol5_15";
s6 loadStatus "sol6_15";
s7 loadStatus "sol7_15";
s8 loadStatus "sol8_15";
s9 loadStatus "sol9_15";

{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} forEach [s2, s3, s4, s5, s6, s7, s8, s9];

// heal them
{
	_x setDamage 0;
} forEach units group s1;

knownUnits = preprocessFileLineNumbers "knownUnits.sqf";
findUnits = preprocessFileLineNumbers "findUnits.sqf";

//[] exec "\COC_Mines\scripts\InitMines.sqs"

sleep 5;
[leader rusinf1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf1, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rusinf2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf2, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rusinf3, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf3, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rusinf4, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf4, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rusinf5, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf5, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rusinf6, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf6, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader patrol1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol1, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader patrol2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol2, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader patrol3, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol3, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader patrol4, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol4, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rusinf7, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf7, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rusinf8, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf8, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader mechs1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader mechs1, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader mechs2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader mechs2, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader backup1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader backup1, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader backup2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader backup2, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rsnipas1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rsnipas1, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
