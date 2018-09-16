
[] execVM "briefing.sqf";

PAPABEAR=[West,"HQ"];

{_x addweapon "CUP_NVG_PVS7"} foreach units assault2;
{_x addweapon "CUP_NVG_PVS7"} foreach units assault3;
{_x addweapon "CUP_NVG_PVS7"} foreach units mgunners1;

sleep 5;
reinfstuff = units reinf1 + units reinf2 + units reinf3 + units reinf4 + units reinf5 + units rustanks1;
