player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Clear compounds", "Clear <marker name='pmc_markertask1'>windmill compounds</marker> from enemy troops.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2", "Capture Eginio", "Clear <marker name='pmc_markertask2'>Eginio</marker> buildings.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>near Cap Makrinos</marker>, proceed to clear windmill compounds and Eginio."],
	["Credits", "Addons used: Community Upgrade Project (CUP).<br/>Campaign story, Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
