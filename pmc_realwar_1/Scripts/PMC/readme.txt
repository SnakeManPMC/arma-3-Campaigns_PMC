Changelog

--- 01-03-10
changed _PMC_SelectBLUFORStartPosit and opfor too, into new PMC_SelectStartPosit.sqf which is loaded from PMC_init.sqf as preprocess shit.

UNTESTED 01-03-10.


--- ?
_all_BLUFOR_vecA -> PMC_blufor_vehicle_heavy
_all_BLUFOR_vecA2 -> PMC_blufor_vehicle_soft
_all_BLUFOR_vecB -> PMC_blufor_vehicle_car_unarmed
_all_BLUFOR_vecB2 -> PMC_blufor_vehicle_car_armed
_all_BLUFOR_vecC -> PMC_blufor_helo_armed
_all_BLUFOR_vecD -> PMC_blufor_jet

_all_OPFOR_vecA -> PMC_opfor_vehicle_heavy
_all_OPFOR_vecA2 -> PMC_opfor_vehicle_car_armed
_all_OPFOR_vecB -> PMC_opfor_vehicle_car_unarmed
_all_OPFOR_vecC -> PMC_opfor_helo_armed
_all_OPFOR_vecD -> PMC_opfor_jet


--- power grep magic

_all_BLUFOR_vecA2===PMC_blufor_vehicle_soft#_all_BLUFOR_vecA===PMC_blufor_vehicle_heavy#_all_BLUFOR_vecB===PMC_blufor_vehicle_car_unarmed#_all_BLUFOR_vecB2===PMC_blufor_vehicle_car_armed#_all_BLUFOR_vecC===PMC_blufor_helo_armed#_all_BLUFOR_vecD===PMC_blufor_jet#_all_OPFOR_vecA2===PMC_opfor_vehicle_car_armed#_all_OPFOR_vecA===PMC_opfor_vehicle_heavy#_all_OPFOR_vecB===PMC_opfor_vehicle_car_unarmed#_all_OPFOR_vecC===PMC_opfor_helo_armed#_all_OPFOR_vecD===PMC_opfor_jet#
