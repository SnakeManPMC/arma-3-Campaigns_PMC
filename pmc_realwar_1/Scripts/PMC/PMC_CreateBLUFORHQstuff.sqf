
PMC_CreateBLUFORHQstuff =
{
	// ugly hack to get position :)
	_p = _targetpoint;

	"FlagCarrierUSA" createVehicle _p;
	"Land_Fire" createVehicle _p;

	//_ftent = "MASH" createVehicle [(_p select 0),(_p select 1)+20];
	//_ftent setDir 180;
	_tent1 = "ACamp" createVehicle [(_p select 0)-20,(_p select 1)];
	_tent1 setDir (random 360);
	_tent2 = "ACamp" createVehicle [(_p select 0)+20,(_p select 1)];
	_tent2 setDir (random 360);
/*
	_abox1 = "CUP_USBasicAmmunitionBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
	_abox1 setDir (random 360);
	_abox2 = "CUP_USSpecialWeaponsBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
	_abox2 setDir (random 360);
	_abox3 = "CUP_USBasicWeaponsBox" createVehicle [(_p select 0)+25,(_p select 1)+25];
	_abox3 setDir (random 360);
	"HeliH" createVehicle [(_p select 0)-40,(_p select 1)-40];
*/
};
