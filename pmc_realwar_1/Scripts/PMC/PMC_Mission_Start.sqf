/*

Mission start script, ran on every mission start, no need to put this stuff
into the init.sqf file on every mission dir.

*/
PMC_artyAmmo =
[
	PMC_Artillery_Rounds,
	PMC_Mortar_Rounds,
	PMC_MLRS_Rounds
];

// load our team status, weapons and health.
racs1 loadStatus "racs1_1";
r2 loadStatus "racs1_2";
r3 loadStatus "racs1_3";
r4 loadStatus "racs1_4";
r5 loadStatus "racs1_5";
r6 loadStatus "racs1_6";
r7 loadStatus "racs1_7";
r8 loadStatus "racs1_8";
r9 loadStatus "racs1_9";
r10 loadStatus "racs1_10";

{
	if (!alive _x) then
	{
		deleteVehicle _x;
	};
	_x setDamage 0;
} forEach units group racs1;

// other statuses
helo1 loadStatus "helo1";
helo2 loadStatus "helo2";
helo3 loadStatus "helo3";
helo4 loadStatus "helo4";
helo5 loadStatus "helo5";
trk1 loadStatus "trk1";
trk2 loadStatus "trk2";
trk3 loadStatus "trk3";
trk4 loadStatus "trk4";
trk5 loadStatus "trk5";
trk6 loadStatus "trk6";
racsjeep1 loadStatus "racsjeep1";
racsjeep2 loadStatus "racsjeep2";
racsjeep3 loadStatus "racsjeep3";

// clear default magazines from the vehicles
{
	clearWeaponCargo _x;
	clearMagazineCargo _x;
	if (!alive _x) then
	{
		deleteVehicle _x;
	};
} forEach
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

// this definitely need to be replaced with the correct date/time setup :(
skipTime PMC_AllTimeUsed;

/*
	move base
*/
"start" setMarkerPosLocal PMC_BaseLocationPos;
// repair trigger
RZoneA setPos _pos;

PMC_tent1 setPos [(PMC_BaseLocationPos select 0)+20, (PMC_BaseLocationPos select 1)+20];
PMC_flag setPos [(PMC_BaseLocationPos select 0)+15, (PMC_BaseLocationPos select 1)+15];
PMC_hospital setPos [(PMC_BaseLocationPos select 0)+10, (PMC_BaseLocationPos select 1)+10];
PMC_fire setPos [(PMC_BaseLocationPos select 0)+25, (PMC_BaseLocationPos select 1)+25];
racsbox1 setPos [(PMC_BaseLocationPos select 0)+15, (PMC_BaseLocationPos select 1)+25];
racsbox2 setPos [(PMC_BaseLocationPos select 0)+10, (PMC_BaseLocationPos select 1)+20];
racsbox3 setPos [(PMC_BaseLocationPos select 0)+5, (PMC_BaseLocationPos select 1)+35];
PMC_helipad1  setPos [(PMC_BaseLocationPos select 0)+50, (PMC_BaseLocationPos select 1)+50];
PMC_helipad2  setPos [(PMC_BaseLocationPos select 0)-50, (PMC_BaseLocationPos select 1)-50];

// players group to base
{
	_x setPos PMC_BaseLocationPos;
} forEach (units racs1);
{
	_x setPos [(PMC_BaseLocationPos select 0)+20,(PMC_BaseLocationPos select 1)];
} forEach (units racs2);
{
	_x setPos [(PMC_BaseLocationPos select 0)-20,(PMC_BaseLocationPos select 1)];
} forEach (units racs3);

// UH60's
helo1 setPos getPos PMC_helipad1;
helo2 setPos getPos PMC_helipad2;
// Littlebirds
helo3 setPos [(getPos PMC_helipad1 select 0)+50,(getPos PMC_helipad1 select 1)];
helo4 setPos [(getPos PMC_helipad2 select 0)+50,(getPos PMC_helipad2 select 1)+30];
helo5 setPos [(getPos PMC_helipad1 select 0)-50,(getPos PMC_helipad1 select 1)+50];
// 4x4's
racsjeep1 setPos [(PMC_BaseLocationPos select 0)+100, (PMC_BaseLocationPos select 1)+100];
racsjeep2 setPos [(getPos racsjeep1 select 0)-20, (getPos racsjeep1 select 1)+20];
racsjeep3 setPos [(getPos racsjeep1 select 0)+20, (getPos racsjeep1 select 1)-20];
// trucks, supply
trk1 setPos [(PMC_BaseLocationPos select 0)-100, (PMC_BaseLocationPos select 1)+50];
trk2 setPos [(getPos trk1 select 0)-20, (getPos trk1 select 1)];
trk3 setPos [(getPos trk1 select 0)+20, (getPos trk1 select 1)];
// trucks
trk4 setPos [(getPos trk1 select 0)+40, (getPos trk1 select 1)];
trk5 setPos [(getPos trk1 select 0)-40, (getPos trk1 select 1)];
trk6 setPos [(getPos trk1 select 0)+60, (getPos trk1 select 1)];

// some ugly stats debug style
hint format["Created units:\nBLUFOR: %1\nOPFOR: %2\nKilled Units: %3", PMC_blufor, PMC_opfor, PMC_KilledNum];
