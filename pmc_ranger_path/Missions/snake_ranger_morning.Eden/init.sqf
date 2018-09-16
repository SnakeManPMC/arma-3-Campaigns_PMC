
[] execVM "briefing.sqf";

PAPABEAR=[West,"HQ"];

s1 loadStatus "14s1";
s2 loadStatus "14s2";
s3 loadStatus "14s3";
s4 loadStatus "14s4";
s5 loadStatus "14s5";
s6 loadStatus "14s6";
s7 loadStatus "14s7";
s8 loadStatus "14s8";
s9 loadStatus "14s9";

if (!alive s2) then { deletevehicle s2 };
if (!alive s3) then { deletevehicle s3 };
if (!alive s4) then { deletevehicle s4 };
if (!alive s5) then { deletevehicle s5 };
if (!alive s6) then { deletevehicle s6 };
if (!alive s7) then { deletevehicle s7 };
if (!alive s8) then { deletevehicle s8 };
if (!alive s9) then { deletevehicle s9 };

{_x setdammage 0} foreach units assault1;

{_x moveincargo helo1} foreach units assault1;

// play some tunes baby
playmusic ["Track07_Last_Men_Standing",0];

{_x setunitpos "DOWN"} foreach units snipas1;
{_x setunitpos "DOWN"} foreach units snipas2;
