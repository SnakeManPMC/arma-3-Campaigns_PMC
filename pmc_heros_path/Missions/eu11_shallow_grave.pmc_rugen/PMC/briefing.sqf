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
  				"Name: Gordon McKenzie<br/>Rank: Staff Sergeant<br/>  MOS: 11B, Infantry<br/>Combat Medals: Bronze Star with V for Valor<br/><br/>The rest and recuperation time out of the firing line was short but good, and this shiny new medal oughta impress the girls back at home... if I get back alive, and there's a home remaining after this war is over.<br/><br/>Hope the Rangers did a good job killing the enemy reserves near our target.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Gordon, if I were you, I'd take an M203 grenade launcher, plus take TWO M433 HEDP vests, for a total of 48 rounds. It just doesn't pay to go in light. M433 rounds beat bullets any day of the week, as long as you're not at point-blank range.<br/><br/>Be sure to watch your backs out there. Pull injured men out of the combat area for first aid. Use the truck to move around if you need to bring in more ammo or take someone to visit the base hospital. The medic team can be called to your location via radio (5-1-1). You can also drive (or order someone to drive) the M113 ambulance.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"We're suffering from previous logistics snafus, and have failed to get a supply of heavy infantry weapons up to the front. So, you need to scavenge your anti-tank weapons. Anything you find and bring back to base goes into the Infantry ammobox for future missions.<br/><br/>On the plus side, you've got a ton of indirect fire support: a battery of four M252 Mortars, the M101s, and the Paladins, all located back at the US Army base. Don't forget to take a radio for the arty net with you.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"The Reds don't know what we're planning, and probably don't value the north coast like we do. However, there is a strong presence of Red infantry and some light armor. Vaals has dug-in infantry as well as some patrols. We have no intel on Acquoy. Lay very low until you're totally prepared to strike.<br/><br/>Some backup units will support you at Vaals, including medics and an ammo truck, once you capture the town. Use the radio command (0-0-1) after you've attacked and cleared Vaals.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your squad ""Alpha"" <marker name='start'>start</marker> at the US Army base. Conquer the towns of <marker name='target1'>Vaals</marker> and <marker name='target4'>Acquoy</marker>. Also, clear the <marker name='target2'>Field HQ</marker> and destroy the <marker name='target3'>ammo cache</marker>.<br/><br/>The north coast of Rugen must be cleared of enemy forces.<br/><br/>You and your team of army grunts <marker name='start'>start</marker> from the main base near Vaals. Proceed northeast and seize the towns of <marker name='target1'>Vaals</marker> and <marker name='target4'>Acquoy</marker>. On the way, destroy the <marker name='target2'>field HQ</marker> between the towns, and the <marker name='target3'>ammo cache</marker> objective.<br/><br/>Rules of Engagement: Condition Yellow. Use some discretion as to which enemy units you engage.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The Reds have escalated the war by using chemical munitions on a number of rear-area targets behind the new MLR in Central Germany. Several front-line airbases, forward aerial refueling points, and some telecom equipment exchange buildings (in civilian areas) were hit with a combination of persistent nerve agents and blister gases. Casualties were heavy. NATO is pondering whether to use tactical nukes in response.<br/><br/>Our assault on Rugen-Ummanz is going forward; we've gotten the signal to proceed. Italy has provided NATO with a number of towed OTOMAT Mk2 heavy anti-ship missile launchers, which are scheduled to land with the invasion troops. Once you clear the way, these speedy, hard-hitting over-the-horizon missiles will be positioned on the north shores of Rugen and Ummanz in order to cut the Baltic sea lanes.<br/><br/>"
			]
		];

		PMC_objective4 = player createSimpleTask ["Capture Acquoy"];
		PMC_objective4 setSimpleTaskDescription ["Capture <marker name='target4'>Acquoy</marker>", "Capture Acquoy", "Capture Acquoy"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Destroy the Ammo Cache"];
		PMC_objective3 setSimpleTaskDescription ["Destroy the <marker name='target3'>ammo cache</marker>", "Destroy the Ammo Cache", "Destroy the Ammo Cache"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Clear the Field HQ"];
		PMC_objective2 setSimpleTaskDescription ["Clear the <marker name='target2'>field HQ</marker>", "Clear the Field HQ", "Clear the Field HQ"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Capture Vaals"];
		PMC_objective1 setSimpleTaskDescription ["Capture <marker name='target1'>Vaals</marker>", "Capture Vaals", "Capture Vaals"];
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
