
[] spawn
{
	sleep 60;

	waitUntil
	{
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "We have eliminated all enemy resistance. Over.";
	sleep 7;

	pmc_opfordead1 = true;
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	"target1" setMarkerType "mil_dot";
	 "target1" setMarkerColor "colorgreen";
	sleep 7;

	"pmc_end1" call BIS_fnc_endMission;
};
