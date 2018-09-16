
1 setradiomsg null;

private _helo = _this select 0;
private _team = _this select 1;
private _pad = _this select 2;

leader _team sideradio "Rcallammo";

_helo domove getpos leader _team;

_helo setbehaviour "aware";
_helo setcombatmode "yellow";
_helo setspeedmode "full";
sleep 15;

_helo sideradio "Rincoming";

waitUntil
{
	sleep 1;
	(unitready _helo);
};

_helo land "land";

waitUntil
{
	((getpos _helo select 2) < 2);
};

_helo sideradio "Runloading";

// ok wwe have landed, lets wait for 10secs.
sleep 12;

// ammo box number
if (ADropC == 0) then
{
	abox_1 setpos getpos _helo;
}
else
{
	abox_2 setpos getpos _helo;
};
sleep 3;

_helo sideradio "Rhavefun";

_helo domove getpos _pad;
waitUntil
{
	sleep 1;
	(unitready _helo);
};
_helo land "land";

ADropC = ADropC + 1;

if (ADropC < 2) then
{
	1 setradiomsg "Call - Ammo Drop!";
}; 
