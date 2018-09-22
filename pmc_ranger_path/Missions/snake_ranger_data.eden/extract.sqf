
private _team = _this select 0;
private _helo = _this select 1;

_helo sideradio "Rextract";

// get people out
_helo land "land";

//#landing
while { ((getPos vehicle _helo select 2) > 2) } do
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
	private _B = count _listunits;
	sleep 0.1;
	if (_listunits select _A in _helo) then
	{
		_A = _A + 1;
	};
};

_helo flyinheight 50;
_helo sideradio "Rdustoff";
0 fademusic 1;
[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";
