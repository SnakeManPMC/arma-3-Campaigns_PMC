
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_Objectives.sqf";

// if you run this mission from mission editor, it's a debug thing.
if (isNil "PMC_lzx") then
{
	PMC_lzx = getPosATL mfr1 select 0;
	PMC_lzy = getPosATL mfr1 select 1;
};

mfr1 loadStatus "mfr1";
mfr2 loadStatus "mfr2";
mfr3 loadStatus "mfr3";
mfr4 loadStatus "mfr4";
mfr5 loadStatus "mfr5";
mfr6 loadStatus "mfr6";

private _lz = [PMC_lzx, PMC_lzy, 0];

"lz" setMarkerPos _lz;

{
	_x setPos _lz;
} forEach units group mfr1;

// invisible helo pad
pmc_helopad_1 setPos _lz;
_lz = getPosATL pmc_helopad_1;
pmc_helopad_2 setPosATL [(_lz select 0) + 100, (_lz select 1), 0];
pmc_helopad_3 setPosATL [(_lz select 0) + 200, (_lz select 1), 0];
pmc_helopad_4 setPosATL [(_lz select 0) + 300, (_lz select 1), 0];

// with helos landing on it, their waypoints set.
[heloGrp1, 1] setWPPos getPosATL pmc_helopad_1;
[heloGrp2, 1] setWPPos getPosATL pmc_helopad_2;
[heloGrp3, 1] setWPPos getPosATL pmc_helopad_3;
[heloGrp4, 1] setWPPos getPosATL pmc_helopad_4;

[] spawn
{
	sleep 7;
	leader heloGrp1 sideChat "Commencing the assault, stand by Alpha.";
	sleep 5;
	leader heloGrp1 sideChat "All birds, report in. Over.";
	sleep 5;
	leader heloGrp2 sideChat "Reporting in. Over.";
	sleep 5;
	leader heloGrp3 sideChat "Good to go. Over.";
	sleep 5;
	leader heloGrp4 sideChat "Lets roll. Over.";
	sleep 10;
	leader heloGrp1 sideChat "Okay fly boys, lets keep it high and tight, I want to be back to base in time for supper. Out.";
};
