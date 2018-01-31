
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

[] exec "weather_old.sqs";

rngr1 loadStatus "rng1_09";
rngr2 loadStatus "rng2_09";
rngr3 loadStatus "rng3_09";
rngr4 loadStatus "rng4_09";
rngr5 loadStatus "rng5_09";
rngr6 loadStatus "rng6_09";
rngr7 loadStatus "rng7_09";
rngr8 loadStatus "rng8_09";
rngr9 loadStatus "rng9_09";

{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} forEach [rngr2, rngr3, rngr4, rngr5, rngr6, rngr7, rngr8, rngr9];

// heal them
{
	_x setDamage 0;
} forEach units group rngr1;

//[] exec "\COC_Mines\scripts\InitMines.sqs"

knownUnits = preprocessFileLineNumbers "knownUnits.sqf";
findUnits = preprocessFileLineNumbers "findUnits.sqf";

sleep 5;
// AI arty stuff
[leader rusinf6, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf8, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf7, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf4, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader mechs2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader backup2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf5, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader backup1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf3, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader nazis2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rsnipas1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol3, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol5, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader nazis1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf9, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader patrol4, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
