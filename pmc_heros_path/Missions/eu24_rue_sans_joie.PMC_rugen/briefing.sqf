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
  				"Name: Roger Tuchek<br/>Rank: Gunnery Sergeant (field promotion)<br/>  MOS: 1204, Armored Recon<br/>Combat Medals: none.<br/><br/>Recommended for Silver Star, Bronze Star by Brigade HQ.<br/><br/>Oh man, I think maybe I don't want to become a combat photographer after all. Some of the things I've seen... They're etched on my mind so strongly I'll never need a photo to remember them.<br/><br/>These are things I think no human being would ever intentionally want to see.<br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #8: ""It is vital that the leading elements penetrate to a maximum distance in a minimum of time, and there be no dispersion of effort in smashing into the first position.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"The USS Key West has come through again, with four TLAMs. Don't hesitate to use them.<br/><br/>More ammo has been unloaded for the mortars and howitzers. We're totally out of MLRS rockets, however. Use up the mortar ammo first, since their range is a bit short today. Also, you've got field medics with an M113 ambulance plus a repair truck on call. We hope you won't need them, but expect that you might.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Colmont and Fortmond were previously raided by our Rangers. We couldn't garrison those towns, as we're spread so thin, and in the vacuum the Reds have returned. Colmont is lightly held, but Fortmond might sport some stiff defenses.<br/><br/>We managed to get a UAV flight completed across the entire south part of Ummanz. The UAV was shot down in the process, but telemetry data shows that the MLR runs across the intersection <marker name='stiff'>here</marker>. Expect heavy fortifications and a roadblock.<br/><br/>The UAV also spotted some armor on the move near Moorsel, but lord knows where it's gotten to by now. Expect infantry patrols and dug-in troops at all the objective towns.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"Your M2A2 Bradleys <marker name='start'>start</marker> from Oss. Assault and win the towns of <marker name='target1'>Colmont</marker>, <marker name='target2'>Fortmond</marker>, <marker name='target3'>Kessel</marker>, and <marker name='target4'>Moorsel</marker>.<br/><br/>The big goal today is to clear the port town of Moorsel, far to the south, where the Reds have been getting in ship-borne reinforcements. Moorsel is shielded from our Otomat Mk2s by the bulk of the island, allowing the Reds to slip at least one fast destroyer convoy in from the south. This rat hole must be stopped up.<br/><br/>Your armored combat recon team will <marker name='start'>start</marker> from Oss. Your targets are like pearls on a string along the road leading south. Assault and win the towns of <marker name='target1'>Colmont</marker>, <marker name='target2'>Fortmond</marker>, <marker name='target3'>Kessel</marker>, and <marker name='target4'>Moorsel</marker>.<br/><br/>Rules of Engagement: <b>Condition Red, weapons free.</b> You need to wreck everything they've got on that entire stretch of road. Destroy everything at the target sites, including HMGs and trucks. Stay focused on killing the bad guys. Don't forget to grab the radio for the arty net. <br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The most severe fighting of the war, in terms of thousands of lives lost per hour, is occuring right now in the fields surrounding the Stuttgart Airport. Fresh American troops have arrived at the battlefront in order to stop the Russian advance. The Russian steamroller still has plenty of steam, and the resulting collision has been one of unbelievable violence.<br/><br/>The ground they're fighting over is a sea of craters inundated with persistent chemical agents. There are no trees or buildings left, but there's a lot of smoke as both sides fire tons of smoke shells and chemical agents. Yes, that's right, NATO has begun using lethal nerve agents and LSD-type gases such as BZ in retaliation for indiscriminate Red killings of refugees. To those stoned on BZ, the smoky battlefield must seem particularly surreal.<br/><br/>"
			]
		];

		PMC_objective4 = player createSimpleTask ["Win and hold Moorsel"];
		PMC_objective4 setSimpleTaskDescription ["Win and hold <marker name='target4'>Moorsel</marker>", "Win and hold Moorsel", "Win and hold Moorsel"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Win Kessel"];
		PMC_objective3 setSimpleTaskDescription ["Win <marker name='target3'>Kessel</marker>", "Win Kessel", "Win Kessel"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Win Fortmond"];
		PMC_objective2 setSimpleTaskDescription ["Win <marker name='target2'>Fortmond</marker>", "Win Fortmond", "Win Fortmond"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Win Colmont"];
		PMC_objective1 setSimpleTaskDescription ["Win <marker name='target1'>Colmont</marker>", "Win Colmont", "Win Colmont"];
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
