player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","Structures", "Check and clear <marker name='pmc_markertask1'>structures</marker> so no enemies are left behind lurking.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","Kamino Area", "Assault <marker name='pmc_markertask2'>Kamino</marker> and clear the whole area.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Radio masts</marker>, time to take Kamino."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
