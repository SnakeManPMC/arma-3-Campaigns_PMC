player setVariable ["BIS_enableRandomization", false];
player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

private["_ok"];
// his health status, weapons and gear
_ok = player loadStatus "pmc_player";
diag_log format["PMC player status: %1", _ok];

// his position on map, lets add it to whole squad
{
	_x setPosASL pmc_posPlayer;
} forEach units group player;
