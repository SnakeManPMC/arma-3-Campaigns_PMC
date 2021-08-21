
private _team = _this select 0;
private _helo = _this select 1;

_helo sideradio "Rextract";

// get people out
_helo land "land";

while { ((getpos vehicle _helo select 2) > 2) } do
{
	sleep 0.5;
	// loop until helo height is 2 meters.
};

_helo flyinheight 0;

// wait until whole squad is on board.
private _A = 0;

while { (_B > _A) } do
{
	private _listunits = units _team;
	private _B = count _listunits
	sleep 0.1;
	if (_listunits select _A in _helo) then
	{
		_A = _A + 1;
	};
};

_helo flyinheight 50;
_helo sideradio "Rdustoff";

0 fademusic 1;
playmusic ["Track15_MainTheme",0]

if (alive col1) then
{
	["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
}
else
{
	["t2", "FAILED", true] spawn BIS_fnc_taskSetState;
};
