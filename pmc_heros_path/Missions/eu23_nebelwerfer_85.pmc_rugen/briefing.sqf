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
  				"Name: Roger Tuchek<br/>Rank: Staff Sergeant<br/>  MOS: 1204, Armored Recon<br/>Combat Medals: none.<br/><br/>Not much time for taking photos on that last mission. Although, I think I got one really good photo of the arty we plotted striking some parked trucks.<br/><br/>Hmm, think I need to put in a request for a change of MOS to Combat Photographer, so I have a better chance to capture some of this craziness on film.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #7: ""The results obtained by personally scanning the enemy positions with binoculars is of equal importance to that obtained by combat reconaissance groups.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Okay, you've got the entire enchilada when it comes to fire support. Mortars, M101 and M109 howitzers, four TLAMs, plus the brutal MLRS. Make it good.<br/><br/>The MLRS is a direct descendant of the German Nebelwerfer multi-barreled rocket launcher designed in the late 1930s and used extensively in WWII. The towed Nebelwerfer, called ""Moaning Minnie"" by the allies, was copied by the Reds in truck-mounted form and became the famous Katyusha or ""Stalin's Organ.""<br/><br/>Additional support includes the medical response team and a repair truck for the Bradleys.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"What's out there is really a complete mystery. We don't have any UAVs left to go investigate, and recon flights are out of the question due to strong anti-air defenses. The satellites were all shot down long ago. Sorry.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your M2A2 Bradley squad <marker name='start'>start</marker> near Charlois. Assault and clear <marker name='target1'>Alphonse farm</marker>, and the towns of <marker name='target2'>Pekela</marker>, <marker name='target3'>Oss</marker>, and <marker name='target4'>Beckum</marker>. Don't let any of your vehicles get trashed.<br/><br/>Another deep combat recon patrol. The Reds have plenty of troops down south yet, and are continuing to unload more at Moorsel. We need you to go down there and wreck them good, before they can be brought north to aid in their defense of the capital city of Asten. You and your M2A2 Bradley squad <marker name='start'>start</marker> from crossing north of Charlois. Assault and clear <marker name='target1'>Alphonse Farm</marker> to the east, and the towns of <marker name='target2'>Pekela</marker>, <marker name='target3'>Oss</marker>, and <marker name='target4'>Beckum</marker> to the south. Your mission is accomplished when you've cleaned out all Reds from all objectives. Again, try not to lose any vehicles, or you'll not have them next mission.<br/><br/>Rules of Engagement: <b>Condition Red, weapons free.</b> Bring down some thunder and lightning.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"On the mainland, the Reds have put all their strength against the northern front, in an attempt to break through to their invasion forces trapped on Jutland. Our little foray on these islands has hurt the big Red war machine by cutting the Baltic Sea shipping routes, leaving the Red force on Jutland without gas or bullets.<br/><br/>So, the Reds were forced to reduce the pressure on Stuttgart, which was holding on only by the finest of threads. Armored columns of fresh troops from the US are even now moving across France to help relieve Stuttgart.<br/><br/>All this makes Rugen-Ummanz even more important to the Russian planners. They're reinforcing Asten and continuing attacks on our Otomat Mk2 anti-ship missile launchers.<br/><br/>"
			]
		];

		PMC_objective4 = player createSimpleTask ["Win Beckum"];
		PMC_objective4 setSimpleTaskDescription ["Win <marker name='target4'>Beckum</marker>", "Win Beckum", "Win Beckum"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Win Oss"];
		PMC_objective3 setSimpleTaskDescription ["Win <marker name='target3'>Oss</marker>", "Win Oss", "Win Oss"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Win Pekela"];
		PMC_objective2 setSimpleTaskDescription ["Win <marker name='target2'>Pekela</marker>", "Win Pekela", "Win Pekela"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Clear Alphonse Farm"];
		PMC_objective1 setSimpleTaskDescription ["Clear <marker name='target1'>Alphonse Farm</marker>", "Clear Alphonse Farm", "Clear Alphonse Farm"];
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
