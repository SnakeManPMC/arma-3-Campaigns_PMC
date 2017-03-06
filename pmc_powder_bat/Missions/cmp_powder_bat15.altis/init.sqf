player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Check compound", "Check <marker name='pmc_markertask1'>compound</marker> near main objective.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2", "Capture Therisa town", "Clear <marker name='pmc_markertask2'>Therisa town</marker> from enemy.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>AAC Airfield</marker>, today you get to capture your first town."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
