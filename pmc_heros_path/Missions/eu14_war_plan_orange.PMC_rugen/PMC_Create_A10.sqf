// this was originally one liner in trigger's activation field for crying out loud ;)
//a101 = ""CUP_B_A10_CAS_USA"" createvehicle getpos A10_start; a101 setpos [(getpos a101 select 0),(getpos a101 select 1),200]; a101 setvelocity [200,0,0]; ""CUP_B_USMC_Pilot"" createunit [getpos A10_start, leader assault1, ""p1 = this"", 1, ""MAJOR""]; [p1] join grpnull; a10killer=group p1; leader a10killer moveindriver a101; leader a10killer setcombatmode ""red""; leader a10killer setspeedmode ""full""; leader a10killer setbehaviour ""combat""; leader a10killer move getpos leader rustanks1; A10InFlight=true;

private ["_vcl", "_grp"];

_vcl = createVehicle ["CUP_B_A10_CAS_USA", (getPos A10_start), [], 0, "FLY"];

_grp = createGroup west;
waitUntil {!(isNull _grp)};

_grp createunit ["CUP_B_USMC_Pilot", getpos A10_start, [], 1, "FORM"];
leader _grp moveInDriver _vcl;
a10killer = _grp;

_grp setcombatmode "red";
_grp setspeedmode "full";
_grp setbehaviour "combat";
leader _grp move getPos leader rustanks1;

A10InFlight = true;
