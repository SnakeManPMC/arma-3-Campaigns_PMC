// auto added by PMC mission porting system
PAPABEAR = [West, "HQ"];
[] execVM "briefing.sqf";

PMC_a1 loadStatus "m55s1";
PMC_a2 loadStatus "m55s2";
PMC_a3 loadStatus "m55s3";
PMC_a4 loadStatus "m55s4";
PMC_a5 loadStatus "m55s5";
PMC_a6 loadStatus "m55s6";
PMC_a7 loadStatus "m55s7";
PMC_a8 loadStatus "m55s8";
PMC_a9 loadStatus "m55s9";
PMC_a10 loadStatus "m55s10";
PMC_a11 loadStatus "m55s11";
PMC_a12 loadStatus "m55s12";

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

{_x addEventHandler ["killed", {_this exec "killed.sqs"}]} forEach aieast;

[] execVM "PMC_counterattack.sqf";

pmc_send_helos = true;
