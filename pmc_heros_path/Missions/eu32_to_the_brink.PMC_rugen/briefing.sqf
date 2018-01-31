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
  				"Name: David Ruby<br/>Rank: Captain<br/>  MOS: 1204, Tank Unit Commander<br/>Combat Medals: none<br/>Recommended for Legion of Merit first class, Silver Star, NATO Medal by CinC North Europe.<br/><br/>I pray for these Red soldiers I kill. I think many of them haven't lost sight of God, it's only their leaders who've done so. Their threats to launch atomic weapons are beyond the pale of both God and man.<br/><br/>Is the Supreme Soviet begging for Armegeddon? They should think again... If Jesus Christ were to walk the earth today, I'm certain that those in the Kremlin would get some special attention from the Lord's angels of retribution.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #16: In [war] situations some of the [friendly] soldiers will often lose their nerve and break for cover. The commander must take vigorous action, using his personal weapon if necessary.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Chobham armor contains layers of hardened steel, empty space, high-temperature ceramics (similar to space shuttle tiles), and depleted uranium. This last element, uranium, is extremely dense and helps counter the threat of APFSDS dart-type projectiles. However, this is a two-edged sword on a nuclear battlefield, since depleted uranium becomes highly radioactive after being exposed to the neutron flux from a tactical nuke.<br/><br/>Repair and ammo trucks are parked just outside Haelen. Don't let them be destroyed.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Oncoming Russian armor includes T72s, T80s, and some mech infantry.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your tank platoon ""Alpha"" <marker name='start'>start</marker> near the town of Haelen. Defend <marker name='target1'>Haelen</marker>.<br/><br/>Your tanks <marker name='start'>start</marker> near the port town of Haelen. The enemy is planning a hasty attack from the north. Your task: defend <marker name='target1'>Haelen</marker> against all comers. Don't make any moves north; stay within city limits or very close to it.<br/><br/>Rules of Engagement: <b>Condition Red, weapons free.</b> We've got 'em on the run everywhere; this is just a last gasp effort on their part to skeedaddle. You'll almost certainly be allowed to stand down after this battle.<br/><br/>Learn those boys some manners.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The Russians are making some very heavy sabre-rattling noises. They're demanding an immediate, unconditional cease-fire or they're going to go nuclear.<br/><br/>They must truly be getting desperate. In most places, the initiative has gone over to NATO. Wehrmacht forces of the Federal Republic of Germany have made a historic crossing into East German territory. Frankly, I'd be surprised if they would obey any orders to stop, not with reunification so close at hand.<br/><br/>Here locally, intercepted transmissions indicate that the Red forces trapped on the island are preparing to re-take Haelen, so that the Red headquarters unit at Asten can flee the island by boat. Foolish puppies! Anyhow, we need you and your M1A1s to stand and hold.<br/><br/>"
			]
		];

		PMC_objective1 = player createSimpleTask ["Defend Haelen"];
		PMC_objective1 setSimpleTaskDescription ["Defend <marker name='start'>Haelen</marker>", "Defend Haelen", "Defend Haelen"];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "start");
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
