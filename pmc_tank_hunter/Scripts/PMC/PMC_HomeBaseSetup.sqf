/*
relocate the players hideout / base, position of new hideout
*/

if (isNil "PMC_NewHideOut") then
{
	PMC_NewHideOut = getPos player;
	saveVar "PMC_NewHideOut";
	diag_log "PMC_HomeBaseSetup: PMC_NewHideOut is not detected, we set it players position.";
};
private _tmp = PMC_NewHideOut;

// move the marker
"start" setMarkerPos _tmp;
// move the tent, ammobox and campfire.
HomeBase setPos _tmp;
HomeBase setPos [(getPosASL HomeBase select 0), (getPosASL HomeBase select 1), 0];
RockBox setPos [(_tmp select 0)+ 3 + random 6, (_tmp select 1)- 10 + random 15];
RockBox setDir random 360;
cmpFire setPos [(_tmp select 0)- 15 + random 5, (_tmp select 1)- 10 + random 7];
cmpFire setDir random 360;

// light up the camp fire if its dark.
if (daytime < 7 || daytime > 18) then
{
	cmpFire inFlame true;
};

// move the trigger too.
PMC_VehList setPos _tmp;
{
	_x setPos _tmp
} forEach units assault1;

// add extra ammobox
RockBox2 = createVehicle ["CUP_LocalBasicWeaponsBox", [(_tmp select 0), (_tmp select 1) + 7, 0], [], 0, "NONE"];
clearMagazineCargo RockBox2;
clearWeaponCargo RockBox2;

// Transfers weapons and magazines from the weapon pool (used in campaigns to transfer weapons to the next mission) into the cargo space of object obj.
// 2026-01-08T23:22:37Z commented out due stuff multiplying issue
//putWeaponPool RockBox2;

RockBox loadStatus "PMC_RockBox";
RockBox2 loadStatus "PMC_RockBox2";

// add clutter cutter there. nice box around the tent with 4 cutters.
createVehicle ["ClutterCutter_EP1", [(_tmp select 0) + 10, (_tmp select 1), 0], [], 0, "NONE"];
createVehicle ["ClutterCutter_EP1", [(_tmp select 0) - 10, (_tmp select 1), 0], [], 0, "NONE"];
createVehicle ["ClutterCutter_EP1", [(_tmp select 0), (_tmp select 1) + 10, 0], [], 0, "NONE"];
createVehicle ["ClutterCutter_EP1", [(_tmp select 0), (_tmp select 1) - 10, 0], [], 0, "NONE"];
