player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Capture Poliakko", "Capture <marker name='pmc_markertask1'>Poliakko</marker> town.", true, ["pmc_markertask1", getPosASL pmc_1]]
],[
	["Orders", "You start from <marker name='start'>Zaros</marker>, board the incoming helo in the football field and then proceed to capture Poliakko."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
