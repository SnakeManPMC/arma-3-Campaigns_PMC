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
  				"Name: Gordon McKenzie<br/>Rank: Staff Sergeant<br/>  MOS: 11B, Infantry<br/>Combat Medals: Bronze Star with V for Valor<br/><br/>Hmm, Alverna. I wonder where that tart Paulina is? Hopefully, she had the sense to flee town with some sailor guy.<br/><br/>Now, why on earth didn't I choose to be a sailor instead of a goddam grunt? A girl in every port, no mud, and probably an ice-cream maker on board the ship.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"There are reports of areas of freshly-turned earth, indicative of minefields. Be careful where you step.<br/><br/>Stay focused on the battlefield. Scan the area in your path carefully prior to making your moves. Be aware of possible infantry patrols moving on your flanks.<br/><br/>Regular smoke grenades, the ones labeled ""BIS,"" (Bogus Inoperative Smoke?) are almost useless for blocking LOS. However, Ground Marker grenades do a pretty fair shielding job.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"You have plenty of fire support today. A good thing, because you'll likely need all of it to blow the Reds out of their dug-in city defenses. M109s, M101s, and mortars are on call, as well as four TLAMs from the USS Key West. Don't hesistate to use the TLAMs today; we're pretty sure they won't be wasted.<br/><br/>There's also a friendly attack helo roaming around looking for armor targets in your area.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"The town itself is heavily defended by infantry and some armor. Keep an eye open for snipers. Move fast. If we skip a beat, the Reds will reinforce Alverna and your job will go from being difficult to impossible.<br/><br/>Gear up; you're likely to need some additional LMGs today.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your infantry squad ""Alpha"" <marker name='start'>start</marker> from the old Red Army base. Seize the sea port at <marker name='target1'>Alverna</marker>.<br/><br/>Seize and hold the vital port town of Alverna. If the Reds continue to own the sea port, they could quickly bring a lot of MBTs and arty down on us. On the other hand, if WE own the sea port, it'll be us bringing the heavy equipment ashore. So today's mission is just as critical as can be.<br/><br/>The regulars under your command <marker name='start'>start</marker> from the old Red Army base near the target. Proceed east and conquer the sea port at <marker name='target1'>Alverna</marker>. Paint the town red.<br/><br/>Keep your men alive. This is a key step, but not the last battle, not by a long shot. Rules of Engagement: <b>Condition Yellow.</b> Don't engage every enemy you see along the way. Stay focused on Alverna.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The pressure is on at Kiel. North Army Group command (NORTHAG) reports that the Reds have brought 152mm mobile howitzers within range of the port facilities and have commenced shelling. On the central front, chaos reigns as we retreat our scattered units to man the new MLR.<br/><br/>Locally, things are going well. The Reds are reacting to our presence, but it seems like they're failing to really bring the hammer down. They're probably too distracted by their big efforts against Kiel and the Central front. We need to get the job done ASAP, before they can really turn and bite us here on Rugen-Ummanz.<br/><br/>"
			]
		];

		PMC_objective1 = player createSimpleTask ["Conquer Alverna"];
		PMC_objective1 setSimpleTaskDescription ["Conquer <marker name='target1'>Alverna</marker>", "Conquer Alverna", "Conquer Alverna"];
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
