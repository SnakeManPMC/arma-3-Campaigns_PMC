
private
[
	"_EPil",
	"_grp",
	"_r1",
	"_rtmptnk",
	"_rushelo1"
];

_EPil = "CUP_O_RU_Pilot";

// create East gunship helos
_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_r1 = floor (random (count PMC_EastHelos));
_rtmptnk = PMC_EastHelos select _r1;

_rushelo1 = _rtmptnk createVehicle getPosASL east_helostart;
_rushelo1 addEventHandler ["killed",{_this execVM "PMC\PMC_killed.sqf"}];
clearMagazineCargo _rushelo1;
clearWeaponCargo _rushelo1;

_EPil createunit [getPosASL east_helostart, _grp, "", 1, "SERGEANT"];
_EPil createunit [getPosASL east_helostart, _grp, "", 1, "CORPORAL"];

{
	_x addEventHandler ["killed", {_this execVM "PMC\PMC_killed.sqf"}];
} forEach units _grp;

// add the trophy handgun for the tank crew
[_grp] execVM "PMC\PMC_makarovs_for_crews.sqf";

(units _grp select 0) moveInDriver _rushelo1;
(units _grp select 1) moveInGunner _rushelo1;

PMC_groups = PMC_groups + [_grp];

leader _grp sidechat "HELICOPTER REPORTING. READY TO ENGAGE. OVER.";

if (PMC_debug) then
{
	leader _grp sidechat format["Russian GunShip Created: %1",_rtmptnk];
};

eastguys = eastguys + 2;
