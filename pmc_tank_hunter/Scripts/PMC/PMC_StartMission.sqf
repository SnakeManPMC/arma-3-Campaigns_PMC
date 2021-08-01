
0 = [player, "PMC_WeatherForecast", nil, nil, ""] call BIS_fnc_addCommMenuItem;
0 = [player, "PMC_DebugTeleport", nil, nil, ""] call BIS_fnc_addCommMenuItem;
0 = [player, "PMC_DebugDisableCutscenes", nil, nil, ""] call BIS_fnc_addCommMenuItem;

// debug is ON, cutscenes off
PMC_debug = true;
PMC_MoviesOff = true;

if (PMC_debug) then
{
	diag_log format["PMC\PMC_StartMission.sqf executed at %1", time];
};

if (PMC_debug) then
{
	diag_log "PMC_StartMission: debug is on.";
	10 setradiomsg "Debug off";
}
else
{
	diag_log "PMC_StartMission: debug is off.";
	10 setradiomsg "Debug on";
};

PMC_sdg = 0;
// loop waiting time for PMC\PMC_moving.sqf
PMC_MLP = 5;
// not used?
//PMC_WLoopDelay = 10;
PMC_BodyCount = 0;
PMC_WinKills = 900;

// these two are setup in PMC_war.sqf also, why?
eastguys = 0;
westguys = 0;

PMC_groups = [];
// mission editor groups
PMC_groups = PMC_groups + [ rusinf1, usinf1 ];

PMC_targets = [ pole1, pole2, pole3, pole4, pole5, pole6, pole7, pole8, pole9, pole10 ];
West_ControList = [0,0,0,0,0,0,0,0,0,0];
West_AssignList = [0,0,0,0,0,0,0,0,0,0];
East_ControList = [0,0,0,0,0,0,0,0,0,0];
East_AssignList = [0,0,0,0,0,0,0,0,0,0];

{
	_x setmarkersize [100, 100];
} forEach [ "pmc1", "pmc2", "pmc3", "pmc4", "pmc5", "pmc6", "pmc7", "pmc8", "pmc9", "pmc10" ];

if (isNil 'PMC_AllTimeUsed') then
{
	PMC_AllTimeUsed = 0;
};

// adjust the time of day
skipTime PMC_AllTimeUsed;
//skiptime (((paramsarray select 0) - daytime + 24) % 24);
//cutText [startText, "BLACK IN",3];

[] execVM "PMC\PMC_Vehicle_Arrays.sqf";
[] execVM "PMC\PMC_HomeBaseSetup.sqf";
[] execVM "PMC\PMC_RollCall.sqf";
/* disabled as its just not ported properly yet 2021-08-01
[] execVM "PMC\PMC_GarageSetup.sqf";
*/
// new city occupation colors

"pmc1" setMarkerColor PMC_City01;
["pmc1"] execVM "PMC\PMC_add_defenses.sqf";
"pmc2" setMarkerColor PMC_City02;
["pmc2"] execVM "PMC\PMC_add_defenses.sqf";
"pmc3" setMarkerColor PMC_City03;
["pmc3"] execVM "PMC\PMC_add_defenses.sqf";
"pmc4" setMarkerColor PMC_City04;
["pmc4"] execVM "PMC\PMC_add_defenses.sqf";
"pmc5" setMarkerColor PMC_City05;
["pmc5"] execVM "PMC\PMC_add_defenses.sqf";
"pmc6" setMarkerColor PMC_City06;
["pmc6"] execVM "PMC\PMC_add_defenses.sqf";
"pmc7" setMarkerColor PMC_City07;
["pmc7"] execVM "PMC\PMC_add_defenses.sqf";
"pmc8" setMarkerColor PMC_City08;
["pmc8"] execVM "PMC\PMC_add_defenses.sqf";
"pmc9" setMarkerColor PMC_City09;
["pmc9"] execVM "PMC\PMC_add_defenses.sqf";
"pmc10" setMarkerColor PMC_City10;
["pmc10"] execVM "PMC\PMC_add_defenses.sqf";

sleep 5;
if (PMC_debug) then
{
	diag_log "PMC_StartMission starting to execute final scripts like PMC_war etc...";
};
// war scripts + weather
[] execVM "PMC\PMC_add-civcars.sqf";
[] execVM "PMC\PMC_war.sqf";
[] execVM "PMC\PMC_moving.sqf";
[1.1] execVM "PMC\PMC_weather_SP.sqf";

if (PMC_debug) then
{
	diag_log format["PMC\PMC_StartMission.sqf finished at %1", time];
};
