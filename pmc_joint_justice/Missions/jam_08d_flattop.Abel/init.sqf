// auto added by PMC mission porting system 
PAPABEAR = [West, "HQ"]; 
[] execVM "briefing.sqf"; 

PMC_a1 loadStatus "m8cs1";
PMC_a2 loadStatus "m8cs2";
PMC_a3 loadStatus "m8cs3";
PMC_a4 loadStatus "m8cs4";
PMC_a5 loadStatus "m8cs5";
PMC_a6 loadStatus "m8cs6";
PMC_a7 loadStatus "m8cs7";
PMC_a8 loadStatus "m8cs8";
PMC_a9 loadStatus "m8cs9";
PMC_a10 loadStatus "m8cs10";
PMC_a11 loadStatus "m8cs11";
PMC_a12 loadStatus "m8cs12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];
