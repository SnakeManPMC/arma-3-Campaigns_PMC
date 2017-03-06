player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","Strognos Bay Area", "Pass through and clear <marker name='pmc_markertask1'>Srognos Bay area</marker> for any enemies.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","Clear Girna", "Assault and clear <marker name='pmc_markertask2'>Girna</marker> town.", true, ["pmc_markertask2", getPosASL pmc_2]],
	["PMC_objective3","Return to Maxwell", "Return to <marker name='pmc_markertask3'>Camp Maxwell</marker> to accomplish your mission.", true, ["pmc_markertask3", getPosASL pmc_3]]
],[
	["Orders", "You start from <marker name='start'>The Sparta</marker>. Sweep and clear, thats your objective today. When you're done, return to <marker name='maxwell'>Camp Maxwell</marker> for much needed rest."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
