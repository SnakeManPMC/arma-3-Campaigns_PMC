// auto added by PMC mission porting system 
PAPABEAR = [West, "HQ"]; 
[] execVM "briefing.sqf"; 

PMC_a1 loadStatus "m6as1";
PMC_a2 loadStatus "m6as2";
PMC_a3 loadStatus "m6as3";
PMC_a4 loadStatus "m6as4";
PMC_a5 loadStatus "m6as5";
PMC_a6 loadStatus "m6as6";
PMC_a7 loadStatus "m6as7";
PMC_a8 loadStatus "m6as8";
PMC_a9 loadStatus "m6as9";
PMC_a10 loadStatus "m6as10";
PMC_a11 loadStatus "m6as11";
PMC_a12 loadStatus "m6as12";

{ if (!alive _x) then { deletevehicle _x } } foreach [PMC_a2,PMC_a3,PMC_a4,PMC_a5,PMC_a6,PMC_a7,PMC_a8,PMC_a9,PMC_a10,PMC_a11,PMC_a12];
