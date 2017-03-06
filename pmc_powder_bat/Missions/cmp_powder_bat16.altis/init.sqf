player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Capture Zaros South", "Capture <marker name='pmc_markertask1'>Zaros South</marker> area.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2", "Capture Zaros North", "Capture <marker name='pmc_markertask2'>Zaros North</marker> area.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Therisa</marker>, proceed on your assault to Zaros."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
