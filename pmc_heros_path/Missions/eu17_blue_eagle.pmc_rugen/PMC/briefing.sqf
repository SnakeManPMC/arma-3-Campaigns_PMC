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
  				"Name: Robert Walton<br/>Rank: Captain<br/>  MOS: 100E, Attack Helo Pilot<br/>Combat Medals: none<br/><br/>Hmm, knowing the survival rates of helo pilots in Vietnam doesn't make me feel happy. The Soviets have vastly more and more capable AA weapons than the NVA ever did. I hope my kids still have a father after this.<br/><br/>But damn, the softer NATO forces on the ground need help. If we don't stop the Red's drive north, they'll be chewing up our forces at the port, airbase, and missile emplacements.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Go in with the goal of eliminating the local AAA defenses first. Keep cycling through the available targets, looking out for suspicious contacts that might be Shilkas. Don't forget to hold a couple of Hellfires in reserve.<br/><br/>When ""tank"" contacts occur in groups of four, they're probably ordinary tanks and can be de-emphasized.<br/><br/>Also, keep a close eye on troop concentrations, mostly in towns and villages, as there are likely to be SA-7 shoulder-launched missiles present. Tear 'em up out there.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Full repair and resupply capability is available at your <marker name='start'>Airbase</marker>.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"This is a night mission. The enemy has lots of armor south of Maarn, and we've detected emissions typical of the air-search radars found on ZSU-23 mobile AAA. You probably won't start to see enemy positions until after you cross the channel of water at Rugen Sound.<br/><br/>Keep your speed under control; don't go charging into a new area until you've had a chance to review all the available targets for AAA threats.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and Pink Team ""Alpha"" <marker name='start'>start</marker> from Ummanz Airbase. Proceed west and neutralize all trucks and armor at <marker name='target1'>Vehicles #1</marker>, <marker name='target2'>Vehicles #2</marker>, <marker name='target3'>Vehicles #3</marker>, and <marker name='target4'>Vehicles #4</marker>. Once finished, return to the <marker name='start'>Airbase</marker> and use the radio command (0-0-1) to call an end to the mission.<br/><br/>The Reds managed to get a Ropucha-class LST full of AFVs unloaded on the south coast of Rugen. These tanks and BMPs are heading north, probably toward our missile emplacements. Dispatch them with extreme prejudice.<br/><br/>You have your wingman in an AH-64, plus a spotter in a Loach (comprising a ""Pink Team""). You <marker name='start'>start</marker> from Ummanz Airbase. Proceed southwest and obliterate all enemy trucks and armor at <marker name='target1'>Vehicles #1</marker>, <marker name='target2'>Vehicles #2</marker>, <marker name='target3'>Vehicles #3</marker>, and <marker name='target4'>Vehicles #4</marker>.<br/><br/>Rules of Engagement: Condition Red, weapons free. After you've achieved your objectives, return to the <marker name='start'>Airbase</marker> and use the radio command (0-0-1) to call an end to the mission.<br/><br/>Make sure you and your wingmen come back alive. We can't afford to lose you.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The first of two big CAVALRY convoys carrying troops from the US is about 7/10ths across the Atlantic. There've been intense battles, climaxing this morning when a big wolfpack of Red hunter-killer subs and SSGNs attacked Convoy PQ1.<br/><br/>US anti-sub and AA point defense technology proved worthy. Hundreds of sea-skimming missiles were fired at the convoy, but only two escorts and two fast freighters were sunk. Many subs were located via their missile launches.<br/><br/>The typical US response has been to fire SUBROC stand-off missiles at the locations, which unleash advanced homing torpedoes in the water near the sub. These ""Terminator"" torpedoes have excellent sensors and very advanced AI. Enough said.<br/><br/>"
			]
		];

		PMC_objective5 = player createSimpleTask ["Return to the airbase"];
		PMC_objective5 setSimpleTaskDescription ["Return to the <marker name='start'>airbase</marker>", "Return to the airbase", "Return to the airbase"];
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
