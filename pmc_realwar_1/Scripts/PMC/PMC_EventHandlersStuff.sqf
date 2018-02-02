
PMC_EventHandlersStuff =
{
	// default killed body removal script
	{
		_x addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	} forEach units _grp;

	// vehicle removal script also
	if (!isNull _vcl) then
	{
		_vcl addEventHandler ["killed", {handle = _this execVM "PMC\PMC_killed.sqf"}];
	};
};
