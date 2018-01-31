// Gordon is radioed back to base
leader assault2 sideRadio "Rassault";

// cancel the current task
PMC_objective0 setTaskState "CANCELED";
[objNull, objNull, PMC_objective0, "CANCELED"] execVM "CA\Modules\MP\data\scriptCommands\taskHint.sqf";

// small wait so the tasks arent flooded to players
sleep 5;

// create one task and set it as current
PMC_objective1 = player createSimpleTask ["Get back to base"];
PMC_objective1 setSimpleTaskDescription ["Get back to base", "Get back to base", "Get back to base"];
PMC_objective1 setSimpleTaskDestination (getMarkerPos "usbase");
player setCurrentTask PMC_objective1;
