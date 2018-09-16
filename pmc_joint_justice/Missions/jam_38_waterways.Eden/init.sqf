// auto added by PMC mission porting system
PAPABEAR = [West, "HQ"];
[] execVM "briefing.sqf";

PMC_a1 loadStatus "m37s1";
PMC_a2 loadStatus "m37s2";
PMC_a3 loadStatus "m37s3";
PMC_a4 loadStatus "m37s4";
PMC_a5 loadStatus "m37s5";
PMC_a6 loadStatus "m37s6";
PMC_a7 loadStatus "m37s7";
PMC_a8 loadStatus "m37s8";
PMC_a9 loadStatus "m37s9";
PMC_a10 loadStatus "m37s10";
PMC_a11 loadStatus "m37s11";
PMC_a12 loadStatus "m37s12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];

PMC_BodyCount = 0;

sleep 3;

{_x addEventHandler ["killed", {_this execVM "PMC\PMC_JointJusticeKilled.sqf"}]} forEach aieast;
