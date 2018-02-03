// auto added by PMC mission porting system
PAPABEAR = [West, "HQ"];
[] execVM "briefing.sqf";

PMC_a1 loadStatus "m12s1";
PMC_a2 loadStatus "m12s2";
PMC_a3 loadStatus "m12s3";
PMC_a4 loadStatus "m12s4";
PMC_a5 loadStatus "m12s5";
PMC_a6 loadStatus "m12s6";
PMC_a7 loadStatus "m12s7";
PMC_a8 loadStatus "m12s8";
PMC_a9 loadStatus "m12s9";
PMC_a10 loadStatus "m12s10";
PMC_a11 loadStatus "m12s11";
PMC_a12 loadStatus "m12s12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];
