/*
	Repair script from Evolution
	not working properly(?).
*/
private
[
	"_dam",
	"_ful",
	"_inrepairzone",
	"_PMC_Repair",
	"_type",
	"_vec"
];

_PMC_Repair =
{
	_vec = (vehicle player);
	_type = typeOf vehicle player;
	if(getDammage _vec > 0 or fuel _vec < 0.98 and not (_vec isKindOf "Man")) then
	{
		_inrepairzone = ((_vec in list RZoneA) or (_vec in list RZoneA) or (_vec in list RZoneA) or (_vec in list RZoneA) or (_vec in list RZoneA) or (_vec in list RZoneA) or (_vec in list RZoneA) or (_vec in list RZoneA) or (_vec in list RZoneA));
		if(_inrepairzone and _vec != player and speed _vec > -2 and speed _vec < 2 and position _vec select 2 < 2.0 and (local _vec)) then
		{

			 titleText ["Repairing your busted ass vehicle...", "PLAIN DOWN",0.3];
			 for [{_loop2=0}, {_loop2<1}, {_loop2=_loop2}] do
			 {
			    sleep 0.200;	    		    
			    if (getDammage _vec > 0) then {_vec setDammage ((getDammage _vec)-0.0125);};
			    if (Fuel _vec < 1) then {_vec setFuel ((Fuel _vec)+0.0125);};
			    if (getDammage _vec == 0 and Fuel _vec == 1) then {_loop2=1;};
			    if(_vec != vehicle player or speed _vec < -2 or speed _vec > 2 or position _vec select 2 > 2.0) then {_loop2=1;titleText ["Hum this repair thing is confusing...", "PLAIN DOWN",0.3];};
			    _dam = (getDammage _vec)*100;
			    _ful = (Fuel _vec)*100;
			    hint format["Damage: %1\nFuel: %2",Round _dam,Round _ful];
			};
			_vec setVehicleAmmo 1;
		};
	};
};

[] call _PMC_Repair;
