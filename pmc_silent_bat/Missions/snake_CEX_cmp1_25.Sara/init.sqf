private [
	"_a","_m","_m1"
];

[] execVM "PMC\PMC_Mission_Start.sqf";
[] execVM "PMC\PMC_weather.sqf";

/*
artillery ammo, each round fired. array: artillery, mortars, mlrs
this is first resupply. needs also sleep so it wont conflict 
with PMC_Missio_Start.sqf
*/
sleep 0.2;
_a = PMC_artyAmmo select 0;
_m = PMC_artyAmmo select 1;
_m1 = PMC_artyAmmo select 2;
PMC_artyAmmo = [_a + 150, _m + 200, _m1 + 600];
