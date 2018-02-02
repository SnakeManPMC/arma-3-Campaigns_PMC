waitUntil {!(isNull player)};
waitUntil {player == player};

switch (side player) do
{
	case WEST:
	{
	};

	case EAST:
	{
	};

	case RESISTANCE:
	{
// 6
		player createDiaryRecord
		[
			"Diary",
			[
  				"DIARY",
  				"Time to kick some Russians out of this island."
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"SUPPORT",
				"n/a"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"ORDERS",
				"T12 Vehicles, find the abandoned vehicles in red city."
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"TACTICAL",
				"n/a"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"INTEL",
				"n/a"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"GEN SITREP",
				"n/a"
			]
		];

		PMC_objective2 = player createSimpleTask ["Collect 50 trophy pistols"];
		PMC_objective2 setSimpleTaskDescription ["Collect 50 trophy pistols", "Collect 50 trophy pistols", "Collect 50 trophy pistols"];
//		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target1");

		PMC_objective1 = player createSimpleTask ["Find the abandoned vehicles"];
		PMC_objective1 setSimpleTaskDescription ["Find the abandoned vehicles in <marker name='target1'>red city</marker>.", "Find the abandoned vehicles", "Find the abandoned vehicles"];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
	};

	case CIVILIAN:
	{
	};
};

/*
<a name = "OBJ_1'></marker>Find the abandoned vehicles
<a name = "OBJ_2'></marker>Collect 50 trophy pistols
*/
