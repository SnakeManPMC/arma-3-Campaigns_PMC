player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","obj1", "<marker name='pmc_markertask1'>obj1</marker>.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","obj2", "<marker name='pmc_markertask2'>obj2</marker>.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", " Your <marker name='start'>insert</marker> position is on the beach. Proceed to eliminate the two assigned objectives."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
