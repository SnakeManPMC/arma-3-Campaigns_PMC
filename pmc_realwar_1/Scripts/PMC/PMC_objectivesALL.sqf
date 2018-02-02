/*

	Trigger Objectives

	For all gamelogic's according to saveVar's

Syntax:
[triggerArea, triggerTimeout] execVM "PMC\PMC_objectivesALL.sqf";

Requires:
PMC_targets array

Returns:
-

*/

private
[
	"_a",
	"_color",
	"_m",
	"_markerobj",
	"_PMC_t",
	"_targetpoint",
	"_tlogic",
	"_triggerArea",
	"_triggerTimeout",
	"_z"
];

_PMC_CreateTriggers =
{
	private _t = _this select 0;
	private _a = _this select 1;
/*
this shit is not working :(
	_pole = format ["PMC_pole_%1", _a];
	_pole = "FlagCarrier" createVehicle _targetpoint;
*/
	_m = format ["PMC_Objective_%1", _a];
	_markerobj = createMarker [_m, _targetpoint];
	_markerobj setMarkerShape "ELLIPSE";
	_markerobj setMarkerColor "ColorBlack"; // or "ColorWhite"
	_markerobj setMarkerBrush "Solid";
	_markerobj setMarkerSize [_triggerArea, _triggerArea];

	// setup the flags and colors!
	_color = call compile format ["PMC_City_%1",_a];

	// some debug
	if (pmcdb) then
	{
		player sideChat format["_targetpoint: %1. _color: %2",_targetpoint,_color];
	};

	// gree is BLUFOR
	if (_color == "COLORGREEN") then
	{
		call compile format ["'PMC_Objective_%1' setMarkerColor 'ColorGreen'",_a];
		//'PMC_pole_%1' setFlagTexture '\ca\misc\data\usa_vlajka.paa'
	};
	// red is OPFOR
	if (_color == "COLORRED") then
	{
		call compile format ["'PMC_Objective_%1' setMarkerColor 'ColorRed';",_a];
		// 'PMC_pole_%1' setFlagTexture '\ca\misc\data\sever_vlajka.paa'
	};
	// blue is RACS
	if (_color == "COLORBLUE") then
	{
		call compile format ["'PMC_Objective_%1' setMarkerColor 'ColorBlue';",_a];
		// 'PMC_pole_%1' setFlagTexture '\ca\misc\data\jih_vlajka.paa'
	};
	// black is not occupied
	if (_color == "COLORBLACK") then
	{
		call compile format ["'PMC_Objective_%1' setMarkerColor 'ColorBlack';",_a];
	};

	// BLUFOR
	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["WEST SEIZED", "PRESENT", true];
	_z setTriggerArea [_triggerArea, _triggerArea, 0, true];
	_z setTriggerTimeout [0, (_triggerTimeout/2), _triggerTimeout, true];
	_z setTriggerStatements ["this", format ["'PMC_Objective_%1' setMarkerColor 'ColorGreen';",_a], ""];
	// 'PMC_pole_%1' setFlagTexture '\ca\misc\data\usa_vlajka.paa'

	// OPFOR
	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["EAST SEIZED", "PRESENT", true];
	_z setTriggerArea [_triggerArea, _triggerArea, 0, true];
	_z setTriggerTimeout [0, (_triggerTimeout/2), _triggerTimeout, true];
	_z setTriggerStatements ["this", format ["'PMC_Objective_%1' setMarkerColor 'ColorRed';",_a], ""];
	// 'PMC_pole_%1' setFlagTexture '\ca\misc\data\sever_vlajka.paa'

	// RACS
	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["GUER SEIZED", "PRESENT", true];
	_z setTriggerArea [_triggerArea, _triggerArea, 0, true];
	_z setTriggerTimeout [0, (_triggerTimeout/2), _triggerTimeout, true];
	_z setTriggerStatements ["this", format ["'PMC_Objective_%1' setMarkerColor 'ColorBlue';",_a], ""];
	// 'PMC_pole_%1' setFlagTexture '\ca\misc\data\jih_vlajka.paa'

	// <side> seized means the side is stronger than enemys
	// setTriggerTimeout [min, mid, max, interruptable]
};

// create objectives
_PMC_t = [];
_PMC_t = PMC_targets;
_a = 0;
_triggerArea = _this select 0;
_triggerTimeout = _this select 1;

while { _a < (count PMC_targets) } do
{
	_tlogic = (_PMC_t select _a);
	_targetpoint = getPos _tlogic;

	[_targetpoint, _a] call _PMC_CreateTriggers;

	_a = _a + 1;
};

/*
pole1 east
expCond:
west countSide thislist == 0 && ('land' countType thislist == east countSide thislist) && east countSide thislist > 0
expActiv:
East_ControList set [0,1]; pole1 setFlagTexture 'rus_vlajka.pac'; 'pmc1' setMarkerColor 'ColorRed';

pole1 west:
expCond:
east countSide thislist == 0 && ('land' countType thislist == west countSide thislist) && west countSide thislist > 0
expActiv:
West_ControList set [0,1]; pole1 setFlagTexture 'usa_vlajka.pac'; 'pmc1' setMarkerColor 'ColorGreen';
};

// my backup
_PMC_CreateObjective =
{
	_m = format ["PMC_markerALL_%1", _a];
	_markerobj = createMarker[_m, _targetpoint];
	_markerobj setMarkerShape "ELLIPSE";
	_markerobj setMarkerColor "ColorRed";
	_markerobj setMarkerBrush "Solid";
	_markerobj setMarkerSize [500, 500];

	_z = createTrigger ["EmptyDetector", _targetpoint];
	_z setTriggerActivation ["GUER", "PRESENT", false];
	_z setTriggerArea [200, 200, 0, true];
	_z setTriggerStatements ["this", format ["hint '%1 objective completed'; 'PMC_MarkerALL_%1' setMarkerColor 'ColorGreen'; 'PMC_MarkerALL_%1' setMarkerType 'dot'; player sideChat 'Objective %1 completed. Over'",_a], ""];
};
*/
