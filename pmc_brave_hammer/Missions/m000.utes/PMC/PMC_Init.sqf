
#include "..\..\..\scripts\PMC\PMC_WeaponPool.sqf"

[] execVM "PMC\PMC_Briefing.sqf";
[player, "PMC_EndThisMission", nil, nil, ""] call BIS_fnc_addCommMenuItem;

sleep 3;
hintSilent "Use teamSwitch to switch into different team member. Go to ammo/weapon boxes to rearm.\n\nUse Support 0-8-1 to end this mission, when you are ready.";

[WEST,1,1,1,1] call BIS_fnc_EXP_camp_setSkill;
