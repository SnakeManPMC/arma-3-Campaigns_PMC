
private _team = _this select 0;
private _helo = _this select 1;

_helo sideradio "Rextract";

// get people out
_helo land "land";

// loop until helo height is 2 meters.
waitUntil
{
	sleep 0.5;
	((getpos _helo select 2) < 2);
};

_helo flyinheight 0;

// try to keep him the engine on...
_helo action["ENGINE ON"];

// wait until whole squad is on board.
_A = 0;

waitUntil
{
	private _listunits = units _team;
	private _B = count _listunits;
	sleep 0.2;
	if (_listunits select _A in _helo) then
	{
		_A = _A + 1;
	};
	(_B > _A);
};

_helo flyinheight 50;
_helo sideradio "Rliftoff";

sleep 3;

0 fademusic 1;
playMusic ["LeadTrack01_F", 0];
