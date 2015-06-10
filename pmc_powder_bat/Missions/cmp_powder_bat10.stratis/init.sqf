player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","Command Compound", "Clear <marker name='pmc_markertask1'>command compound</marker> in north east.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","Hangars", "Clear <marker name='pmc_markertask2'>hangars</marker> in south west.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Agia Marina</marker>, this mission means end of our combat operations in Stratis."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
