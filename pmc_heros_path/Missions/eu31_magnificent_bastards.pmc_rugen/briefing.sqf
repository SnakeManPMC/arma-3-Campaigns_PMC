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
  				"Name: David Ruby<br/>Rank: Captain<br/>  MOS: 1204, Tank Unit Commander<br/>Combat Medals: none<br/><br/>The Reds shot a member of the Catholic clergy, a firey speaker named Sakowski, through the head with a sniper rifle as he was giving a public sermon in Gdansk yesterday. There'll be retribution for that.<br/><br/>Yea, though I walk through the valley of the shadow of death, I shall fear no evil.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #15: ""Sweat saves blood.""  [and] ""He who fires first, wins.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"In addition to your M1A1s, you get a truck full of ammo and some engineers with a tank repair vehicle stationed in Marum.<br/><br/>Chobham composite armor is another secret to the M1A1s success against the Red tanks. The exact construction of this armor is secret, and is constantly evolving in response to advances in projectile technology. The M1A1 is designed so that large plates of Chobham armor can easily be removed and replaced, whenever a new, upgraded type becomes available. It's for this reason that the M1A1 looks so angular with flat surfaces; it's because the armor is easier to manufacture in flat, modular pieces.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"You'll likely run into a fair amount of enemy armor on the road to Haelen, since that's where they've been unloading LSTs.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your M1A1 team <marker name='start'>start</marker> from Marum. Advance and win the <marker name='target1'>house</marker> objective, <marker name='target2'>Hottingen Farm</marker>, and finally the town of <marker name='target3'>Haelen</marker>.<br/><br/>The Russians are pretty persistent, and are still trying to bring troops ashore at Haelen in the south-west corner of Rugen Island. Skirt the coast and take out some intermediate targets, and wind things up by attacking Haelen.<br/><br/>You and your tank platoon <marker name='start'>start</marker> from the town of Marum. Advance westward and clear the <marker name='target1'>house</marker> near the coast. Continue on and capture <marker name='target2'>Hottingen Farm</marker> and the town of <marker name='target3'>Haelen</marker>. Rules of Engagement: Condition Red, weapons free. If you see Red, shoot.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"There's an ugly situation developing in Warsaw. Members of the labor unions are fighting a pitched battle against the communist forces, using molotov cocktails and improvised weapons. This is good for us, because it distracts the Red war machine a little. But the revolt is bad for the people of Warsaw, as it's being dealt with in the same way that the Nazis dealt with a similar uprising in 1944. That would be with ruthless and brutal force without regard for innocents.<br/><br/>Things are going unexpectedly well here on R&#525gen-Ummanz. Decapitation and anti-communications strikes, coupled with intense jamming, have left the Reds pretty disorganized. They don't seem to know if they're coming or going, with some units fleeing to the mainland even as others arrive. Hit 'em while they're reeling.<br/><br/>"
			]
		];

		PMC_objective3 = player createSimpleTask ["Capture Haelen"];
		PMC_objective3 setSimpleTaskDescription ["Capture <marker name='target3'>Haelen</marker>", "Capture Haelen", "Capture Haelen"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Capture Hottingen Farm"];
		PMC_objective2 setSimpleTaskDescription ["Capture <marker name='target2'>Hottingen Farm</marker>", "Capture Hottingen Farm", "Capture Hottingen Farm"];
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
