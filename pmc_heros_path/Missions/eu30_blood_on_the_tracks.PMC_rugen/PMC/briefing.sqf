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
  				"Name: David Ruby<br/>Rank: Captain<br/>  MOS: 1204, Tank Unit Commander<br/>Combat Medals: none<br/><br/>I pray I'm doing the right thing, dispensing death in all directions. Where are these souls going? If the Soviets are truly godless, are they going to Limbo? Purgatory? or Hell? Am I to be the one who decides they get to take that journey?"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #14: [my small HQ squad] ""...opened with rapid fire on the fleeing enemy. Strange to say, we had not been fired upon even though we were standing and were plainly visible. Frenchmen running down the highway were easily shot down as we fired through a break in the bushes. Dozens of Frenchmen were put out of action by the fire of our three rifles."" [read: you take heavier casualties by fleeing than by standing and fighting]<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Your Abrams tanks continue to display a marked superiority to even the latest Soviet MBTs. Microchips make the difference, with dozens of microprocessors helping the M1A1 cope with the battlefield environment.<br/><br/>One thing that really sets the M1A1 apart from other tanks is the fully-stabilized 120mm smoothbore gun. It's the only tank in the world that can fire accurately at long ranges while bouncing over rough terrain. The way it works is that the gun barrel itself is only partially stabilized. It's really the sight that's totally stabilized, and a computer decides when the sight and the gun are exactly lined up on the target. At that millisecond, the gun fires.<br/><br/>Ammo resupply and repair crews are stationed at Camerig.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Long-range reconnaissance patrols indicate main battle tanks backed up by BMPs and infantry ahead.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your M1A1 platoon <marker name='start'>start</marker> from Camerig. Eliminate the enemy presence at <marker name='target1'>Ritter Farm</marker>, some unnamed <marker name='target2'>houses</marker>,  <marker name='target3'>Hoenig Farm</marker>, and the town of <marker name='target4'>Marum</marker>.<br/><br/>Operations are ongoing to clear the Reds out of southern Rugen, in preparation for the final push on the provincial capital (Asten). You must blow the Reds out of the south-western approaches to Asten. You and your M1A1 platoon <marker name='start'>start</marker> from Camerig. Eliminate the enemy presence at <marker name='target1'>Ritter Farm</marker>, some unnamed <marker name='target2'>houses</marker>,  <marker name='target3'>Hoenig Farm</marker>, and the town of <marker name='target4'>Marum</marker>.<br/><br/>Rules of Engagement: Condition Red, weapons free. Make us a meal of shredded Red meat. Cooked rare.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The Russians are asking for peace, but demanding that they get to incorporate the territory they seized into the GDR. They also want a limited right-of-return for refugees. NATO is saying, ""no deal."" So, the war continues with no letup in ferocity.<br/><br/>The Reds have unleashed yet another provocation: anthrax.  Stuttgart Airport, the scene of recent heavy fighting, was rocketed with weaponized anthrax warheads. Maybe they did it for spite, maybe for bargaining reasons. Our troops were more-or-less ready for it, being geared up for chem. However, clouds of spores drifted into Stuttgart proper and infected pretty much all the refugees still clinging to the city.<br/><br/>"
			]
		];

		PMC_objective4 = player createSimpleTask ["Capture Marum"];
		PMC_objective4 setSimpleTaskDescription ["Capture <marker name='target4'>Marum</marker>", "Capture Marum", "Capture Marum"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Capture Hoenig Farm"];
		PMC_objective3 setSimpleTaskDescription ["Capture <marker name='target3'>Hoenig Farm</marker>", "Capture Hoenig Farm", "Capture Hoenig Farm"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Capture the houses"];
		PMC_objective2 setSimpleTaskDescription ["Capture the <marker name='target2'>houses</marker>", "Capture the houses", "Capture the houses"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Capture Ritter Farm"];
		PMC_objective1 setSimpleTaskDescription ["Capture <marker name='target1'>Ritter Farm</marker>", "Capture Ritter Farm", "Capture Ritter Farm"];
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
