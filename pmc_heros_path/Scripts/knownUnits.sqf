/*knownUnits.sqf v1.1
By General Barron
aw_barron@hotmail.com
8/11/04

This returns a list of units detected by the passed unit. List can be sorted in order of closest to farthest. To call:
[detector, [units to detect from], sort? (true/false)] call knownUnits

Usage example: make a trigger, covering entire map, activation = once, "east present". On activation = "east_units = thisList"
Make another trigger. Condition = "count ([player, east_units, false] call knownUnits) > 0". On activation = "hint "enemy spotted" "
The hint will appear once the player detects one or more east units.
*/

private ["_unit","_list","_return","_numArray","_j","_k","_tempVal","_tempNum","_element","_count"];

_unit = _this select 0;
_list = _this select 1;
_return = [];

{if ((_unit knowsabout _x) > 0.105) then {_return = _return + [_x]}} foreach _list;

/*-----------------------------------------------------------------------------------
Start bubble sort (sort units from closest to farthest)
Code taken from sortBubble.sqf
By bn880 2/24/2003
(slightly modified to fit in this function)
-----------------------------------------------------------------------------------*/
if (_this select 2) then
{
	_count = count _return;
	_numArray = [];
	_numArray resize _count;

	// ACQUIRE NUMERIC VALUES FROM EVALUATION
	_j = 0;
	while {_j < _count} do 
	{
		_element = _return select _j;
		_numArray set [_j,_element distance _unit];
		_j = _j + 1;
	};

	_j = 0;
	// SORT
	while {_j < _count -1} do 
	{
		_k = _j + 1;
		while {_k < _count} do
		{
			if (_numArray select _j > _numArray select _k) then
			{
				_tempNum = _numArray select _j;
				_numArray set [_j,(_numArray select _k)];
				_numArray set [_k,_tempNum];
			
				_tempVal = _return select _j;
				_return set [_j,(_return select _k)];
				_return set [_k,_tempVal];
			};
			_k = _k + 1;
		};
		_j = _j + 1;
	};
};

_return