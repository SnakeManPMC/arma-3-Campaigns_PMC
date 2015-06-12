player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Capture AAC Airfield", "Capture <marker name='pmc_markertask1'>AAC Airfield</marker>, simple.", true, ["pmc_markertask1", getPosASL pmc_1]]
],[
	["Orders", "You start from <marker name='start'>Vikos</marker>, with only one task, capture that damned airfield."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
