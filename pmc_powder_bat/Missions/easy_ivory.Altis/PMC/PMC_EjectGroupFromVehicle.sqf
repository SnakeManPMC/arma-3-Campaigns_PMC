
private _grp = _this select 0;
private _helo = _this select 1;

waitUntil
{
	sleep 0.1;
	((getPosATL _helo select 2) < 1);
};

_helo sideChat "All right we have arrived, everyone OUT!";

{
	unassignVehicle (_x);
	(_x) action ["EJECT", vehicle _x];
	sleep 0.1;
} foreach units _grp;


waitUntil
{
	sleep 0.1;
	((getPosATL _helo select 2) > 1);
};

_helo sideChat "We are outta here, good luck boys!";
