/*

Mission end, this kind of replaces exit.sqf file... we save bunch of stuff and
do the mission eding stuff, its just in one file, not in exit.sqf which had to
be edited on every mission dir.

*/

if (pmcdb) then
{
	hintc "ok so the fucking PMC_Mission_End.sqf WAS runned... eh?";
};

private
[
	"_a",
	"_color",
	"_m",
	"_PMC_vehicle_array"
];

// save artillery round counts
PMC_Artillery_Rounds = 0;
PMC_Artillery_Rounds = PMC_artyAmmo select 0;
PMC_Mortar_Rounds = 0;
PMC_Mortar_Rounds = PMC_artyAmmo select 1;
PMC_MLRS_Rounds = 0;
PMC_MLRS_Rounds = PMC_artyAmmo select 2;

saveVar "PMC_Artillery_Rounds";
saveVar "PMC_Mortar_Rounds";
saveVar "PMC_MLRS_Rounds";

// save the created units
saveVar "PMC_blufor";
saveVar "PMC_opfor";
saveVar "PMC_KilledNum";

// our team status
deleteStatus "racs1_1";
deleteStatus "racs1_2";
deleteStatus "racs1_3";
deleteStatus "racs1_4";
deleteStatus "racs1_5";
deleteStatus "racs1_6";
deleteStatus "racs1_7";
deleteStatus "racs1_8";
deleteStatus "racs1_9";
deleteStatus "racs1_10";
racs1 saveStatus "racs1_1";
r2 saveStatus "racs1_2";
r3 saveStatus "racs1_3";
r4 saveStatus "racs1_4";
r5 saveStatus "racs1_5";
r6 saveStatus "racs1_6";
r7 saveStatus "racs1_7";
r8 saveStatus "racs1_8";
r9 saveStatus "racs1_9";
r10 saveStatus "racs1_10";

// helos
helo1 saveStatus "helo1";
helo2 saveStatus "helo2";
helo3 saveStatus "helo3";
helo4 saveStatus "helo4";
helo5 saveStatus "helo5";

// vehicles
trk1 saveStatus "trk1";
trk2 saveStatus "trk2";
trk3 saveStatus "trk3";
trk4 saveStatus "trk4";
trk5 saveStatus "trk5";
trk6 saveStatus "trk6";
racsjeep1 saveStatus "racsjeep1";
racsjeep2 saveStatus "racsjeep2";
racsjeep3 saveStatus "racsjeep3";

_PMC_vehicle_array =
[
	helo1,
	helo2,
	helo3,
	helo4,
	helo5,
	trk1,
	trk2,
	trk3,
	trk4,
	trk5,
	trk6,
	racsjeep1,
	racsjeep2,
	racsjeep3,
	racsbox1,
	racsbox2,
	racsbox3
];
// pick the weapons from our vehicles, all of them.
// note that they are cleared for any weapons at init.sqf
{
	pickWeaponPool _x;
} forEach _PMC_vehicle_array;

// this is the time used in this mission.
// time = seconds. skiptime = hours.
PMC_AllTimeUsed = ( (PMC_AllTimeUsed + (3 + random 4)) + (time / 3600) );

saveVar "PMC_AllTimeUsed";

/*
creating the saveVar for objective markers
pole name "PMC_pole_<NUM>"
marker name "PMC_Objective_<NUM>"
*/
_a = 0;
while { _a < (count PMC_targets) } do
{
	_m = format ["PMC_Objective_%1", _a];
	_color = getMarkerColor _m;
	call compile format ["PMC_City_%1 = _color", _a];
	call compile format ["saveVar 'PMC_City_%1'", _a];
	_a = _a + 1;
};

// Resupply every 5 days
if ( PMC_AllTimeUsed > (PMC_LastResupplyTime + (PMC_ResupplyDays * 24)) ) then
{
	PMC_LastResupplyTime = (PMC_AllTimeUsed + (time / 3600));
	saveVar "PMC_LastResupplyTime";
	PMC_ResupplyDays = random 10;
	saveVar "PMC_ResupplyDays";

	[] execVM "PMC\PMC_weaponPool.sqf";

	PMC_Artillery_Rounds = PMC_Artillery_Rounds + 100;
	PMC_Mortar_Rounds = PMC_Mortar_Rounds + 200;
	PMC_MLRS_Rounds = PMC_MLRS_Rounds + 300;

	saveVar "PMC_Artillery_Rounds";
	saveVar "PMC_Mortar_Rounds";
	saveVar "PMC_MLRS_Rounds";

	// set vehicles to repaired condition
	{
		_x setDamage 0;
		_x setFuel 1;
		_x setVehicleAmmo 1;
	} forEach _PMC_vehicle_array;
};

if (pmcdb) then
{
	hintc "PMC_Mission_End.sqf exiting, NOW!";
};
