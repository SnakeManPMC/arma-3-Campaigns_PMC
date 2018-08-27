player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","LZ Baldy", "Capture <marker name='pmc_markertask1'>LZ Baldy</marker> from enemy hands.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","Agia Marina", "Clear <marker name='pmc_markertask2'>Agia Marina</marker> of any AAF presence.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Kill farm</marker>, today you have a big objective ahead."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
