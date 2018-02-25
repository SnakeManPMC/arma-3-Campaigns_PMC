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
  				"Name: Carlos Edwards<br/>Rank: Captain<br/>  MOS: 7242, Diver (SEAL)<br/>Combat Medals: Navy Cross, NATO Medal, Bronze Star with V for Valor. <br/><br/>A tired bear is an angry bear, who might lash out in unpredictable ways.<br/><br/>What's amazing is that this war has gone on this long without anyone resorting to atomic weapons. Back in the 1960's, NATO doctrine was to automatically and immediately use tactical battlefield nukes in order to stem the monster tank rush. Seems like that policy would have immediately led to a world-wide nuke slugfest in this particular crisis.<br/><br/>Thank God for the newer doctrine of flexible response, which allowed us the time to prove that all the smart weapons and other force multipliers could stop the Reds without the need for nukes.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #12: ""In entering a village, advance with part of the unit on the left of the houses, the rest on the right side of the houses, with fingers on triggers.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"You're our only resource for this mission, other than the transport helo and four TLAMs from the USS Key West.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Expect heavy infantry defenses; armor is unlikely to be found on the steep and rough terrain where you're heading.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"Jump on the helo with your SEALs at the <marker name='start'>start</marker> position near Rozenburg. Get <marker name='insert'>insert LZ</marker> positioned, then go eliminate the air-defense <marker name='target1'>HQ</marker> on top of Hill 430. Radio (0-0-1) for pickup at the <marker name='extract'>extraction LZ</marker>.<br/><br/>Trash the enemy air-defense headquarters on Hill 430 south of Camerig.<br/><br/>We're still not getting friendly air strikes on Rugen and Ummanz. It's dicey getting planes in and out, due to Red interceptors at big airbases to the east. There's a Red C and C facility on a hilltop on south Rugen which is relaying radar data to their air defense command. This local C and C facility must be taken out.<br/><br/>Your SEALs <marker name='start'>start</marker> near Rozenburg. Jump on the waiting helo. Once at the <marker name='insert'>insertion LZ</marker>, proceed south-south-east to the air-defense <marker name='target1'>HQ</marker> on top of Hill 430. Attack and clear the hilltop. Once the HQ personnel are dead, move to the <marker name='extract'>extraction LZ</marker> and use the radio command (0-0-1) for immediate dustoff.<br/><br/>Rules of Engagement: Condition Yellow. Don't get waylaid on your way to and from the target zone. You've done so much for your country already; don't get killed now.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Good work, Captain. The Red force on Jutland has surrendered, thanks to you and the other units fighting on Rugen-Ummanz. You guys were able to secure and defend the critical Otomat Mk2 launching sites that cut the Red supply lines.<br/><br/>Although the main objective is achieved, Rugen-Ummanz remains a strategic location, so expect the fighting here to continue unabated until the Reds here have been totally destroyed.<br/><br/>"
			]
		];

		PMC_objective2 = player createSimpleTask ["Return to base"];
		PMC_objective2 setSimpleTaskDescription ["Return to <marker name='start'>base</marker>", "Return to base", "Return to base"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "start");
		
		PMC_objective1 = player createSimpleTask ["Eliminate the Air Defense HQ"];
		PMC_objective1 setSimpleTaskDescription ["Eliminate the <marker name='target1'>Air Defense HQ</marker>", "Eliminate the Air Defense HQ", "Eliminate the Air Defense HQ"];
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
