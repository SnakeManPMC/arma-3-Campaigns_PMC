// auto added by PMC mission porting system 
PAPABEAR = [West, "HQ"]; 
[] execVM "briefing.sqf"; 

PMC_a1 loadStatus "m3s1";
PMC_a2 loadStatus "m3s2";
PMC_a3 loadStatus "m3s3";
PMC_a4 loadStatus "m3s4";
PMC_a5 loadStatus "m3s5";
PMC_a6 loadStatus "m3s6";
PMC_a7 loadStatus "m3s7";
PMC_a8 loadStatus "m3s8";
PMC_a9 loadStatus "m3s9";
PMC_a10 loadStatus "m3s10";
PMC_a11 loadStatus "m3s11";
PMC_a12 loadStatus "m3s12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];

PMC_wave2 = false;
PMC_wave3 = false;
PMC_wave4 = false;
PMC_wave5 = false;
PMC_BodyCount = 0;

[] execVM "pmc_opfor_waves.sqf";
