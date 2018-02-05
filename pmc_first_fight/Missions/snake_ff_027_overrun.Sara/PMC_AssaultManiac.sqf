/*

	Runs to all mission editor groups, to set allowfleeing and killed script.

*/

private [
	"_grp"
];

// name of the group
_grp = _this select 0;

{
	_x allowFleeing 0;
} forEach units _grp;
