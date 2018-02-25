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
  				"Name: Robert Walton<br/>Rank: Captain<br/>  MOS: 100E, Attack Helo Pilot<br/>Combat Medals: none<br/>Recommended for Silver Star and Distinguished Flying Cross by CinC North Europe.<br/><br/>They patched a lot of shrapnel holes in my bird after the last mission. A little spit, baling wire, and Elmer's glue; she should hold...<br/><br/>Hope to see my little girl sometime.<br/><br/>Okay, once more into the cockpit. It don't mean nothin.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Go in and cut those bastards up. Suggest you play Van Halen at top volume on the external PA speakers; it scares the hell out of those vodka-drinkers.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Fuel, ammo and repair trucks are stationed at the <marker name='start'>Airbase</marker>.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Our long-range reconaissance patrols (LRRPs) report that Shilkas are operating on the mountain tops to maximize their engagement envelopes. They're currently laying low with their radars off so that we can't target them with HARM anti-radar missiles, but you can bet dollars to doughnuts that they'll be switching the radars on once you poke your nose in there.<br/><br/>There are probably shoulder-launched AA missiles carried by Red infantry.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your Pink Team <marker name='start'>start</marker> at Ummanz Airbase. Destroy <marker name='target1'>vehicles #1</marker>, <marker name='target2'>vehicles #2</marker>, <marker name='target3'>vehicles #3</marker>, and <marker name='target4'>vehicles #4</marker>. Once done, return to the <marker name='start'>Airbase</marker> and end the mission with radio command (0-0-1).<br/><br/>A deep interdiction strike against enemy armor unloading onto the south coastal areas near Haelen. The enemy is reeling. Push them while they're off balance. You <marker name='start'>start</marker> at Ummanz Airbase. Fly southwest to the far corner of Rugen Island, and wreck the enemy at map locations marked <marker name='target1'>vehicles #1</marker>, <marker name='target2'>vehicles #2</marker>, <marker name='target3'>vehicles #3</marker>, and <marker name='target4'>vehicles #4</marker>.<br/><br/>Rules of Engagement: Condition Red, weapons free. Any people or vehicles in southern Rugen, across the Sound, are fair game. After you've achieved your objectives, move to the <marker name='start'>Airbase</marker> and use the radio command (0-0-1) to call an end to the mission.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"More sub battles in the Atlantic. The two big CAVALRY convoys are nearing French ports, having taken losses but 85% intact. So, the Red wolfpacks have failed their strategic aim of cutting the transatlantic shipping route.<br/><br/>The Reds have taken gut punches elsewhere as well. Only in the direct path of the three main armored schwerpunkts, down in Germany, are the Reds still doing well.<br/><br/>The Reds continue to hit vital river crossings and transport hubs with HCN and blister gas attacks. The effects on the hordes of unprotected refugees at these chokepoints has been a horror beyond description. Bulldozers in the vanguard of the Red hordes shove the piles of bodies off the road, or, if not stacked too high, the tanks simply ignore the dead and injured.<br/><br/>"
			]
		];

		PMC_objective5 = player createSimpleTask ["Return to base"];
		PMC_objective5 setSimpleTaskDescription ["Return to <marker name='start'>base</marker>", "Return to base", "Return to base"];
		PMC_objective5 setSimpleTaskDestination (getMarkerPos "start");
		
		PMC_objective4 = player createSimpleTask ["Destroy Vehicles #4"];
		PMC_objective4 setSimpleTaskDescription ["Destroy <marker name='target4'>Vehicles #4</marker>", "Destroy Vehicles #4", "Destroy Vehicles #4"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Destroy Vehicles #3"];
		PMC_objective3 setSimpleTaskDescription ["Destroy <marker name='target3'>Vehicles #3</marker>", "Destroy Vehicles #3", "Destroy Vehicles #3"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Destroy Vehicles #2"];
		PMC_objective2 setSimpleTaskDescription ["Destroy <marker name='target2'>Vehicles #2</marker>", "Destroy Vehicles #2", "Destroy Vehicles #2"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Destroy Vehicles #1"];
		PMC_objective1 setSimpleTaskDescription ["Destroy <marker name='target1'>Vehicles #1</marker>", "Destroy Vehicles #1", "Destroy Vehicles #1"];
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
