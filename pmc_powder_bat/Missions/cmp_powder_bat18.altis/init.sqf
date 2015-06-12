player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

[[
	["PMC_objective1", "Clear Katalaki", "Clear <marker name='pmc_markertask1'>Katalaki</marker> town.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2", "Capture Neochori", "Capture <marker name='pmc_markertask2'>Neochori</marker> city.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "You start from <marker name='start'>outskirts of Poliakko</marker>, today you capture two objectives, street by street."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
