player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Hilltop compound", "Clear <marker name='pmc_markertask1'>hilltop compound</marker> from enemy presence.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2", "Capture Vikos", "Capture <marker name='pmc_markertask2'>Vikos</marker> and the surrounding buildings.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Sfaka</marker>, north side of it."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
