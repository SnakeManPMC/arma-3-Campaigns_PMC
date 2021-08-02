player setVariable ["BIS_enableRandomization", false];
player setVariable ["BIS_noCoreConversations", true];
[1.1] execVM "PMC\PMC_weather_SP.sqf";

private["_ok"];
// his health status, weapons and gear
_ok = player loadStatus "pmc_player";
diag_log format["PMC_LoadOnEveryMission; PMC player status: %1", _ok];

// his position on map, lets add it to whole squad
{
	_x setPosASL pmc_posPlayer;
} forEach units group player;
