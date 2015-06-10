/*
	Working

END1
END2
END3
END4
END5
END6
LOSER
*/

/*

	NOT Working

CONTINUE
LOOSE	<- this is actual Lose trigger name from mission editor
KILLED	<- this causes the actual killed menu to pop up, ie restart/teamswitch
WIN
END7
*/

/*
sleep 3;
hint "blob";
endMission "KALA";
*/

waitUntil { !isnil "bis_fnc_init" };

[ "pmc3", true, 2 ] call BIS_fnc_endMission;
