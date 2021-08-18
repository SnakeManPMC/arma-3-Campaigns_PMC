
["PMC_objective1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerColor "ColorGreen";
"target1" setMarkerType "mil_dot";
player sidechat "All right. Our mission is accomplished.";

{
	// only add up to 12 guys total in our group
	// dunno if there is check like this in exit scripts,
	// but lets make sure anyways.
	if (count units group player < 12) then
	{
		[_x] join assault1;
	};
} forEach units recruits1;
