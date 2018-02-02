
private ["_tmpt", "_dude1"];

// experiment with faster waituntil
//_tmpt = (PMC_MLP + random 5);
_tmpt = 0.3;

while {true} do
{
	// until we have some groups to handle
	waitUntil
	{
		/* this is too heavy for 0.3sec debug :)
		if (PMC_debug) then
		{
			player sidechat format["waiting for %1 secs as we have 0 PMC_groups available", _tmpt];
			diag_log format["PMC_moving: waiting for %1 secs as we have 0 PMC_groups available", _tmpt];
		};
		*/
		sleep _tmpt;
		(count PMC_groups > 0);
	};

	// group is dead, remove it.
	if (!alive leader (PMC_groups select 0)) then
	{
		PMC_groups = PMC_groups - [(PMC_groups select 0)];
	};

	if (PMC_debug) then
	{
		player sidechat format
		[
			"%1, PMC_groups %2: %3, ldr Ready: %4, units: %5, side: %6, veh: %7",
			time,
			0,
			(PMC_groups select 0),
			(unitready leader (PMC_groups select 0)),
			(count units (PMC_groups select 0)),
			side (PMC_groups select 0),
			typeOf (vehicle leader (PMC_groups select 0))
		];

		diag_log format
		[
			"%1, PMC_groups %2: %3, ldr Ready: %4, units: %5, side: %6, veh: %7",
			time,
			0,
			(PMC_groups select 0),
			(unitready leader (PMC_groups select 0)),
			(count units (PMC_groups select 0)),
			side (PMC_groups select 0),
			typeOf (vehicle leader (PMC_groups select 0))
		];
	};

	_dude1 = PMC_groups select 0;

	// before
	//if (unitready leader _dude1 && side leader _dude1 == WEST) then
	if (side leader _dude1 == WEST) then
	{
		[_dude1] execVM "PMC\PMC_sendgroup_west.sqf";
		//diag_log format["PMC_sendgroup_west: _dude1: %1, West_ControList: %2, West_AssignList: %3", _dude1, West_ControList, West_AssignList];
	};

	// before
	//if (unitready leader _dude1 && side leader _dude1 == EAST) then
	if (side leader _dude1 == EAST) then
	{
		[_dude1] execVM "PMC\PMC_sendgroup_east.sqf";
		//diag_log format["PMC_sendgroup_east: _dude1: %1, East_ControList: %2 East_AssignList: %3", _dude1, East_ControList, East_AssignList];
	};

	// not sure if this is necessary, but maybe if pmc_sendgroup is not fast enough...
	sleep 0.3;
};
