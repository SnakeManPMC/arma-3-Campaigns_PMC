
PMC_US_Forces =
{
	private _city = _this select 0;

	private _PMC_WestTanks = ["CUP_B_M2Bradley_USA_D","CUP_B_M2Bradley_USA_D","CUP_B_M1A2_TUSK_MG_USMC","CUP_B_M1A2_TUSK_MG_USMC"];
	private _usdgrp;
	private _ran = random(1);

	"CUP_B_USMC_Soldier_SL" createunit [_city, usinf1, "d1 = this", _ran, "SERGEANT"];
	[d1] join grpnull;
	_usdgrp = group d1;

	_ran = random(1);
	"CUP_B_USMC_Soldier" createunit [_city, _usdgrp, "", _ran, "CORPORAL"];

	_ran = random(1);
	"CUP_B_USMC_Soldier_GL" createunit [_city, _usdgrp, "", _ran, "CORPORAL"];

	_ran = random(1);
	"CUP_B_USMC_Soldier_AT" createunit [_city, _usdgrp, "", _ran, "PRIVATE"];
	"CUP_B_USMC_Soldier_MG" createunit [_city, _usdgrp, "", 1, "PRIVATE"];

	_ran = random(1);
	"CUP_B_USMC_Medic" createunit [_city, _usdgrp, "", _ran, "PRIVATE"];

	_usdgrp setbehaviour "safe";
	_usdgrp setcombatmode "green";
	_usdgrp setspeedmode "limited";
	_usdgrp setformation "wedge";

	{_x addEventHandler [{killed}, {_this exec "killed.sqs"}]} forEach units _usdgrp;

	private _usbox = "CUP_USBasicAmmunitionBox" createvehicle _city;
	_ran = 2 + random 5;
	_ran = _ran - (_ran mod 1);
	_usbox addMagazineCargo ["CUP_MineE", _ran];
	_ran = 2 + random 5;
	_ran = _ran - (_ran mod 1);
	_usbox addMagazineCargo ["CUP_PipeBomb_M", _ran];

/*
	private _gun0 = "JAM_M2StaticMGHD" createVehicle _city;
	_gun0 addEventHandler [{killed}, {_this exec "killed.sqs"}];
	_gun0 setdir random 360;
	(units _usdgrp select 1) moveingunner _gun0;
*/

	// this will most likely poop badly on positioning as I have no idea where the houses are :(
	//private _usmedtent = "MASH" createVehicle _city;

	/*
		random chance of armor
	*/
	if (random 100 < 50) exitWith
	{
		westguys = westguys + 6;
	};
	
	private _m2a2 = (selectRandom PMC_WestTanks) createvehicle _city;
	_m2a2 addEventHandler ["killed",{_this exec "killed.sqs"}];

	"CUP_B_USMC_Crew" createunit [_city, _usdgrp, "this moveincommander _m2a2", 1, "PRIVATE"];
	"CUP_B_USMC_Crew" createunit [_city, _usdgrp, "this moveingunner _m2a2", 1, "PRIVATE"];
	"CUP_B_USMC_Crew" createunit [_city, _usdgrp, "this moveindriver _m2a2", 1, "PRIVATE"];

	westguys = westguys + 9;
};
