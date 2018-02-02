/*

Relocates the players home base to any position he is at the moment.

Moves the marker, repair zone trigger and the base decoration objects,
then saves the location for future missions.

*/

private
[
	"_pos"
];

// hack for being lazy!
_pos = getPos player;

// starting base marker
"start" setMarkerPosLocal _pos;

// repair trigger
/*
RZoneA setPos _pos;

PMC_tent1 setPos [(_pos select 0) + 20, (_pos select 1) + 20];
PMC_flag setPos [(_pos select 0) + 15, (_pos select 1) + 15];
PMC_hospital setPos [(_pos select 0) + 10, (_pos select 1) + 10];
PMC_fire setPos [(_pos select 0) + 25, (_pos select 1) + 25];
racsbox1 setPos [(_pos select 0) + 15, (_pos select 1) + 25];
racsbox2 setPos [(_pos select 0) + 10, (_pos select 1) + 20];
racsbox3 setPos [(_pos select 0) + 5, (_pos select 1) + 35];
PMC_helipad1  setPos [(_pos select 0) + 50, (_pos select 1) + 50];
PMC_helipad2  setPos [(_pos select 0) - 50, (_pos select 1) - 50];
*/
player sideChat "Base equipment have been relocated. Check map for new marker.";

// save location
PMC_BaseLocationPos = _pos;
saveVar "PMC_BaseLocationPos";
