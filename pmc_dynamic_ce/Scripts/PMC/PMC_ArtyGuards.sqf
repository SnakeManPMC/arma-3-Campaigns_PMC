
private _grp = _this select 0;
private _arty = _this select 1;

[_grp, 0] setwpPos [(getpos _arty select 0)-100,(getpos _arty select 1)];
[_grp, 1] setwpPos [(getpos _arty select 0)+100,(getpos _arty select 1)];
[_grp, 2] setwpPos [(getpos _arty select 0)+100,(getpos _arty select 1)+100];
[_grp, 3] setwpPos [(getpos _arty select 0)-100,(getpos _arty select 1)];

{
	_x setpos [(getpos _arty select 0)-100, (getpos _arty select 1)];
} forEach units _grp;
