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
  				"Name: Gordon McKenzie<br/>Rank: Gunnery Sergeant<br/>  MOS: 11B, Infantry<br/>Combat Medals: Silver Star, Bronze Star with V for Valor and oak leaves, two Purple Hearts.<br/><br/>Well, I know what real pain feels like now.<br/><br/>Good thing Mr. Happy wasn't cut off by that bullet fragment.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #10: ""In a man-to-man fight, the winner is often he who has one more bullet in his magazine."" [Don't forget that ammo resupply]<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"The M109s have been allocated to B Company over on Ummanz, so only mortars and M101s are available. That's still a pretty big fist. The arty radio is over in the command tent.<br/><br/>Aside from the arty, you get some ammo, a couple of vehicles, and that's about it. Oh, and we've got a field hospital set up here at Sittard. No female nurses, however.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Battalion says he's got absolutely nothing for you. Err... Good luck!<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"Your regulars <marker name='start'>start</marker> at the town of Sittard. Cleanse the town of <marker name='target1'>Bergh</marker>.<br/><br/>Run a patrol down to Bergh. The Reds are up to something down there, and we want to know all about it. That's ""know"" in the biblical sense, if you get my drift. But, most of our resources are tied up over on Ummanz. You're what we've got to go take a look-see and maybe put them into the meat grinder.<br/><br/>You and your grunts in team ""Alpha"" <marker name='start'>start</marker> from Sittard. Proceed south and cleanse <marker name='target1'>Bergh</marker> of all enemies. Pay special attention to destroying anything that looks like it might be aiding them in getting helicopter-borne troops onto the island.<br/><br/>Rules of Engagement: Condition Yellow. Don't get caught up in any firefights on your way to Bergh.<br/><br/>And no more heroics, do you understand? You're no good to the Army, to your family, to your squad, or to your future girlfriends, if your face is turned to hamburger. If you live through this one, we're pulling you out of the line again until those stitches heal a little more.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Heavy fighting continues in Central Germany, but it's not all one-sided now. There are plenty of meeting engagements going on as both sides maneuver for a shot at the enemy's rear areas.<br/><br/>Despite the fact that most of the Russian offensive thrusts have met failure, they're sitting on land that used to belong to West Germany, including West Berlin. Evidently, they want a favorable negotiated settlement that includes adding large tracts of prime land to East Germany.<br/><br/>Here on Rugen-Ummanz, the Reds are having trouble getting sea-borne shipments in, and have resorted to using big transport helos.<br/><br/>"
			]
		];

		PMC_objective1 = player createSimpleTask ["Capture Bergh"];
		PMC_objective1 setSimpleTaskDescription ["Capture <marker name='target1'>Bergh</marker>", "Capture Bergh", "Capture Bergh"];
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
