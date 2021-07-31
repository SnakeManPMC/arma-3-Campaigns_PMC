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
  				"Name: Gordon McKenzie<br/>Rank: Gunnery Sergeant<br/>  MOS: 11B, Infantry<br/>Combat Medals: Silver Star, Bronze Star with V for Valor, Purple Heart<br/><br/>Goddam, I'm glad they were able to put me back in my old unit after that visit to that god-awful Civil-War field hospital. I can't imagine being shoved into a new squad.<br/><br/>They did have a couple of cute nurses at that field hospital, but it's a good thing I'm out; I was going nuts wondering what kind of trouble my squad was being shoved into.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #9: ""Fights in inhabited places [towns and villages] often take place at extremely short ranges. Hand grenades and machine pistols are essential. Provide fire protection before attacking by means of MGs, mortars, and assault guns.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"There's plenty of ammo, a truck, and a hummvee.<br/><br/>For fire support, you've got mortars, M101s, and M109s. Don't forget the arty radio, it's over in the command tent.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"All our recon resources are focused on the other island. Nothing much has been seen in your area of operations, but that's mainly because we haven't been looking.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your regulars <marker name='start'>start</marker> at Rozenburg. Seize the town of <marker name='target1'>Sittard</marker>.<br/><br/>Seize a port town near the capital. You and your old squad of seasoned regulars, team ""Alpha,"" <marker name='start'>start</marker> from the town of Rozenburg. Assault and capture <marker name='target1'>Sittard</marker>.<br/><br/>This is a small but important mission to pre-empt any ideas the Reds might have about landing reinforcements at Sittard. This area is quite close to their stronghold at the provincial capital of Asten, and it would seem pretty convenient for them to unload troops here. So, don't allow it. Get there first and kill everyone you see, and shoot up all trucks and equipment you find.<br/><br/>Rules of Engagement: Condition Yellow. Save your bullets for the fight at Sittard.<br/><br/>Good luck.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"NATO has won, at great cost, the smoking, cratered, poisoned ruins of Stuttgart Airport, after what the historians will surely call the ""Battle of Stuttgart."" The center has held. The Rhine will not be crossed, unless the Reds still have cards left unplayed. US anti-tank infantry has deployed in depth across all Red avenues of attack, and US armored reserves threaten the Red flanks from more than one angle.<br/><br/>It was a battle of epic proportions, surpassing even the Battle of Kursk in WWII. Over 250,000 troops and aircrews were killed from both sides in less than two days of fighting, on a front only 35 miles wide.<br/><br/>The jig is up for the Reds. Their trump card, the huge armored fist, has failed them. Their satellite countries are practically in open revolt. What will they do now?<br/><br/>"
			]
		];

		PMC_objective1 = player createSimpleTask ["Capture Sittard"];
		PMC_objective1 setSimpleTaskDescription ["Capture <marker name='target1'>Sittard</marker>", "Capture Sittard", "Capture Sittard"];
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
