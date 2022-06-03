
/*
2022-06-03T17:29:00Z
0 = [this] execVM "PMC\PMC_DeleteVehicleGroupWaypoint.sqf";
*/
private _grp = _this select 0;

cleanUpveh = vehicle leader _grp;
{deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];
deleteGroup _grp;
