
[] execVM "briefing.sqf";

PAPABEAR=[West,"HQ"];

s1 loadStatus "12s1";
s2 loadStatus "12s2";
s3 loadStatus "12s3";
s4 loadStatus "12s4";
s5 loadStatus "12s5";
s6 loadStatus "12s6";
s7 loadStatus "12s7";
s8 loadStatus "12s8";
s9 loadStatus "12s9";

if (!alive s2) then { deletevehicle s2; };
if (!alive s3) then { deletevehicle s3; };
if (!alive s4) then { deletevehicle s4; };
if (!alive s5) then { deletevehicle s5; };
if (!alive s6) then { deletevehicle s6; };
if (!alive s7) then { deletevehicle s7; };
if (!alive s8) then { deletevehicle s8; };
if (!alive s9) then { deletevehicle s9; };

{_x setdammage 0} foreach units assault1;

{_x moveincargo helo1} foreach units assault1;

playmusic ["rtrack2",0];
