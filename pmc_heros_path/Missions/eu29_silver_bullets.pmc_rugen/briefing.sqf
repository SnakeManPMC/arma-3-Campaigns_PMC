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
  				"Name: David Ruby<br/>Rank: Captain<br/>  MOS: 1204, Tank Unit Commander<br/>Combat Medals: none<br/><br/>Oh Lord, lead me on the path of righteousness. Let me be your instrument in the war against the godless Soviets. Keep my eye sharp and my hand steady for the upcoming ordeal.<br/><br/> "
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #13: ""An attack on a village is usually accompanied by heavy casualties and should be avoided whenever possible. Pin the enemy to the village by means of fire, or blind him with smoke and hit him outside the village or town.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"In addition to your tanks, you have ammo and repair trucks stationed in Bergh.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Expect tanks and mech infantry, both dug-in units as well as patrols.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your M1A1 tanks <marker name='start'>start</marker> at Bergh. Assault and clear the <marker name='target1'>houses</marker>, Johan's <marker name='target2'>farm</marker>, and the towns of <marker name='target3'>Maarn</marker> and <marker name='target4'>Camerig</marker>.<br/><br/>Attacks continue to cleanse the Red presence on Rugen-Ummanz. Today's operations focus on the routes from the south coast leading to the capital. Interdicting these towns and road junctions will make attacking the capital easier later on.<br/><br/>Your M1A1 Abrams tanks <marker name='start'>start</marker> at the town of Bergh. Head east and assault the <marker name='target1'>houses</marker>, Johan's <marker name='target2'>farm</marker>, and the towns of <marker name='target3'>Maarn</marker> and <marker name='target4'>Camerig</marker>. Rules of Engagement: Condition Red, weapons free. Cut them up.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Finally, the sea lanes are safe enough to slip in a fast transport convoy, and get some really heavy equipment unloaded at Alverna. Thank God we have some M1A1s now. Red armor, although numerous, has proved remarkably inferior to the Abrams tank.<br/><br/>In a report from Stuttgart, an Abrams crew was cited as having detected an enemy T72 on the opposite side of a brick factory building. The Abrams commander made a guess on where the tank was, based on the thermal image of the exhaust plume, and fired a single ""silver bullet"" 4000fps uranium dart round THROUGH the factory. The dart managed to punch through the brickwork without being deflected and took out the T72.<br/><br/>"
			]
		];

		PMC_objective4 = player createSimpleTask ["Capture Camerig"];
		PMC_objective4 setSimpleTaskDescription ["Capture <marker name='target4'>Camerig</marker>", "Capture Camerig", "Capture Camerig"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Capture Maarn"];
		PMC_objective3 setSimpleTaskDescription ["Capture <marker name='target3'>Maarn</marker>", "Capture Maarn", "Capture Maarn"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Capture Johan's Farm"];
		PMC_objective2 setSimpleTaskDescription ["Capture <marker name='target2'>Johan's Farm</marker>", "Capture Johan's Farm", "Capture Johan's Farm"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Capture the houses"];
		PMC_objective1 setSimpleTaskDescription ["Capture the <marker name='target1'>houses</marker>", "Capture the houses", "Capture the houses"];
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
