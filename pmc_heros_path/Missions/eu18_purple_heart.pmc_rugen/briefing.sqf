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
  				"Name: Robert Walton<br/>Rank: Captain<br/>  MOS: 100E, Attack Helo Pilot<br/>Combat Medals: none<br/><br/>Well, another roll of the dice... What are the odds this time? Nevermind, got my lucky charm, my daughter's picture pasted to the door frame of my AH-64.<br/><br/>Besides, the guys on the ground...  Who will look after them, if not me?<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"A nice babysitting job. You must be very, very thorough this time, since the NATO M1A1 tanks are such pathetic weak critters. Those poor sons of bitches couldn't fight their way out of a wet paper bag. You need to clear the path all the way to the targets, or these tanks and men will be killed for sure.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Ammo, fuel and repair trucks can be found at the main <marker name='start'>Airbase</marker>.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Once again it's unlikely that you'll encounter enemy forces until after you cross the water. First, find the friendly tanks so you know where they are. Do a good scan of each area for Shilkas before getting down to business.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"Destroy <marker name='target1'>vehicles #1</marker>, <marker name='target2'>vehicles #2</marker>, <marker name='target3'>vehicles #3</marker>, and <marker name='target4'>vehicles #4</marker> so our tanks can pass. After our tanks have safely reached Rozenburg, return to the <marker name='start'>Airbase</marker> and use the radio command (0-0-1) to end the mission.<br/><br/>Fly west and engage the enemy that block the assault route needed by NATO tanks.<br/><br/>Despite your earlier successes, enemy reserve armored forces have managed to drive north as far as Sint-Annen, cutting our supply route to the main US Army base at Vaals, and threatening all our vital installations and missile launchers.<br/><br/>You and your Pink Team <marker name='start'>start</marker> from Ummanz Airbase. You must spearhead a counterattack that drives south as far as Rozenburg, as that will block a key intersection that is allowing enemy access to our rear areas in the north. You will be supporting a platoon of M1A1 Abrams tanks. The M1A1s will be moving along the line Sint Annen-Goirle-Best-Rozenburg. Clear a path for them to Rozenburg.<br/><br/>You must destroy all threats at <marker name='target1'>vehicles #1</marker>, <marker name='target2'>vehicles #2</marker>, <marker name='target3'>vehicles #3</marker>, and <marker name='target4'>vehicles #4</marker> so our tanks can pass. When you've cleared a town, the tanks will proceed and move on, but not before. After you've achieved all objectives, return to the <marker name='start'>Airbase</marker> and use the radio command (0-0-1) to call an end to the mission.<br/><br/>Rules of Engagement: Condition Yellow. Engage AAA threats and any enemy blocking the tank attack route. Take care not to hit the M1A1s by mistake.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Brutal naval combat continues nonstop in the North Atlantic. Major surface elements of the Red Fleet tried to pass through the GIUK gap east of Iceland late last night. They were supported by several hundred long-range bombers and recon planes.<br/><br/>They encountered F-15Cs and attack aircraft from Iceland, a virtual aircraft carrier. It was a case of matter meeting anti-matter. Reykjavik was spared due to its heavy air defenses, but the USS Nimitz was sunk with almost all hands in a huge fireball.<br/><br/>On the plus side, a Kalinin-class BCGN and the Red's only real carrier, the Admiral Kuznetsov, were sunk, along with a dozen smaller warships and transports. They were obviously bent on invading southern Iceland and were turned back.<br/><br/>"
			]
		];

		PMC_objective6 = player createSimpleTask ["Return to base"];
		PMC_objective6 setSimpleTaskDescription ["Return to <marker name='start'>base</marker>", "Return to base", "Return to base"];
		PMC_objective6 setSimpleTaskDestination (getMarkerPos "start");

		PMC_objective5 = player createSimpleTask ["M1A1s must reach Rozenburg"];
		PMC_objective5 setSimpleTaskDescription ["M1A1s must reach <marker name='target4'>Rozenburg</marker>", "M1A1s must reach Rozenburg", "M1A1s must reach Rozenburg"];
		PMC_objective5 setSimpleTaskDestination (getMarkerPos "target4");
		
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
