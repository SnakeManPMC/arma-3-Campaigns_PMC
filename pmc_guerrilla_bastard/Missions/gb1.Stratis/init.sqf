player setVariable ["BIS_enableRandomization", false];
player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

private["_ok"];
_ok = player loadStatus "pmc_player";
diag_log format["PMC player status: %1", _ok];

[[
//	["PMC_objective1","obj1", "<marker name='pmc_markertask1'>obj1</marker>.", true, ["pmc_markertask1", getPosASL pmc_1]],
//	["PMC_objective2","obj2", "<marker name='pmc_markertask2'>obj2</marker>.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "Your <marker name='start'>start</marker>"],
	["Credits", "Addons used: RHS.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
