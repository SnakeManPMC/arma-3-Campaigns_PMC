// auto added by PMC mission porting system 
PAPABEAR = [West, "HQ"]; 
[] execVM "briefing.sqf"; 

PMC_a1 loadStatus "m6s1";
PMC_a2 loadStatus "m6s2";
PMC_a3 loadStatus "m6s3";
PMC_a4 loadStatus "m6s4";
PMC_a5 loadStatus "m6s5";
PMC_a6 loadStatus "m6s6";
PMC_a7 loadStatus "m6s7";
PMC_a8 loadStatus "m6s8";
PMC_a9 loadStatus "m6s9";
PMC_a10 loadStatus "m6s10";
PMC_a11 loadStatus "m6s11";
PMC_a12 loadStatus "m6s12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];
