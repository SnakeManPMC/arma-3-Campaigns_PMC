player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Clear compounds", "Clear <marker name='pmc_markertask1'>compounds in this area</marker>, make sure all compounds are cleared.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2", "Assault Sfaka", "Assault and capture <marker name='pmc_markertask2'>Sfaka</marker> compounds which we believe holds enemy southern HQ.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Eginio</marker>, today you got enemy southern HQ waiting."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
