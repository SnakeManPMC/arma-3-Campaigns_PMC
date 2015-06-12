player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Sweep outpost", "Sweep military <marker name='pmc_markertask1'>outpost</marker> for any lurking enemies.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2", "Capture Stavros", "Capture <marker name='pmc_markertask2'>Stavros</marker> town from the enemy.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Neochori</marker>, proceed to sweep and clear."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
