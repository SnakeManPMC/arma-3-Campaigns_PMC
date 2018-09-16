
private _pos = _this select 0;
private _m = _this select 1;

vehicle (units _m select 0) setpos [(_pos select 0),(_pos select 1)];
vehicle (units _m select 1) setpos [(_pos select 0)+20,(_pos select 1)];
vehicle (units _m select 2) setpos [(_pos select 0)-20,(_pos select 1)+20];
vehicle (units _m select 3) setpos [(_pos select 0)+40,(_pos select 1)+20];

if (count units _m == 4) exitWith{};

vehicle (units _m select 4) setpos [(_pos select 0)+60,(_pos select 1)+20];
vehicle (units _m select 5) setpos [(_pos select 0)+80,(_pos select 1)+40];

PAPABEAR sideChat "Your artillery units have now been relocated.";
