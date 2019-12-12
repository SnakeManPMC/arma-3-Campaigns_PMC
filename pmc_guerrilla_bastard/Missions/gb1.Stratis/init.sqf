
[] execVM "PMC\PMC_Briefing.sqf";
[] execVM "PMC\PMC_Tasks.sqf";
[] execVM "PMC\PMC_LoadOnEveryMission.sqf";

PMC_loc = call compile preprocessFileLineNumbers "PMC\PMC_locationFinder_test.sqf";

// put player randomly to some position on class names list :)
//_newPos = [(PMC_loc select floor random (count PMC_loc)), 0, 500, 5, 0, 20, 0] call BIS_fnc_findSafePos;
//player setPos _newPos;

[] execVM "PMC\PMC_Create_Sides.sqf";

sleep 1;

[] execVM "PMC_Create_Bad_Guys.sqf";
