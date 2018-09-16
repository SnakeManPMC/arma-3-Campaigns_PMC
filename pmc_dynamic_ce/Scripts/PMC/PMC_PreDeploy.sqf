
sleep 1;
private _triggerlist = list mortarpits + [mortar2, mortar3, mortar4];
private _unitposarray = [];

private _centerpos = getpos mortarpits;
private _centerx = _centerpos select 0;
private _centery = _centerpos select 1;

private _targetpos = getpos MortarLeader;
private _targetx = _targetpos select 0;
private _targety = _targetpos select 1;

private _i = 0;

while { (_i < count _triggerlist) } do
{
	private _object = _triggerlist select _i;
	private _objectpos = getpos _object;
	private _objectx = _objectpos select 0;
	private _objecty = _objectpos select 1;
	private _relx = _objectx - _centerx;
	private _rely = _objecty - _centery;
	private _unitpos = [_relx, _rely];
	_unitposarray = _unitposarray + [_unitpos];
	
	_i =_i + 1;
};

_i = 0;

while { (_i < count _triggerlist) } do
{
	_object = _triggerlist select _i;
	_unitpos = _unitposarray select _i;
	_relx = _unitpos select 0;
	_rely = _unitpos select 1;
	_objectx = _targetx + _relx;
	_objecty = _targety + _rely;
	
	_object setpos [_objectx, _objecty, 0];
	_i = _i + 1;
};
