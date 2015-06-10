player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","Defend", "Enemy counter attack is on way, <marker name='pmc_markertask1'>defend</marker> this camp at all costs.", true, ["pmc_markertask1", getPosASL pmc_1]]
],[
	["Orders", "Defend your newly captured camp at all costs, don't let any enemies get through."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
