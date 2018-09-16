
private _team = _this select 0;
private _helo = _this select 1;

private _A = 0;

while { (_B > _A) } do
{
	private _listunits = units _team;
	private _B = count _listunits;
	sleep 0.3;
	_listunits select _A action ["eject", _helo];
	_A = _A + 1;
};

{unassignvehicle _x} foreach units _team;

sleep 60;
{deletevehicle _x} foreach units transp1;
{deletevehicle _x} foreach units ppilots1;
deletevehicle herc1;
