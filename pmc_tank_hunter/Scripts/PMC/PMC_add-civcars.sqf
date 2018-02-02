/*

add civilian cars to the cities found from PMC_targets array.

*/

private
[
	"_a",
	"_t",
	"_r1",
	"_car",
	"_cc",
	"_pos",
	"_civcars"
];

_a = 0;
_t = count PMC_targets;

_civcars = [ "CUP_C_Skoda_Red_CIV", "CUP_C_Skoda_White_CIV", "C_Truck_02_Transport_f", "CUP_C_Skoda_Blue_CIV", "CUP_B_M1030", "CUP_C_Skoda_White_CIV", "CUP_C_Skoda_Blue_CIV", "CUP_C_Skoda_Green_CIV", "CUP_C_Skoda_Red_CIV", "CUP_B_TowingTractor_USMC", "CUP_C_V3S_Open_TKC" ];

while { _a < _t } do
{
	_r1 = floor random (count _civcars);
	_cc = _civcars select _r1;
	
	_pos = getPosASL (PMC_targets select _a);
	_pos = [(_pos select 0)-50 + random 100, (_pos select 1)-50 + random 100];

	_car = _cc createVehicle _pos;
	_car setDir random 360;
	_a = _a + 1;
};
