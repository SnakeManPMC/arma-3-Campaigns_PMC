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
	};

	case CIVILIAN:
	{
// 6
		player createDiaryRecord
		[
			"Diary",
			[
  				"DIARY",
  				"I just love to relax in my hometown..."
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
				"You are relaxing in <marker name='start'>hometown</marker> and all is well. Just chill out and enjoy the sunny day."
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

		PMC_objective1 = player createSimpleTask ["Relaxing"];
		PMC_objective1 setSimpleTaskDescription ["You are to relax in your <marker name='start'>home town</marker>.", "Relax", "Relax"];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
	};
};

/*
<a name = "OBJ_1'></marker>Relaxing
<a name = "OBJ_2'></marker>Grab some weapons and escape to the <marker name='hideout'>woods hideout</marker> before you're killed in the crossfire!
*/