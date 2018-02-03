// auto added by PMC mission porting system 
PAPABEAR = [West, "HQ"]; 
[] execVM "briefing.sqf"; 

PMC_a1 loadStatus "m8bs1";
PMC_a2 loadStatus "m8bs2";
PMC_a3 loadStatus "m8bs3";
PMC_a4 loadStatus "m8bs4";
PMC_a5 loadStatus "m8bs5";
PMC_a6 loadStatus "m8bs6";
PMC_a7 loadStatus "m8bs7";
PMC_a8 loadStatus "m8bs8";
PMC_a9 loadStatus "m8bs9";
PMC_a10 loadStatus "m8bs10";
PMC_a11 loadStatus "m8bs11";
PMC_a12 loadStatus "m8bs12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];
