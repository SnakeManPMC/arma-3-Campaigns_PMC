
// destroys the base back wall
sleep 3;

private _bomb1 = "CUP_Sh_OG9_HE";
private _wallPos = getPos bo2;

for "_i" from 1 to 6 do
{
	_bomb1 createVehicleLocal _wallPos;
	sleep 0.4;
};
