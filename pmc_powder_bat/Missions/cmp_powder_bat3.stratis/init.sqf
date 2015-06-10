player setVariable ["BIS_noCoreConversations", true];
[] execVM "PMC\PMC_weather.sqf";

// setup briefing
[[
	["PMC_objective1","LZ Connor", "Assault <marker name='pmc_markertask1'>LZ Conno</marker> and neutralize all enemies.", true, ["pmc_markertask1", getPosASL pmc_1]],
	["PMC_objective2","The Spartan", "Sweep and clear <marker name='pmc_markertask2'>The Spartan</marker> area of any AAF troops.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "Your start from <marker name='start'>Camp Maxwell</marker>. Proceed to eliminate the two assigned objectives."],
	["Credits", "Addons used: None.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

/*
	reference

for opfor dead trigger add:
["PMC_objective1", "succeeded"] call SHK_Taskmaster_Upd;

*/
