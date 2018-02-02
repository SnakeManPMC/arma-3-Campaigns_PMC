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
				"T03 Connect Mission<br/>You are resistance soldier, fight against the Russians. Use whatever means to strike at them. You must scavenge lot of weapons and vehicles. Bring vehicles to your BASE and they are saved for next mission. Use radio to relocate your hideout if you fear that the enemy is gaining intelligence on your presence.<br/><br/>Hunt down the Tokarev pistols which enemy helo pilots and tank crews are carrying, bring them back to hideout and place into the ammo box. First goal is to have 50 trophys."
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

		PMC_objective1 = player createSimpleTask ["Collect 50 trophy pistols"];
		PMC_objective1 setSimpleTaskDescription ["Collect 50 trophy pistols", "Collect 50 trophy pistols", "Collect 50 trophy pistols"];
//		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
	};

	case CIVILIAN:
	{
	};
};

/*
<a name = "OBJ_1'></marker>Collect 50 trophy pistols
*/
