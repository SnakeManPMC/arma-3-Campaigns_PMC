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
  				"Name: Carlos Edwards<br/>Rank: Captain<br/>  MOS: 7242, Diver (SEAL)<br/>Combat Medals: None<br/><br/>So much for ""all's quiet on the western front.""<br/><br/>Why did the Red leaders choose now as the time to launch their big invasion? The weather's good, I guess, and probably there's some political consideration, like they're about to be run out of office tomorrow if they don't distract their people from their failures of leadership.<br/><br/>And there's always just that basic lust for more power. What was it Kant said? ""There is no state whose leader does not wish to secure permanent peace by conquering all the universe.""<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Keep low as much as possible and stay off the ridgelines. Use gullies and washes to gain the the higher ground. That's what you need, some high ground to get your binoculars on target. Expect another painstaking mission punctuated by moments of terror.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"If we had a base on Rugen or Ummanz, we'd be able to give you ammo and heavier weapons. If we had any friendly forces un-slaughtered nearby, they'd be able to support you. If the Army guys you rescued earlier were in any shape whatsoever to fight, they'd join you. 'Nuff said.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Expect Russian infantry and vehicle patrols everywhere. Other than that, you are our source of intelligence here, so it's YOU that's going to have to give US the data this time.<br/><br/>All the geosynchronous spy satellites were shot down right away, so we can't get intel that way. The space warfare guys are trying to get a new satellite positioned, but it needs to be defended against all kinds of threats, like ground-based lasers and hunter-killer satellites. So, until then, we need your eyes on the ground.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your SEAL team <marker name='start'>start</marker> at the beach. Recon the town of <marker name='target1'>Velp</marker> and the town of <marker name='target2'>Vaals</marker>, then proceed to the <marker name='extract'>extract</marker> point. NO SHOOTING.<br/><br/>Night-time reconnaissance. Captain Edwards, you and your SEAL Team ""Alpha"" <marker name='start'>start</marker> at the beach south-west of your objectives. From there, proceed to the town of <marker name='target1'>Velp</marker> near the coast, and conduct a recon of it. Next, proceed to the town of <marker name='target2'>Vaals</marker> and do a similar recon. Finally, proceed to the <marker name='extract'>extract</marker> location back at the beach.<br/><br/>Your Rules of Engagement (ROE) are as follows: <b>Condition Green.</b> Don't fire unless fired upon. Avoid contact if at all possible. Get eyes on the two target towns and get to the extract location, it's as simple as that.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"NATO and the Soviets have both pretty much exhausted their air forces in the first few hours of the war. No nukes, thank god. So, the fighting has devolved to a more personal level of tank vs tank and grunt vs grunt. The Reds are continuing to mobilize their armor for the big push west through the Fulda Gap. These things take days, not hours, to organize, so there is still breathing space for our forces on mainland Europe.<br/><br/>It's become a horse race. Can NATO bring troops from the USA for a spoiling counter-attack before the Reds can get their big push organized? What was it that Rommel said? ""The outcome of the battle is determined by the Quartermaster before the battle starts."" Truer words never spoken.<br/><br/>We got at least some intel from the Army stragglers we rescued earlier. They had the presence of mind to count enemy vehicles and forces on their way out; good for them.<br/><br/>"
			]
		];
		PMC_objective3 = player createSimpleTask ["Extract home"];
		PMC_objective3 setSimpleTaskDescription ["Extract home <marker name='extract'>by boat at the beach</marker>", "Extract home", "Extract home"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "extract");
		
		PMC_objective2 = player createSimpleTask ["Recon Vaals"];
		PMC_objective2 setSimpleTaskDescription ["Recon <marker name='target2'>Vaals</marker>", "Recon Vaals", "Recon Vaals"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Recon Velp"];
		PMC_objective1 setSimpleTaskDescription ["Recon <marker name='target1'>Velp</marker>", "Recon Velp", "Recon Velp"];
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
