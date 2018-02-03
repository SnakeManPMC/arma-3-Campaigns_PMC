
private [
		"_lz"
	];
// DEBUG!!!
/*
PMC_lzx = getPosASL mfr1 select 0;
PMC_lzy = getPosASL mfr1 select 1;
*/

// load team status
mfr1 loadStatus "mfr1";
mfr2 loadStatus "mfr2";
mfr3 loadStatus "mfr3";
mfr4 loadStatus "mfr4";
mfr5 loadStatus "mfr5";
mfr6 loadStatus "mfr6";

// create briefing objectives
[] execVM "briefing.sqf";

// our LZ position.
_lz = [PMC_lzx, PMC_lzy, 0];

// set the marker
"lz" setMarkerPos _lz;

// our team
{
	_x setPos _lz;
} forEach units group mfr1;

// invisible helo pad
pmc_helopad_1 setPos _lz;
_lz = getPosASL pmc_helopad_1;
pmc_helopad_2 setPos [(_lz select 0) + 100, (_lz select 1), 0];
pmc_helopad_3 setPos [(_lz select 0) + 200, (_lz select 1), 0];
pmc_helopad_4 setPos [(_lz select 0) + 300, (_lz select 1), 0];

/*
hint format["pmc_helopad_1: %1\npmc_helopad_2: %2\npmc_helopad_3: %3\npmc_helopad_4: %4\n\nme<>pmc_helopad_1: %5m", getPosASL pmc_helopad_1, getPosASL pmc_helopad_2, getPosASL pmc_helopad_3, getPosASL pmc_helopad_4,player distance pmc_helopad_1];

_marker1 = createmarker ["kura1", getPosASL pmc_helopad_1];
_marker1 setMarkerShape "ELLIPSE";
_marker1 setMarkerColor "ColorRed";
_marker1 setMarkerBrush "Solid";
_marker1 setMarkerSize [50, 50];

_marker2 = createmarker ["kura2", getPosASL pmc_helopad_2];
_marker2 setMarkerShape "ELLIPSE";
_marker2 setMarkerColor "ColorRed";
_marker2 setMarkerBrush "Solid";
_marker2 setMarkerSize [50, 50];

_marker3 = createmarker ["kura3", getPosASL pmc_helopad_3];
_marker3 setMarkerShape "ELLIPSE";
_marker3 setMarkerColor "ColorRed";
_marker3 setMarkerBrush "Solid";
_marker3 setMarkerSize [50, 50];

_marker4 = createmarker ["kura4", getPosASL pmc_helopad_4];
_marker4 setMarkerShape "ELLIPSE";
_marker4 setMarkerColor "ColorRed";
_marker4 setMarkerBrush "Solid";
_marker4 setMarkerSize [50, 50];
*/

// with helos landing on it, their waypoints set.
[heloGrp1, 1] setWPPos getPosASL pmc_helopad_1;
[heloGrp2, 1] setWPPos getPosASL pmc_helopad_2;
[heloGrp3, 1] setWPPos getPosASL pmc_helopad_3;
[heloGrp4, 1] setWPPos getPosASL pmc_helopad_4;
