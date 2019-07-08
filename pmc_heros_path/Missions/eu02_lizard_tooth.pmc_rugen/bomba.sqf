
// destroys the base back wall

private _bomb1 = "CUP_Sh_UBK367_HEAT";
private _wallPos = getPos bo2;

for "_i" from 1 to 6 do
{
	_bomb1 createVehicleLocal _wallPos;
	sleep .1;
};
