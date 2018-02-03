// auto added by PMC mission porting system
PAPABEAR = [West, "HQ"];
[] execVM "briefing.sqf";

PMC_a1 loadStatus "m49s1";
PMC_a2 loadStatus "m49s2";
PMC_a3 loadStatus "m49s3";
PMC_a4 loadStatus "m49s4";
PMC_a5 loadStatus "m49s5";
PMC_a6 loadStatus "m49s6";
PMC_a7 loadStatus "m49s7";
PMC_a8 loadStatus "m49s8";
PMC_a9 loadStatus "m49s9";
PMC_a10 loadStatus "m49s10";
PMC_a11 loadStatus "m49s11";
PMC_a12 loadStatus "m49s12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];
