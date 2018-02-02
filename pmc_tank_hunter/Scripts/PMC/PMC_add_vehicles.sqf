
private [ "_A", "_t", "_p", "_r1", "_puh", "_city" ];

_A = 0;
_t = [];

while { _A < 10 } do
{
	_A = _A + 1;
	_p = format["pmc%1", _A];
	if (getMarkerColor _p == "ColorRed") then
	{
		_t = _t + [ _p ];
	};
};

// randomly select one of the red cities.
if ( (count _t) == 0 ) then
{
	_city = getMarkerPos "pmc1"
}
else
{
	_r1 = floor (random count _t);
	_puh = _t select _r1;
	
	_city = getMarkerPos _puh;
};

"CUP_B_HMMWV_Unarmed_USMC" createVehicle _city;
"CUP_B_HMMWV_Unarmed_USMC" createVehicle _city;
"CUP_B_HMMWV_Unarmed_USMC" createVehicle _city;
"CUP_B_MTVR_USMC" createVehicle _city;
"CUP_B_MTVR_Ammo_USMC" createVehicle _city;
"CUP_B_AH6J_MP_USA" createVehicle _city;
"CUP_B_AH6J_MP_USA" createVehicle _city;
"CUP_B_UH60M_US" createVehicle _city;
"CUP_B_CH47F_USA" createVehicle _city;

"target1" setMarkerPos _city;
"target1" setMarkerType "mil_Destroy";
"target1" setMarkerColor "ColorRed";
PMC_VehicleTrig setPos _city;
