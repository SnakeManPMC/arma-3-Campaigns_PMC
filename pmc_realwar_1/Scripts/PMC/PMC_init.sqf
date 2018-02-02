/*

	Main Real War 1 launching script

*/
private
[
	"_tmp"
];

// debug on
pmcdb = true;
publicVariable "pmcdb";
pmc_opfor = 0;
pmc_blufor = 0;

// debugger
if (pmcdb) then
{
	player addAction ["Sitrep (Debug)", "PMC\PMC_sitrep.sqf"];
};

// just for possible MP, does not hurt SP play in any way.
// if we run this on client, exit immediately.
if (!isServer) exitWith{};

// create arrays full of units and vehicles
[] execVM "PMC\PMC_unit_arrays.sqf";

call compile preProcessFileLineNumbers "PMC\PMC_SelectStartPosit.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeTankBLUFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeTankBLUFORHeavy.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeTankBLUFOR2.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeGuardInfBLUFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakePatrolInfBLUFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeSniperBLUFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeSpecOpsBLUFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeVehPatrolBLUFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeHeloBLUFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeAircraftBLUFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_CreateBLUFORHQstuff.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_DoTrigger.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_EventHandlersStuff.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeTankOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeTankOPFORHeavy.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeTankOPFOR2.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeGuardInfOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakePatrolInfOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeSniperOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeSpecOpsOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeVehPatrolOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeHeloOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_MakeAircraftOPFOR.sqf";
call compile preProcessFileLineNumbers "PMC\PMC_CreateOPFORHQstuff.sqf";
// these are not used yet
//call compile preProcessFileLineNumbers "PMC\PMC_MakeArtillerySiteBLUFOR.sqf";
//call compile preProcessFileLineNumbers "PMC\PMC_MakeSupportBLUFOR.sqf";
//call compile preProcessFileLineNumbers "PMC\PMC_MakeArtillerySiteOPFOR.sqf";
//call compile preProcessFileLineNumbers "PMC\PMC_MakeSupportOPFOR.sqf";

// corpse deletion with set limit
PMC_corpses = [];
[150] execVM "PMC\PMC_corpses.sqf";
// bit debug here :)
publicVariable "PMC_killedNum";
// created blufor units
publicVariable "PMC_blufor";
// created opfor units
publicVariable "PMC_opfor";

// start weather
[] execVM "PMC\PMC_weather.sqf";

// create target array
_tmp = [] execVM "PMC\PMC_targets.sqf";
waitUntil {scriptDone _tmp};

// extra objectives for ALL gamelogics
_tmp = [500, 60] execVM "PMC\PMC_objectivesALL.sqf";

/*
please note that additional MISSION SPECIFIC objectives are ran from
each missions init.sqf file!
specifically PMC\PMC_objectives.sqf has been moved to mission dir init.sqf file.
*/

// start our war on both sides

// start opfor basic forces
_tmp = [] execVM "PMC\PMC_war_OPFOR.sqf";
waitUntil {scriptDone _tmp};
// run opfor convoy script
[] execVM "PMC\PMC_OPFOR_convoy.sqf";
if (pmcdb) then
{
	player sideChat "OPFOR unit generation done and convoy script launched.";
};

// run the neverending opfor war loop
// put this back on if it doesn't work; sleep 5;
[] execVM "PMC\PMC_war_OPFOR_loop.sqf";
if (pmcdb) then
{
	player sideChat "OPFOR loop launched! exiting from PMC_war_OPFOR.sqf, thank you!";
};

// start blufor basic forces
_tmp = [] execVM "PMC\PMC_war_BLUFOR.sqf";
waitUntil {scriptDone _tmp};
// run the blufor convoy script
[] execVM "PMC\PMC_BLUFOR_convoy.sqf";
if (pmcdb) then
{
	player sideChat "BLUFOR unit generation done and convoy script launched.";
};

// run the neverending blufor war loop
// put this back on if it doesn't work; sleep 5;
[] execVM "PMC\PMC_war_BLUFOR_loop.sqf";
if (pmcdb) then
{
	player sideChat "BLUFOR loop launched! exiting from PMC_war_BLUFOR.sqf, thank you!";
};

// create some objectives which are written into briefing.html
//_tmp = [] execVM "PMC\PMC_objectives.sqf";
//waitUntil {scriptDone _tmp};

// extra objectives for ALL gamelogics
//_tmp = [500, 60] execVM "PMC\PMC_objectivesALL.sqf";

// raport some weather forecast on side channel
sleep 30;
[] call compile preprocessFileLineNumbers "PMC\PMC_weatherForecast.sqf";
