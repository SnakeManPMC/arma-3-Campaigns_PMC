
[] execVM "briefing.sqf";

PAPABEAR = [ West, "HQ" ];

[] exec "weather_old.sqs";

ms1 LoadStatus "msol1_23";
ms2 LoadStatus "msol2_23";
ms3 LoadStatus "msol3_23";
ms4 LoadStatus "msol4_23";
ms5 LoadStatus "msol5_23";
ms6 LoadStatus "msol6_23";
m2crew1 LoadStatus "mcrew1_23";
m2crew2 LoadStatus "mcrew2_23";
m2crew3 LoadStatus "mcrew3_23";
m2crew4 LoadStatus "mcrew4_23";
m2crew5 LoadStatus "mcrew5_23";
m2crew6 LoadStatus "mcrew6_23";
tnk1 LoadStatus "brad1_23";
tnk2 LoadStatus "brad2_23";

// if they are dead, then remove them from the mission alltogether
{
	if (!alive _x) then
	{
		deletevehicle _x;
	}
} forEach [ms2, ms3, ms4, ms5, ms6, tnk1, tnk2, m2crew1, m2crew2, m2crew3, m2crew4, m2crew5, m2crew6];

// heal them
{
	_x setDamage 0;
} forEach units group ms1;

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
[leader backup2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader backup2, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rsnipas1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rsnipas1, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader rusinf9, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader rusinf9, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader mgunners1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader mgunners1, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader mgunners2, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader mgunners2, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
[leader nazis1, "aiwest", "aieast", artygrp1] exec "ai_arty_ua.sqs";
[leader nazis1, "aiwest", "aieast", artygrp2] exec "ai_arty_ua.sqs";
