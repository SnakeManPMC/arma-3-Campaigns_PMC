// HideoutObjective.sqf

PMC_goToHideout = player createSimpleTask ["Get to the hideout"];

PMC_goToHideout setSimpleTaskDescription
[
	"Grab some weapons and escape to the <marker name='hideout'>woods hideout</marker> before you're killed in the crossfire!",
	"Get to the hideout",
	"Get to the hideout"
];

{
	_x addrating -10000;
} forEach units civis1;

hint "check briefing for update!";

"hideout" setMarkerType "mil_flag";
PMC_objective1 setTaskState "FAILED";

