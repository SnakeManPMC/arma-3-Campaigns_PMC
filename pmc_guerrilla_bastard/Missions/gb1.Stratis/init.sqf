[] execVM "PMC\PMC_LoadOnEveryMission.sqf";

[[
//	["PMC_objective1","obj1", "<marker name='pmc_markertask1'>obj1</marker>.", true, ["pmc_markertask1", getPosASL pmc_1]],
//	["PMC_objective2","obj2", "<marker name='pmc_markertask2'>obj2</marker>.", true, ["pmc_markertask2", getPosASL pmc_2]]
],[
	["Orders", "Your <marker name='start'>start</marker>"],
	["Credits", "Addons used: CUP.<br/>Mission design, scripts: Snake Man, PMC."]
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";

PMC_loc = call compile preprocessFileLineNumbers "PMC\PMC_locationFinder_test.sqf";

// put player randomly to some position on class names list :)
//_newPos = [(PMC_loc select floor random (count PMC_loc)), 0, 500, 5, 0, 20, 0] call BIS_fnc_findSafePos;
//player setPos _newPos;

[] execVM "PMC\PMC_Create_Sides.sqf";

sleep 1;

[] execVM "PMC_Create_Bad_Guys.sqf";
