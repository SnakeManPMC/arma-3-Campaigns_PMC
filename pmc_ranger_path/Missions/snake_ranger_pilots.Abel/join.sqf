
if (alive (units gunships1 select 1)) then
{
	[(units gunships1 select 1)] join assault1;
};

if (alive (units gunships1 select 0)) then
{
	[(units gunships1 select 0)] join assault1;
};
sleep 3;

leader assault1 sideradio "Rjoin";
sleep 15;

PAPABEAR sideradio "Rhqreply1";

waitUntil
{
	sleep 0.1;
	(!alive helo2);
};

["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"downed" setMarkerType "mil_dot";
"downed" setMarkerColor "colorgreen";
