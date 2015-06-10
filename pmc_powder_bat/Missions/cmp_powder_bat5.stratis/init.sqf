player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","Camp Tempest", "Attack and capture <marker name='pmc_markertask1'>Camp Tempest</marker>.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","Air Station Mike-26", "Clear <marker name='pmc_markertask2'>Air Station Mike-26</marker> from any enemies.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Camp Maxwell</marker>, clear the two objectives to accomplish your mission."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
