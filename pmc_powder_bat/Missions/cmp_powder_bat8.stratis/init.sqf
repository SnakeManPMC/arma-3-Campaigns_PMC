player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","Camp Rogain", "Capture <marker name='pmc_markertask1'>Camp Rogain</marker>.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","Kill Farm", "Clear <marker name='pmc_markertask2'>Kill Farm</marker> from any tangos.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Kamino</marker>, proceed to clear the two assignmed objectives."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
