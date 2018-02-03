
PMC_CAttack = true;
PAPABEAR sideRadio "Rattack";
sleep 3;

hint "Briefing updated.";
"target3" setMarkerType "Flag";
// objective3 is hidden
objective3 = player createSimpleTask ["Defend <marker name = 'target3'>Levie</marker>"];
objective3 setSimpleTaskDescription ["Defend <marker name = 'target3'>Levie</marker>", "Defend <marker name = 'target3'>Levie</marker>", "Defend <marker name = 'target3'>Levie</marker>"];

/*

	until they are all dead...

*/
_t = time;
_wavewait = (60*25);

//#Loop
sleep 10;
waitUntil
{
	sleep 5;
	(count aieast < 5 || (time - _t) > _wavewait);
};

//#Ending
leader assault1 sideRadio "Reastdead3";
sleep 15;

PAPABEAR sideRadio "Rhqreply3";
objective3 setTaskState "SUCCEEDED";
[ objNull, objNull, objective3, "SUCCEEDED"] execVM "CA\Modules\MP\data\scriptCommands\taskHint.sqf";
"target3" setMarkerType "dot";
"target3" setMarkerColor "colorgreen";
sleep 15;

PAPABEAR sideRadio "Rmcomplete";
mcomplete = true;
