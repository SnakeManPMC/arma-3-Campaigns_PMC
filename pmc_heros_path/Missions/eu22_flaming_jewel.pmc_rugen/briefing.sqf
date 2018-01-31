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
  				"Name: Roger Tuchek<br/>Rank: Staff Sergeant<br/>  MOS: 1204, Armored Recon<br/>Combat Medals: none.<br/><br/>Wow, I've seen pictures of war zones but never thought I'd be in one. Amazing, the amount of damage that's been done in such a short time. Railroad tracks twisted like spaghetti, seven-story buildings reduced to zero-story, burnt-out AFVs dotting the landscape like giant, ill-smelling cow pies. All without the aid of atomic weapons. Just amazing!<br/><br/>Lucky I remembered my Nikon.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Keep a sharp eye on the treelines. Use hit-and-run tactics to sucker the enemy reaction squads into pre-sited arty killing zones.<br/><br/>This is your first time in combat, so try not to be a hero. Just get some experience commanding a Bradley team. Find the enemy, blast the hell out of them with arty, send in Bradleys, and mop up what's left yourself with the squad.<br/><br/>Use caution. The aluminum armor plate on your Bradley is not as tough as that on a tank. A well-placed RPG hit will toast you. Let's not even talk about taking a 120mm smooth-bore round from a T72.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"You have some really serious fire support. M252 mortars, M101 and M109 howitzers, plus four TLAMs. Don't hesitate to use the TLAMs if you sight juicy targets. Your field glasses and your radio are your most brutal weapons today.<br/><br/>Medics and a repair truck are standing by. Always heal and repair after a hard fight, so your men and equipment are in good shape for the next one. You may want to move the M113 ambulance together with the Bradleys. Don't forget to grab the radio for the arty net.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"The Reds are well dug in, especially in the towns. Recon indicates that there are both infantry patrols and infantry in reserve reaction squads posted at all the targets. Armor we're not so sure about; if they have any tanks or BMPs left after the AH-64s came through, they're keeping them very well camouflaged.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your M2A2 Bradley recon squad <marker name='start'>start</marker> from Tubbergen. Assault and clear <marker name='target1'>Tegy Farm</marker>, <marker name='target2'>Bl&#252;cher House</marker>, and the towns of <marker name='target3'>Charlois</marker> and <marker name='target4'>Hoorn</marker>.<br/><br/>YOUR VEHICLES MUST LAST YOU FOR THREE MISSIONS.<br/><br/>A deep combat recon patrol, with a ton of artillery on call. Your main job is to get eyes on the targets and blast the Reds out of their positions.<br/><br/>You <marker name='start'>start</marker> from the crossroads town of Tubbergen. Assault and clear <marker name='target1'>Tegy Farm</marker>, <marker name='target2'>Bl&#252;cher House</marker>, and the towns of <marker name='target3'>Charlois</marker> and <marker name='target4'>Hoorn</marker>. <br/><br/>Rules of Engagement: <b>Condition Red, weapons free.</b> You're operating in a free-fire zone. If you see anything, drop some arty on it, then shoot the corpses to make sure.<br/><br/>Due to the difficulty of transporting armor to the island, we can't replace your vehicles if they're destroyed. That includes the trucks and the ambulance. Bring those Bradleys back intact, Sergeant.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Thank God, the first CAVALRY convoy from the USA has docked at Brest. Not a moment too soon, because the Reds have broken through to their airhead at Stuttgart Airport, and threaten to break through in the north to relieve their troops on Jutland. The city of Stuttgart proper is beseiged.<br/><br/>We've cleaned up northern Rugen and Ummanz, but there's still a strong Red force in the capital (Asten) and parts south. Your mission: isolate Asten by seizing the key bridge at Hoorn. Special Forces are even now doing some prep work for you.<br/><br/>With the aid of a parachute cargo-removal system, a C5A Galaxy made a touch-and-go landing at the Airbase, dropping two Bradleys for us to use. They're not tanks, but they're not bad.<br/><br/>"
			]
		];

		PMC_objective4 = player createSimpleTask ["Capture Hoorn"];
		PMC_objective4 setSimpleTaskDescription ["Capture <marker name='target4'>Hoorn</marker>", "Capture Hoorn", "Capture Hoorn"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Capture Charlois"];
		PMC_objective3 setSimpleTaskDescription ["Capture <marker name='target3'>Charlois</marker>", "Capture Charlois", "Capture Charlois"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Capture Blucher House"];
		PMC_objective2 setSimpleTaskDescription ["Capture <marker name='target2'>Blucher house</marker>", "Capture Blucher House", "Capture Blucher House"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Capture Tegy Farm"];
		PMC_objective1 setSimpleTaskDescription ["Capture <marker name='target1'>Tegy farm</marker>", "Capture Tegy Farm", "Capture Tegy Farm"];
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
