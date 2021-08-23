
PMC_Create_RU_Forces =
{
	private _city = _this select 0;

	private _PMC_EastTanks = ["BMP_INS","CUP_O_BMP2_CHDKZ","CUP_O_ZSU23_TK","CUP_O_T55_TK","CUP_O_T72_RU","CUP_O_T72_RU"];
	private _rusdgrp;
	private _ran = random(1);

	"CUP_O_RU_Soldier_SL" createunit [_city, rusinf1, "d2 = this", _ran, "SERGEANT"];
	[d2] join grpnull;
	_rusdgrp = group d2;

	_ran = random(1);
	"CUP_O_RU_Soldier" createunit [_city, _rusdgrp, "", _ran, "CORPORAL"];

	_ran = random(1);
	"CUP_O_RU_Soldier_GL" createunit [_city, _rusdgrp, "", _ran, "CORPORAL"];

	_ran = random(1);
	//"JAM_CAVS_EBSoldierRPGALL" createunit [_city, _rusdgrp, "", _ran, "CORPORAL"];
	"CUP_O_RU_Soldier_MG" createunit [_city, _rusdgrp, "", 1, "PRIVATE"];

	_ran = random(1);
	"CUP_O_RU_Medic" createunit [_city, _rusdgrp, "", _ran, "PRIVATE"];

	_rusdgrp setbehaviour "safe";
	_rusdgrp setcombatmode "green";
	_rusdgrp setspeedmode "limited";
	_rusdgrp setformation "wedge";

	{_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}]} forEach units _rusdgrp;

	private _rusbox = "CUP_RUBasicAmmunitionBox" createvehicle _city;
	_ran = 2 + random 5;
	_ran = _ran - (_ran mod 1);
	_rusbox addMagazineCargo ["CUP_MineE", _ran];
	_ran = 2 + random 5;
	_ran = _ran - (_ran mod 1);
	_rusbox addMagazineCargo ["CUP_PipeBomb_M", _ran];

	private _gun1 = "CUP_O_DSHKM_ChDKZ" createVehicle _city;
	_gun1 addEventHandler [{killed}, {_this exec "killed.sqs"}];
	_gun1 setdir random 360;
	(units _rusdgrp select 1) moveingunner _gun1;

	// this will most likely poop badly on positioning as I have no idea where the houses are :(
	//_rusmedtent = "MASH" createVehicle _city;

	/*
	random chance of armor
	*/
	if (random 100 < 50) exitWith
	{
		eastguys = eastguys + 6;
	};
	
	private _m2a2 = (selectRandom _PMC_EastTanks) createvehicle _city;
	_m2a2 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
	
	"CUP_O_RU_Crew" createunit [_city, _rusdgrp, "this moveincommander _m2a2", 1, "PRIVATE"];
	"CUP_O_RU_Crew" createunit [_city, _rusdgrp, "this moveingunner _m2a2", 1, "PRIVATE"];
	"CUP_O_RU_Crew" createunit [_city, _rusdgrp, "this moveindriver _m2a2", 1, "PRIVATE"];
	
	eastguys = eastguys + 9;
};
