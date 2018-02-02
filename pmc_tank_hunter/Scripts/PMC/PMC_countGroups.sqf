
private ["_groups","_list"];

_list = _this select 0;

_groups = [];
{
	if (!(group _x in _groups)) then
	{
		_groups = _groups + [group _x];
	};
} ForEach _list;

count _groups;
