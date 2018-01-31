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
  				"Name: Steve Gross<br/>Rank: Master Sergeant<br/>  MOS: 12A, Pioneer (Ranger)<br/>Combat Medals: Two Purple Hearts, Bronze Star with V for Valor and oak leaves, Legion of Merit first class.<br/><br/>F*** the hero bullshit. I'm poring over the map and making a damned solid plan that will minimize ALL loss of life, in order to keep me and my brothers alive. Period.<br/><br/>If the helo has to wait a few minutes for me to make the damn plan, so be it. If a few Reds go unkilled, so be it.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #6: [My attack plans] ""...were always developed as a result of my own personal reconnaissance of the enemy positions.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"We received a new supply of 105mm and 155mm artillery ammo, so you'll have both M101s and M109s on line today. The lighter mortars won't reach where you're heading. <br/><br/>Carry as much heavy weaponry as will fit in your packs. I've a feeling you'll need it.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Bridge island appears to be a kind of small hell, so use all available cover. Watch your back and keep an eye on the ground ahead, both in near and far perspectives.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and Ranger Team ""Alpha"" <marker name='start'>start</marker> from Ummanz Airbase. Jump on the Blackhawk for helo <marker name='insert'>insertion LZ</marker>. Clear the <marker name='target1'>Bridge</marker>, neutralize the town of <marker name='target2'>Wolsum</marker>, and win the <marker name='target3'>Castle</marker>. Radio (0-0-1) when you reach the <marker name='extract'>extraction LZ</marker>.<br/><br/>Another important raid deep behind enemy lines, this time to break the enemy resistance on Bridge Island. This southern island unlocks both Rugen and Ummanz, as it has no less than four causeways linking the main islands at various points.<br/><br/>Your Rangers <marker name='start'>start</marker> from Ummanz Airbase. Grab the arty radio and jump on the Blackhawk for helo <marker name='insert'>insertion LZ</marker>. Clear the <marker name='target1'>Bridge</marker>, neutralize the town of <marker name='target2'>Wolsum</marker>, and win the<marker name='target3'> Castle</marker>. After your objectives have fallen, move to the <marker name='extract'>Extraction LZ</marker> and use the radio command (0-0-1) to call for helicopter pickup. <br/><br/>Rules of Engagement: <b>Condition Yellow.</b> There are many more bad guys out there than you have time or lives for. Stay low and bypass them if you can. If you live through this mission, you're getting another chance to stand down and rest.<br/><br/>Hope to see you back here soon.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The war hasn't really spread much beyond Europe. We suppose the Reds are afraid of the political fallout. They already underestimated the French, in second-guessing that they wouldn't enter the war on the NATO side. So Japan has gone mainly unmolested except for strikes on US bases there. Cuba seems to be getting the kid-gloves treatment from the USA for reasons not clear at the moment. It may be a tit-for-tat vis-a-vis Japan.<br/><br/>In the Middle East, there's an unusual show of peace. Both the Israelis and Egyptians have gone as far as declaring neutrality. Strange but true.<br/><br/>The Mediterranean has been mixed, with fierce fighting between the Soviets and the Turks, and some pretty nasty close-quarter air and naval actions in the Aegean and Black Seas, but nothing like the maelstrom of Central Germany.<br/><br/>"
			]
		];

		PMC_objective4 = player createSimpleTask ["Return to the Airbase"];
		PMC_objective4 setSimpleTaskDescription ["Return to the <marker name='start'>airbase</marker>", "Return to the Airbase", "Return to the Airbase"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "start");
		
		PMC_objective3 = player createSimpleTask ["Clear the Castle"];
		PMC_objective3 setSimpleTaskDescription ["Clear the <marker name='target3'>castle</marker>", "Clear the Castle", "Clear the Castle"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Neutralize Wolsum"];
		PMC_objective2 setSimpleTaskDescription ["Neutralize <marker name='target2'>Wolsum</marker>", "Neutralize Wolsum", "Neutralize Wolsum"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Clear the Bridge"];
		PMC_objective1 setSimpleTaskDescription ["Clear the <marker name='target1'>bridge</marker>", "Clear the Bridge", "Clear the Bridge"];
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
