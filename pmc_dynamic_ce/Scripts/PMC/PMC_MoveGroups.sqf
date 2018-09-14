
// give some delay if that helps the dupe sendgroups?
sleep 0.1;

private _A = 0;

while {true} do
{
	waitUntil
	{
		sleep 1;
		(count PMC_groups > 0);
	};

	private _pmcCheck = true;
		
	if (!alive leader (PMC_groups select _A)) then
	{
		PMC_groups = PMC_groups - [(PMC_groups select _A)];
		_A = 0;
		_pmcCheck = false;
	};
/*	
	if (pmcdb == 1) then
	{
		player sidechat format
		[
			"PMC_groups %1: %2. ldr Ready: %3, units: %4. side: %5",
			_A,
			(PMC_groups select _A),
			(unitready leader (PMC_groups select _A)),
			(count units (PMC_groups select _A)),
			side (PMC_groups select _A)
		];
	};
*/
	//if (pmcdb==1) then { hint format["%1\n\nnum of groups: %2\n\n_A: %3",PMC_groups,count PMC_groups,_A]; };
	
	if (_pmcCheck) then
	{
		private _dude1 = PMC_groups select _A;
		
		if (unitready leader _dude1 && side leader _dude1 == west) then
		{
			[_dude1] exec "sendgroup-west.sqs";
			_A = 0;
			_pmcCheck = false;
		};
	};

	if (_pmcCheck) then
	{
		if (unitready leader _dude1 && side leader _dude1 == east) then
		{
			[_dude1] exec "sendgroup-east.sqs";
			_A = 0;
			_pmcCheck = false;
		};
	};
	
	_A = _A + 1;
	if (_A >= count PMC_groups) then
	{
		private _tmpt = PMC_MLP + random 5;
		if (pmcdb == 1) then
		{
			player sidechat format["waiting for %1 secs as we have 0 PMC_groups available", _tmpt];
		};
		_A = 0;
		sleep _tmpt;
	};
};
