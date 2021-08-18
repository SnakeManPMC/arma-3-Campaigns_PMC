
if (!alive PMC_gf) exitWith
{
	player sidechat "My girlie is dead, snif!";
	["PMC_objective1", "FAILED", true] spawn BIS_fnc_taskSetState;
};

player sideChat "Girlfriend Found, ah my love!";

["PMC_objective1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerColor "ColorGreen";
"target1" setMarkerType "mil_dot";
player sidechat "All right. Our mission is accomplished. Lets get back to the hideout.";

PMC_GF_Found = true;

{[_x] join assault1} foreach units PMC_girlie;
