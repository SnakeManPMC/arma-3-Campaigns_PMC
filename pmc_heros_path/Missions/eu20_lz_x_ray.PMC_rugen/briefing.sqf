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
  				"Name: Steve Gross<br/>Rank: Master Sergeant (field promotion)<br/>  MOS: 12A, Pioneer (Ranger)<br/>Combat Medals: Purple Heart, Bronze Star with V for Valor and Oak Leaves, Legion of Merit first class.<br/><br/>Well, the gung-ho thing is kind of wearing thin. I'm mainly motivated by keeping my squad alive anymore. These guys are my brothers now, and I have to be the one to stand between them and ridiculous orders that might put them into certain-death combat situations.<br/><br/>Hooyah? Err...  I take that to mean, ""let's get the job done but stay alive.""<br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Keep moving so that the enemy reaction squads don't catch you. Keep an eye open for minefields and snipers. Draw the enemy reaction squads into pre-registered artillery/satchel killing zones.<br/><br/>TIPS FROM ROMMEL #5: ""The coordinated use of artillery, mortars, and machine guns is the result of thorough prior planning.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"The supply chain foul-ups have finally been resolved, and we've gotten some M136 anti-tank rockets.<br/><br/>Your main support is our M101 battery of 105mm howitzers, now located just east of the main Airbase. Plus, the USS Key West is back after visiting a ""milch cow"" resupply ship, so there are four TLAMs allocated for this mission. You get extra credit if you can complete the mission without using up the precious TLAMs.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Data from stealthy UAVs shows that Red infantry is on the high alert all over the target region. Use extra caution. Don't forget to grab the radio for the arty net before you jump on the chopper.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"Grab the radio and jump on a helo when you <marker name='start'>start</marker> at the Airbase. Fly to <marker name='insert'>LZ X-Ray</marker> with your Rangers. Raid <marker name='target1'>Colmont</marker> and <marker name='target4'>Fortmond</marker>. On the way, neutralize the <marker name='target2'>outpost</marker> camp and the <marker name='target3'>intersection</marker>. Radio (0-0-1) for an extract helo.<br/><br/>Get prepared for a raid deep behind enemy lines. Go in like horseman J.E.B. Stuart, and tear up some of their infrastructure right where they least expect it.<br/><br/>Your Rangers <marker name='start'>start</marker> at Ummanz Airbase. A waiting helo will take you directly to <marker name='insert'>LZ X-Ray</marker>. Proceed south and raid the towns of <marker name='target1'>Colmont</marker> and <marker name='target4'>Fortmond</marker>. Along the way, flatten the Red <marker name='target2'>outpost</marker> and neutralize the <marker name='target3'>intersection</marker> defenses. Don't take risks, just get the job done and get out. Finally, move to the <marker name='extract'>extraction LZ</marker> and use the radio command (0-0-1) to call for helo pickup.<br/><br/>Rules of Engagement: <b>Condition Yellow.</b> Stay focused on your specific targets.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The tide of battle may be turning. In the center, the Reds are still advancing, but the political fallout from their stupid decision-making is hitting them at home. The latest military debacles, such as the Last Ride of the Northern Fleet, has helped turn public opinion throughout the Warsaw Pact countries against the war.<br/><br/>Not that the Soviet satellite countries were ever FOR the war. But now, there are signs of civil unrest and riots visible even through the blackout on news and travel imposed by the war. Cracks are showing in the Red monolith.<br/><br/>"
			]
		];

		PMC_objective5 = player createSimpleTask ["Return to Base"];
		PMC_objective5 setSimpleTaskDescription ["Return to <marker name='start'>Base</marker>", "Return to Base", "Return to Base"];
		PMC_objective5 setSimpleTaskDestination (getMarkerPos "start");
		
		PMC_objective4 = player createSimpleTask ["Raid Fortmond"];
		PMC_objective4 setSimpleTaskDescription ["Raid <marker name='target4'>Fortmond</marker>", "Raid Fortmond", "Raid Fortmond"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Neutralize the intersection"];
		PMC_objective3 setSimpleTaskDescription ["Neutralize the <marker name='target3'>intersection</marker>", "Neutralize the intersection", "Neutralize the intersection"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Destroy the Outpost"];
		PMC_objective2 setSimpleTaskDescription ["Destroy the <marker name='target2'>Outpost</marker>", "Destroy the Outpost", "Destroy the Outpost"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Raid Colmont"];
		PMC_objective1 setSimpleTaskDescription ["Raid <marker name='target1'>Colmont</marker>", "Raid Colmont", "Raid Colmont"];
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
