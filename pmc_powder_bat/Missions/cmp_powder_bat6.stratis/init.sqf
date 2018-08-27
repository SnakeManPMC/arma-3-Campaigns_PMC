player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","Old Outpost", "Clear <marker name='pmc_markertask1'>old outpost</marker> any enemies you'll find.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","Structures", "Sweep and clear <marker name='pmc_markertask2'>structures</marker> towards north east.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Air Station Mike-26</marker>, some buildings for you to clear today."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
