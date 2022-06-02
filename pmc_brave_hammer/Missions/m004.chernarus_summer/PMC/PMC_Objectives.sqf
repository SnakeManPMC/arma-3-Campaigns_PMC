/*
2022-05-31T20:12:00Z
		class Item2
		{
			dataType="Trigger";
			position[]={4564.7012,339,10262.453};
			angle=1.0137045;
			class Attributes
			{
				text="opfor dead";
				condition="this && PMC_mission_read_for_end";
				onActivation="0 = [] execVM ""eastdead1.sqf"";";
				sizeA=1000;
				sizeB=300;
				timeout[]={60,60,60};
				interuptable=1;
				activationBy="WEST SEIZED";
			};
			id=619;
			type="EmptyDetector";
		};
		class Item3
		{
			dataType="Trigger";
			position[]={4576.0244,339,10255.63};
			class Attributes
			{
				text="END";
				condition="pmc_opfordead1";
				sizeA=0;
				sizeB=0;
				timeout[]={60,120,240};
				interuptable=1;
				type="END1";
			};
			id=620;
			type="EmptyDetector";
		};
		class Item4
		{
			dataType="Trigger";
			position[]={4553.2144,339,10269.482};
			class Attributes
			{
				text="15min ending condition";
				condition="true";
				onActivation="PMC_mission_read_for_end = true;";
				sizeA=0;
				sizeB=0;
				timeout[]={1500,1500,1500};
				interuptable=1;
			};
			id=621;
			type="EmptyDetector";
		};
*/

/*
eastdead1.sqf
//0 = [] execVM "eastdead1.sqf";

leader mfr sideChat "Enemy assault has been halted. Over.";
pmc_opfordead1 = true;
["PMC_capture_airfield", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
"target1" setMarkerType "mil_dot";
"target1" setMarkerColor "colorgreen";
*/

[] spawn
{
	private _pmcmarker = "pmc_marker_airfield_area";
	sleep 1500;
	//systemChat "PMC_Objective; 60 seconds has passed, starting to loop inAreaArray ...";

	waitUntil
	{
		//systemChat format["PMC_Objective; badguys in marker area: %1", count (units EAST inAreaArray _pmcmarker)];
		sleep 5;
		(count (units EAST inAreaArray _pmcmarker) == 0);
	};

	leader mfr sideChat "We have eliminated all enemy resistance. Over.";
	sleep 7;
	PMCHQ sideChat "Copy that Alpha, good job out there. Mission accomplished. HQ out.";
	sleep 5;

	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	_pmcmarker setMarkerColor "colorgreen";
	"target1" setMarkerTypeLocal "mil_dot";
	"target1" setMarkerColor "colorgreen";
	[] execVM "PMC\PMC_SaveStatus.sqf";
	sleep 7;

	"pmc_end1" call BIS_fnc_endMission;
};
