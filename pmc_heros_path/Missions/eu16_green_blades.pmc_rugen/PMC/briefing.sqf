waitUntil {!(isNull player)};
waitUntil {player == player};

switch (side player) do
{
	case WEST:
	{
// 6
		player createDiaryRecord
		[
			"Diary",
			[
  				"DIARY",
  				"Name: Robert Walton<br/>Rank: Captain<br/>  MOS: 100E, Attack Helo Pilot<br/>Combat Medals: none<br/><br/>This is about the last thing I expected: thrown into a raging war. One minute: sleeping at home in Mechenheim with my wife. The next minute: in a speeding jeep on an autobahn deserted of traffic except for military vehicles, heading toward the airbase.<br/><br/>And now, after a ferry flight to Ummanz Airbase, I'm about to take off in my AH-64 and fly into the flaming hell at the forward edge of battle...<br/><br/>Jesus Christ.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Hold a couple of Hellfires in reserve in case some Shilkas are located.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Ammo resupply is plentiful for once. If you run out of missiles, return to base and rearm at the ammo trucks. Fuel and repair trucks are also available.<br/><br/>There's a spare Apache parked on the runway, in case you get shot down.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Don't ignore the enemy infantry completely, as enough PK fire could bring you down. Stay alert for more serious AAA threats such as ZSU-23s.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and helo team ""Alpha"" <marker name='start'>start</marker> at the Airbase. Destroy all enemy armor at <marker name='target1'>target #1</marker>, <marker name='target2'>target #2</marker>, <marker name='target3'>target #3</marker>, and <marker name='target4'>target #4</marker>. Use the radio command (0-0-1) to end the mission once the enemy is destroyed.<br/><br/>Interdict the enemy tank forces to the south. The Reds are concentrating their armor, threatening to overrun the Airbase and the port in order to launch an attack on our Otomat anti-ship missile launchers on the north coast. Disrupt and destroy their formations.<br/><br/>You and your Pink Team (two attack helos plus observation helo) <marker name='start'>start</marker> from Ummanz Airbase. Proceed south to Charlois and wreck all enemy armor at <marker name='target1'>target #1</marker>, <marker name='target2'>target #2</marker>, <marker name='target3'>target #3</marker>, and <marker name='target4'>target #4</marker>. After you've achieved these goals, return to your <marker name='start'>Airbase</marker> and use the radio command (0-0-1) to call an end to the mission.<br/><br/>Rules of Engagement: Condition Red, weapons free. You're entering a free-fire zone to the south. Shred everything in sight.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Chaos theory rules the day. The flapping of one helo's rotors in Rugen could create a storm in Moscow. Or so it seems, perhaps.<br/><br/>The immediate crisis at Kiel has been greatly reduced by the blocking of the Red's Baltic Sea resupply routes. The Reds in Jutland have been forced over to the defensive, awaiting rescue by the rampaging mechanized horde coming up from Central Germany.<br/><br/>That horde is making good progress toward Frankfurt and other cities on the Rhine. Efforts to set up roadblocks and resupply ATGM emplacements have been hampered by vast throngs of panicked refugees fleeing westward away from the fighting.<br/><br/>"
			]
		];

		PMC_objective5 = player createSimpleTask ["Return to base"];
		PMC_objective5 setSimpleTaskDescription ["Return to <marker name='start'>base</marker>", "Return to base", "Return to base"];
		PMC_objective5 setSimpleTaskDestination (getMarkerPos "start");
		
		PMC_objective4 = player createSimpleTask ["Destroy Armor #4"];
		PMC_objective4 setSimpleTaskDescription ["Destroy <marker name='target4'>Armor #4</marker>", "Destroy Armor #4", "Destroy Armor #4"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Destroy Armor #3"];
		PMC_objective3 setSimpleTaskDescription ["Destroy <marker name='target3'>Armor #3</marker>", "Destroy Armor #3", "Destroy Armor #3"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Destroy Armor #2"];
		PMC_objective2 setSimpleTaskDescription ["Destroy <marker name='target2'>Armor #2</marker>", "Destroy Armor #2", "Destroy Armor #2"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Destroy Armor #1"];
		PMC_objective1 setSimpleTaskDescription ["Destroy <marker name='target1'>Armor #1</marker>", "Destroy Armor #1", "Destroy Armor #1"];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
		player setCurrentTask PMC_objective1;
	};

	case EAST:
	{
	};

	case RESISTANCE:
	{
	};

	case CIVILIAN:
	{
	};
};
