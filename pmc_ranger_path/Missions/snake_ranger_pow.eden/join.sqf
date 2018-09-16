
if (!alive pow1) exitWith
{
	"1" objstatus "FAILED";
};

leader assault1 sideradio "Rjoin";

pow1 setcaptive false;
pow1 setcombatmode "yellow";
pow1 setbehaviour "aware";
pow1 setunitpos "auto";
[pow1] join assault1;

"1" objstatus "DONE";
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
2 setradiomsg "Call - Extract";
