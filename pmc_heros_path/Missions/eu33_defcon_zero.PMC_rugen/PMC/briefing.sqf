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
  				"Name: Steve Gross<br/>Rank: Sergeant-Major (field promotion)<br/>  MOS: 12A, Pioneer (Ranger)<br/>Combat Medals: Distinguished Service Cross, Silver Star, Bronze Star with V for Valor and oak leaves, Legion of Merit first class, three Purple Hearts.<br/><br/>Man, why on earth, of all the targets on the target list, would someone choose to attack Modesto? There's no military there. I went through there once, it was pretty much of an armpit.<br/><br/>And why are we still getting orders to attack, when the entire world is holding its breath? For some reason, our squad always gets stuck with the riskiest, shittiest details.<br/><br/>Arrgh! It don't mean nothin.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #17: [A recon squad commander must] ""...report observations rapidly, for delay lessens the value of any information. Fire support must be arranged for before crossing any open stretches of terrain.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"You get massive fire support for today's mission. M252 mortars, plus M101 and M109 howitzers. Don't forget to grab the radio for the arty net.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"There's dug-in infantry, and at least a few armored vehicles present at both towns.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"Your Rangers <marker name='start'>start</marker> from Ummanz Airbase. Your <marker name='insert'>insert lz</marker> is near targets. Attack and clear the towns of <marker name='target1'>Zalne</marker> and <marker name='target2'>Boxtel</marker>. Radio (0-0-1) for helo pickup at the <marker name='extract'>extraction LZ</marker>.<br/><br/>Cut off two Red retreat routes. SIGINT tells us that the Red commanders on this island are desperate to leave before the shit really hits the fan. Seize these two towns before there's any escape efforts.<br/><br/>You and your Rangers <marker name='start'>start</marker> from Ummanz Airbase. Jump in the waiting helo, fly to <marker name='insert'>insert lz</marker> and go clear the towns of <marker name='target1'>Zalne</marker> and <marker name='target2'>Boxtel</marker>. Once you've taken both objectives, move to the <marker name='extract'>extraction LZ</marker>. Radio (0-0-1) for helo pickup.<br/><br/>Rules of Engagement: Condition Yellow. Use your arty freely, but refrain from getting into firefights except to mop up the objectives.<br/><br/>Smoke 'em out of their holes.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Flash message traffic from the National Command Authorities. We're at DEFCON Zero (Emergcon), indicating atomic weapons have been used.<br/><br/>Preliminary reports indicate a single nuclear missile was launched from a submarine close off the coast of California. It struck the medium-size city of Modesto, CA with a warhead yield of approximately 5 megatons. Civilian casualties in the city are said to be almost total, so several hundred thousand must have perished.<br/><br/>For unknown reasons, there has been no retaliation and no further nuclear attacks. Orders from Hamburg are to continue fighting here.<br/><br/>"
			]
		];

		PMC_objective3 = player createSimpleTask ["Return to base"];
		PMC_objective3 setSimpleTaskDescription ["Return to <marker name='start'>base</marker>", "Return to base", "Return to base"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "start");
		
		PMC_objective2 = player createSimpleTask ["Capture Boxtel"];
		PMC_objective2 setSimpleTaskDescription ["Capture <marker name='target2'>Boxtel</marker>", "Capture Boxtel", "Capture Boxtel"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Capture Zalne"];
		PMC_objective1 setSimpleTaskDescription ["Capture <marker name='target1'>Zalne</marker>", "Capture Zalne", "Capture Zalne"];
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
