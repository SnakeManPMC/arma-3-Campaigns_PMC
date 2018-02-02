private ["_unit"];
_unit = _this select 0;
PMC_BodyCount = PMC_BodyCount + 1;

// this is the main wait for the body to disappear.
sleep (320 + random 320);

waitUntil
{
	sleep 10;
	(PMC_BodyCount > 300);
};

if (vehicle _unit != _unit) then
{
	// delay if we have vehicle
	sleep (640 + random 320);
	deleteVehicle (vehicle _unit);
	PMC_BodyCount = PMC_BodyCount - 1;
	if (true) exitWith{};
};

deleteVehicle _unit;
PMC_BodyCount = PMC_BodyCount - 1;
