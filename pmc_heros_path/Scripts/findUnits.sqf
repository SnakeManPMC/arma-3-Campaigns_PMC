/*findUnits.sqf v1.1
By General Barron
aw_barron@hotmail.com
8/11/04

This script returns an array of all units within a specified distance
of another unit that are in the passed array. The result can be sorted 
in acsending order of distance to the calling unit. Will never return the 
unit originally passed to the function. To call:

[unit, range, [unit array], sort? (true/false)] call findUnits

Usage example: make a trigger, covering entire map, activation = once, "east present". On activation = "east_units = thisList"
Make another trigger. Condition = "count ([player, 50, east_units, false] call findUnits) > 0". On activation = "hint "the enemy is near" "
The hint will appear once the player comes within 50 meters of an east unit.
*/

private ["_unit","_range","_list","_found","_numArray","_j","_k","_tempVal","_tempNum","_element","_count"];

_unit = _this select 0; 
_range = _this select 1; 
_list = _this select 2;
_found = [];

{if (_x distance _unit <= _range && _x != _unit) then {_found = _found + [_x]}} foreach _list;

/*-----------------------------------------------------------------------------------
Start bubble sort (sort units from closest to farthest)
Code taken from sortBubble.sqf
By bn880 2/24/2003
(slightly modified to fit in this function)
-----------------------------------------------------------------------------------*/
if (_this select 3) then
{
	_count = count _found;
	_numArray = [];
	_numArray resize _count;

	// ACQUIRE NUMERIC VALUES FROM EVALUATION
	_j = 0;
	while {_j < _count} do 
	{
		_element = _found select _j;
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
			
				_tempVal = _found select _j;
				_found set [_j,(_found select _k)];
				_found set [_k,_tempVal];
			};
			_k = _k + 1;
		};
		_j = _j + 1;
	};
};

_found