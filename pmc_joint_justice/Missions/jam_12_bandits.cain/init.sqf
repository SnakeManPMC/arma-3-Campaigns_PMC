// auto added by PMC mission porting system
PAPABEAR = [West, "HQ"];
[] execVM "briefing.sqf";

PMC_a1 loadStatus "m11s1";
PMC_a2 loadStatus "m11s2";
PMC_a3 loadStatus "m11s3";
PMC_a4 loadStatus "m11s4";
PMC_a5 loadStatus "m11s5";
PMC_a6 loadStatus "m11s6";
PMC_a7 loadStatus "m11s7";
PMC_a8 loadStatus "m11s8";
PMC_a9 loadStatus "m11s9";
PMC_a10 loadStatus "m11s10";
PMC_a11 loadStatus "m11s11";
PMC_a12 loadStatus "m11s12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];

PMC_wave2 = false;
PMC_wave3 = false;
PMC_wave4 = false;
PMC_wave5 = false;
PMC_BodyCount = 0;

[] execVM "pmc_opfor_waves.sqf";

{_x addEventHandler ["killed",{_this exec "killed.sqs"}] } foreach aieast;
