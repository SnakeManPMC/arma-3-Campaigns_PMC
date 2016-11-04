
private["_pos", "_myObj", "_objName", "_markerName", "_taskDescription"];

_pos = _this select 0;
_myObj = _this select 1;
_objName = format["Objective %1", (_this select 2)];
_markerName = format["pmc_objmarker%1", (_this select 2)];
_taskDescription = format["<marker name='%1'>%2</marker>.", _markerName, _objName];

// debug
/*
diag_log "PMC_Create_Single_Task, _taskDescription:";
diag_log format["%1", _taskDescription];
diag_log "_markerName:";
diag_log format["%1", _markerName];
*/
[[
	[_myObj, _objName, _taskDescription, true, [_markerName, _pos]]
],[
]] call compile preprocessFileLineNumbers "PMC\shk_taskmaster.sqf";
