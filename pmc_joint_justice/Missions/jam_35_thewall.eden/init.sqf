// auto added by PMC mission porting system
PAPABEAR = [West, "HQ"];
[] execVM "briefing.sqf";

PMC_a1 loadStatus "m34as1";
PMC_a2 loadStatus "m34as2";
PMC_a3 loadStatus "m34as3";
PMC_a4 loadStatus "m34as4";
PMC_a5 loadStatus "m34as5";
PMC_a6 loadStatus "m34as6";
PMC_a7 loadStatus "m34as7";
PMC_a8 loadStatus "m34as8";
PMC_a9 loadStatus "m34as9";
PMC_a10 loadStatus "m34as10";
PMC_a11 loadStatus "m34as11";
PMC_a12 loadStatus "m34as12";

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
sleep 3;

[] execVM "PMC_counterattack.sqf";
