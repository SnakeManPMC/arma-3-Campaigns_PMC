/*

	Long distance waypoint plotting.

*/

private
[
	"_ActStep",
	"_dX",
	"_dY",
	"_grp",
	"_lastWaypoint",
	"_lwp",
	"_posX",
	"_posY",
	"_SubSteps",
	"_targetpoint",
	"_Xend",
	"_Xstart",
	"_Yend",
	"_Ystart"
];

_grp = _this select 0;
_targetpoint = _this select 1;
// how many meters is the minimum needed to start plot waypoints
// 6km is roughly the decent amount, in desert terrain even this is short
// but more dense vegetated terrains it is cool amount.
_lwp = 6000;

// if we are too close to plot any waypoints, exit and return 0.
if (leader _grp distance _targetpoint < _lwp) exitWith
{
	_lastWaypoint = 0;
	_lastWaypoint
};

_Xend = _targetpoint select 0;
_Yend = _targetpoint select 1;
_Xstart = getPos leader _grp select 0;
_Ystart = getPos leader _grp select 1;

// umm this tries to make the substeps little less, 
// but still dynamic according to the distance to travel.
_SubSteps = (floor (leader _grp distance _targetpoint) / _lwp);

_dX = _Xend - _Xstart;
_dY = _Yend - _Ystart;
_ActStep = 0;
_posX = 0;
_posY = 0;

while { _ActStep < _SubSteps } do
{
	_ActStep = _ActStep + 1;
	_posX = _Xstart + (_dX * _ActStep / _SubSteps);
	_posY = _Ystart + (_dY * _ActStep / _SubSteps);
	_grp addWaypoint [[_posX, _posY], 0];
};

// return how many waypoints we did, which should be the 
// latest correct waypoint number?
_ActStep
