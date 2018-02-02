
/*
balls are sweating

plot waypoints by Snake Man & Zeneth

give this script a
[groupname,destination object] exec "huh?.sqf";
*/

//#BigMotherFuckerMovingShit

private
[
	"_ActStep",
	"_dX",
	"_dY",
	"_group",
	"_posX",
	"_posY",
	"_SubSteps",
	"_targetP",
	"_Xend",
	"_Xstart",
	"_Yend",
	"_Ystart"
];

_targetP = _this select 0;
_group = _this select 1;

_Xend = getPosASL _targetP select 0;
_Yend = getPosASL _targetP select 1;
_Xstart = getPosASL leader _group select 0;
_Ystart = getPosASL leader _group select 1;
_dX = _Xend - _Xstart;
_dY = _Yend - _Ystart;
_SubSteps = 10;
_ActStep = 1;
_posX = 0;
_posY = 0;

//#WPLoop
while { _ActStep < _SubSteps } do
{
	_posX = _Xstart + (_dX * _ActStep / _SubSteps);
	_posY = _Ystart + (_dY * _ActStep / _SubSteps);

	leader _group move [_posX, _posY];

	if (PMC_debug) then
	{
		leader _group sidechat format
		[
			"Moving out... _ActStep: %1. Posit: %2, _group: %3",
			_ActStep,
			getPosASL leader _group,
			_group
		];

		diag_log format
		[
			"Moving out... _ActStep: %1. Posit: %2, _group: %3",
			_ActStep,
			getPosASL leader _group,
			_group
		];
	};

	waitUntil
	{
		sleep 2;
		(unitready leader _group || !alive leader _group);
	};

	/*
	if the group is DEAD, we just hack the _SubSteps as done so we can exit this thing.
	yes we could do exitWith, but its been reported on ArmA 2 v1.59.83363 that there
	is some SCOPE problems with exitWith, it doesn't always exit properly from the scope.
	*/
	if (!alive leader _group) then
	{
		_ActStep = _SubSteps;
	};

	_ActStep = _ActStep + 1;
};

if (alive leader _group) then
{
	leader _group move getPosASL _targetP;

	if (PMC_debug) then
	{
		leader _group sidechat format
		[
			"PMC_plotWaypoints_Manual.sqf script ended, target reached. thank you. _ActStep: %1, leader _group dist _targetP: %2",
			_ActStep,
			leader _group distance _targetP
		];
	};
};

// plotting has completely ended, return our command to the fight part of this script
