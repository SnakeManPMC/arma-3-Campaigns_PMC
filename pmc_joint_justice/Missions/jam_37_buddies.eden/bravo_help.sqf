
leader assault2 sideRadio "Rneedhelp";
sleep 15;

PAPABEAR sideRadio "RsendAlpha";
sleep 10;

leader assault1 sideRadio "Ralphagoes";
sleep 3;

// objective3 is hidden
objective3 = player createSimpleTask ["Backup <marker name = 'bravo1'>Bravo</marker> on Provins"];
objective3 setSimpleTaskDescription ["Backup <marker name = 'bravo1'>Bravo</marker> on Provins", "Backup <marker name = 'bravo1'>Bravo</marker> on Provins", "Backup <marker name = 'bravo1'>Bravo</marker> on Provins"];

"bravo1" setMarkerType "Unknown";
"target3" setMarkerType "Flag";
hint "Briefing updated.";
