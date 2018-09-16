// auto added by PMC mission porting system
PAPABEAR = [West, "HQ"];
[] execVM "briefing.sqf";

PMC_a1 loadStatus "m45s1";
PMC_a2 loadStatus "m45s2";
PMC_a3 loadStatus "m45s3";
PMC_a4 loadStatus "m45s4";
PMC_a5 loadStatus "m45s5";
PMC_a6 loadStatus "m45s6";
PMC_a7 loadStatus "m45s7";
PMC_a8 loadStatus "m45s8";
PMC_a9 loadStatus "m45s9";
PMC_a10 loadStatus "m45s10";
PMC_a11 loadStatus "m45s11";
PMC_a12 loadStatus "m45s12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];

PMC_Wave1 = false;
PMC_wave2 = false;
PMC_wave3 = false;
PMC_wave4 = false;
PMC_wave5 = false;
PMC_wave6 = false;
PMC_wave7 = false;
PMC_wave8 = false;
PMC_BodyCount = 0;

sleep 3;

{_x addEventHandler ["killed", {_this execVM "PMC\PMC_JointJusticeKilled.sqf"}]} forEach aieast;

pmc_send_helos = true;

[] execVM "PMC_counterattack.sqf";
