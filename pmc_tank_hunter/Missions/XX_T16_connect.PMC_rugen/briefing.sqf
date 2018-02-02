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
				"T16 Connect<br/>You are a bad ass resistance elite soldier, fighting against the Russians. Use whatever means to strike at them. You still must keep scavenging alot of weapons and vehicles. Bring vehicles to your BASE and they are saved for next mission. Use radio to relocate your hideout if you fear that the enemy is gaining intelligence on your presence.<br/><br/>Hunt down the Tokarev pistols which enemy helo pilots and tank crews are carrying, bring them back to hideout and place into the ammo box. You have now 50+ pistol trophys collected, your second goal is to have 100 trophys."
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

		PMC_objective1 = player createSimpleTask ["Collect 100 trophy pistols"];
		PMC_objective1 setSimpleTaskDescription ["Collect 100 trophy pistols", "Collect 100 trophy pistols", "Collect 100 trophy pistols"];
//		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
	};

	case CIVILIAN:
	{
	};
};

/*
<a name = "OBJ_1'></marker>Collect 100 trophy pistols
*/
