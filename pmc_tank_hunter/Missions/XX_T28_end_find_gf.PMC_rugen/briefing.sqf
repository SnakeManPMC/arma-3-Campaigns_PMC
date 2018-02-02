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
  				"I have now intel of my girlfriends whereabouts..."
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
				"T28 End: Find your girlfriend"
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

		PMC_objective1 = player createSimpleTask ["Find girlfriend"];
		PMC_objective1 setSimpleTaskDescription ["Find girlfriend in <marker name='target1'>red city</marker>.", "Find girlfriend", "Find girlfriend"];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
	};

	case CIVILIAN:
	{
	};
};

/*
<a name = "OBJ_1'></marker>Find girlfriend
*/
