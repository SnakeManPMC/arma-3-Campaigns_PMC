
private["_pos", "_myObj", "_objName", "_markerName", "_taskDescription"];

_pos = _this select 0;
_myObj = _this select 1;
_objName = format["Objective %1", (_this select 2)];
_markerName = format["pmc_objmarker%1", (_this select 2)];
_taskDescription = format["<marker name='%1'>%2</marker>.", _markerName, _objName];
