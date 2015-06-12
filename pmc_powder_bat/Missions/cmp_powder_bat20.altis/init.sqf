player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Clear buildings south", "Clear <marker name='pmc_markertask1'>buildings south</marker>.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2", "Clear buildings north", "Clear <marker name='pmc_markertask2'>buildings north</marker>.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>Stavros</marker>, on final act we assault and capture the airbase."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
