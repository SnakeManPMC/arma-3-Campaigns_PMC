/*
relocate the players hideout / base, position of new hideout
*/

private _tmp = PMC_NewHideOut;

// move the marker
"start" setMarkerPos _tmp;
// move the tent, ammobox and campfire.
HomeBase setPos _tmp;
HomeBase setPos [(getPosASL HomeBase select 0), (getPosASL HomeBase select 1), 0];
RockBox setPos [(_tmp select 0)+ 3 + random 6, (_tmp select 1)- 20 + random 15];
cmpFire setPos [(_tmp select 0)- 15 + random 5, (_tmp select 1)- 10 + random 7];
cmpFire setDir random 360;

// light up the camp fire if its dark.
if (daytime < 7 || daytime > 18) then
{
	cmpFire inFlame true;
};

// move the trigger too.
PMC_VehList setpos _tmp;
{
	_x setPos getPosASL PMC_VehList
} forEach units assault1;

// add extra ammobox
RockBox2 = createVehicle ["CUP_USBasicAmmunitionBox", [(_tmp select 0), (_tmp select 1) + 10, 0], [], 0, "NONE"];
clearMagazineCargo RockBox2;
clearWeaponCargo RockBox2;

// Transfers weapons and magazines from the weapon pool (used in campaigns to transfer weapons to the next mission) into the cargo space of object obj.
putWeaponPool RockBox2;

// add clutter cutter there. nice box around the tent with 4 cutters.
createVehicle ["ClutterCutter_EP1", [(_tmp select 0) + 10, (_tmp select 1), 0], [], 0, "NONE"];
createVehicle ["ClutterCutter_EP1", [(_tmp select 0) - 10, (_tmp select 1), 0], [], 0, "NONE"];
createVehicle ["ClutterCutter_EP1", [(_tmp select 0), (_tmp select 1) + 10, 0], [], 0, "NONE"];
createVehicle ["ClutterCutter_EP1", [(_tmp select 0), (_tmp select 1) - 10, 0], [], 0, "NONE"];
