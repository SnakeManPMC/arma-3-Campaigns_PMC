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
				"T24 Weapons, find the weapons ammocrate from the red cities."
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

		PMC_objective2 = player createSimpleTask ["Collect 100 trophy pistols"];
		PMC_objective2 setSimpleTaskDescription ["Collect 100 trophy pistols", "Collect 100 trophy pistols", "Collect 100 trophy pistols"];
//		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target1");

		PMC_objective1 = player createSimpleTask ["Find weapons ammo crate"];
		PMC_objective1 setSimpleTaskDescription ["Find weapons ammo crate in <marker name='target1'>red city</marker>.", "Find weapons ammo crate", "Find weapons ammo crate"];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
	};

	case CIVILIAN:
	{
	};
};

/*
<a name = "OBJ_1'></marker>Find weapons ammo crate
<a name = "OBJ_2'></marker>Collect 100 trophy pistols
*/
