
private ["_t","_A","_p","_r1","_puh","_city"];

_A = 0;
_t = [];

while { _A < 10 } do
{
	_A = _A + 1;
	_p = format["pmc%1", _A];
	if (getmarkercolor _p == "ColorRed") then
	{
		_t = _t + [ _p ];
	};
};

// randomly select one of the red cities.
_r1 = floor (random (count _t));
_puh = _t select _r1;

_city = getmarkerpos _puh;

// place girlfriend in the selected city
PMC_gf setpos getmarkerpos _puh;

PMC_girlie setbehaviour "careless";
PMC_girlie setcombatmode "green";
PMC_girlie setspeedmode "limited";
PMC_girlie setformation "stag column";

"target1" setMarkerPos _city;
"target1" setMarkerType "mil_Destroy";
"target1" setMarkerColor "ColorRed";
PMC_CivilianTrig setpos _city;
